; ModuleID = '../bcout/drivers/usb/host/xhci-plat.llvm.bc'
source_filename = "drivers/usb/host/xhci-plat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xhci_plat_init6:\09\09\09"
module asm ".long\09xhci_plat_init - .\09\09\09"
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
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
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_phy = type { %struct.device*, i8*, i32, i32, i32, %struct.usb_otg*, %struct.device*, %struct.usb_phy_io_ops*, i8*, %struct.extcon_dev*, %struct.extcon_dev*, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, i32 (%struct.usb_phy*)*, void (%struct.usb_phy*)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i1)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*)* }
%struct.usb_otg = type { i8, %struct.phy*, %struct.usb_phy*, %struct.usb_bus*, %struct.usb_gadget*, i32, i32 (%struct.usb_otg*, %struct.usb_bus*)*, i32 (%struct.usb_otg*, %struct.usb_gadget*)*, i32 (%struct.usb_otg*, i1)*, i32 (%struct.usb_otg*)*, i32 (%struct.usb_otg*)* }
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.regulator = type opaque
%struct.usb_gadget = type opaque
%struct.usb_phy_io_ops = type { i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32, i32)* }
%struct.extcon_dev = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.79, i64 }
%union.anon.79 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque
%struct.xhci_driver_overrides = type { i64, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)* }
%struct.xhci_plat_priv = type { i8*, i64, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)* }
%struct.xhci_hcd = type { %struct.usb_hcd*, %struct.usb_hcd*, %struct.xhci_cap_regs*, %struct.xhci_op_regs*, %struct.xhci_run_regs*, %struct.xhci_doorbell_array*, %struct.xhci_intr_reg*, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.clk*, %struct.clk*, %struct.reset_control*, %struct.xhci_device_context_array*, %struct.xhci_ring*, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, %struct.xhci_command*, %struct.xhci_ring*, %struct.xhci_erst, %struct.xhci_scratchpad*, %struct.list_head, %struct.mutex, %struct.xhci_command*, [256 x %struct.xhci_virt_device*], %struct.xhci_root_port_bw_info*, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, i32, i32, %struct.s3_save, i64, i32, i32, %struct.xhci_port*, %struct.xhci_hub, %struct.xhci_hub, i8, i32*, i32, %struct.xhci_port_cap*, i32, %struct.timer_list, i32, i16, %struct.dentry*, %struct.dentry*, %struct.list_head, i8*, [0 x i64] }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.xhci_run_regs = type { i32, [7 x i32], [128 x %struct.xhci_intr_reg] }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.xhci_doorbell_array = type { [256 x i32] }
%struct.clk = type opaque
%struct.reset_control = type opaque
%struct.xhci_device_context_array = type { [256 x i64], i64 }
%struct.xhci_ring = type { %struct.xhci_segment*, %struct.xhci_segment*, %union.xhci_trb*, %struct.xhci_segment*, %union.xhci_trb*, %struct.xhci_segment*, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xarray* }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.xhci_segment = type { %union.xhci_trb*, %struct.xhci_segment*, i64, i64, i8*, i32, i32 }
%struct.xhci_erst = type { %struct.xhci_erst_entry*, i32, i64, i32 }
%struct.xhci_erst_entry = type { i64, i32, i32 }
%struct.xhci_scratchpad = type { i64*, i64, i8** }
%struct.xhci_command = type { %struct.xhci_container_ctx*, i32, i32, %struct.completion*, %union.xhci_trb*, %struct.list_head }
%struct.xhci_container_ctx = type { i32, i32, i8*, i64 }
%struct.xhci_virt_device = type { %struct.usb_device*, %struct.xhci_container_ctx*, %struct.xhci_container_ctx*, [31 x %struct.xhci_virt_ep], i8, i8, %struct.xhci_interval_bw_table*, %struct.xhci_tt_bw_info*, i64, i16, i8* }
%struct.xhci_virt_ep = type { %struct.xhci_ring*, %struct.xhci_stream_info*, %struct.xhci_ring*, i32, %struct.list_head, %struct.timer_list, %struct.xhci_hcd*, %struct.xhci_segment*, %union.xhci_trb*, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_stream_info = type { %struct.xhci_ring**, i32, %struct.xhci_stream_ctx*, i32, i64, %struct.xarray, %struct.xhci_command* }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_interval_bw_table = type { i32, [16 x %struct.xhci_interval_bw], i32, i32, i32 }
%struct.xhci_interval_bw = type { i32, %struct.list_head, [3 x i32] }
%struct.xhci_tt_bw_info = type { %struct.list_head, i32, i32, %struct.xhci_interval_bw_table, i32 }
%struct.xhci_root_port_bw_info = type { %struct.list_head, i32, %struct.xhci_interval_bw_table }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_port = type { i32*, i32, i32, %struct.xhci_hub*, %struct.xhci_port_cap* }
%struct.xhci_hub = type { %struct.xhci_port**, i32, %struct.usb_hcd*, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i64, i64, i32, i32, i32, [31 x i64], i64, i64, [31 x %struct.completion], [31 x %struct.completion] }
%struct.xhci_port_cap = type { i32*, i8, i8, i8, i8 }

@__UNIQUE_ID_alias307 = internal constant [38 x i8] c"xhci_plat_hcd.alias=platform:xhci-hcd\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID___addressable_xhci_plat_init308 = internal global i8* bitcast (i32 ()* @xhci_plat_init to i8*), section ".discard.addressable", align 8, !dbg !6232
@usb_xhci_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @xhci_plat_probe, i32 (%struct.platform_device*)* @xhci_plat_remove, void (%struct.platform_device*)* @usb_hcd_platform_shutdown, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([15 x %struct.of_device_id], [15 x %struct.of_device_id]* @usb_xhci_of_match, i32 0, i32 0), %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @usb_xhci_acpi_match, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @xhci_plat_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !6264
@__exitcall_xhci_plat_exit = internal global void ()* @xhci_plat_exit, section ".exitcall.exit", align 8, !dbg !6234
@__UNIQUE_ID_description309 = internal constant [63 x i8] c"xhci_plat_hcd.description=xHCI Platform Host Controller Driver\00", section ".modinfo", align 1, !dbg !6239
@__UNIQUE_ID_file310 = internal constant [50 x i8] c"xhci_plat_hcd.file=drivers/usb/host/xhci-plat-hcd\00", section ".modinfo", align 1, !dbg !6244
@__UNIQUE_ID_license311 = internal constant [26 x i8] c"xhci_plat_hcd.license=GPL\00", section ".modinfo", align 1, !dbg !6249
@xhci_plat_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 8, !dbg !6254
@xhci_plat_overrides = internal constant %struct.xhci_driver_overrides { i64 48, i32 (%struct.usb_hcd*)* @xhci_plat_setup, i32 (%struct.usb_hcd*)* @xhci_plat_start }, section ".init.rodata", align 8, !dbg !6256
@.str = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@usb_xhci_of_match = internal constant [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xhci-platform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_marvell_armada to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_marvell_armada to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada3700-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_marvell_armada3700 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen2 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen2 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen2 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen3 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen3 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen2 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_renesas_rcar_gen3 to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,xhci-brcm-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_brcm to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.xhci_plat_priv* @xhci_plat_brcm to i8*) }, %struct.of_device_id zeroinitializer], align 16, !dbg !6323
@usb_xhci_acpi_match = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0D10\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !6339
@xhci_plat_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @xhci_plat_suspend, i32 (%struct.device*)* @xhci_plat_resume, i32 (%struct.device*)* @xhci_plat_suspend, i32 (%struct.device*)* @xhci_plat_resume, i32 (%struct.device*)* @xhci_plat_suspend, i32 (%struct.device*)* @xhci_plat_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @xhci_plat_runtime_suspend, i32 (%struct.device*)* @xhci_plat_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !6342
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/usb/host/xhci-plat.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"quirk-broken-port-ped\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"imod-interval-ns\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@xhci_plat_marvell_armada = internal constant %struct.xhci_plat_priv { i8* null, i64 0, void (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* @xhci_mvebu_mbus_init_quirk, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* null }, align 8, !dbg !6328
@xhci_plat_marvell_armada3700 = internal constant %struct.xhci_plat_priv { i8* null, i64 0, void (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* @xhci_mvebu_a3700_init_quirk, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* null }, align 8, !dbg !6331
@xhci_plat_renesas_rcar_gen2 = internal constant %struct.xhci_plat_priv { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 8520704, void (%struct.usb_hcd*)* @xhci_rcar_start, i32 (%struct.usb_hcd*)* @xhci_rcar_init_quirk, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* @xhci_rcar_resume_quirk }, align 8, !dbg !6333
@xhci_plat_renesas_rcar_gen3 = internal constant %struct.xhci_plat_priv { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i64 8520704, void (%struct.usb_hcd*)* @xhci_rcar_start, i32 (%struct.usb_hcd*)* @xhci_rcar_init_quirk, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* @xhci_rcar_resume_quirk }, align 8, !dbg !6335
@xhci_plat_brcm = internal constant %struct.xhci_plat_priv { i8* null, i64 128, void (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* null, i32 (%struct.usb_hcd*)* null }, align 8, !dbg !6337
@.str.8 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v1.dlmem\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v3.dlmem\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_alias307, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_xhci_plat_init308 to i8*), i8* bitcast (void ()* @xhci_plat_exit to i8*), i8* bitcast (void ()** @__exitcall_xhci_plat_exit to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description309, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file310, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license311, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_init() #0 section ".init.text" !dbg !6352 {
entry:
  call void @xhci_init_driver(%struct.hc_driver* @xhci_plat_hc_driver, %struct.xhci_driver_overrides* @xhci_plat_overrides) #5, !dbg !6355
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @usb_xhci_driver, %struct.module* null) #5, !dbg !6356
  ret i32 %call, !dbg !6357
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @xhci_plat_exit() #0 section ".exit.text" !dbg !6358 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @usb_xhci_driver) #5, !dbg !6359
  ret void, !dbg !6360
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local void @xhci_init_driver(%struct.hc_driver*, %struct.xhci_driver_overrides*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_setup(%struct.usb_hcd* %hcd) #2 !dbg !6361 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %ret = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6362, metadata !DIExpression()), !dbg !6363
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6366
  %call = call i32 @xhci_priv_init_quirk(%struct.usb_hcd* %0) #5, !dbg !6367
  store i32 %call, i32* %ret, align 4, !dbg !6368
  %1 = load i32, i32* %ret, align 4, !dbg !6369
  %tobool = icmp ne i32 %1, 0, !dbg !6369
  br i1 %tobool, label %if.then, label %if.end, !dbg !6371

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6372
  store i32 %2, i32* %retval, align 4, !dbg !6373
  br label %return, !dbg !6373

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6374
  %call1 = call i32 @xhci_gen_setup(%struct.usb_hcd* %3, void (%struct.device*, %struct.xhci_hcd*)* @xhci_plat_quirks) #5, !dbg !6375
  store i32 %call1, i32* %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !6377
  ret i32 %4, !dbg !6377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_start(%struct.usb_hcd* %hcd) #2 !dbg !6378 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6381
  call void @xhci_priv_plat_start(%struct.usb_hcd* %0) #5, !dbg !6382
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6383
  %call = call i32 @xhci_run(%struct.usb_hcd* %1) #5, !dbg !6384
  ret i32 %call, !dbg !6385
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_priv_init_quirk(%struct.usb_hcd* %hcd) #2 !dbg !6386 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %priv = alloca %struct.xhci_plat_priv*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !6389, metadata !DIExpression()), !dbg !6390
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6391
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #5, !dbg !6391
  %priv1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %call, i32 0, i32 68, !dbg !6391
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv1, i64 0, i64 0, !dbg !6391
  %1 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !6391
  store %struct.xhci_plat_priv* %1, %struct.xhci_plat_priv** %priv, align 8, !dbg !6390
  %2 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6392
  %init_quirk = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %2, i32 0, i32 3, !dbg !6394
  %3 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %init_quirk, align 8, !dbg !6394
  %tobool = icmp ne i32 (%struct.usb_hcd*)* %3, null, !dbg !6392
  br i1 %tobool, label %if.end, label %if.then, !dbg !6395

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end:                                           ; preds = %entry
  %4 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6397
  %init_quirk2 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %4, i32 0, i32 3, !dbg !6398
  %5 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %init_quirk2, align 8, !dbg !6398
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6399
  %call3 = call i32 %5(%struct.usb_hcd* %6) #5, !dbg !6397
  store i32 %call3, i32* %retval, align 4, !dbg !6400
  br label %return, !dbg !6400

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6401
  ret i32 %7, !dbg !6401
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_gen_setup(%struct.usb_hcd*, void (%struct.device*, %struct.xhci_hcd*)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_plat_quirks(%struct.device* %dev, %struct.xhci_hcd* %xhci) #2 !dbg !6402 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %xhci.addr = alloca %struct.xhci_hcd*, align 8
  %priv = alloca %struct.xhci_plat_priv*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6405, metadata !DIExpression()), !dbg !6406
  store %struct.xhci_hcd* %xhci, %struct.xhci_hcd** %xhci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci.addr, metadata !6407, metadata !DIExpression()), !dbg !6408
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !6409, metadata !DIExpression()), !dbg !6410
  %0 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6411
  %priv1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %0, i32 0, i32 68, !dbg !6411
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv1, i64 0, i64 0, !dbg !6411
  %1 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !6411
  store %struct.xhci_plat_priv* %1, %struct.xhci_plat_priv** %priv, align 8, !dbg !6410
  %2 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6412
  %quirks = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %2, i32 0, i32 1, !dbg !6413
  %3 = load i64, i64* %quirks, align 8, !dbg !6413
  %or = or i64 65536, %3, !dbg !6414
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6415
  %quirks2 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %4, i32 0, i32 50, !dbg !6416
  %5 = load i64, i64* %quirks2, align 8, !dbg !6417
  %or3 = or i64 %5, %or, !dbg !6417
  store i64 %or3, i64* %quirks2, align 8, !dbg !6417
  ret void, !dbg !6418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %hcd) #2 !dbg !6419 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %primary_hcd = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %primary_hcd, metadata !6424, metadata !DIExpression()), !dbg !6425
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6426
  %call = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %0) #5, !dbg !6428
  %tobool = icmp ne i32 %call, 0, !dbg !6428
  br i1 %tobool, label %if.then, label %if.else, !dbg !6429

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6430
  store %struct.usb_hcd* %1, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6431
  br label %if.end, !dbg !6432

if.else:                                          ; preds = %entry
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6433
  %primary_hcd1 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %2, i32 0, i32 25, !dbg !6434
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %primary_hcd1, align 8, !dbg !6434
  store %struct.usb_hcd* %3, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6435
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6436
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 29, !dbg !6437
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %hcd_priv, i64 0, i64 0, !dbg !6438
  %5 = bitcast i64* %arraydecay to %struct.xhci_hcd*, !dbg !6439
  ret %struct.xhci_hcd* %5, !dbg !6440
}

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_priv_plat_start(%struct.usb_hcd* %hcd) #2 !dbg !6441 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %priv = alloca %struct.xhci_plat_priv*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !6444, metadata !DIExpression()), !dbg !6445
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6446
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #5, !dbg !6446
  %priv1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %call, i32 0, i32 68, !dbg !6446
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv1, i64 0, i64 0, !dbg !6446
  %1 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !6446
  store %struct.xhci_plat_priv* %1, %struct.xhci_plat_priv** %priv, align 8, !dbg !6445
  %2 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6447
  %plat_start = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %2, i32 0, i32 2, !dbg !6449
  %3 = load void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)** %plat_start, align 8, !dbg !6449
  %tobool = icmp ne void (%struct.usb_hcd*)* %3, null, !dbg !6447
  br i1 %tobool, label %if.then, label %if.end, !dbg !6450

if.then:                                          ; preds = %entry
  %4 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6451
  %plat_start2 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %4, i32 0, i32 2, !dbg !6452
  %5 = load void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)** %plat_start2, align 8, !dbg !6452
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6453
  call void %5(%struct.usb_hcd* %6) #5, !dbg !6451
  br label %if.end, !dbg !6451

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6454
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_run(%struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_probe(%struct.platform_device* %pdev) #2 !dbg !6455 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv_match = alloca %struct.xhci_plat_priv*, align 8
  %driver = alloca %struct.hc_driver*, align 8
  %sysdev = alloca %struct.device*, align 8
  %tmpdev = alloca %struct.device*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %res = alloca %struct.resource*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %ret = alloca i32, align 4
  %irq = alloca i32, align 4
  %priv = alloca %struct.xhci_plat_priv*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6456, metadata !DIExpression()), !dbg !6457
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv_match, metadata !6458, metadata !DIExpression()), !dbg !6460
  call void @llvm.dbg.declare(metadata %struct.hc_driver** %driver, metadata !6461, metadata !DIExpression()), !dbg !6462
  call void @llvm.dbg.declare(metadata %struct.device** %sysdev, metadata !6463, metadata !DIExpression()), !dbg !6464
  call void @llvm.dbg.declare(metadata %struct.device** %tmpdev, metadata !6465, metadata !DIExpression()), !dbg !6466
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6467, metadata !DIExpression()), !dbg !6468
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !6469, metadata !DIExpression()), !dbg !6470
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !6471, metadata !DIExpression()), !dbg !6472
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6473, metadata !DIExpression()), !dbg !6474
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !6475, metadata !DIExpression()), !dbg !6476
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !6477, metadata !DIExpression()), !dbg !6478
  store %struct.xhci_plat_priv* null, %struct.xhci_plat_priv** %priv, align 8, !dbg !6478
  %call = call i32 @usb_disabled() #5, !dbg !6479
  %tobool = icmp ne i32 %call, 0, !dbg !6479
  br i1 %tobool, label %if.then, label %if.end, !dbg !6481

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !6482
  br label %return, !dbg !6482

if.end:                                           ; preds = %entry
  store %struct.hc_driver* @xhci_plat_hc_driver, %struct.hc_driver** %driver, align 8, !dbg !6483
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6484
  %call1 = call i32 @platform_get_irq(%struct.platform_device* %0, i32 0) #5, !dbg !6485
  store i32 %call1, i32* %irq, align 4, !dbg !6486
  %1 = load i32, i32* %irq, align 4, !dbg !6487
  %cmp = icmp slt i32 %1, 0, !dbg !6489
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6490

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %irq, align 4, !dbg !6491
  store i32 %2, i32* %retval, align 4, !dbg !6492
  br label %return, !dbg !6492

if.end3:                                          ; preds = %if.end
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6493
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !6495
  store %struct.device* %dev, %struct.device** %sysdev, align 8, !dbg !6496
  br label %for.cond, !dbg !6497

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6498
  %tobool4 = icmp ne %struct.device* %4, null, !dbg !6500
  br i1 %tobool4, label %for.body, label %for.end, !dbg !6500

for.body:                                         ; preds = %for.cond
  %5 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6501
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 24, !dbg !6504
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6504
  %call5 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %6) #5, !dbg !6505
  br i1 %call5, label %if.then8, label %lor.lhs.false, !dbg !6506

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6507
  %fwnode6 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 24, !dbg !6508
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode6, align 8, !dbg !6508
  %call7 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %8) #5, !dbg !6509
  br i1 %call7, label %if.then8, label %if.else, !dbg !6510

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !6511

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6512
  %bus = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 5, !dbg !6514
  %10 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !6514
  %cmp9 = icmp eq %struct.bus_type* %10, @pci_bus_type, !dbg !6515
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6516

if.then10:                                        ; preds = %if.else
  br label %for.end, !dbg !6517

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  br label %for.inc, !dbg !6518

for.inc:                                          ; preds = %if.end12
  %11 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6519
  %parent = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1, !dbg !6520
  %12 = load %struct.device*, %struct.device** %parent, align 8, !dbg !6520
  store %struct.device* %12, %struct.device** %sysdev, align 8, !dbg !6521
  br label %for.cond, !dbg !6522, !llvm.loop !6523

for.end:                                          ; preds = %if.then10, %if.then8, %for.cond
  %13 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6525
  %tobool13 = icmp ne %struct.device* %13, null, !dbg !6525
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !6527

if.then14:                                        ; preds = %for.end
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6528
  %dev15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !6529
  store %struct.device* %dev15, %struct.device** %sysdev, align 8, !dbg !6530
  br label %if.end16, !dbg !6531

if.end16:                                         ; preds = %if.then14, %for.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6532, metadata !DIExpression()), !dbg !6535
  %15 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6535
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 16, !dbg !6535
  %16 = load i64*, i64** %dma_mask, align 8, !dbg !6535
  %tobool17 = icmp ne i64* %16, null, !dbg !6535
  %lnot = xor i1 %tobool17, true, !dbg !6535
  %lnot18 = xor i1 %lnot, true, !dbg !6535
  %lnot19 = xor i1 %lnot18, true, !dbg !6535
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !6535
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6535
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !6536
  %tobool20 = icmp ne i32 %17, 0, !dbg !6536
  %lnot21 = xor i1 %tobool20, true, !dbg !6536
  %lnot23 = xor i1 %lnot21, true, !dbg !6536
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6536
  %conv = sext i32 %lnot.ext24 to i64, !dbg !6536
  %tobool25 = icmp ne i64 %conv, 0, !dbg !6536
  br i1 %tobool25, label %if.then26, label %if.end33, !dbg !6535

if.then26:                                        ; preds = %if.end16
  br label %do.body, !dbg !6536

do.body:                                          ; preds = %if.then26
  br label %do.body27, !dbg !6538

do.body27:                                        ; preds = %do.body
  br label %do.end, !dbg !6540

do.end:                                           ; preds = %do.body27
  br label %do.body28, !dbg !6538

do.body28:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 219, i32 2305, i64 12) #6, !dbg !6542, !srcloc !6544
  br label %do.end29, !dbg !6542

do.end29:                                         ; preds = %do.body28
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 306) #6, !dbg !6545, !srcloc !6547
  br label %do.body30, !dbg !6538

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6548

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !6538

do.end32:                                         ; preds = %do.end31
  br label %if.end33, !dbg !6538

if.end33:                                         ; preds = %do.end32, %if.end16
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !6535
  %tobool34 = icmp ne i32 %18, 0, !dbg !6535
  %lnot35 = xor i1 %tobool34, true, !dbg !6535
  %lnot37 = xor i1 %lnot35, true, !dbg !6535
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !6535
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !6535
  store i64 %conv39, i64* %tmp, align 8, !dbg !6536
  %19 = load i64, i64* %tmp, align 8, !dbg !6535
  %tobool40 = icmp ne i64 %19, 0, !dbg !6550
  br i1 %tobool40, label %if.then41, label %if.else43, !dbg !6551

if.then41:                                        ; preds = %if.end33
  %20 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6552
  %call42 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %20, i64 -1) #5, !dbg !6553
  store i32 %call42, i32* %ret, align 4, !dbg !6554
  br label %if.end45, !dbg !6555

if.else43:                                        ; preds = %if.end33
  %21 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6556
  %call44 = call i32 @dma_set_mask_and_coherent(%struct.device* %21, i64 -1) #5, !dbg !6557
  store i32 %call44, i32* %ret, align 4, !dbg !6558
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then41
  %22 = load i32, i32* %ret, align 4, !dbg !6559
  %tobool46 = icmp ne i32 %22, 0, !dbg !6559
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !6561

if.then47:                                        ; preds = %if.end45
  %23 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6562
  %call48 = call i32 @dma_set_mask_and_coherent(%struct.device* %23, i64 4294967295) #5, !dbg !6564
  store i32 %call48, i32* %ret, align 4, !dbg !6565
  %24 = load i32, i32* %ret, align 4, !dbg !6566
  %tobool49 = icmp ne i32 %24, 0, !dbg !6566
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !6568

if.then50:                                        ; preds = %if.then47
  %25 = load i32, i32* %ret, align 4, !dbg !6569
  store i32 %25, i32* %retval, align 4, !dbg !6570
  br label %return, !dbg !6570

if.end51:                                         ; preds = %if.then47
  br label %if.end52, !dbg !6571

if.end52:                                         ; preds = %if.end51, %if.end45
  %26 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6572
  %dev53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 3, !dbg !6573
  %call54 = call i32 @pm_runtime_set_active(%struct.device* %dev53) #5, !dbg !6574
  %27 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6575
  %dev55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 3, !dbg !6576
  call void @pm_runtime_enable(%struct.device* %dev55) #5, !dbg !6577
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6578
  %dev56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3, !dbg !6579
  call void @pm_runtime_get_noresume(%struct.device* %dev56) #5, !dbg !6580
  %29 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !6581
  %30 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6582
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6583
  %dev57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 3, !dbg !6584
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6585
  %dev58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3, !dbg !6586
  %call59 = call i8* @dev_name(%struct.device* %dev58) #5, !dbg !6587
  %call60 = call %struct.usb_hcd* @__usb_create_hcd(%struct.hc_driver* %29, %struct.device* %30, %struct.device* %dev57, i8* %call59, %struct.usb_hcd* null) #5, !dbg !6588
  store %struct.usb_hcd* %call60, %struct.usb_hcd** %hcd, align 8, !dbg !6589
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6590
  %tobool61 = icmp ne %struct.usb_hcd* %33, null, !dbg !6590
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !6592

if.then62:                                        ; preds = %if.end52
  store i32 -12, i32* %ret, align 4, !dbg !6593
  br label %disable_runtime, !dbg !6595

if.end63:                                         ; preds = %if.end52
  %34 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6596
  %call64 = call i8* @devm_platform_get_and_ioremap_resource(%struct.platform_device* %34, i32 0, %struct.resource** %res) #5, !dbg !6597
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6598
  %regs = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 16, !dbg !6599
  store i8* %call64, i8** %regs, align 8, !dbg !6600
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6601
  %regs65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 16, !dbg !6603
  %37 = load i8*, i8** %regs65, align 8, !dbg !6603
  %call66 = call zeroext i1 @IS_ERR(i8* %37) #5, !dbg !6604
  br i1 %call66, label %if.then67, label %if.end71, !dbg !6605

if.then67:                                        ; preds = %if.end63
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6606
  %regs68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 16, !dbg !6608
  %39 = load i8*, i8** %regs68, align 8, !dbg !6608
  %call69 = call i64 @PTR_ERR(i8* %39) #5, !dbg !6609
  %conv70 = trunc i64 %call69 to i32, !dbg !6609
  store i32 %conv70, i32* %ret, align 4, !dbg !6610
  br label %put_hcd, !dbg !6611

if.end71:                                         ; preds = %if.end63
  %40 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !6612
  %start = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0, !dbg !6613
  %41 = load i64, i64* %start, align 8, !dbg !6613
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6614
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 17, !dbg !6615
  store i64 %41, i64* %rsrc_start, align 8, !dbg !6616
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !6617
  %call72 = call i64 @resource_size(%struct.resource* %43) #5, !dbg !6618
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6619
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 18, !dbg !6620
  store i64 %call72, i64* %rsrc_len, align 8, !dbg !6621
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6622
  %call73 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %45) #5, !dbg !6623
  store %struct.xhci_hcd* %call73, %struct.xhci_hcd** %xhci, align 8, !dbg !6624
  %46 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6625
  %dev74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 3, !dbg !6626
  %call75 = call %struct.clk* @devm_clk_get_optional(%struct.device* %dev74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !6627
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6628
  %reg_clk = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %47, i32 0, i32 25, !dbg !6629
  store %struct.clk* %call75, %struct.clk** %reg_clk, align 8, !dbg !6630
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6631
  %reg_clk76 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %48, i32 0, i32 25, !dbg !6633
  %49 = load %struct.clk*, %struct.clk** %reg_clk76, align 8, !dbg !6633
  %50 = bitcast %struct.clk* %49 to i8*, !dbg !6631
  %call77 = call zeroext i1 @IS_ERR(i8* %50) #5, !dbg !6634
  br i1 %call77, label %if.then78, label %if.end82, !dbg !6635

if.then78:                                        ; preds = %if.end71
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6636
  %reg_clk79 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 25, !dbg !6638
  %52 = load %struct.clk*, %struct.clk** %reg_clk79, align 8, !dbg !6638
  %53 = bitcast %struct.clk* %52 to i8*, !dbg !6636
  %call80 = call i64 @PTR_ERR(i8* %53) #5, !dbg !6639
  %conv81 = trunc i64 %call80 to i32, !dbg !6639
  store i32 %conv81, i32* %ret, align 4, !dbg !6640
  br label %put_hcd, !dbg !6641

if.end82:                                         ; preds = %if.end71
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6642
  %reg_clk83 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %54, i32 0, i32 25, !dbg !6643
  %55 = load %struct.clk*, %struct.clk** %reg_clk83, align 8, !dbg !6643
  %call84 = call i32 @clk_prepare_enable(%struct.clk* %55) #5, !dbg !6644
  store i32 %call84, i32* %ret, align 4, !dbg !6645
  %56 = load i32, i32* %ret, align 4, !dbg !6646
  %tobool85 = icmp ne i32 %56, 0, !dbg !6646
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !6648

if.then86:                                        ; preds = %if.end82
  br label %put_hcd, !dbg !6649

if.end87:                                         ; preds = %if.end82
  %57 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6650
  %dev88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 3, !dbg !6651
  %call89 = call %struct.clk* @devm_clk_get_optional(%struct.device* %dev88, i8* null) #5, !dbg !6652
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6653
  %clk = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %58, i32 0, i32 24, !dbg !6654
  store %struct.clk* %call89, %struct.clk** %clk, align 8, !dbg !6655
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6656
  %clk90 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %59, i32 0, i32 24, !dbg !6658
  %60 = load %struct.clk*, %struct.clk** %clk90, align 8, !dbg !6658
  %61 = bitcast %struct.clk* %60 to i8*, !dbg !6656
  %call91 = call zeroext i1 @IS_ERR(i8* %61) #5, !dbg !6659
  br i1 %call91, label %if.then92, label %if.end96, !dbg !6660

if.then92:                                        ; preds = %if.end87
  %62 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6661
  %clk93 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %62, i32 0, i32 24, !dbg !6663
  %63 = load %struct.clk*, %struct.clk** %clk93, align 8, !dbg !6663
  %64 = bitcast %struct.clk* %63 to i8*, !dbg !6661
  %call94 = call i64 @PTR_ERR(i8* %64) #5, !dbg !6664
  %conv95 = trunc i64 %call94 to i32, !dbg !6664
  store i32 %conv95, i32* %ret, align 4, !dbg !6665
  br label %disable_reg_clk, !dbg !6666

if.end96:                                         ; preds = %if.end87
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6667
  %clk97 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 24, !dbg !6668
  %66 = load %struct.clk*, %struct.clk** %clk97, align 8, !dbg !6668
  %call98 = call i32 @clk_prepare_enable(%struct.clk* %66) #5, !dbg !6669
  store i32 %call98, i32* %ret, align 4, !dbg !6670
  %67 = load i32, i32* %ret, align 4, !dbg !6671
  %tobool99 = icmp ne i32 %67, 0, !dbg !6671
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !6673

if.then100:                                       ; preds = %if.end96
  br label %disable_reg_clk, !dbg !6674

if.end101:                                        ; preds = %if.end96
  %68 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6675
  %dev102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 3, !dbg !6677
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev102, i32 0, i32 23, !dbg !6678
  %69 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !6678
  %tobool103 = icmp ne %struct.device_node* %69, null, !dbg !6675
  br i1 %tobool103, label %if.then104, label %if.else107, !dbg !6679

if.then104:                                       ; preds = %if.end101
  %70 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6680
  %dev105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 3, !dbg !6681
  %call106 = call i8* @of_device_get_match_data(%struct.device* %dev105) #5, !dbg !6682
  %71 = bitcast i8* %call106 to %struct.xhci_plat_priv*, !dbg !6682
  store %struct.xhci_plat_priv* %71, %struct.xhci_plat_priv** %priv_match, align 8, !dbg !6683
  br label %if.end110, !dbg !6684

if.else107:                                       ; preds = %if.end101
  %72 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6685
  %dev108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 3, !dbg !6686
  %call109 = call i8* @dev_get_platdata(%struct.device* %dev108) #5, !dbg !6687
  %73 = bitcast i8* %call109 to %struct.xhci_plat_priv*, !dbg !6687
  store %struct.xhci_plat_priv* %73, %struct.xhci_plat_priv** %priv_match, align 8, !dbg !6688
  br label %if.end110

if.end110:                                        ; preds = %if.else107, %if.then104
  %74 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv_match, align 8, !dbg !6689
  %tobool111 = icmp ne %struct.xhci_plat_priv* %74, null, !dbg !6689
  br i1 %tobool111, label %if.then112, label %if.end115, !dbg !6691

if.then112:                                       ; preds = %if.end110
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6692
  %call113 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %75) #5, !dbg !6692
  %priv114 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %call113, i32 0, i32 68, !dbg !6692
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv114, i64 0, i64 0, !dbg !6692
  %76 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !6692
  store %struct.xhci_plat_priv* %76, %struct.xhci_plat_priv** %priv, align 8, !dbg !6694
  %77 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6695
  %78 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv_match, align 8, !dbg !6696
  %79 = bitcast %struct.xhci_plat_priv* %77 to i8*, !dbg !6697
  %80 = bitcast %struct.xhci_plat_priv* %78 to i8*, !dbg !6697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 48, i1 false), !dbg !6697
  br label %if.end115, !dbg !6698

if.end115:                                        ; preds = %if.then112, %if.end110
  %81 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6699
  %dev116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 3, !dbg !6700
  call void @device_set_wakeup_capable(%struct.device* %dev116, i1 zeroext true) #5, !dbg !6701
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6702
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6703
  %main_hcd = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 0, !dbg !6704
  store %struct.usb_hcd* %82, %struct.usb_hcd** %main_hcd, align 8, !dbg !6705
  %84 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !6706
  %85 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6707
  %86 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6708
  %dev117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 3, !dbg !6709
  %87 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6710
  %dev118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 3, !dbg !6711
  %call119 = call i8* @dev_name(%struct.device* %dev118) #5, !dbg !6712
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6713
  %call120 = call %struct.usb_hcd* @__usb_create_hcd(%struct.hc_driver* %84, %struct.device* %85, %struct.device* %dev117, i8* %call119, %struct.usb_hcd* %88) #5, !dbg !6714
  %89 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6715
  %shared_hcd = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %89, i32 0, i32 1, !dbg !6716
  store %struct.usb_hcd* %call120, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6717
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6718
  %shared_hcd121 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %90, i32 0, i32 1, !dbg !6720
  %91 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd121, align 8, !dbg !6720
  %tobool122 = icmp ne %struct.usb_hcd* %91, null, !dbg !6718
  br i1 %tobool122, label %if.end124, label %if.then123, !dbg !6721

if.then123:                                       ; preds = %if.end115
  store i32 -12, i32* %ret, align 4, !dbg !6722
  br label %disable_clk, !dbg !6724

if.end124:                                        ; preds = %if.end115
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6725
  %imod_interval = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %92, i32 0, i32 19, !dbg !6726
  store i32 40000, i32* %imod_interval, align 4, !dbg !6727
  %93 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6728
  %dev125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 3, !dbg !6730
  store %struct.device* %dev125, %struct.device** %tmpdev, align 8, !dbg !6731
  br label %for.cond126, !dbg !6732

for.cond126:                                      ; preds = %for.inc144, %if.end124
  %94 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6733
  %tobool127 = icmp ne %struct.device* %94, null, !dbg !6735
  br i1 %tobool127, label %for.body128, label %for.end146, !dbg !6735

for.body128:                                      ; preds = %for.cond126
  %95 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6736
  %call129 = call zeroext i1 @device_property_read_bool(%struct.device* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !6739
  br i1 %call129, label %if.then130, label %if.end131, !dbg !6740

if.then130:                                       ; preds = %for.body128
  %96 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6741
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %96, i32 0, i32 50, !dbg !6742
  %97 = load i64, i64* %quirks, align 8, !dbg !6743
  %or = or i64 %97, 536870912, !dbg !6743
  store i64 %or, i64* %quirks, align 8, !dbg !6743
  br label %if.end131, !dbg !6741

if.end131:                                        ; preds = %if.then130, %for.body128
  %98 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6744
  %call132 = call zeroext i1 @device_property_read_bool(%struct.device* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !6746
  br i1 %call132, label %if.then133, label %if.end136, !dbg !6747

if.then133:                                       ; preds = %if.end131
  %99 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6748
  %quirks134 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %99, i32 0, i32 50, !dbg !6749
  %100 = load i64, i64* %quirks134, align 8, !dbg !6750
  %or135 = or i64 %100, 2048, !dbg !6750
  store i64 %or135, i64* %quirks134, align 8, !dbg !6750
  br label %if.end136, !dbg !6748

if.end136:                                        ; preds = %if.then133, %if.end131
  %101 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6751
  %call137 = call zeroext i1 @device_property_read_bool(%struct.device* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !6753
  br i1 %call137, label %if.then138, label %if.end141, !dbg !6754

if.then138:                                       ; preds = %if.end136
  %102 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6755
  %quirks139 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %102, i32 0, i32 50, !dbg !6756
  %103 = load i64, i64* %quirks139, align 8, !dbg !6757
  %or140 = or i64 %103, 33554432, !dbg !6757
  store i64 %or140, i64* %quirks139, align 8, !dbg !6757
  br label %if.end141, !dbg !6755

if.end141:                                        ; preds = %if.then138, %if.end136
  %104 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6758
  %105 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6759
  %imod_interval142 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %105, i32 0, i32 19, !dbg !6760
  %call143 = call i32 @device_property_read_u32(%struct.device* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %imod_interval142) #5, !dbg !6761
  br label %for.inc144, !dbg !6762

for.inc144:                                       ; preds = %if.end141
  %106 = load %struct.device*, %struct.device** %tmpdev, align 8, !dbg !6763
  %parent145 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 1, !dbg !6764
  %107 = load %struct.device*, %struct.device** %parent145, align 8, !dbg !6764
  store %struct.device* %107, %struct.device** %tmpdev, align 8, !dbg !6765
  br label %for.cond126, !dbg !6766, !llvm.loop !6767

for.end146:                                       ; preds = %for.cond126
  %108 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6769
  %call147 = call %struct.usb_phy* @devm_usb_get_phy_by_phandle(%struct.device* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8 zeroext 0) #5, !dbg !6770
  %109 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6771
  %usb_phy = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %109, i32 0, i32 10, !dbg !6772
  store %struct.usb_phy* %call147, %struct.usb_phy** %usb_phy, align 8, !dbg !6773
  %110 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6774
  %usb_phy148 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %110, i32 0, i32 10, !dbg !6776
  %111 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy148, align 8, !dbg !6776
  %112 = bitcast %struct.usb_phy* %111 to i8*, !dbg !6774
  %call149 = call zeroext i1 @IS_ERR(i8* %112) #5, !dbg !6777
  br i1 %call149, label %if.then150, label %if.else159, !dbg !6778

if.then150:                                       ; preds = %for.end146
  %113 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6779
  %usb_phy151 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %113, i32 0, i32 10, !dbg !6781
  %114 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy151, align 8, !dbg !6781
  %115 = bitcast %struct.usb_phy* %114 to i8*, !dbg !6779
  %call152 = call i64 @PTR_ERR(i8* %115) #5, !dbg !6782
  %conv153 = trunc i64 %call152 to i32, !dbg !6782
  store i32 %conv153, i32* %ret, align 4, !dbg !6783
  %116 = load i32, i32* %ret, align 4, !dbg !6784
  %cmp154 = icmp eq i32 %116, -517, !dbg !6786
  br i1 %cmp154, label %if.then156, label %if.end157, !dbg !6787

if.then156:                                       ; preds = %if.then150
  br label %put_usb3_hcd, !dbg !6788

if.end157:                                        ; preds = %if.then150
  %117 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6789
  %usb_phy158 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %117, i32 0, i32 10, !dbg !6790
  store %struct.usb_phy* null, %struct.usb_phy** %usb_phy158, align 8, !dbg !6791
  br label %if.end165, !dbg !6792

if.else159:                                       ; preds = %for.end146
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6793
  %usb_phy160 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %118, i32 0, i32 10, !dbg !6795
  %119 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy160, align 8, !dbg !6795
  %call161 = call i32 @usb_phy_init(%struct.usb_phy* %119) #5, !dbg !6796
  store i32 %call161, i32* %ret, align 4, !dbg !6797
  %120 = load i32, i32* %ret, align 4, !dbg !6798
  %tobool162 = icmp ne i32 %120, 0, !dbg !6798
  br i1 %tobool162, label %if.then163, label %if.end164, !dbg !6800

if.then163:                                       ; preds = %if.else159
  br label %put_usb3_hcd, !dbg !6801

if.end164:                                        ; preds = %if.else159
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end157
  %121 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6802
  %of_node166 = getelementptr inbounds %struct.device, %struct.device* %121, i32 0, i32 23, !dbg !6803
  %122 = load %struct.device_node*, %struct.device_node** %of_node166, align 8, !dbg !6803
  %call167 = call zeroext i1 @of_usb_host_tpl_support(%struct.device_node* %122) #5, !dbg !6804
  %conv168 = zext i1 %call167 to i32, !dbg !6804
  %123 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6805
  %tpl_support = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %123, i32 0, i32 14, !dbg !6806
  %124 = trunc i32 %conv168 to i16, !dbg !6807
  %bf.load = load i16, i16* %tpl_support, align 4, !dbg !6807
  %bf.value = and i16 %124, 1, !dbg !6807
  %bf.shl = shl i16 %bf.value, 10, !dbg !6807
  %bf.clear = and i16 %bf.load, -1025, !dbg !6807
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !6807
  store i16 %bf.set, i16* %tpl_support, align 4, !dbg !6807
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !6807
  %125 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6808
  %tpl_support169 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %125, i32 0, i32 14, !dbg !6809
  %bf.load170 = load i16, i16* %tpl_support169, align 4, !dbg !6809
  %bf.lshr = lshr i16 %bf.load170, 10, !dbg !6809
  %bf.clear171 = and i16 %bf.lshr, 1, !dbg !6809
  %bf.cast = zext i16 %bf.clear171 to i32, !dbg !6809
  %126 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6810
  %shared_hcd172 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %126, i32 0, i32 1, !dbg !6811
  %127 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd172, align 8, !dbg !6811
  %tpl_support173 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %127, i32 0, i32 14, !dbg !6812
  %128 = trunc i32 %bf.cast to i16, !dbg !6813
  %bf.load174 = load i16, i16* %tpl_support173, align 4, !dbg !6813
  %bf.value175 = and i16 %128, 1, !dbg !6813
  %bf.shl176 = shl i16 %bf.value175, 10, !dbg !6813
  %bf.clear177 = and i16 %bf.load174, -1025, !dbg !6813
  %bf.set178 = or i16 %bf.clear177, %bf.shl176, !dbg !6813
  store i16 %bf.set178, i16* %tpl_support173, align 4, !dbg !6813
  %bf.result.cast179 = zext i16 %bf.value175 to i32, !dbg !6813
  %129 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6814
  %tobool180 = icmp ne %struct.xhci_plat_priv* %129, null, !dbg !6814
  br i1 %tobool180, label %land.lhs.true, label %if.end187, !dbg !6816

land.lhs.true:                                    ; preds = %if.end165
  %130 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !6817
  %quirks181 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %130, i32 0, i32 1, !dbg !6818
  %131 = load i64, i64* %quirks181, align 8, !dbg !6818
  %and = and i64 %131, 137438953472, !dbg !6819
  %tobool182 = icmp ne i64 %and, 0, !dbg !6819
  br i1 %tobool182, label %if.then183, label %if.end187, !dbg !6820

if.then183:                                       ; preds = %land.lhs.true
  %132 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6821
  %skip_phy_initialization = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %132, i32 0, i32 14, !dbg !6822
  %bf.load184 = load i16, i16* %skip_phy_initialization, align 4, !dbg !6823
  %bf.clear185 = and i16 %bf.load184, -17, !dbg !6823
  %bf.set186 = or i16 %bf.clear185, 16, !dbg !6823
  store i16 %bf.set186, i16* %skip_phy_initialization, align 4, !dbg !6823
  br label %if.end187, !dbg !6821

if.end187:                                        ; preds = %if.then183, %land.lhs.true, %if.end165
  %133 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6824
  %134 = load i32, i32* %irq, align 4, !dbg !6825
  %call188 = call i32 @usb_add_hcd(%struct.usb_hcd* %133, i32 %134, i64 128) #5, !dbg !6826
  store i32 %call188, i32* %ret, align 4, !dbg !6827
  %135 = load i32, i32* %ret, align 4, !dbg !6828
  %tobool189 = icmp ne i32 %135, 0, !dbg !6828
  br i1 %tobool189, label %if.then190, label %if.end191, !dbg !6830

if.then190:                                       ; preds = %if.end187
  br label %disable_usb_phy, !dbg !6831

if.end191:                                        ; preds = %if.end187
  %136 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6832
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %136, i32 0, i32 10, !dbg !6832
  %137 = load i32, i32* %hcc_params, align 4, !dbg !6832
  %shr = lshr i32 %137, 12, !dbg !6832
  %and192 = and i32 %shr, 15, !dbg !6832
  %add = add i32 %and192, 1, !dbg !6832
  %shl = shl i32 1, %add, !dbg !6832
  %cmp193 = icmp sge i32 %shl, 4, !dbg !6834
  br i1 %cmp193, label %if.then195, label %if.end200, !dbg !6835

if.then195:                                       ; preds = %if.end191
  %138 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6836
  %shared_hcd196 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %138, i32 0, i32 1, !dbg !6837
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd196, align 8, !dbg !6837
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %139, i32 0, i32 14, !dbg !6838
  %bf.load197 = load i16, i16* %can_do_streams, align 4, !dbg !6839
  %bf.clear198 = and i16 %bf.load197, -513, !dbg !6839
  %bf.set199 = or i16 %bf.clear198, 512, !dbg !6839
  store i16 %bf.set199, i16* %can_do_streams, align 4, !dbg !6839
  br label %if.end200, !dbg !6836

if.end200:                                        ; preds = %if.then195, %if.end191
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6840
  %shared_hcd201 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %140, i32 0, i32 1, !dbg !6841
  %141 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd201, align 8, !dbg !6841
  %142 = load i32, i32* %irq, align 4, !dbg !6842
  %call202 = call i32 @usb_add_hcd(%struct.usb_hcd* %141, i32 %142, i64 128) #5, !dbg !6843
  store i32 %call202, i32* %ret, align 4, !dbg !6844
  %143 = load i32, i32* %ret, align 4, !dbg !6845
  %tobool203 = icmp ne i32 %143, 0, !dbg !6845
  br i1 %tobool203, label %if.then204, label %if.end205, !dbg !6847

if.then204:                                       ; preds = %if.end200
  br label %dealloc_usb2_hcd, !dbg !6848

if.end205:                                        ; preds = %if.end200
  %144 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6849
  %dev206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 3, !dbg !6850
  call void @device_enable_async_suspend(%struct.device* %dev206) #5, !dbg !6851
  %145 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6852
  %dev207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 3, !dbg !6853
  call void @pm_runtime_put_noidle(%struct.device* %dev207) #5, !dbg !6854
  %146 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6855
  %dev208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 3, !dbg !6856
  call void @pm_runtime_forbid(%struct.device* %dev208) #5, !dbg !6857
  store i32 0, i32* %retval, align 4, !dbg !6858
  br label %return, !dbg !6858

dealloc_usb2_hcd:                                 ; preds = %if.then204
  call void @llvm.dbg.label(metadata !6859), !dbg !6860
  %147 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6861
  call void @usb_remove_hcd(%struct.usb_hcd* %147) #5, !dbg !6862
  br label %disable_usb_phy, !dbg !6862

disable_usb_phy:                                  ; preds = %dealloc_usb2_hcd, %if.then190
  call void @llvm.dbg.label(metadata !6863), !dbg !6864
  %148 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6865
  %usb_phy209 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %148, i32 0, i32 10, !dbg !6866
  %149 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy209, align 8, !dbg !6866
  call void @usb_phy_shutdown(%struct.usb_phy* %149) #5, !dbg !6867
  br label %put_usb3_hcd, !dbg !6867

put_usb3_hcd:                                     ; preds = %disable_usb_phy, %if.then163, %if.then156
  call void @llvm.dbg.label(metadata !6868), !dbg !6869
  %150 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6870
  %shared_hcd210 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %150, i32 0, i32 1, !dbg !6871
  %151 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd210, align 8, !dbg !6871
  call void @usb_put_hcd(%struct.usb_hcd* %151) #5, !dbg !6872
  br label %disable_clk, !dbg !6872

disable_clk:                                      ; preds = %put_usb3_hcd, %if.then123
  call void @llvm.dbg.label(metadata !6873), !dbg !6874
  %152 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6875
  %clk211 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %152, i32 0, i32 24, !dbg !6876
  %153 = load %struct.clk*, %struct.clk** %clk211, align 8, !dbg !6876
  call void @clk_disable_unprepare(%struct.clk* %153) #5, !dbg !6877
  br label %disable_reg_clk, !dbg !6877

disable_reg_clk:                                  ; preds = %disable_clk, %if.then100, %if.then92
  call void @llvm.dbg.label(metadata !6878), !dbg !6879
  %154 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6880
  %reg_clk212 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %154, i32 0, i32 25, !dbg !6881
  %155 = load %struct.clk*, %struct.clk** %reg_clk212, align 8, !dbg !6881
  call void @clk_disable_unprepare(%struct.clk* %155) #5, !dbg !6882
  br label %put_hcd, !dbg !6882

put_hcd:                                          ; preds = %disable_reg_clk, %if.then86, %if.then78, %if.then67
  call void @llvm.dbg.label(metadata !6883), !dbg !6884
  %156 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6885
  call void @usb_put_hcd(%struct.usb_hcd* %156) #5, !dbg !6886
  br label %disable_runtime, !dbg !6886

disable_runtime:                                  ; preds = %put_hcd, %if.then62
  call void @llvm.dbg.label(metadata !6887), !dbg !6888
  %157 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6889
  %dev213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 3, !dbg !6890
  call void @pm_runtime_put_noidle(%struct.device* %dev213) #5, !dbg !6891
  %158 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6892
  %dev214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 3, !dbg !6893
  call void @pm_runtime_disable(%struct.device* %dev214) #5, !dbg !6894
  %159 = load i32, i32* %ret, align 4, !dbg !6895
  store i32 %159, i32* %retval, align 4, !dbg !6896
  br label %return, !dbg !6896

return:                                           ; preds = %disable_runtime, %if.end205, %if.then50, %if.then2, %if.then
  %160 = load i32, i32* %retval, align 4, !dbg !6897
  ret i32 %160, !dbg !6897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_remove(%struct.platform_device* %dev) #2 !dbg !6898 {
entry:
  %dev.addr = alloca %struct.platform_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %clk = alloca %struct.clk*, align 8
  %reg_clk = alloca %struct.clk*, align 8
  %shared_hcd = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %dev, %struct.platform_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %dev.addr, metadata !6899, metadata !DIExpression()), !dbg !6900
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !6901, metadata !DIExpression()), !dbg !6902
  %0 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !6903
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !6904
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !6904
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !6902
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6905, metadata !DIExpression()), !dbg !6906
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6907
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %2) #5, !dbg !6908
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !6906
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !6909, metadata !DIExpression()), !dbg !6910
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6911
  %clk2 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %3, i32 0, i32 24, !dbg !6912
  %4 = load %struct.clk*, %struct.clk** %clk2, align 8, !dbg !6912
  store %struct.clk* %4, %struct.clk** %clk, align 8, !dbg !6910
  call void @llvm.dbg.declare(metadata %struct.clk** %reg_clk, metadata !6913, metadata !DIExpression()), !dbg !6914
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6915
  %reg_clk3 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 25, !dbg !6916
  %6 = load %struct.clk*, %struct.clk** %reg_clk3, align 8, !dbg !6916
  store %struct.clk* %6, %struct.clk** %reg_clk, align 8, !dbg !6914
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %shared_hcd, metadata !6917, metadata !DIExpression()), !dbg !6918
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6919
  %shared_hcd4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 1, !dbg !6920
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd4, align 8, !dbg !6920
  store %struct.usb_hcd* %8, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6918
  %9 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !6921
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !6922
  %call6 = call i32 @pm_runtime_get_sync(%struct.device* %dev5) #5, !dbg !6923
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6924
  %xhc_state = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 47, !dbg !6925
  %11 = load i32, i32* %xhc_state, align 8, !dbg !6926
  %or = or i32 %11, 4, !dbg !6926
  store i32 %or, i32* %xhc_state, align 8, !dbg !6926
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6927
  call void @usb_remove_hcd(%struct.usb_hcd* %12) #5, !dbg !6928
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6929
  %shared_hcd7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 1, !dbg !6930
  store %struct.usb_hcd* null, %struct.usb_hcd** %shared_hcd7, align 8, !dbg !6931
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6932
  %usb_phy = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 10, !dbg !6933
  %15 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !6933
  call void @usb_phy_shutdown(%struct.usb_phy* %15) #5, !dbg !6934
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6935
  call void @usb_remove_hcd(%struct.usb_hcd* %16) #5, !dbg !6936
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6937
  call void @usb_put_hcd(%struct.usb_hcd* %17) #5, !dbg !6938
  %18 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !6939
  call void @clk_disable_unprepare(%struct.clk* %18) #5, !dbg !6940
  %19 = load %struct.clk*, %struct.clk** %reg_clk, align 8, !dbg !6941
  call void @clk_disable_unprepare(%struct.clk* %19) #5, !dbg !6942
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6943
  call void @usb_put_hcd(%struct.usb_hcd* %20) #5, !dbg !6944
  %21 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !6945
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 3, !dbg !6946
  call void @pm_runtime_disable(%struct.device* %dev8) #5, !dbg !6947
  %22 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !6948
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 3, !dbg !6949
  call void @pm_runtime_put_noidle(%struct.device* %dev9) #5, !dbg !6950
  %23 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !6951
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 3, !dbg !6952
  %call11 = call i32 @pm_runtime_set_suspended(%struct.device* %dev10) #5, !dbg !6953
  ret i32 0, !dbg !6954
}

; Function Attrs: noredzone
declare dso_local void @usb_hcd_platform_shutdown(%struct.platform_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_disabled() #1

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_of_node(%struct.fwnode_handle* %fwnode) #2 !dbg !6955 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !6958
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !6958
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #5, !dbg !6959
  br i1 %call, label %land.end, label %land.rhs, !dbg !6960

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !6961
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !6962
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !6962
  %cmp = icmp eq %struct.fwnode_operations* %3, @of_fwnode_ops, !dbg !6963
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6964
  ret i1 %4, !dbg !6965
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_coerce_mask_and_coherent(%struct.device* %dev, i64 %mask) #2 !dbg !6966 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6970, metadata !DIExpression()), !dbg !6971
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !6972, metadata !DIExpression()), !dbg !6973
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6974
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 17, !dbg !6975
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6976
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 16, !dbg !6977
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8, !dbg !6978
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6979
  %3 = load i64, i64* %mask.addr, align 8, !dbg !6980
  %call = call i32 @dma_set_mask_and_coherent(%struct.device* %2, i64 %3) #5, !dbg !6981
  ret i32 %call, !dbg !6982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_set_mask_and_coherent(%struct.device* %dev, i64 %mask) #2 !dbg !6983 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6984, metadata !DIExpression()), !dbg !6985
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !6986, metadata !DIExpression()), !dbg !6987
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6988, metadata !DIExpression()), !dbg !6989
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6990
  %1 = load i64, i64* %mask.addr, align 8, !dbg !6991
  %call = call i32 @dma_set_mask(%struct.device* %0, i64 %1) #5, !dbg !6992
  store i32 %call, i32* %rc, align 4, !dbg !6989
  %2 = load i32, i32* %rc, align 4, !dbg !6993
  %cmp = icmp eq i32 %2, 0, !dbg !6995
  br i1 %cmp, label %if.then, label %if.end, !dbg !6996

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6997
  %4 = load i64, i64* %mask.addr, align 8, !dbg !6998
  %call1 = call i32 @dma_set_coherent_mask(%struct.device* %3, i64 %4) #5, !dbg !6999
  br label %if.end, !dbg !6999

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %rc, align 4, !dbg !7000
  ret i32 %5, !dbg !7001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #2 !dbg !7002 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7004, metadata !DIExpression()), !dbg !7005
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7006
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #5, !dbg !7007
  ret i32 %call, !dbg !7008
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #2 !dbg !7009 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !7010, metadata !DIExpression()), !dbg !7016
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !7021, metadata !DIExpression()), !dbg !7029
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !7031, metadata !DIExpression()), !dbg !7032
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7033, metadata !DIExpression()), !dbg !7034
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7035, metadata !DIExpression()), !dbg !7036
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7037
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7038
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !7039
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7040
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !7040
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7041
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !7042
  %conv.i.i = trunc i64 %4 to i32, !dbg !7042
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #7, !dbg !7043
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7044
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !7044
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #7, !dbg !7044
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7045
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !7046
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !7047
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #6, !dbg !7048, !srcloc !7049
  ret void, !dbg !7050
}

; Function Attrs: noredzone
declare dso_local %struct.usb_hcd* @__usb_create_hcd(%struct.hc_driver*, %struct.device*, %struct.device*, i8*, %struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !7051 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7054, metadata !DIExpression()), !dbg !7055
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7056
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !7058
  %1 = load i8*, i8** %init_name, align 8, !dbg !7058
  %tobool = icmp ne i8* %1, null, !dbg !7056
  br i1 %tobool, label %if.then, label %if.end, !dbg !7059

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7060
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !7061
  %3 = load i8*, i8** %init_name1, align 8, !dbg !7061
  store i8* %3, i8** %retval, align 8, !dbg !7062
  br label %return, !dbg !7062

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7063
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !7064
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !7065
  store i8* %call, i8** %retval, align 8, !dbg !7066
  br label %return, !dbg !7066

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !7067
  ret i8* %5, !dbg !7067
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_get_and_ioremap_resource(%struct.platform_device*, i32, %struct.resource**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !7068 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7072, metadata !DIExpression()), !dbg !7073
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !7074
  %1 = ptrtoint i8* %0 to i64, !dbg !7074
  %2 = inttoptr i64 %1 to i8*, !dbg !7074
  %3 = ptrtoint i8* %2 to i64, !dbg !7074
  %cmp = icmp uge i64 %3, -4095, !dbg !7074
  %lnot = xor i1 %cmp, true, !dbg !7074
  %lnot1 = xor i1 %lnot, true, !dbg !7074
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7074
  %conv = sext i32 %lnot.ext to i64, !dbg !7074
  %tobool = icmp ne i64 %conv, 0, !dbg !7074
  ret i1 %tobool, !dbg !7075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !7076 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7079, metadata !DIExpression()), !dbg !7080
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !7081
  %1 = ptrtoint i8* %0 to i64, !dbg !7082
  ret i64 %1, !dbg !7083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #2 !dbg !7084 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !7089, metadata !DIExpression()), !dbg !7090
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !7091
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !7092
  %1 = load i64, i64* %end, align 8, !dbg !7092
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !7093
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !7094
  %3 = load i64, i64* %start, align 8, !dbg !7094
  %sub = sub i64 %1, %3, !dbg !7095
  %add = add i64 %sub, 1, !dbg !7096
  ret i64 %add, !dbg !7097
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get_optional(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !7098 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !7101, metadata !DIExpression()), !dbg !7102
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7103, metadata !DIExpression()), !dbg !7104
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !7105
  %call = call i32 @clk_prepare(%struct.clk* %0) #5, !dbg !7106
  store i32 %call, i32* %ret, align 4, !dbg !7107
  %1 = load i32, i32* %ret, align 4, !dbg !7108
  %tobool = icmp ne i32 %1, 0, !dbg !7108
  br i1 %tobool, label %if.then, label %if.end, !dbg !7110

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !7111
  store i32 %2, i32* %retval, align 4, !dbg !7112
  br label %return, !dbg !7112

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !7113
  %call1 = call i32 @clk_enable(%struct.clk* %3) #5, !dbg !7114
  store i32 %call1, i32* %ret, align 4, !dbg !7115
  %4 = load i32, i32* %ret, align 4, !dbg !7116
  %tobool2 = icmp ne i32 %4, 0, !dbg !7116
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7118

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !7119
  call void @clk_unprepare(%struct.clk* %5) #5, !dbg !7120
  br label %if.end4, !dbg !7120

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !7121
  store i32 %6, i32* %retval, align 4, !dbg !7122
  br label %return, !dbg !7122

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7123
  ret i32 %7, !dbg !7123
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #2 !dbg !7124 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7127, metadata !DIExpression()), !dbg !7128
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7129
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !7130
  %1 = load i8*, i8** %platform_data, align 8, !dbg !7130
  ret i8* %1, !dbg !7131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @device_set_wakeup_capable(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_property_read_bool(%struct.device* %dev, i8* %propname) #2 !dbg !7132 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7136, metadata !DIExpression()), !dbg !7137
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !7138, metadata !DIExpression()), !dbg !7139
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7140
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !7141
  %call = call zeroext i1 @device_property_present(%struct.device* %0, i8* %1) #5, !dbg !7142
  ret i1 %call, !dbg !7143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_property_read_u32(%struct.device* %dev, i8* %propname, i32* %val) #2 !dbg !7144 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7147, metadata !DIExpression()), !dbg !7148
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !7149, metadata !DIExpression()), !dbg !7150
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !7151, metadata !DIExpression()), !dbg !7152
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7153
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !7154
  %2 = load i32*, i32** %val.addr, align 8, !dbg !7155
  %call = call i32 @device_property_read_u32_array(%struct.device* %0, i8* %1, i32* %2, i64 1) #5, !dbg !7156
  ret i32 %call, !dbg !7157
}

; Function Attrs: noredzone
declare dso_local %struct.usb_phy* @devm_usb_get_phy_by_phandle(%struct.device*, i8*, i8 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_phy_init(%struct.usb_phy* %x) #2 !dbg !7158 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !7159, metadata !DIExpression()), !dbg !7160
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7161
  %tobool = icmp ne %struct.usb_phy* %0, null, !dbg !7161
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7163

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7164
  %init = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 22, !dbg !7165
  %2 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %init, align 8, !dbg !7165
  %tobool1 = icmp ne i32 (%struct.usb_phy*)* %2, null, !dbg !7164
  br i1 %tobool1, label %if.then, label %if.end, !dbg !7166

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7167
  %init2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 22, !dbg !7168
  %4 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %init2, align 8, !dbg !7168
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7169
  %call = call i32 %4(%struct.usb_phy* %5) #5, !dbg !7167
  store i32 %call, i32* %retval, align 4, !dbg !7170
  br label %return, !dbg !7170

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !7171
  br label %return, !dbg !7171

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !7172
  ret i32 %6, !dbg !7172
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_usb_host_tpl_support(%struct.device_node*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_enable_async_suspend(%struct.device* %dev) #2 !dbg !7173 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7174, metadata !DIExpression()), !dbg !7175
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7176
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7178
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !7179
  %bf.load = load i16, i16* %is_prepared, align 4, !dbg !7179
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !7179
  %bf.clear = and i16 %bf.lshr, 1, !dbg !7179
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !7179
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !7180

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7181
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !7182
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 1, !dbg !7183
  %bf.load2 = load i16, i16* %async_suspend, align 4, !dbg !7184
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !7184
  %bf.set = or i16 %bf.clear3, 2, !dbg !7184
  store i16 %bf.set, i16* %async_suspend, align 4, !dbg !7184
  br label %if.end, !dbg !7181

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #2 !dbg !7186 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !7187, metadata !DIExpression()), !dbg !7191
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !7204, metadata !DIExpression()), !dbg !7205
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !7206, metadata !DIExpression()), !dbg !7207
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !7208, metadata !DIExpression()), !dbg !7210
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !7211, metadata !DIExpression()), !dbg !7210
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !7212, metadata !DIExpression()), !dbg !7210
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !7213, metadata !DIExpression()), !dbg !7210
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !7214, metadata !DIExpression()), !dbg !7210
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !7215, metadata !DIExpression()), !dbg !7221
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !7223, metadata !DIExpression()), !dbg !7224
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !7225, metadata !DIExpression()), !dbg !7226
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !7227, metadata !DIExpression()), !dbg !7228
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !7229, metadata !DIExpression()), !dbg !7230
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !7231, metadata !DIExpression()), !dbg !7232
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !7233, metadata !DIExpression()), !dbg !7234
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !7235, metadata !DIExpression()), !dbg !7236
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !7021, metadata !DIExpression()), !dbg !7237
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !7031, metadata !DIExpression()), !dbg !7239
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7240, metadata !DIExpression()), !dbg !7241
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !7242, metadata !DIExpression()), !dbg !7243
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !7244, metadata !DIExpression()), !dbg !7245
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7246, metadata !DIExpression()), !dbg !7247
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7248
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7249
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !7250
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7251
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !7251
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7252
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !7253
  %conv.i.i = trunc i64 %4 to i32, !dbg !7253
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #7, !dbg !7254
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7255
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !7255
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #7, !dbg !7255
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7256
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !7257
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !7258
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !7259
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !7260
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !7261
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !7262
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !7263
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !7263
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !7263
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !7230
  br label %do.body.i.i.i, !dbg !7264

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !7265
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !7265
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !7265
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !7265
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !7265
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !7265
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !7268

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !7269

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !7270
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !7271
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !7272
  %add.i.i.i = add i32 %19, %20, !dbg !7273
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !7210
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !7210
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !7210
  %23 = load i32, i32* %22, align 4, !dbg !7210
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !7210
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !7210
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !7210
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !7210
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !7210
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !7210
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !7210
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !7210
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !7210
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #6, !dbg !7210, !srcloc !7274
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !7210
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !7210
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !7210
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !7210
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !7275
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !7275
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !7275
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !7275
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !7275
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !7275
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !7210

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !7275
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !7275
  store i32 %31, i32* %32, align 4, !dbg !7275
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !7275

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !7210
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !7210
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !7210
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !7210
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !7210
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !7275
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !7210
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !7277
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !7278
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !7279, !llvm.loop !7280

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !7282
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !7283
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !7284
  ret void, !dbg !7285
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_forbid(%struct.device*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_remove_hcd(%struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_phy_shutdown(%struct.usb_phy* %x) #2 !dbg !7286 {
entry:
  %x.addr = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !7287, metadata !DIExpression()), !dbg !7288
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7289
  %tobool = icmp ne %struct.usb_phy* %0, null, !dbg !7289
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7291

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7292
  %shutdown = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 23, !dbg !7293
  %2 = load void (%struct.usb_phy*)*, void (%struct.usb_phy*)** %shutdown, align 8, !dbg !7293
  %tobool1 = icmp ne void (%struct.usb_phy*)* %2, null, !dbg !7292
  br i1 %tobool1, label %if.then, label %if.end, !dbg !7294

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7295
  %shutdown2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 23, !dbg !7296
  %4 = load void (%struct.usb_phy*)*, void (%struct.usb_phy*)** %shutdown2, align 8, !dbg !7296
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !7297
  call void %4(%struct.usb_phy* %5) #5, !dbg !7295
  br label %if.end, !dbg !7295

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !7298
}

; Function Attrs: noredzone
declare dso_local void @usb_put_hcd(%struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !7299 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !7302, metadata !DIExpression()), !dbg !7303
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !7304
  call void @clk_disable(%struct.clk* %0) #5, !dbg !7305
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !7306
  call void @clk_unprepare(%struct.clk* %1) #5, !dbg !7307
  ret void, !dbg !7308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !7309 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7310, metadata !DIExpression()), !dbg !7311
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7312
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #5, !dbg !7313
  ret void, !dbg !7314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #2 !dbg !7315 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7316, metadata !DIExpression()), !dbg !7317
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !7318
  %tobool = icmp ne i8* %0, null, !dbg !7318
  %lnot = xor i1 %tobool, true, !dbg !7318
  %lnot1 = xor i1 %lnot, true, !dbg !7318
  %lnot2 = xor i1 %lnot1, true, !dbg !7318
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7318
  %conv = sext i32 %lnot.ext to i64, !dbg !7318
  %tobool3 = icmp ne i64 %conv, 0, !dbg !7318
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !7319

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !7320
  %2 = ptrtoint i8* %1 to i64, !dbg !7320
  %3 = inttoptr i64 %2 to i8*, !dbg !7320
  %4 = ptrtoint i8* %3 to i64, !dbg !7320
  %cmp = icmp uge i64 %4, -4095, !dbg !7320
  %lnot5 = xor i1 %cmp, true, !dbg !7320
  %lnot7 = xor i1 %lnot5, true, !dbg !7320
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !7320
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !7320
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !7319
  br label %lor.end, !dbg !7319

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !7321
}

; Function Attrs: noredzone
declare dso_local i32 @dma_set_mask(%struct.device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !7322 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7326, metadata !DIExpression()), !dbg !7327
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7328, metadata !DIExpression()), !dbg !7329
  ret i1 true, !dbg !7330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !7331 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7335, metadata !DIExpression()), !dbg !7336
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7337, metadata !DIExpression()), !dbg !7338
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !7339, metadata !DIExpression()), !dbg !7340
  ret void, !dbg !7341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !7342 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !7347, metadata !DIExpression()), !dbg !7348
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !7349
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !7350
  %1 = load i8*, i8** %name, align 8, !dbg !7350
  ret i8* %1, !dbg !7351
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @device_property_present(%struct.device*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i64) #1

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !7352 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !7357, metadata !DIExpression()), !dbg !7358
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !7359
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !7360
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !7361
  ret i8* %call, !dbg !7362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !7363 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7364, metadata !DIExpression()), !dbg !7365
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7366
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #5, !dbg !7367
  ret i32 %call, !dbg !7368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_suspended(%struct.device* %dev) #2 !dbg !7369 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7370, metadata !DIExpression()), !dbg !7371
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7372
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 2) #5, !dbg !7373
  ret i32 %call, !dbg !7374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !7375 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7376, metadata !DIExpression()), !dbg !7377
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7378
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !7379
  %1 = load i8*, i8** %driver_data, align 8, !dbg !7379
  ret i8* %1, !dbg !7380
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_mvebu_mbus_init_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7381 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7383, metadata !DIExpression()), !dbg !7384
  ret i32 0, !dbg !7385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_mvebu_a3700_init_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7386 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7387, metadata !DIExpression()), !dbg !7388
  ret i32 0, !dbg !7389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_rcar_start(%struct.usb_hcd* %hcd) #2 !dbg !7390 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7392, metadata !DIExpression()), !dbg !7393
  ret void, !dbg !7394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_rcar_init_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7395 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7396, metadata !DIExpression()), !dbg !7397
  ret i32 0, !dbg !7398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_rcar_resume_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7399 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7400, metadata !DIExpression()), !dbg !7401
  ret i32 0, !dbg !7402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_suspend(%struct.device* %dev) #2 !dbg !7403 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7404, metadata !DIExpression()), !dbg !7405
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !7406, metadata !DIExpression()), !dbg !7407
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7408
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !7409
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !7409
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !7407
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !7410, metadata !DIExpression()), !dbg !7411
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7412
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %2) #5, !dbg !7413
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !7411
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7414, metadata !DIExpression()), !dbg !7415
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7416
  %call2 = call i32 @xhci_priv_suspend_quirk(%struct.usb_hcd* %3) #5, !dbg !7417
  store i32 %call2, i32* %ret, align 4, !dbg !7418
  %4 = load i32, i32* %ret, align 4, !dbg !7419
  %tobool = icmp ne i32 %4, 0, !dbg !7419
  br i1 %tobool, label %if.then, label %if.end, !dbg !7421

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !7422
  store i32 %5, i32* %retval, align 4, !dbg !7423
  br label %return, !dbg !7423

if.end:                                           ; preds = %entry
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7424
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7425
  %call3 = call zeroext i1 @device_may_wakeup(%struct.device* %7) #5, !dbg !7426
  %call4 = call i32 @xhci_suspend(%struct.xhci_hcd* %6, i1 zeroext %call3) #5, !dbg !7427
  store i32 %call4, i32* %retval, align 4, !dbg !7428
  br label %return, !dbg !7428

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !7429
  ret i32 %8, !dbg !7429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_resume(%struct.device* %dev) #2 !dbg !7430 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7431, metadata !DIExpression()), !dbg !7432
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !7433, metadata !DIExpression()), !dbg !7434
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7435
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !7436
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !7436
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !7434
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !7437, metadata !DIExpression()), !dbg !7438
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7439
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %2) #5, !dbg !7440
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !7438
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7441, metadata !DIExpression()), !dbg !7442
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7443
  %call2 = call i32 @xhci_priv_resume_quirk(%struct.usb_hcd* %3) #5, !dbg !7444
  store i32 %call2, i32* %ret, align 4, !dbg !7445
  %4 = load i32, i32* %ret, align 4, !dbg !7446
  %tobool = icmp ne i32 %4, 0, !dbg !7446
  br i1 %tobool, label %if.then, label %if.end, !dbg !7448

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !7449
  store i32 %5, i32* %retval, align 4, !dbg !7450
  br label %return, !dbg !7450

if.end:                                           ; preds = %entry
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7451
  %call3 = call i32 @xhci_resume(%struct.xhci_hcd* %6, i1 zeroext false) #5, !dbg !7452
  store i32 %call3, i32* %ret, align 4, !dbg !7453
  %7 = load i32, i32* %ret, align 4, !dbg !7454
  %tobool4 = icmp ne i32 %7, 0, !dbg !7454
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !7456

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !7457
  store i32 %8, i32* %retval, align 4, !dbg !7458
  br label %return, !dbg !7458

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7459
  call void @pm_runtime_disable(%struct.device* %9) #5, !dbg !7460
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7461
  %call7 = call i32 @pm_runtime_set_active(%struct.device* %10) #5, !dbg !7462
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7463
  call void @pm_runtime_enable(%struct.device* %11) #5, !dbg !7464
  store i32 0, i32* %retval, align 4, !dbg !7465
  br label %return, !dbg !7465

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !7466
  ret i32 %12, !dbg !7466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_runtime_suspend(%struct.device* %dev) #2 !dbg !7467 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7468, metadata !DIExpression()), !dbg !7469
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !7470, metadata !DIExpression()), !dbg !7471
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7472
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !7473
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !7473
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !7471
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !7474, metadata !DIExpression()), !dbg !7475
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7476
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %2) #5, !dbg !7477
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !7475
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7478, metadata !DIExpression()), !dbg !7479
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7480
  %call2 = call i32 @xhci_priv_suspend_quirk(%struct.usb_hcd* %3) #5, !dbg !7481
  store i32 %call2, i32* %ret, align 4, !dbg !7482
  %4 = load i32, i32* %ret, align 4, !dbg !7483
  %tobool = icmp ne i32 %4, 0, !dbg !7483
  br i1 %tobool, label %if.then, label %if.end, !dbg !7485

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !7486
  store i32 %5, i32* %retval, align 4, !dbg !7487
  br label %return, !dbg !7487

if.end:                                           ; preds = %entry
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7488
  %call3 = call i32 @xhci_suspend(%struct.xhci_hcd* %6, i1 zeroext true) #5, !dbg !7489
  store i32 %call3, i32* %retval, align 4, !dbg !7490
  br label %return, !dbg !7490

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7491
  ret i32 %7, !dbg !7491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_plat_runtime_resume(%struct.device* %dev) #2 !dbg !7492 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7493, metadata !DIExpression()), !dbg !7494
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !7495, metadata !DIExpression()), !dbg !7496
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7497
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !7498
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !7498
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !7496
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !7499, metadata !DIExpression()), !dbg !7500
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !7501
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %2) #5, !dbg !7502
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !7500
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7503
  %call2 = call i32 @xhci_resume(%struct.xhci_hcd* %3, i1 zeroext false) #5, !dbg !7504
  ret i32 %call2, !dbg !7505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_priv_suspend_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7506 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %priv = alloca %struct.xhci_plat_priv*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7507, metadata !DIExpression()), !dbg !7508
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !7509, metadata !DIExpression()), !dbg !7510
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !7511
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #5, !dbg !7511
  %priv1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %call, i32 0, i32 68, !dbg !7511
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv1, i64 0, i64 0, !dbg !7511
  %1 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !7511
  store %struct.xhci_plat_priv* %1, %struct.xhci_plat_priv** %priv, align 8, !dbg !7510
  %2 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !7512
  %suspend_quirk = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %2, i32 0, i32 4, !dbg !7514
  %3 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %suspend_quirk, align 8, !dbg !7514
  %tobool = icmp ne i32 (%struct.usb_hcd*)* %3, null, !dbg !7512
  br i1 %tobool, label %if.end, label %if.then, !dbg !7515

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7516
  br label %return, !dbg !7516

if.end:                                           ; preds = %entry
  %4 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !7517
  %suspend_quirk2 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %4, i32 0, i32 4, !dbg !7518
  %5 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %suspend_quirk2, align 8, !dbg !7518
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !7519
  %call3 = call i32 %5(%struct.usb_hcd* %6) #5, !dbg !7517
  store i32 %call3, i32* %retval, align 4, !dbg !7520
  br label %return, !dbg !7520

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7521
  ret i32 %7, !dbg !7521
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_suspend(%struct.xhci_hcd*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #2 !dbg !7522 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7525, metadata !DIExpression()), !dbg !7526
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7527
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7528
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !7529
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !7529
  %bf.clear = and i16 %bf.load, 1, !dbg !7529
  %bf.cast = zext i16 %bf.clear to i32, !dbg !7529
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !7527
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7530

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7531
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !7532
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !7533
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !7533
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !7534
  %lnot = xor i1 %tobool2, true, !dbg !7534
  %lnot3 = xor i1 %lnot, true, !dbg !7535
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !7536
  ret i1 %3, !dbg !7537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_priv_resume_quirk(%struct.usb_hcd* %hcd) #2 !dbg !7538 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %priv = alloca %struct.xhci_plat_priv*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7539, metadata !DIExpression()), !dbg !7540
  call void @llvm.dbg.declare(metadata %struct.xhci_plat_priv** %priv, metadata !7541, metadata !DIExpression()), !dbg !7542
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !7543
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #5, !dbg !7543
  %priv1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %call, i32 0, i32 68, !dbg !7543
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %priv1, i64 0, i64 0, !dbg !7543
  %1 = bitcast i64* %arraydecay to %struct.xhci_plat_priv*, !dbg !7543
  store %struct.xhci_plat_priv* %1, %struct.xhci_plat_priv** %priv, align 8, !dbg !7542
  %2 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !7544
  %resume_quirk = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %2, i32 0, i32 5, !dbg !7546
  %3 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %resume_quirk, align 8, !dbg !7546
  %tobool = icmp ne i32 (%struct.usb_hcd*)* %3, null, !dbg !7544
  br i1 %tobool, label %if.end, label %if.then, !dbg !7547

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7548
  br label %return, !dbg !7548

if.end:                                           ; preds = %entry
  %4 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %priv, align 8, !dbg !7549
  %resume_quirk2 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %4, i32 0, i32 5, !dbg !7550
  %5 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %resume_quirk2, align 8, !dbg !7550
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !7551
  %call3 = call i32 %5(%struct.usb_hcd* %6) #5, !dbg !7549
  store i32 %call3, i32* %retval, align 4, !dbg !7552
  br label %return, !dbg !7552

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7553
  ret i32 %7, !dbg !7553
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_resume(%struct.xhci_hcd*, i1 zeroext) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6347, !6348, !6349, !6350}
!llvm.ident = !{!6351}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias307", scope: !2, file: !3, line: 499, type: !6344, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !273, globals: !6231, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/host/xhci-plat.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !24, !30, !37, !49, !56, !61, !67, !72, !78, !85, !91, !100, !108, !114, !120, !127, !134, !148, !160, !169, !176, !181, !187, !194, !217, !233, !241, !246, !252, !258, !268}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !13, line: 41, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !18, line: 15, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !25, line: 118, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !31, line: 19, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !38, line: 49, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48}
!40 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!46 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!47 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!48 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !50, line: 502, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !25, line: 315, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !62, line: 546, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !68, line: 65, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !73, line: 16, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !79, line: 59, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !86, line: 54, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !92, line: 296, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !101, line: 9, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !109, line: 26, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !115, line: 44, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !121, line: 343, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !50, line: 524, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !135, line: 76, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!137 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !149, line: 1156, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !149, line: 1146, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168}
!162 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!166 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!167 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!168 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !170, line: 96, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!175 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !170, line: 476, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_type", file: !182, line: 36, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/usb/phy.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "USB_PHY_TYPE_UNDEFINED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "USB_PHY_TYPE_USB2", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "USB_PHY_TYPE_USB3", value: 2, isUnsigned: true)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_events", file: !182, line: 27, baseType: !7, size: 32, elements: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "USB_EVENT_NONE", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "USB_EVENT_VBUS", value: 1, isUnsigned: true)
!191 = !DIEnumerator(name: "USB_EVENT_ID", value: 2, isUnsigned: true)
!192 = !DIEnumerator(name: "USB_EVENT_CHARGER", value: 3, isUnsigned: true)
!193 = !DIEnumerator(name: "USB_EVENT_ENUMERATED", value: 4, isUnsigned: true)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !195, line: 24, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!197 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!200 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!201 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!202 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!203 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!204 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!205 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!206 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!207 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!208 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!209 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!210 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!211 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!212 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!213 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!214 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!215 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!216 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_otg_state", file: !182, line: 43, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!219 = !DIEnumerator(name: "OTG_STATE_UNDEFINED", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OTG_STATE_B_IDLE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OTG_STATE_B_SRP_INIT", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OTG_STATE_B_PERIPHERAL", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OTG_STATE_B_WAIT_ACON", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OTG_STATE_B_HOST", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OTG_STATE_A_IDLE", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VRISE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OTG_STATE_A_WAIT_BCON", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OTG_STATE_A_HOST", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OTG_STATE_A_SUSPEND", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OTG_STATE_A_PERIPHERAL", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VFALL", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OTG_STATE_A_VBUS_ERR", value: 13, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_type", file: !234, line: 16, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/uapi/linux/usb/charger.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !237, !238, !239, !240}
!236 = !DIEnumerator(name: "UNKNOWN_TYPE", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "SDP_TYPE", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "DCP_TYPE", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "CDP_TYPE", value: 3, isUnsigned: true)
!240 = !DIEnumerator(name: "ACA_TYPE", value: 4, isUnsigned: true)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_state", file: !234, line: 25, baseType: !7, size: 32, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "USB_CHARGER_DEFAULT", value: 0, isUnsigned: true)
!244 = !DIEnumerator(name: "USB_CHARGER_PRESENT", value: 1, isUnsigned: true)
!245 = !DIEnumerator(name: "USB_CHARGER_ABSENT", value: 2, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !247, line: 75, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!250 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!251 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !149, line: 1181, baseType: !7, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!255 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!256 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!257 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xhci_ring_type", file: !259, line: 1562, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "drivers/usb/host/xhci.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !263, !264, !265, !266, !267}
!261 = !DIEnumerator(name: "TYPE_CTRL", value: 0, isUnsigned: true)
!262 = !DIEnumerator(name: "TYPE_ISOC", value: 1, isUnsigned: true)
!263 = !DIEnumerator(name: "TYPE_BULK", value: 2, isUnsigned: true)
!264 = !DIEnumerator(name: "TYPE_INTR", value: 3, isUnsigned: true)
!265 = !DIEnumerator(name: "TYPE_STREAM", value: 4, isUnsigned: true)
!266 = !DIEnumerator(name: "TYPE_COMMAND", value: 5, isUnsigned: true)
!267 = !DIEnumerator(name: "TYPE_EVENT", value: 6, isUnsigned: true)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 10, baseType: !7, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !272}
!271 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!272 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!273 = !{!274, !277, !5847, !413, !437, !398, !6226, !808, !6229}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !276, line: 76, flags: DIFlagFwdDecl)
!276 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_plat_priv", file: !279, line: 13, size: 384, elements: !280)
!279 = !DIFile(filename: "drivers/usb/host/xhci-plat.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !285, !287, !5844, !5845, !5846}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_name", scope: !278, file: !279, line: 14, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !278, file: !279, line: 15, baseType: !286, size: 64, offset: 64)
!286 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "plat_start", scope: !278, file: !279, line: 16, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !247, line: 81, size: 4672, elements: !293)
!293 = !{!294, !5371, !5372, !5373, !5374, !5376, !5377, !5439, !5440, !5441, !5559, !5777, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5798, !5799, !5800, !5828, !5829, !5831, !5832, !5833, !5834, !5839, !5840, !5843}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !292, file: !247, line: 86, baseType: !295, size: 960)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !170, line: 424, size: 960, elements: !296)
!296 = !{!297, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5080, !5366, !5367, !5368, !5369, !5370}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !295, file: !170, line: 425, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !121, line: 461, size: 5568, elements: !300)
!300 = !{!301, !4529, !4530, !4533, !4534, !4584, !4675, !4676, !4677, !4678, !4679, !4688, !4782, !4795, !4990, !4991, !4995, !4997, !4998, !4999, !5003, !5009, !5010, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5051, !5052, !5053, !5056, !5059, !5060, !5061, !5062}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !299, file: !121, line: 462, baseType: !302, size: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !303, line: 64, size: 512, elements: !304)
!303 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !313, !315, !376, !4396, !4523, !4524, !4525, !4526, !4527, !4528}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 65, baseType: !282, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !302, file: !303, line: 66, baseType: !307, size: 128, offset: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !308, line: 178, size: 128, elements: !309)
!308 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !308, line: 179, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !307, file: !308, line: 179, baseType: !311, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !302, file: !303, line: 67, baseType: !314, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !302, file: !303, line: 68, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !303, line: 192, size: 704, elements: !318)
!318 = !{!319, !320, !336, !337}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !317, file: !303, line: 193, baseType: !307, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !317, file: !303, line: 194, baseType: !321, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !322, line: 83, baseType: !323)
!322 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !322, line: 71, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !322, line: 72, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !322, line: 72, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !326, file: !322, line: 73, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !322, line: 20, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !329, file: !322, line: 21, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !333, line: 25, baseType: !334)
!333 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 25, elements: !335)
!335 = !{}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !317, file: !303, line: 195, baseType: !302, size: 512, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !317, file: !303, line: 196, baseType: !338, size: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !303, line: 156, size: 192, elements: !341)
!341 = !{!342, !348, !353}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !340, file: !303, line: 157, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !316, !314}
!347 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !303, line: 158, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!282, !316, !314}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !340, file: !303, line: 159, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!347, !316, !314, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !303, line: 148, size: 20736, elements: !360)
!360 = !{!361, !366, !370, !371, !375}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !359, file: !303, line: 149, baseType: !362, size: 192)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 192, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!364 = !{!365}
!365 = !DISubrange(count: 3)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !359, file: !303, line: 150, baseType: !367, size: 4096, offset: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 4096, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !359, file: !303, line: 151, baseType: !347, size: 32, offset: 4288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !359, file: !303, line: 152, baseType: !372, size: 16384, offset: 4320)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 16384, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 2048)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !359, file: !303, line: 153, baseType: !347, size: 32, offset: 20704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !302, file: !303, line: 69, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !303, line: 138, size: 448, elements: !379)
!379 = !{!380, !384, !414, !416, !4360, !4388, !4392}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !378, file: !303, line: 139, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !314}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !378, file: !303, line: 140, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !388, line: 230, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !406}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !387, file: !388, line: 231, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !314, !399, !363}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !308, line: 60, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !396, line: 73, baseType: !397)
!396 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !396, line: 15, baseType: !398)
!398 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !388, line: 30, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !388, line: 31, baseType: !282, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !400, file: !388, line: 32, baseType: !404, size: 16, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !308, line: 19, baseType: !405)
!405 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !387, file: !388, line: 232, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!394, !314, !399, !282, !410}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !308, line: 55, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !396, line: 72, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !396, line: 16, baseType: !413)
!413 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !378, file: !303, line: 141, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !378, file: !303, line: 142, baseType: !417, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !388, line: 84, size: 320, elements: !421)
!421 = !{!422, !423, !427, !4357, !4358}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !388, line: 85, baseType: !282, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !420, file: !388, line: 86, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!404, !314, !399, !347}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !420, file: !388, line: 88, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!404, !314, !431, !347}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !388, line: 168, size: 448, elements: !433)
!433 = !{!434, !435, !436, !438, !4352, !4353}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !432, file: !388, line: 169, baseType: !400, size: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !432, file: !388, line: 170, baseType: !410, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !432, file: !388, line: 171, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !432, file: !388, line: 172, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!394, !442, !314, !431, !363, !620, !410}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !92, line: 916, size: 1856, align: 32, elements: !444)
!444 = !{!445, !463, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4335, !4336, !4345, !4346, !4347, !4348, !4349, !4350, !4351}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !443, file: !92, line: 920, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !92, line: 917, size: 128, elements: !447)
!447 = !{!448, !454}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !446, file: !92, line: 918, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !450, line: 58, size: 64, elements: !451)
!450 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !450, line: 59, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !446, file: !92, line: 919, baseType: !455, size: 128, align: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !308, line: 216, size: 128, align: 64, elements: !456)
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !308, line: 217, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !455, file: !308, line: 218, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !458}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !443, file: !92, line: 921, baseType: !464, size: 128, offset: 128)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !465, line: 8, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !464, file: !465, line: 9, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !470, line: 18, flags: DIFlagFwdDecl)
!470 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !464, file: !465, line: 10, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !470, line: 89, size: 1536, elements: !474)
!474 = !{!475, !476, !486, !494, !495, !517, !4285, !4287, !4299, !4300, !4301, !4302, !4303, !4309, !4310, !4311}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !473, file: !470, line: 91, baseType: !7, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !473, file: !470, line: 92, baseType: !477, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !478, line: 277, baseType: !479)
!478 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !478, line: 277, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !479, file: !478, line: 277, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !478, line: 70, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !478, line: 65, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !483, file: !478, line: 66, baseType: !7, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !473, file: !470, line: 93, baseType: !487, size: 128, offset: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !488, line: 38, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !488, line: 39, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !487, file: !488, line: 39, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !473, file: !470, line: 94, baseType: !472, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !473, file: !470, line: 95, baseType: !496, size: 128, offset: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !470, line: 47, size: 128, elements: !497)
!497 = !{!498, !513}
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !470, line: 48, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !470, line: 48, size: 64, elements: !500)
!500 = !{!501, !510}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !470, line: 49, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !470, line: 49, size: 64, elements: !503)
!503 = !{!504, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !502, file: !470, line: 50, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !506, line: 21, baseType: !507)
!506 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !508, line: 27, baseType: !7)
!508 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !502, file: !470, line: 50, baseType: !505, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !499, file: !470, line: 52, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !506, line: 23, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !508, line: 31, baseType: !286)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !496, file: !470, line: 54, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !473, file: !470, line: 96, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !92, line: 610, size: 4224, elements: !520)
!520 = !{!521, !522, !523, !531, !538, !539, !687, !3998, !3999, !4000, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4261, !4269, !4270, !4271, !4281, !4282, !4283, !4284}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !519, file: !92, line: 611, baseType: !404, size: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !519, file: !92, line: 612, baseType: !405, size: 16, offset: 16)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !519, file: !92, line: 613, baseType: !524, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !525, line: 23, baseType: !526)
!525 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 21, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !526, file: !525, line: 22, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !308, line: 32, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !396, line: 49, baseType: !7)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !519, file: !92, line: 614, baseType: !532, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !525, line: 28, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 26, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !533, file: !525, line: 27, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !308, line: 33, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !396, line: 50, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !519, file: !92, line: 615, baseType: !7, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !519, file: !92, line: 622, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !92, line: 1864, size: 1536, align: 512, elements: !543)
!543 = !{!544, !548, !561, !565, !571, !575, !581, !585, !589, !593, !597, !598, !604, !608, !634, !663, !667, !673, !678, !682, !683}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !542, file: !92, line: 1865, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!472, !518, !472, !7}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !542, file: !92, line: 1866, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!282, !472, !518, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !554, line: 10, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !560}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !553, file: !554, line: 11, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !437}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !553, file: !554, line: 12, baseType: !437, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !542, file: !92, line: 1867, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!347, !518, !347}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !542, file: !92, line: 1868, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !518, !347}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !92, line: 581, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !542, file: !92, line: 1870, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!347, !472, !363, !347}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !542, file: !92, line: 1872, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!347, !518, !472, !404, !579}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !308, line: 30, baseType: !580)
!580 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !542, file: !92, line: 1873, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!347, !472, !518, !472}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !542, file: !92, line: 1874, baseType: !586, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!347, !518, !472}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !542, file: !92, line: 1875, baseType: !590, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!347, !518, !472, !282}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !542, file: !92, line: 1876, baseType: !594, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!347, !518, !472, !404}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !542, file: !92, line: 1877, baseType: !586, size: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !542, file: !92, line: 1878, baseType: !599, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!347, !518, !472, !404, !602}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !308, line: 16, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !308, line: 13, baseType: !505)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !542, file: !92, line: 1879, baseType: !605, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!347, !518, !472, !518, !472, !7}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !542, file: !92, line: 1881, baseType: !609, size: 64, offset: 832)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!347, !472, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !92, line: 219, size: 640, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !623, !631, !632, !633}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !613, file: !92, line: 220, baseType: !7, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !613, file: !92, line: 221, baseType: !404, size: 16, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !613, file: !92, line: 222, baseType: !524, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !613, file: !92, line: 223, baseType: !532, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !613, file: !92, line: 224, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !308, line: 46, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !396, line: 88, baseType: !622)
!622 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !613, file: !92, line: 225, baseType: !624, size: 128, offset: 192)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !625, line: 13, size: 128, elements: !626)
!625 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!626 = !{!627, !630}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !624, file: !625, line: 14, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !625, line: 8, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !508, line: 30, baseType: !622)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !624, file: !625, line: 15, baseType: !398, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !613, file: !92, line: 226, baseType: !624, size: 128, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !613, file: !92, line: 227, baseType: !624, size: 128, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !613, file: !92, line: 234, baseType: !442, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !542, file: !92, line: 1882, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!347, !638, !640, !505, !7}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !642, line: 22, size: 1152, elements: !643)
!642 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645, !646, !647, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !641, file: !642, line: 23, baseType: !505, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !641, file: !642, line: 24, baseType: !404, size: 16, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !641, file: !642, line: 25, baseType: !7, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !641, file: !642, line: 26, baseType: !648, size: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !308, line: 104, baseType: !505)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !641, file: !642, line: 27, baseType: !511, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !641, file: !642, line: 28, baseType: !511, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !641, file: !642, line: 37, baseType: !511, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !641, file: !642, line: 38, baseType: !602, size: 32, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !641, file: !642, line: 39, baseType: !602, size: 32, offset: 352)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !641, file: !642, line: 40, baseType: !524, size: 32, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !641, file: !642, line: 41, baseType: !532, size: 32, offset: 416)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !641, file: !642, line: 42, baseType: !620, size: 64, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !641, file: !642, line: 43, baseType: !624, size: 128, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !641, file: !642, line: 44, baseType: !624, size: 128, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !641, file: !642, line: 45, baseType: !624, size: 128, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !641, file: !642, line: 46, baseType: !624, size: 128, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !641, file: !642, line: 47, baseType: !511, size: 64, offset: 1024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !641, file: !642, line: 48, baseType: !511, size: 64, offset: 1088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !542, file: !92, line: 1883, baseType: !664, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!394, !472, !363, !410}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !542, file: !92, line: 1884, baseType: !668, size: 64, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!347, !518, !671, !511, !511}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !92, line: 50, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !542, file: !92, line: 1886, baseType: !674, size: 64, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!347, !518, !677, !347}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !542, file: !92, line: 1887, baseType: !679, size: 64, offset: 1152)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!347, !518, !472, !442, !7, !404}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !542, file: !92, line: 1890, baseType: !594, size: 64, offset: 1216)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !542, file: !92, line: 1891, baseType: !684, size: 64, offset: 1280)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!347, !518, !569, !347}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !519, file: !92, line: 623, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !92, line: 1416, size: 9472, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !743, !3612, !3694, !3777, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3793, !3797, !3798, !3799, !3800, !3803, !3804, !3805, !3846, !3872, !3873, !3874, !3875, !3876, !3877, !3880, !3881, !3888, !3889, !3890, !3891, !3892, !3951, !3952, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !689, file: !92, line: 1417, baseType: !307, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !689, file: !92, line: 1418, baseType: !602, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !689, file: !92, line: 1419, baseType: !516, size: 8, offset: 160)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !689, file: !92, line: 1420, baseType: !413, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !689, file: !92, line: 1421, baseType: !620, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !689, file: !92, line: 1422, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !92, line: 2228, size: 576, elements: !699)
!699 = !{!700, !701, !702, !709, !713, !717, !721, !722, !723, !733, !736, !737, !738, !740, !741, !742}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !698, file: !92, line: 2229, baseType: !282, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !698, file: !92, line: 2230, baseType: !347, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !698, file: !92, line: 2238, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!347, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !708, line: 28, flags: DIFlagFwdDecl)
!708 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !698, file: !92, line: 2239, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !92, line: 70, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !698, file: !92, line: 2240, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!472, !697, !347, !282, !437}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !698, file: !92, line: 2242, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !688}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !698, file: !92, line: 2243, baseType: !274, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !92, line: 2244, baseType: !697, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !698, file: !92, line: 2245, baseType: !724, size: 64, offset: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !308, line: 182, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !724, file: !308, line: 183, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !308, line: 186, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !308, line: 187, baseType: !727, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !728, file: !308, line: 187, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !698, file: !92, line: 2247, baseType: !734, offset: 576)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !735, line: 187, elements: !335)
!735 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !698, file: !92, line: 2248, baseType: !734, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !698, file: !92, line: 2249, baseType: !734, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !698, file: !92, line: 2250, baseType: !739, offset: 576)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, elements: !364)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !698, file: !92, line: 2252, baseType: !734, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !698, file: !92, line: 2253, baseType: !734, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !698, file: !92, line: 2254, baseType: !734, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !689, file: !92, line: 1423, baseType: !744, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !92, line: 1935, size: 1472, elements: !747)
!747 = !{!748, !752, !756, !757, !761, !781, !785, !786, !787, !791, !795, !796, !797, !798, !804, !809, !810, !866, !867, !868, !869, !3596, !3611}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !746, file: !92, line: 1936, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!518, !688}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !746, file: !92, line: 1937, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !518}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !746, file: !92, line: 1938, baseType: !753, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !746, file: !92, line: 1940, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !518, !347}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !746, file: !92, line: 1941, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!347, !518, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !13, line: 51, size: 320, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !766, file: !13, line: 52, baseType: !398, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !766, file: !13, line: 54, baseType: !398, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !766, file: !13, line: 61, baseType: !620, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !766, file: !13, line: 62, baseType: !620, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !766, file: !13, line: 64, baseType: !12, size: 32, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !766, file: !13, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !766, file: !13, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !766, file: !13, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !766, file: !13, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !766, file: !13, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !766, file: !13, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !766, file: !13, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !766, file: !13, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !746, file: !92, line: 1942, baseType: !782, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!347, !518}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !746, file: !92, line: 1943, baseType: !753, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !746, file: !92, line: 1944, baseType: !718, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !746, file: !92, line: 1945, baseType: !788, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!347, !688, !347}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !746, file: !92, line: 1946, baseType: !792, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!347, !688}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !746, file: !92, line: 1947, baseType: !792, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !746, file: !92, line: 1948, baseType: !792, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !746, file: !92, line: 1949, baseType: !792, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !746, file: !92, line: 1950, baseType: !799, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!347, !472, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !92, line: 57, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !746, file: !92, line: 1951, baseType: !805, size: 64, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!347, !688, !808, !363}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !746, file: !92, line: 1952, baseType: !718, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !746, file: !92, line: 1954, baseType: !811, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!347, !814, !472}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !816, line: 16, size: 896, elements: !817)
!816 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !839, !861, !862, !865}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !815, file: !816, line: 17, baseType: !363, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !815, file: !816, line: 18, baseType: !410, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !815, file: !816, line: 19, baseType: !410, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !815, file: !816, line: 20, baseType: !410, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !815, file: !816, line: 21, baseType: !410, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !815, file: !816, line: 22, baseType: !620, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !815, file: !816, line: 23, baseType: !620, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !816, line: 24, baseType: !826, size: 192, offset: 448)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !827, line: 53, size: 192, elements: !828)
!827 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!828 = !{!829, !837, !838}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !826, file: !827, line: 54, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !831, line: 13, baseType: !832)
!831 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !308, line: 175, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 173, size: 64, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !833, file: !308, line: 174, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !506, line: 22, baseType: !629)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !826, file: !827, line: 55, baseType: !321, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !826, file: !827, line: 59, baseType: !307, size: 128, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !815, file: !816, line: 25, baseType: !840, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !816, line: 31, size: 256, elements: !843)
!843 = !{!844, !849, !853, !857}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !842, file: !816, line: 32, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!437, !814, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !842, file: !816, line: 33, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !814, !437}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !816, line: 34, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!437, !814, !437, !848}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !842, file: !816, line: 35, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!347, !814, !437}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !815, file: !816, line: 26, baseType: !347, size: 32, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !815, file: !816, line: 27, baseType: !863, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !815, file: !816, line: 28, baseType: !437, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !746, file: !92, line: 1955, baseType: !811, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !746, file: !92, line: 1956, baseType: !811, size: 64, offset: 1152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !746, file: !92, line: 1957, baseType: !811, size: 64, offset: 1216)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !746, file: !92, line: 1963, baseType: !870, size: 64, offset: 1280)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!347, !688, !873, !896}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !875, line: 68, size: 512, align: 128, elements: !876)
!875 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!876 = !{!877, !878, !3588, !3595}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !875, line: 69, baseType: !413, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 77, baseType: !879, size: 320, offset: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 77, size: 320, elements: !880)
!880 = !{!881, !2015, !2020, !2046, !2054, !2060, !3539, !3587}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 78, baseType: !882, size: 320)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 78, size: 320, elements: !883)
!883 = !{!884, !885, !2013, !2014}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !882, file: !875, line: 84, baseType: !307, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !882, file: !875, line: 86, baseType: !886, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !92, line: 451, size: 1216, align: 64, elements: !888)
!888 = !{!889, !890, !898, !899, !904, !919, !928, !929, !930, !931, !2006, !2007, !2010, !2011, !2012}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !887, file: !92, line: 452, baseType: !518, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !887, file: !92, line: 453, baseType: !891, size: 128, offset: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !892, line: 292, size: 128, elements: !893)
!892 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !891, file: !892, line: 293, baseType: !321)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !891, file: !892, line: 295, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !308, line: 148, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !891, file: !892, line: 296, baseType: !437, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !887, file: !92, line: 454, baseType: !896, size: 32, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !887, file: !92, line: 455, baseType: !900, size: 32, offset: 224)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !308, line: 168, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 166, size: 32, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !901, file: !308, line: 167, baseType: !347, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !887, file: !92, line: 460, baseType: !905, size: 128, offset: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !906, line: 125, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !918}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !905, file: !906, line: 126, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !906, line: 31, size: 64, elements: !910)
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !909, file: !906, line: 32, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !906, line: 24, size: 192, align: 64, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !913, file: !906, line: 25, baseType: !413, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !913, file: !906, line: 26, baseType: !912, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !913, file: !906, line: 27, baseType: !912, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !905, file: !906, line: 127, baseType: !912, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !887, file: !92, line: 461, baseType: !920, size: 256, offset: 384)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !921, line: 35, size: 256, elements: !922)
!921 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!922 = !{!923, !924, !925, !927}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !920, file: !921, line: 36, baseType: !830, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !920, file: !921, line: 42, baseType: !830, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !920, file: !921, line: 46, baseType: !926, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !322, line: 29, baseType: !329)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !920, file: !921, line: 47, baseType: !307, size: 128, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !887, file: !92, line: 462, baseType: !413, size: 64, offset: 640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !887, file: !92, line: 463, baseType: !413, size: 64, offset: 704)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !887, file: !92, line: 464, baseType: !413, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !887, file: !92, line: 465, baseType: !932, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !92, line: 367, size: 1408, elements: !935)
!935 = !{!936, !940, !944, !948, !952, !956, !969, !975, !979, !984, !988, !992, !996, !1041, !1045, !1051, !1052, !1053, !1057, !1062, !1066, !2002}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !934, file: !92, line: 368, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!347, !873, !765}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !934, file: !92, line: 369, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!347, !442, !873}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !934, file: !92, line: 372, baseType: !945, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!347, !886, !765}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !934, file: !92, line: 375, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!347, !873}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !934, file: !92, line: 381, baseType: !953, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!347, !442, !886, !311, !7}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !934, file: !92, line: 383, baseType: !957, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !962, line: 795, size: 256, elements: !963)
!962 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!963 = !{!964, !965, !966, !967, !968}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !961, file: !962, line: 796, baseType: !442, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !961, file: !962, line: 797, baseType: !886, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !961, file: !962, line: 799, baseType: !413, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !961, file: !962, line: 800, baseType: !7, size: 32, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !961, file: !962, line: 801, baseType: !7, size: 32, offset: 224)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !934, file: !92, line: 385, baseType: !970, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!347, !442, !886, !620, !7, !7, !973, !974}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !934, file: !92, line: 388, baseType: !976, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!347, !442, !886, !620, !7, !7, !873, !437}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !934, file: !92, line: 393, baseType: !980, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!983, !886, !983}
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !308, line: 125, baseType: !511)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !934, file: !92, line: 394, baseType: !985, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !873, !7, !7}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !934, file: !92, line: 395, baseType: !989, size: 64, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!347, !873, !896}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !934, file: !92, line: 396, baseType: !993, size: 64, offset: 704)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !873}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !934, file: !92, line: 397, baseType: !997, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!394, !1000, !1039}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !92, line: 320, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1009, !1010, !1011, !1014, !1015}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1001, file: !92, line: 321, baseType: !442, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1001, file: !92, line: 326, baseType: !620, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1001, file: !92, line: 327, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !1000, !398, !398}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1001, file: !92, line: 328, baseType: !437, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1001, file: !92, line: 329, baseType: !347, size: 32, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1001, file: !92, line: 330, baseType: !1012, size: 16, offset: 288)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !506, line: 19, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !508, line: 24, baseType: !405)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1001, file: !92, line: 331, baseType: !1012, size: 16, offset: 304)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !92, line: 332, baseType: !1016, size: 64, offset: 320)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !92, line: 332, size: 64, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1016, file: !92, line: 333, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1016, file: !92, line: 334, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !962, line: 569, size: 448, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1021, file: !962, line: 570, baseType: !873, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1021, file: !962, line: 571, baseType: !347, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1021, file: !962, line: 572, baseType: !1026, size: 320, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1027, line: 14, baseType: !1028)
!1027 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1027, line: 29, size: 320, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1038}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !1027, line: 30, baseType: !7, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1028, file: !1027, line: 31, baseType: !437, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1028, file: !1027, line: 32, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1027, line: 16, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!347, !1037, !7, !347, !437}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1028, file: !1027, line: 33, baseType: !307, size: 128, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !92, line: 64, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !934, file: !92, line: 402, baseType: !1042, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!347, !886, !873, !873, !17}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !934, file: !92, line: 404, baseType: !1046, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!579, !873, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1050, line: 305, baseType: !7)
!1050 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !934, file: !92, line: 405, baseType: !993, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !934, file: !92, line: 406, baseType: !949, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !934, file: !92, line: 407, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!347, !873, !413, !413}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !934, file: !92, line: 409, baseType: !1058, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !873, !1061, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !934, file: !92, line: 410, baseType: !1063, size: 64, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!347, !886, !873}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !934, file: !92, line: 413, baseType: !1067, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!347, !1070, !442, !2001}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1072, line: 240, size: 1600, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1075, !1077, !1084, !1086, !1087, !1089, !1096, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1109, !1115, !1116, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1071, file: !1072, line: 241, baseType: !413, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1071, file: !1072, line: 242, baseType: !1076, size: 16, offset: 64)
!1076 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1071, file: !1072, line: 243, baseType: !1078, size: 320, offset: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1079, line: 83, size: 320, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1078, file: !1079, line: 84, baseType: !347, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1078, file: !1079, line: 85, baseType: !307, size: 128, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1078, file: !1079, line: 86, baseType: !307, size: 128, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1071, file: !1072, line: 244, baseType: !1085, size: 8, offset: 448)
!1085 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1071, file: !1072, line: 245, baseType: !7, size: 32, offset: 480)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1071, file: !1072, line: 246, baseType: !1088, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1071, file: !1072, line: 247, baseType: !1090, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1072, line: 208, size: 32, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1091, file: !1072, line: 209, baseType: !321)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1091, file: !1072, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1072, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1071, file: !1072, line: 248, baseType: !1097, size: 64, offset: 640)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1072, line: 232, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1097, file: !1072, line: 233, baseType: !1091, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1097, file: !1072, line: 234, baseType: !1091, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1071, file: !1072, line: 249, baseType: !7, size: 32, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1071, file: !1072, line: 250, baseType: !7, size: 32, offset: 736)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1071, file: !1072, line: 251, baseType: !7, size: 32, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1071, file: !1072, line: 252, baseType: !7, size: 32, offset: 800)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1071, file: !1072, line: 253, baseType: !7, size: 32, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1071, file: !1072, line: 254, baseType: !7, size: 32, offset: 864)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1071, file: !1072, line: 255, baseType: !1108, size: 64, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1071, file: !1072, line: 256, baseType: !1110, size: 64, offset: 960)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1072, line: 227, size: 64, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1111, file: !1072, line: 228, baseType: !1091, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1111, file: !1072, line: 229, baseType: !7, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1071, file: !1072, line: 257, baseType: !909, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1071, file: !1072, line: 258, baseType: !1117, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1119, line: 22, size: 1344, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1135, !1200, !1201, !1202, !1990, !1991, !1992}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1118, file: !1119, line: 23, baseType: !602, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1118, file: !1119, line: 24, baseType: !347, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1118, file: !1119, line: 25, baseType: !518, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1118, file: !1119, line: 26, baseType: !688, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1118, file: !1119, line: 27, baseType: !826, size: 192, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1118, file: !1119, line: 28, baseType: !437, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1118, file: !1119, line: 29, baseType: !437, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1118, file: !1119, line: 30, baseType: !347, size: 32, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1118, file: !1119, line: 31, baseType: !579, size: 8, offset: 544)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1118, file: !1119, line: 33, baseType: !307, size: 128, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1118, file: !1119, line: 35, baseType: !1117, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1118, file: !1119, line: 36, baseType: !1133, size: 8, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !506, line: 17, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !508, line: 21, baseType: !516)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1118, file: !1119, line: 37, baseType: !1136, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1138, line: 53, size: 6592, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141, !1142, !1143, !1146, !1167, !1168, !1169, !1170, !1171, !1181}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1137, file: !1138, line: 54, baseType: !983, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1137, file: !1138, line: 60, baseType: !983, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1137, file: !1138, line: 64, baseType: !413, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1137, file: !1138, line: 65, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1138, line: 65, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1137, file: !1138, line: 66, baseType: !1147, size: 128, offset: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1148, line: 105, size: 128, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1147, file: !1148, line: 110, baseType: !413, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1147, file: !1148, line: 118, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1148, line: 95, size: 448, elements: !1154)
!1154 = !{!1155, !1156, !1162, !1163, !1164, !1165, !1166}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1148, line: 96, baseType: !830, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1153, file: !1148, line: 97, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1148, line: 60, baseType: !1159)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1153, file: !1148, line: 98, baseType: !1157, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1153, file: !1148, line: 99, baseType: !579, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1153, file: !1148, line: 100, baseType: !579, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1153, file: !1148, line: 101, baseType: !455, size: 128, align: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1153, file: !1148, line: 102, baseType: !1161, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1137, file: !1138, line: 68, baseType: !299, size: 5568, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1137, file: !1138, line: 69, baseType: !314, size: 64, offset: 5952)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1137, file: !1138, line: 70, baseType: !347, size: 32, offset: 6016)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1137, file: !1138, line: 70, baseType: !347, size: 32, offset: 6048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1137, file: !1138, line: 71, baseType: !1172, size: 64, offset: 6080)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1138, line: 48, size: 808, elements: !1174)
!1174 = !{!1175, !1179}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1173, file: !1138, line: 49, baseType: !1176, size: 296)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 296, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 37)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1173, file: !1138, line: 50, baseType: !1180, size: 512, offset: 296)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 512, elements: !368)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1137, file: !1138, line: 75, baseType: !1182, size: 448, offset: 6144)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1183, line: 124, size: 448, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1182, file: !1183, line: 125, baseType: !1186, size: 256)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1183, line: 102, size: 256, elements: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1186, file: !1183, line: 103, baseType: !830, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1186, file: !1183, line: 104, baseType: !307, size: 128, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1186, file: !1183, line: 105, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1183, line: 21, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1182, file: !1183, line: 126, baseType: !455, size: 128, align: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1182, file: !1183, line: 129, baseType: !1198, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1183, line: 18, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1118, file: !1119, line: 39, baseType: !7, size: 32, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1118, file: !1119, line: 41, baseType: !321, offset: 928)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1118, file: !1119, line: 42, baseType: !1203, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1138, line: 167, size: 8512, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1213, !1214, !1215, !1226, !1227, !1417, !1971, !1972, !1973, !1974, !1975, !1976, !1979, !1980, !1983, !1984, !1985, !1988}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1204, file: !1138, line: 171, baseType: !347, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1204, file: !1138, line: 172, baseType: !347, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1204, file: !1138, line: 173, baseType: !347, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1204, file: !1138, line: 176, baseType: !1210, size: 256, offset: 96)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1204, file: !1138, line: 178, baseType: !405, size: 16, offset: 352)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1204, file: !1138, line: 179, baseType: !405, size: 16, offset: 368)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1204, file: !1138, line: 186, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1138, line: 149, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1217, file: !1138, line: 150, baseType: !455, size: 128, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1217, file: !1138, line: 151, baseType: !347, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1217, file: !1138, line: 152, baseType: !1136, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1217, file: !1138, line: 153, baseType: !1223, offset: 256)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: -1)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1204, file: !1138, line: 187, baseType: !1137, size: 6592, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1204, file: !1138, line: 189, baseType: !1228, size: 64, offset: 7040)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !25, line: 1844, size: 960, elements: !1231)
!1231 = !{!1232, !1339, !1344, !1348, !1352, !1356, !1357, !1361, !1365, !1369, !1375, !1379, !1407, !1412, !1413}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1230, file: !25, line: 1845, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1119, line: 515, baseType: !7)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1119, line: 203, size: 832, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1248, !1249, !1250, !1258, !1263, !1264, !1289, !1290, !1291, !1292, !1293, !1338}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1238, file: !1119, line: 204, baseType: !1237, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1238, file: !1119, line: 205, baseType: !1203, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1238, file: !1119, line: 206, baseType: !7, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1238, file: !1119, line: 210, baseType: !405, size: 16, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1238, file: !1119, line: 211, baseType: !405, size: 16, offset: 176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1238, file: !1119, line: 212, baseType: !405, size: 16, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1238, file: !1119, line: 213, baseType: !1247, size: 8, offset: 208)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1119, line: 58, baseType: !1133)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1238, file: !1119, line: 214, baseType: !1133, size: 8, offset: 216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1238, file: !1119, line: 215, baseType: !900, size: 32, offset: 224)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1238, file: !1119, line: 217, baseType: !1251, size: 192, offset: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1252, line: 37, size: 192, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1251, file: !1252, line: 38, baseType: !983, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1251, file: !1252, line: 40, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1251, file: !1252, line: 42, baseType: !7, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1251, file: !1252, line: 44, baseType: !7, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1238, file: !1119, line: 219, baseType: !1259, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1119, line: 19, baseType: !1261)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1237}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1238, file: !1119, line: 221, baseType: !437, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1119, line: 240, baseType: !1265, size: 64, offset: 576)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1119, line: 240, size: 64, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1265, file: !1119, line: 242, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1270, line: 313, size: 832, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1287}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1269, file: !1270, line: 314, baseType: !1237, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1269, file: !1270, line: 316, baseType: !1251, size: 192, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1269, file: !1270, line: 318, baseType: !405, size: 16, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1269, file: !1270, line: 319, baseType: !405, size: 16, offset: 272)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1269, file: !1270, line: 320, baseType: !405, size: 16, offset: 288)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1269, file: !1270, line: 321, baseType: !405, size: 16, offset: 304)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1269, file: !1270, line: 323, baseType: !1251, size: 192, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1269, file: !1270, line: 325, baseType: !1186, size: 256, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1269, file: !1270, line: 327, baseType: !1281, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1252, line: 31, size: 128, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1282, file: !1252, line: 32, baseType: !873, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1282, file: !1252, line: 33, baseType: !7, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1282, file: !1252, line: 34, baseType: !7, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1269, file: !1270, line: 328, baseType: !1288, offset: 832)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, elements: !1224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1238, file: !1119, line: 246, baseType: !405, size: 16, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1238, file: !1119, line: 252, baseType: !405, size: 16, offset: 656)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1238, file: !1119, line: 254, baseType: !900, size: 32, offset: 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1238, file: !1119, line: 256, baseType: !1281, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1238, file: !1119, line: 258, baseType: !1294, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1270, line: 682, size: 2368, elements: !1296)
!1296 = !{!1297, !1300, !1301, !1327, !1328, !1329, !1330, !1331, !1336, !1337}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1295, file: !1270, line: 683, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !875, line: 117, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1295, file: !1270, line: 684, baseType: !7, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1295, file: !1270, line: 686, baseType: !1302, size: 448, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1303, line: 26, baseType: !1304)
!1303 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1303, line: 16, size: 448, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1316, !1321}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1304, file: !1303, line: 17, baseType: !321)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1304, file: !1303, line: 18, baseType: !347, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1304, file: !1303, line: 19, baseType: !347, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1304, file: !1303, line: 20, baseType: !974, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1304, file: !1303, line: 22, baseType: !437, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1304, file: !1303, line: 23, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1303, line: 13, baseType: !1314)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!437, !896, !437}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1304, file: !1303, line: 24, baseType: !1317, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1303, line: 14, baseType: !1319)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !437, !437}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1304, file: !1303, line: 25, baseType: !1322, size: 128, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1027, line: 40, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1027, line: 36, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1323, file: !1027, line: 37, baseType: !321)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1323, file: !1027, line: 38, baseType: !307, size: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1295, file: !1270, line: 687, baseType: !1302, size: 448, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1295, file: !1270, line: 689, baseType: !1302, size: 448, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1295, file: !1270, line: 690, baseType: !1302, size: 448, offset: 1472)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1295, file: !1270, line: 697, baseType: !321, offset: 1920)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1295, file: !1270, line: 698, baseType: !1332, size: 128, offset: 1920)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1270, line: 554, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1332, file: !1270, line: 555, baseType: !1237, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1332, file: !1270, line: 556, baseType: !1237, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1295, file: !1270, line: 699, baseType: !1186, size: 256, offset: 2048)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1295, file: !1270, line: 700, baseType: !1198, size: 64, offset: 2304)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1238, file: !1119, line: 265, baseType: !1288, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1230, file: !25, line: 1846, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!347, !1117, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !308, line: 150, baseType: !7)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1230, file: !25, line: 1847, baseType: !1345, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !1203, !1343}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1230, file: !25, line: 1848, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!347, !1117, !983, !873, !7}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1230, file: !25, line: 1849, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!347, !1117, !1343, !7, !413}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1230, file: !25, line: 1850, baseType: !1353, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1230, file: !25, line: 1851, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!7, !1203, !7}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1230, file: !25, line: 1853, baseType: !1362, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1203}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1230, file: !25, line: 1854, baseType: !1366, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!347, !1203}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1230, file: !25, line: 1855, baseType: !1370, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!347, !1117, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !92, line: 51, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1230, file: !25, line: 1857, baseType: !1376, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1117, !413}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1230, file: !25, line: 1858, baseType: !1380, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!347, !1203, !983, !7, !1383, !437}
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !25, line: 354, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!347, !1387, !7, !437}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1389, line: 106, size: 512, elements: !1390)
!1389 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1402, !1403}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1388, file: !1389, line: 107, baseType: !512, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1388, file: !1389, line: 108, baseType: !512, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1388, file: !1389, line: 109, baseType: !512, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !1389, line: 110, baseType: !1134, size: 8, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1388, file: !1389, line: 111, baseType: !1134, size: 8, offset: 200)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1388, file: !1389, line: 112, baseType: !1134, size: 8, offset: 208)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1388, file: !1389, line: 113, baseType: !1134, size: 8, offset: 216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1388, file: !1389, line: 114, baseType: !1399, size: 32, offset: 224)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 4)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1388, file: !1389, line: 115, baseType: !512, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1388, file: !1389, line: 116, baseType: !1404, size: 192, offset: 320)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 192, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 24)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1230, file: !25, line: 1860, baseType: !1408, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!363, !1203, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1230, file: !25, line: 1861, baseType: !274, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1230, file: !25, line: 1862, baseType: !1414, size: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !25, line: 41, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1204, file: !1138, line: 190, baseType: !1418, size: 64, offset: 7104)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !25, line: 399, size: 14464, elements: !1420)
!1420 = !{!1421, !1557, !1679, !1680, !1683, !1686, !1690, !1691, !1692, !1694, !1695, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1832, !1843, !1844, !1845, !1846, !1847, !1877, !1878, !1879, !1880, !1881, !1882, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1956, !1957, !1958, !1959, !1962, !1963, !1964, !1965, !1966, !1967}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1419, file: !25, line: 400, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !25, line: 130, size: 2176, elements: !1424)
!1424 = !{!1425, !1426, !1429, !1432, !1433, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1447, !1454, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1520, !1521, !1522, !1555, !1556}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1423, file: !25, line: 131, baseType: !1418, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1423, file: !25, line: 132, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !25, line: 132, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1423, file: !25, line: 133, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !25, line: 133, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1423, file: !25, line: 135, baseType: !7, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1423, file: !25, line: 136, baseType: !1434, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !25, line: 66, baseType: !507)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1423, file: !25, line: 138, baseType: !347, size: 32, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1423, file: !25, line: 139, baseType: !347, size: 32, offset: 288)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1423, file: !25, line: 142, baseType: !7, size: 32, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1423, file: !25, line: 143, baseType: !983, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1423, file: !25, line: 145, baseType: !1237, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1423, file: !25, line: 146, baseType: !1237, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1423, file: !25, line: 148, baseType: !307, size: 128, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !25, line: 157, baseType: !1443, size: 128, offset: 704)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !25, line: 157, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1443, file: !25, line: 158, baseType: !728, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1443, file: !25, line: 159, baseType: !307, size: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !25, line: 167, baseType: !1448, size: 192, offset: 832)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !25, line: 167, size: 192, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1448, file: !25, line: 168, baseType: !913, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1448, file: !25, line: 169, baseType: !1282, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1448, file: !25, line: 170, baseType: !437, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1448, file: !25, line: 171, baseType: !347, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !25, line: 180, baseType: !1455, size: 256, offset: 1024)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !25, line: 180, size: 256, elements: !1456)
!1456 = !{!1457, !1494}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1455, file: !25, line: 184, baseType: !1458, size: 192)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !25, line: 181, size: 192, elements: !1459)
!1459 = !{!1460, !1490}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1458, file: !25, line: 182, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1463, line: 73, size: 448, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1466, !1479, !1484, !1489}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1462, file: !1463, line: 74, baseType: !1418, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1462, file: !1463, line: 75, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1463, line: 99, size: 704, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1468, file: !1463, line: 100, baseType: !830, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1468, file: !1463, line: 101, baseType: !900, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1468, file: !1463, line: 102, baseType: !900, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !1463, line: 105, baseType: !321, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1468, file: !1463, line: 107, baseType: !405, size: 16, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1468, file: !1463, line: 109, baseType: !891, size: 128, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1468, file: !1463, line: 110, baseType: !1461, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1468, file: !1463, line: 111, baseType: !724, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1468, file: !1463, line: 113, baseType: !1186, size: 256, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 83, baseType: !1480, size: 128, offset: 128)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 83, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1480, file: !1463, line: 84, baseType: !307, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1480, file: !1463, line: 85, baseType: !1298, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 87, baseType: !1485, size: 128, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 87, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1485, file: !1463, line: 88, baseType: !728, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1485, file: !1463, line: 89, baseType: !455, size: 128, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 92, baseType: !7, size: 32, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1458, file: !25, line: 183, baseType: !1491, size: 128, offset: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 128, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 2)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1455, file: !25, line: 190, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !25, line: 186, size: 256, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1495, file: !25, line: 187, baseType: !7, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1495, file: !25, line: 188, baseType: !307, size: 128, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1495, file: !25, line: 189, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !25, line: 62, baseType: !1502)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1422, !1247}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1423, file: !25, line: 193, baseType: !1203, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1423, file: !25, line: 194, baseType: !1136, size: 64, offset: 1344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1423, file: !25, line: 200, baseType: !511, size: 64, offset: 1408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1423, file: !25, line: 202, baseType: !511, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1423, file: !25, line: 212, baseType: !405, size: 16, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1423, file: !25, line: 218, baseType: !405, size: 16, offset: 1552)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1423, file: !25, line: 221, baseType: !405, size: 16, offset: 1568)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1423, file: !25, line: 229, baseType: !405, size: 16, offset: 1584)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1423, file: !25, line: 230, baseType: !405, size: 16, offset: 1600)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1423, file: !25, line: 232, baseType: !24, size: 32, offset: 1632)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1423, file: !25, line: 233, baseType: !1515, size: 32, offset: 1664)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1516, line: 113, baseType: !1517)
!1516 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1516, line: 111, size: 32, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1517, file: !1516, line: 112, baseType: !900, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1423, file: !25, line: 235, baseType: !7, size: 32, offset: 1696)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1423, file: !25, line: 236, baseType: !413, size: 64, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !25, line: 238, baseType: !1523, size: 256, offset: 1792)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !25, line: 238, size: 256, elements: !1524)
!1524 = !{!1525, !1554}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1523, file: !25, line: 239, baseType: !1526, size: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1527, line: 23, size: 256, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1551, !1553}
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1527, line: 24, baseType: !1530, size: 128)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !1527, line: 24, size: 128, elements: !1531)
!1531 = !{!1532, !1544}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1530, file: !1527, line: 25, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1534, line: 58, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1542, !1543}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1533, file: !1534, line: 59, baseType: !449, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 60, baseType: !1538, size: 32, offset: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 60, size: 32, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1538, file: !1534, line: 61, baseType: !7, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1538, file: !1534, line: 62, baseType: !900, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1533, file: !1534, line: 65, baseType: !1012, size: 16, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1533, file: !1534, line: 65, baseType: !1012, size: 16, offset: 112)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1527, line: 26, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !1527, line: 26, size: 128, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1545, file: !1527, line: 27, baseType: !449, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1527, line: 28, baseType: !7, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1545, file: !1527, line: 30, baseType: !1012, size: 16, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1545, file: !1527, line: 30, baseType: !1012, size: 16, offset: 112)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1526, file: !1527, line: 34, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1527, line: 17, baseType: !557)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1526, file: !1527, line: 35, baseType: !437, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1523, file: !25, line: 240, baseType: !511, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1423, file: !25, line: 246, baseType: !1500, size: 64, offset: 2048)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1423, file: !25, line: 247, baseType: !437, size: 64, offset: 2112)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1419, file: !25, line: 401, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !31, line: 101, size: 4992, elements: !1560)
!1560 = !{!1561, !1673, !1674, !1675, !1676, !1677}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !31, line: 103, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !31, line: 66, size: 2240, elements: !1564)
!1564 = !{!1565, !1566, !1648, !1649, !1650, !1663, !1664, !1665, !1667, !1668, !1672}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1563, file: !31, line: 69, baseType: !1298, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1563, file: !31, line: 72, baseType: !1567, size: 1408, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !31, line: 29, size: 1408, elements: !1568)
!1568 = !{!1569, !1573, !1577, !1581, !1585, !1589, !1593, !1597, !1602, !1606, !1610, !1616, !1620, !1621, !1625, !1629, !1633, !1637, !1638, !1642, !1643, !1647}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1567, file: !31, line: 30, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!347, !1418, !1562}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1567, file: !31, line: 31, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1558}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1567, file: !31, line: 32, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!347, !1430, !7}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1567, file: !31, line: 33, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1430, !7}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1567, file: !31, line: 34, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1430}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1567, file: !31, line: 36, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!579, !1418, !1422, !1237}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1567, file: !31, line: 37, baseType: !1594, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!579, !1430, !1237, !7}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1567, file: !31, line: 38, baseType: !1598, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!347, !1418, !1601, !1237}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1567, file: !31, line: 39, baseType: !1603, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1418, !1422, !30}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1567, file: !31, line: 40, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1418, !1422, !1422}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1567, file: !31, line: 41, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !7, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !31, line: 26, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1567, file: !31, line: 42, baseType: !1617, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1422}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1567, file: !31, line: 43, baseType: !1617, size: 64, offset: 768)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1567, file: !31, line: 44, baseType: !1622, size: 64, offset: 832)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1430, !311, !579}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1567, file: !31, line: 45, baseType: !1626, size: 64, offset: 896)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1422, !1430}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1567, file: !31, line: 46, baseType: !1630, size: 64, offset: 960)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!579, !1430}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1567, file: !31, line: 47, baseType: !1634, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1422, !511}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1567, file: !31, line: 48, baseType: !1617, size: 64, offset: 1088)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1567, file: !31, line: 49, baseType: !1639, size: 64, offset: 1152)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1422, !1418, !1422}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1567, file: !31, line: 50, baseType: !1639, size: 64, offset: 1216)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1567, file: !31, line: 51, baseType: !1644, size: 64, offset: 1280)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1461}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1567, file: !31, line: 52, baseType: !1644, size: 64, offset: 1344)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1563, file: !31, line: 74, baseType: !410, size: 64, offset: 1472)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1563, file: !31, line: 75, baseType: !410, size: 64, offset: 1536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1563, file: !31, line: 76, baseType: !1651, size: 64, offset: 1600)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !31, line: 57, size: 256, elements: !1653)
!1653 = !{!1654, !1655, !1659}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1652, file: !31, line: 58, baseType: !400, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1652, file: !31, line: 59, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!394, !1558, !363}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1652, file: !31, line: 60, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!394, !1558, !282, !410}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1563, file: !31, line: 77, baseType: !282, size: 64, offset: 1664)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1563, file: !31, line: 78, baseType: !282, size: 64, offset: 1728)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1563, file: !31, line: 79, baseType: !1666, size: 32, offset: 1792)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1563, file: !31, line: 80, baseType: !274, size: 64, offset: 1856)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1563, file: !31, line: 87, baseType: !1669, size: 176, offset: 1920)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 176, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 22)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1563, file: !31, line: 88, baseType: !307, size: 128, offset: 2112)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1559, file: !31, line: 104, baseType: !437, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1559, file: !31, line: 105, baseType: !302, size: 512, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1559, file: !31, line: 106, baseType: !826, size: 192, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1559, file: !31, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1559, file: !31, line: 108, baseType: !1678, size: 4096, offset: 896)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 4096, elements: !368)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1419, file: !25, line: 403, baseType: !1147, size: 128, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1419, file: !25, line: 405, baseType: !1681, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !25, line: 43, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1419, file: !25, line: 406, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !25, line: 42, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1419, file: !25, line: 408, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !25, line: 408, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1419, file: !25, line: 411, baseType: !1427, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1419, file: !25, line: 413, baseType: !7, size: 32, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1419, file: !25, line: 416, baseType: !1693, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1419, file: !25, line: 417, baseType: !7, size: 32, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1419, file: !25, line: 419, baseType: !1696, size: 64, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !38, line: 165, size: 4672, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1709, !1710, !1711, !1712, !1713, !1714, !1770, !1771, !1772, !1773, !1775, !1776}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1697, file: !38, line: 166, baseType: !511, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1697, file: !38, line: 167, baseType: !913, size: 192, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1697, file: !38, line: 168, baseType: !307, size: 128, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1697, file: !38, line: 169, baseType: !413, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1697, file: !38, line: 170, baseType: !413, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1697, file: !38, line: 172, baseType: !1705, size: 32, offset: 512)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1706, line: 19, size: 32, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1705, file: !1706, line: 20, baseType: !1515, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1697, file: !38, line: 173, baseType: !7, size: 32, offset: 544)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1697, file: !38, line: 174, baseType: !7, size: 32, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1697, file: !38, line: 175, baseType: !7, size: 32, offset: 608)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1697, file: !38, line: 175, baseType: !7, size: 32, offset: 640)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1697, file: !38, line: 181, baseType: !830, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1697, file: !38, line: 183, baseType: !1715, size: 2688, offset: 768)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !38, line: 107, size: 2688, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1746, !1747, !1748, !1749, !1750, !1768, !1769}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1715, file: !38, line: 108, baseType: !1696, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1715, file: !38, line: 110, baseType: !413, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1715, file: !38, line: 111, baseType: !413, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1715, file: !38, line: 113, baseType: !307, size: 128, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1715, file: !38, line: 114, baseType: !307, size: 128, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1715, file: !38, line: 115, baseType: !307, size: 128, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1715, file: !38, line: 116, baseType: !307, size: 128, offset: 576)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1715, file: !38, line: 117, baseType: !321, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1715, file: !38, line: 119, baseType: !1726, size: 256, offset: 704)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1727, size: 256, elements: !1400)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1728, line: 97, size: 64, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1727, file: !1728, line: 98, baseType: !836, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1715, file: !38, line: 121, baseType: !413, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1715, file: !38, line: 123, baseType: !413, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1715, file: !38, line: 124, baseType: !413, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1715, file: !38, line: 125, baseType: !413, size: 64, offset: 1152)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1715, file: !38, line: 126, baseType: !413, size: 64, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1715, file: !38, line: 127, baseType: !413, size: 64, offset: 1280)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1715, file: !38, line: 135, baseType: !413, size: 64, offset: 1344)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1715, file: !38, line: 136, baseType: !413, size: 64, offset: 1408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1715, file: !38, line: 138, baseType: !1740, size: 128, offset: 1472)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1741, line: 76, size: 128, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1740, file: !1741, line: 78, baseType: !1727, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1740, file: !1741, line: 80, baseType: !7, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !1741, line: 81, baseType: !926, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1715, file: !38, line: 139, baseType: !347, size: 32, offset: 1600)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1715, file: !38, line: 140, baseType: !37, size: 32, offset: 1632)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1715, file: !38, line: 142, baseType: !321, offset: 1664)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1715, file: !38, line: 143, baseType: !307, size: 128, offset: 1664)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1715, file: !38, line: 144, baseType: !1751, size: 704, offset: 1792)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1183, line: 115, size: 704, elements: !1752)
!1752 = !{!1753, !1754, !1766, !1767}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1751, file: !1183, line: 116, baseType: !1186, size: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1751, file: !1183, line: 117, baseType: !1755, size: 320, offset: 256)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1756, line: 11, size: 320, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760, !1765}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1756, line: 16, baseType: !728, size: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1755, file: !1756, line: 17, baseType: !413, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1755, file: !1756, line: 18, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1755, file: !1756, line: 19, baseType: !505, size: 32, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1751, file: !1183, line: 120, baseType: !1198, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1751, file: !1183, line: 121, baseType: !347, size: 32, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1715, file: !38, line: 146, baseType: !413, size: 64, offset: 2496)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1715, file: !38, line: 148, baseType: !307, size: 128, offset: 2560)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1697, file: !38, line: 184, baseType: !307, size: 128, offset: 3456)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1697, file: !38, line: 190, baseType: !1322, size: 128, offset: 3584)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1697, file: !38, line: 192, baseType: !298, size: 64, offset: 3712)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1697, file: !38, line: 193, baseType: !1774, size: 512, offset: 3776)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 512, elements: !368)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1697, file: !38, line: 194, baseType: !298, size: 64, offset: 4288)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1697, file: !38, line: 196, baseType: !1755, size: 320, offset: 4352)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1419, file: !25, line: 425, baseType: !437, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1419, file: !25, line: 430, baseType: !413, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1419, file: !25, line: 436, baseType: !900, size: 32, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1419, file: !25, line: 442, baseType: !347, size: 32, offset: 928)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1419, file: !25, line: 447, baseType: !896, size: 32, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1419, file: !25, line: 449, baseType: !321, offset: 992)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1419, file: !25, line: 454, baseType: !302, size: 512, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1419, file: !25, line: 459, baseType: !314, size: 64, offset: 1536)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1419, file: !25, line: 462, baseType: !1786, size: 128, offset: 1600)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1138, line: 159, size: 128, elements: !1787)
!1787 = !{!1788, !1817, !1818, !1819, !1820}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1786, file: !1138, line: 160, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !25, line: 1664, size: 320, elements: !1792)
!1792 = !{!1793, !1807, !1808, !1811, !1816}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1791, file: !25, line: 1665, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !25, line: 1660, baseType: !1796)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!1247, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !25, line: 1651, size: 320, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1799, file: !25, line: 1652, baseType: !437, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1799, file: !25, line: 1653, baseType: !437, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1799, file: !25, line: 1654, baseType: !983, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1799, file: !25, line: 1655, baseType: !7, size: 32, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1799, file: !25, line: 1656, baseType: !405, size: 16, offset: 224)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1799, file: !25, line: 1657, baseType: !282, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1791, file: !25, line: 1666, baseType: !1794, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1791, file: !25, line: 1667, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !25, line: 1661, baseType: !1618)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1791, file: !25, line: 1668, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !25, line: 1662, baseType: !1814)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1422, !7}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1791, file: !25, line: 1669, baseType: !282, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1138, line: 161, baseType: !516, size: 8, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1786, file: !1138, line: 162, baseType: !516, size: 8, offset: 72)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1786, file: !1138, line: 163, baseType: !516, size: 8, offset: 80)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1786, file: !1138, line: 164, baseType: !516, size: 8, offset: 88)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1419, file: !25, line: 466, baseType: !298, size: 64, offset: 1728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1419, file: !25, line: 467, baseType: !49, size: 32, offset: 1792)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1419, file: !25, line: 468, baseType: !7, size: 32, offset: 1824)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1419, file: !25, line: 474, baseType: !413, size: 64, offset: 1856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1419, file: !25, line: 476, baseType: !7, size: 32, offset: 1920)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1419, file: !25, line: 477, baseType: !7, size: 32, offset: 1952)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1419, file: !25, line: 484, baseType: !7, size: 32, offset: 1984)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1419, file: !25, line: 485, baseType: !347, size: 32, offset: 2016)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1419, file: !25, line: 487, baseType: !1830, size: 64, offset: 2048)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !25, line: 44, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1419, file: !25, line: 488, baseType: !1833, size: 5120, offset: 2112)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, size: 5120, elements: !1841)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1119, line: 540, size: 320, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839, !1840}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1834, file: !1119, line: 541, baseType: !511, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1834, file: !1119, line: 542, baseType: !511, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1834, file: !1119, line: 543, baseType: !511, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1834, file: !1119, line: 544, baseType: !505, size: 32, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1834, file: !1119, line: 545, baseType: !511, size: 64, offset: 256)
!1841 = !{!1842}
!1842 = !DISubrange(count: 16)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1419, file: !25, line: 490, baseType: !1755, size: 320, offset: 7232)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1419, file: !25, line: 491, baseType: !1186, size: 256, offset: 7552)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1419, file: !25, line: 493, baseType: !900, size: 32, offset: 7808)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1419, file: !25, line: 495, baseType: !307, size: 128, offset: 7872)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1419, file: !25, line: 502, baseType: !1848, size: 896, offset: 8000)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !25, line: 321, size: 896, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1848, file: !25, line: 322, baseType: !413, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1848, file: !25, line: 323, baseType: !413, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1848, file: !25, line: 324, baseType: !413, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1848, file: !25, line: 326, baseType: !7, size: 32, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1848, file: !25, line: 327, baseType: !7, size: 32, offset: 224)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1848, file: !25, line: 328, baseType: !7, size: 32, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1848, file: !25, line: 329, baseType: !7, size: 32, offset: 288)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1848, file: !25, line: 330, baseType: !7, size: 32, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1848, file: !25, line: 331, baseType: !7, size: 32, offset: 352)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1848, file: !25, line: 332, baseType: !7, size: 32, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1848, file: !25, line: 333, baseType: !7, size: 32, offset: 416)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1848, file: !25, line: 334, baseType: !7, size: 32, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1848, file: !25, line: 335, baseType: !7, size: 32, offset: 480)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1848, file: !25, line: 336, baseType: !7, size: 32, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1848, file: !25, line: 337, baseType: !7, size: 32, offset: 544)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1848, file: !25, line: 338, baseType: !7, size: 32, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1848, file: !25, line: 339, baseType: !7, size: 32, offset: 608)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1848, file: !25, line: 340, baseType: !7, size: 32, offset: 640)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1848, file: !25, line: 341, baseType: !7, size: 32, offset: 672)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1848, file: !25, line: 342, baseType: !7, size: 32, offset: 704)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1848, file: !25, line: 344, baseType: !405, size: 16, offset: 736)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1848, file: !25, line: 345, baseType: !405, size: 16, offset: 752)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1848, file: !25, line: 346, baseType: !405, size: 16, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1848, file: !25, line: 348, baseType: !516, size: 8, offset: 784)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1848, file: !25, line: 349, baseType: !516, size: 8, offset: 792)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1848, file: !25, line: 350, baseType: !516, size: 8, offset: 800)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1848, file: !25, line: 351, baseType: !56, size: 32, offset: 832)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1419, file: !25, line: 504, baseType: !7, size: 32, offset: 8896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1419, file: !25, line: 534, baseType: !7, size: 32, offset: 8928)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1419, file: !25, line: 535, baseType: !7, size: 32, offset: 8960)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1419, file: !25, line: 536, baseType: !347, size: 32, offset: 8992)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1419, file: !25, line: 537, baseType: !826, size: 192, offset: 9024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1419, file: !25, line: 544, baseType: !1883, size: 64, offset: 9216)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !25, line: 40, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1419, file: !25, line: 546, baseType: !307, size: 128, offset: 9280)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1419, file: !25, line: 547, baseType: !321, offset: 9408)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1419, file: !25, line: 548, baseType: !1751, size: 704, offset: 9408)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1419, file: !25, line: 550, baseType: !826, size: 192, offset: 10112)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1419, file: !25, line: 551, baseType: !826, size: 192, offset: 10304)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1419, file: !25, line: 557, baseType: !307, size: 128, offset: 10496)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1419, file: !25, line: 558, baseType: !321, offset: 10624)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1419, file: !25, line: 560, baseType: !347, size: 32, offset: 10624)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1419, file: !25, line: 563, baseType: !1894, size: 256, offset: 10688)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1895, line: 18, size: 256, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1894, file: !1895, line: 19, baseType: !298, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1894, file: !1895, line: 20, baseType: !347, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1894, file: !1895, line: 21, baseType: !1418, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !1895, line: 22, baseType: !1901, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1895, line: 10, size: 256, elements: !1904)
!1904 = !{!1905, !1947, !1951, !1955}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1903, file: !1895, line: 11, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!347, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1911, line: 22, size: 1280, elements: !1912)
!1911 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1910, file: !1911, line: 23, baseType: !1914, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !508, line: 26, baseType: !347)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1910, file: !1911, line: 24, baseType: !507, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1910, file: !1911, line: 25, baseType: !507, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1910, file: !1911, line: 28, baseType: !507, size: 32, offset: 96)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1910, file: !1911, line: 29, baseType: !512, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1910, file: !1911, line: 30, baseType: !512, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1910, file: !1911, line: 31, baseType: !507, size: 32, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1910, file: !1911, line: 32, baseType: !507, size: 32, offset: 288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1910, file: !1911, line: 33, baseType: !507, size: 32, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1910, file: !1911, line: 34, baseType: !507, size: 32, offset: 352)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1910, file: !1911, line: 35, baseType: !512, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1910, file: !1911, line: 38, baseType: !507, size: 32, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1910, file: !1911, line: 40, baseType: !507, size: 32, offset: 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1910, file: !1911, line: 41, baseType: !507, size: 32, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1910, file: !1911, line: 42, baseType: !507, size: 32, offset: 544)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1910, file: !1911, line: 43, baseType: !512, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1910, file: !1911, line: 44, baseType: !512, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1910, file: !1911, line: 46, baseType: !507, size: 32, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1911, line: 47, baseType: !507, size: 32, offset: 736)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1910, file: !1911, line: 48, baseType: !512, size: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1910, file: !1911, line: 49, baseType: !507, size: 32, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1910, file: !1911, line: 51, baseType: !507, size: 32, offset: 864)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1910, file: !1911, line: 52, baseType: !507, size: 32, offset: 896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1910, file: !1911, line: 53, baseType: !507, size: 32, offset: 928)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1910, file: !1911, line: 54, baseType: !507, size: 32, offset: 960)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1910, file: !1911, line: 55, baseType: !507, size: 32, offset: 992)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1910, file: !1911, line: 56, baseType: !507, size: 32, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1910, file: !1911, line: 57, baseType: !507, size: 32, offset: 1056)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1910, file: !1911, line: 58, baseType: !1914, size: 32, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1910, file: !1911, line: 59, baseType: !1914, size: 32, offset: 1120)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1910, file: !1911, line: 60, baseType: !512, size: 64, offset: 1152)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1910, file: !1911, line: 61, baseType: !507, size: 32, offset: 1216)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1910, file: !1911, line: 63, baseType: !507, size: 32, offset: 1248)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1903, file: !1895, line: 12, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!347, !1422, !1909, !1343}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1903, file: !1895, line: 14, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!347, !1422, !1909}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1903, file: !1895, line: 15, baseType: !1617, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1419, file: !25, line: 570, baseType: !455, size: 128, align: 64, offset: 10944)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1419, file: !25, line: 571, baseType: !1322, size: 128, offset: 11072)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1419, file: !25, line: 576, baseType: !826, size: 192, offset: 11200)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1419, file: !25, line: 578, baseType: !1960, size: 64, offset: 11392)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !25, line: 578, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1419, file: !25, line: 579, baseType: !307, size: 128, offset: 11456)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1419, file: !25, line: 580, baseType: !1295, size: 2368, offset: 11584)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1419, file: !25, line: 582, baseType: !472, size: 64, offset: 13952)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1419, file: !25, line: 589, baseType: !579, size: 8, offset: 14016)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1419, file: !25, line: 591, baseType: !410, size: 64, offset: 14080)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1419, file: !25, line: 594, baseType: !1968, size: 320, offset: 14144)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 320, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 5)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1204, file: !1138, line: 191, baseType: !437, size: 64, offset: 7168)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1138, line: 193, baseType: !347, size: 32, offset: 7232)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1204, file: !1138, line: 194, baseType: !413, size: 64, offset: 7296)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1204, file: !1138, line: 196, baseType: !920, size: 256, offset: 7360)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1204, file: !1138, line: 197, baseType: !314, size: 64, offset: 7616)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1204, file: !1138, line: 199, baseType: !1977, size: 64, offset: 7680)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1138, line: 199, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1204, file: !1138, line: 200, baseType: !900, size: 32, offset: 7744)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1204, file: !1138, line: 201, baseType: !1981, size: 64, offset: 7808)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1138, line: 156, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1204, file: !1138, line: 203, baseType: !302, size: 512, offset: 7872)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1204, file: !1138, line: 208, baseType: !347, size: 32, offset: 8384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1204, file: !1138, line: 209, baseType: !1986, size: 64, offset: 8448)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1138, line: 157, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1204, file: !1138, line: 210, baseType: !1989, offset: 8512)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !735, line: 192, elements: !335)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1118, file: !1119, line: 43, baseType: !1696, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1118, file: !1119, line: 46, baseType: !347, size: 32, offset: 1088)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1118, file: !1119, line: 48, baseType: !826, size: 192, offset: 1152)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1071, file: !1072, line: 259, baseType: !442, size: 64, offset: 1152)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1071, file: !1072, line: 260, baseType: !7, size: 32, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1071, file: !1072, line: 265, baseType: !321, offset: 1248)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1071, file: !1072, line: 278, baseType: !321, offset: 1248)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1071, file: !1072, line: 282, baseType: !1186, size: 256, offset: 1280)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1071, file: !1072, line: 283, baseType: !1097, size: 64, offset: 1536)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1071, file: !1072, line: 284, baseType: !2000, offset: 1600)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, elements: !1224)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !934, file: !92, line: 415, baseType: !2003, size: 64, offset: 1344)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !442}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !92, line: 466, baseType: !413, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !887, file: !92, line: 467, baseType: !2008, size: 32, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2009, line: 8, baseType: !505)
!2009 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !887, file: !92, line: 468, baseType: !321, offset: 992)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !887, file: !92, line: 469, baseType: !307, size: 128, offset: 1024)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !887, file: !92, line: 470, baseType: !437, size: 64, offset: 1152)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !882, file: !875, line: 87, baseType: !413, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !882, file: !875, line: 94, baseType: !413, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 96, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 96, size: 64, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2016, file: !875, line: 101, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !308, line: 143, baseType: !511)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 103, baseType: !2021, size: 320)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 103, size: 320, elements: !2022)
!2022 = !{!2023, !2033, !2034, !2035}
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !875, line: 104, baseType: !2024, size: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !875, line: 104, size: 128, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2024, file: !875, line: 105, baseType: !307, size: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2024, file: !875, line: 106, baseType: !2028, size: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !875, line: 106, size: 128, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2028, file: !875, line: 107, baseType: !873, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2028, file: !875, line: 109, baseType: !347, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2028, file: !875, line: 110, baseType: !347, size: 32, offset: 96)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2021, file: !875, line: 117, baseType: !1298, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2021, file: !875, line: 119, baseType: !437, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !875, line: 120, baseType: !2036, size: 64, offset: 256)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !875, line: 120, size: 64, elements: !2037)
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2036, file: !875, line: 121, baseType: !437, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2036, file: !875, line: 122, baseType: !413, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !875, line: 123, baseType: !2041, size: 32)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !875, line: 123, size: 32, elements: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2041, file: !875, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2041, file: !875, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2041, file: !875, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 130, baseType: !2047, size: 192)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 130, size: 192, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052, !2053}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2047, file: !875, line: 131, baseType: !413, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2047, file: !875, line: 134, baseType: !516, size: 8, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2047, file: !875, line: 135, baseType: !516, size: 8, offset: 72)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2047, file: !875, line: 136, baseType: !900, size: 32, offset: 96)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2047, file: !875, line: 137, baseType: !7, size: 32, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 139, baseType: !2055, size: 256)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 139, size: 256, elements: !2056)
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2055, file: !875, line: 140, baseType: !413, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2055, file: !875, line: 141, baseType: !900, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2055, file: !875, line: 143, baseType: !307, size: 128, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 145, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 145, size: 256, elements: !2062)
!2062 = !{!2063, !2064, !2067, !2068, !3538}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2061, file: !875, line: 146, baseType: !413, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2061, file: !875, line: 147, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2066, line: 509, baseType: !873)
!2066 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2061, file: !875, line: 148, baseType: !413, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !875, line: 149, baseType: !2069, size: 64, offset: 192)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !875, line: 149, size: 64, elements: !2070)
!2070 = !{!2071, !3537}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2069, file: !875, line: 150, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !875, line: 388, size: 7296, elements: !2074)
!2074 = !{!2075, !3535}
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !875, line: 389, baseType: !2076, size: 7296)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !875, line: 389, size: 7296, elements: !2077)
!2077 = !{!2078, !2196, !2197, !2198, !2202, !2203, !2204, !2205, !2206, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2247, !2253, !2256, !2295, !2296, !3519, !3520, !3523, !3524, !3525, !3528, !3529, !3530, !3533, !3534}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2076, file: !875, line: 390, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !875, line: 305, size: 1472, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2096, !2097, !2102, !2103, !2106, !2190, !2191, !2192, !2193, !2194}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2080, file: !875, line: 308, baseType: !413, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2080, file: !875, line: 309, baseType: !413, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2080, file: !875, line: 313, baseType: !2079, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2080, file: !875, line: 313, baseType: !2079, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2080, file: !875, line: 315, baseType: !913, size: 192, align: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2080, file: !875, line: 323, baseType: !413, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2080, file: !875, line: 327, baseType: !2072, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2080, file: !875, line: 333, baseType: !2090, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2066, line: 284, baseType: !2091)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2066, line: 284, size: 64, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2091, file: !2066, line: 284, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2095, line: 19, baseType: !413)
!2095 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2080, file: !875, line: 334, baseType: !413, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2080, file: !875, line: 343, baseType: !2098, size: 256, offset: 704)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !875, line: 340, size: 256, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2098, file: !875, line: 341, baseType: !913, size: 192, align: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2098, file: !875, line: 342, baseType: !413, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2080, file: !875, line: 351, baseType: !307, size: 128, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2080, file: !875, line: 353, baseType: !2104, size: 64, offset: 1088)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !875, line: 353, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2080, file: !875, line: 356, baseType: !2107, size: 64, offset: 1152)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !62, line: 557, size: 832, elements: !2110)
!2110 = !{!2111, !2115, !2116, !2120, !2124, !2164, !2168, !2172, !2176, !2177, !2178, !2182, !2186}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2109, file: !62, line: 558, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !2079}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2109, file: !62, line: 559, baseType: !2112, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2109, file: !62, line: 560, baseType: !2117, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!347, !2079, !413}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2109, file: !62, line: 561, baseType: !2121, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!347, !2079}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2109, file: !62, line: 562, baseType: !2125, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !875, line: 682, baseType: !7)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !62, line: 508, size: 768, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2144, !2151, !2157, !2158, !2159, !2161, !2163}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2130, file: !62, line: 509, baseType: !2079, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2130, file: !62, line: 510, baseType: !7, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2130, file: !62, line: 511, baseType: !896, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2130, file: !62, line: 512, baseType: !413, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2130, file: !62, line: 513, baseType: !413, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2130, file: !62, line: 514, baseType: !2138, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2066, line: 385, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2066, line: 385, size: 64, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2140, file: !2066, line: 385, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2095, line: 15, baseType: !413)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2130, file: !62, line: 516, baseType: !2145, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2066, line: 359, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2066, line: 359, size: 64, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2147, file: !2066, line: 359, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2095, line: 16, baseType: !413)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2130, file: !62, line: 519, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2095, line: 21, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2095, line: 21, size: 64, elements: !2154)
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2153, file: !2095, line: 21, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2095, line: 14, baseType: !413)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2130, file: !62, line: 521, baseType: !873, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2130, file: !62, line: 522, baseType: !873, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2130, file: !62, line: 528, baseType: !2160, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2130, file: !62, line: 532, baseType: !2162, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2130, file: !62, line: 536, baseType: !2065, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2109, file: !62, line: 563, baseType: !2165, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2128, !2129, !61}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2109, file: !62, line: 565, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2129, !413, !413}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2109, file: !62, line: 567, baseType: !2173, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!413, !2079}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2109, file: !62, line: 571, baseType: !2125, size: 64, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2109, file: !62, line: 574, baseType: !2125, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2109, file: !62, line: 579, baseType: !2179, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!347, !2079, !413, !437, !347, !347}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2109, file: !62, line: 585, baseType: !2183, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!282, !2079}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2109, file: !62, line: 615, baseType: !2187, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!873, !2079, !413}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2080, file: !875, line: 359, baseType: !413, size: 64, offset: 1216)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2080, file: !875, line: 361, baseType: !442, size: 64, offset: 1280)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2080, file: !875, line: 362, baseType: !437, size: 64, offset: 1344)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2080, file: !875, line: 365, baseType: !830, size: 64, offset: 1408)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2080, file: !875, line: 373, baseType: !2195, offset: 1472)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !875, line: 296, elements: !335)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2076, file: !875, line: 391, baseType: !909, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2076, file: !875, line: 392, baseType: !511, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2076, file: !875, line: 394, baseType: !2199, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!413, !442, !413, !413, !413, !413}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2076, file: !875, line: 398, baseType: !413, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2076, file: !875, line: 399, baseType: !413, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2076, file: !875, line: 405, baseType: !413, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2076, file: !875, line: 406, baseType: !413, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2076, file: !875, line: 407, baseType: !2207, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2066, line: 286, baseType: !2209)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2066, line: 286, size: 64, elements: !2210)
!2210 = !{!2211}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2209, file: !2066, line: 286, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2095, line: 18, baseType: !413)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2076, file: !875, line: 416, baseType: !900, size: 32, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2076, file: !875, line: 428, baseType: !900, size: 32, offset: 608)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2076, file: !875, line: 437, baseType: !900, size: 32, offset: 640)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2076, file: !875, line: 447, baseType: !900, size: 32, offset: 672)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2076, file: !875, line: 450, baseType: !830, size: 64, offset: 704)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2076, file: !875, line: 452, baseType: !347, size: 32, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2076, file: !875, line: 454, baseType: !321, offset: 800)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2076, file: !875, line: 457, baseType: !920, size: 256, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2076, file: !875, line: 459, baseType: !307, size: 128, offset: 1088)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2076, file: !875, line: 466, baseType: !413, size: 64, offset: 1216)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2076, file: !875, line: 467, baseType: !413, size: 64, offset: 1280)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2076, file: !875, line: 469, baseType: !413, size: 64, offset: 1344)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2076, file: !875, line: 470, baseType: !413, size: 64, offset: 1408)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2076, file: !875, line: 471, baseType: !832, size: 64, offset: 1472)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2076, file: !875, line: 472, baseType: !413, size: 64, offset: 1536)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2076, file: !875, line: 473, baseType: !413, size: 64, offset: 1600)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2076, file: !875, line: 474, baseType: !413, size: 64, offset: 1664)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2076, file: !875, line: 475, baseType: !413, size: 64, offset: 1728)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2076, file: !875, line: 477, baseType: !321, offset: 1792)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2076, file: !875, line: 478, baseType: !413, size: 64, offset: 1792)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2076, file: !875, line: 478, baseType: !413, size: 64, offset: 1856)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2076, file: !875, line: 478, baseType: !413, size: 64, offset: 1920)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2076, file: !875, line: 478, baseType: !413, size: 64, offset: 1984)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2076, file: !875, line: 479, baseType: !413, size: 64, offset: 2048)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2076, file: !875, line: 479, baseType: !413, size: 64, offset: 2112)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2076, file: !875, line: 479, baseType: !413, size: 64, offset: 2176)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2076, file: !875, line: 480, baseType: !413, size: 64, offset: 2240)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2076, file: !875, line: 480, baseType: !413, size: 64, offset: 2304)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2076, file: !875, line: 480, baseType: !413, size: 64, offset: 2368)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2076, file: !875, line: 480, baseType: !413, size: 64, offset: 2432)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2076, file: !875, line: 482, baseType: !2244, size: 2816, offset: 2496)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 2816, elements: !2245)
!2245 = !{!2246}
!2246 = !DISubrange(count: 44)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2076, file: !875, line: 488, baseType: !2248, size: 256, offset: 5312)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2249, line: 60, size: 256, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2248, file: !2249, line: 61, baseType: !2252, size: 256)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 256, elements: !1400)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2076, file: !875, line: 490, baseType: !2254, size: 64, offset: 5568)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !875, line: 490, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2076, file: !875, line: 493, baseType: !2257, size: 896, offset: 5632)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2258, line: 53, baseType: !2259)
!2258 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2258, line: 13, size: 896, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2267, !2268, !2269, !2270, !2290, !2291, !2292}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2259, file: !2258, line: 18, baseType: !511, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2259, file: !2258, line: 28, baseType: !832, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2259, file: !2258, line: 31, baseType: !920, size: 256, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2259, file: !2258, line: 32, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2258, line: 32, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2259, file: !2258, line: 37, baseType: !405, size: 16, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2259, file: !2258, line: 40, baseType: !826, size: 192, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2259, file: !2258, line: 41, baseType: !437, size: 64, offset: 704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2259, file: !2258, line: 42, baseType: !2271, size: 64, offset: 768)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2274, line: 13, size: 896, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2273, file: !2274, line: 14, baseType: !437, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2273, file: !2274, line: 15, baseType: !413, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2273, file: !2274, line: 17, baseType: !413, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2273, file: !2274, line: 17, baseType: !413, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2273, file: !2274, line: 19, baseType: !398, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2273, file: !2274, line: 21, baseType: !398, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2273, file: !2274, line: 22, baseType: !398, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2273, file: !2274, line: 23, baseType: !398, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2273, file: !2274, line: 24, baseType: !398, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2273, file: !2274, line: 25, baseType: !398, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2273, file: !2274, line: 26, baseType: !398, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2273, file: !2274, line: 27, baseType: !398, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2273, file: !2274, line: 28, baseType: !398, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2273, file: !2274, line: 29, baseType: !398, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2259, file: !2258, line: 44, baseType: !900, size: 32, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2259, file: !2258, line: 50, baseType: !1012, size: 16, offset: 864)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2259, file: !2258, line: 51, baseType: !2293, size: 16, offset: 880)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !506, line: 18, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !508, line: 23, baseType: !1076)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !875, line: 495, baseType: !413, size: 64, offset: 6528)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2076, file: !875, line: 497, baseType: !2297, size: 64, offset: 6592)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !875, line: 381, size: 384, elements: !2299)
!2299 = !{!2300, !2301, !3518}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2298, file: !875, line: 382, baseType: !900, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2298, file: !875, line: 383, baseType: !2302, size: 128, offset: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !875, line: 376, size: 128, elements: !2303)
!2303 = !{!2304, !3516}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2302, file: !875, line: 377, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2307, line: 640, size: 48640, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2315, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2330, !2348, !2359, !2442, !2443, !2444, !2455, !2456, !2458, !2459, !2460, !2461, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2539, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2571, !2573, !2574, !2575, !2587, !2588, !2589, !2590, !2591, !2592, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2616, !2621, !2943, !2944, !2945, !2946, !2948, !2951, !2954, !2957, !2960, !2996, !3097, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3143, !3144, !3145, !3146, !3147, !3152, !3153, !3154, !3157, !3158, !3160, !3169, !3174, !3175, !3176, !3179, !3180, !3259, !3260, !3263, !3264, !3267, !3268, !3269, !3273, !3274, !3275, !3288, !3289, !3290, !3300, !3305, !3308, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2306, file: !2307, line: 646, baseType: !2310, size: 128)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2311, line: 56, size: 128, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 57, baseType: !413, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2310, file: !2311, line: 58, baseType: !505, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2306, file: !2307, line: 649, baseType: !2316, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !398)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2306, file: !2307, line: 657, baseType: !437, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2306, file: !2307, line: 658, baseType: !1515, size: 32, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 660, baseType: !7, size: 32, offset: 288)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2306, file: !2307, line: 661, baseType: !7, size: 32, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2306, file: !2307, line: 684, baseType: !347, size: 32, offset: 352)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2306, file: !2307, line: 686, baseType: !347, size: 32, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2306, file: !2307, line: 687, baseType: !347, size: 32, offset: 416)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2306, file: !2307, line: 688, baseType: !347, size: 32, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2306, file: !2307, line: 689, baseType: !7, size: 32, offset: 480)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2306, file: !2307, line: 691, baseType: !2327, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2307, line: 691, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2306, file: !2307, line: 692, baseType: !2331, size: 832, offset: 576)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2307, line: 451, size: 832, elements: !2332)
!2332 = !{!2333, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2331, file: !2307, line: 453, baseType: !2334, size: 128)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2307, line: 325, size: 128, elements: !2335)
!2335 = !{!2336, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2334, file: !2307, line: 326, baseType: !413, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2334, file: !2307, line: 327, baseType: !505, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2331, file: !2307, line: 454, baseType: !913, size: 192, align: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2331, file: !2307, line: 455, baseType: !307, size: 128, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2331, file: !2307, line: 456, baseType: !7, size: 32, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2331, file: !2307, line: 458, baseType: !511, size: 64, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2331, file: !2307, line: 459, baseType: !511, size: 64, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2331, file: !2307, line: 460, baseType: !511, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2331, file: !2307, line: 461, baseType: !511, size: 64, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2331, file: !2307, line: 463, baseType: !511, size: 64, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2331, file: !2307, line: 465, baseType: !2347, offset: 832)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2307, line: 415, elements: !335)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2306, file: !2307, line: 693, baseType: !2349, size: 384, offset: 1408)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2307, line: 489, size: 384, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2349, file: !2307, line: 490, baseType: !307, size: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2349, file: !2307, line: 491, baseType: !413, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2349, file: !2307, line: 492, baseType: !413, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2349, file: !2307, line: 493, baseType: !7, size: 32, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2349, file: !2307, line: 494, baseType: !405, size: 16, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2349, file: !2307, line: 495, baseType: !405, size: 16, offset: 304)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2349, file: !2307, line: 497, baseType: !2358, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2306, file: !2307, line: 697, baseType: !2360, size: 1792, offset: 1792)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2307, line: 507, size: 1792, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2439, !2440}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2360, file: !2307, line: 508, baseType: !913, size: 192, align: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2360, file: !2307, line: 515, baseType: !511, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2360, file: !2307, line: 516, baseType: !511, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2360, file: !2307, line: 517, baseType: !511, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2360, file: !2307, line: 518, baseType: !511, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2360, file: !2307, line: 519, baseType: !511, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2360, file: !2307, line: 526, baseType: !836, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2360, file: !2307, line: 527, baseType: !511, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !2307, line: 528, baseType: !7, size: 32, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2360, file: !2307, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2360, file: !2307, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2360, file: !2307, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2360, file: !2307, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2360, file: !2307, line: 563, baseType: !2376, size: 512, offset: 704)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !68, line: 118, size: 512, elements: !2377)
!2377 = !{!2378, !2386, !2387, !2392, !2435, !2436, !2437, !2438}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2376, file: !68, line: 119, baseType: !2379, size: 256)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2380, line: 9, size: 256, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2379, file: !2380, line: 10, baseType: !913, size: 192, align: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2379, file: !2380, line: 11, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2385, line: 29, baseType: !836)
!2385 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2376, file: !68, line: 120, baseType: !2384, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2376, file: !68, line: 121, baseType: !2388, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!67, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2376, file: !68, line: 122, baseType: !2393, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !68, line: 159, size: 512, align: 512, elements: !2395)
!2395 = !{!2396, !2416, !2417, !2420, !2425, !2426, !2430, !2434}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2394, file: !68, line: 160, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !68, line: 214, size: 4608, align: 512, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2398, file: !68, line: 215, baseType: !926)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2398, file: !68, line: 216, baseType: !7, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2398, file: !68, line: 217, baseType: !7, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2398, file: !68, line: 218, baseType: !7, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2398, file: !68, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2398, file: !68, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2398, file: !68, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2398, file: !68, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2398, file: !68, line: 233, baseType: !2384, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2398, file: !68, line: 234, baseType: !2391, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2398, file: !68, line: 235, baseType: !2384, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2398, file: !68, line: 236, baseType: !2391, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2398, file: !68, line: 237, baseType: !2413, size: 4096, offset: 512)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2394, size: 4096, elements: !2414)
!2414 = !{!2415}
!2415 = !DISubrange(count: 8)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2394, file: !68, line: 161, baseType: !7, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2394, file: !68, line: 162, baseType: !2418, size: 32, offset: 96)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !308, line: 27, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !396, line: 96, baseType: !347)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2394, file: !68, line: 163, baseType: !2421, size: 32, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !478, line: 276, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !478, line: 276, size: 32, elements: !2423)
!2423 = !{!2424}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2422, file: !478, line: 276, baseType: !482, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2394, file: !68, line: 164, baseType: !2391, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2394, file: !68, line: 165, baseType: !2427, size: 128, offset: 256)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2380, line: 14, size: 128, elements: !2428)
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2427, file: !2380, line: 15, baseType: !905, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2394, file: !68, line: 166, baseType: !2431, size: 64, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2384}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2394, file: !68, line: 167, baseType: !2384, size: 64, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2376, file: !68, line: 123, baseType: !1133, size: 8, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2376, file: !68, line: 124, baseType: !1133, size: 8, offset: 456)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2376, file: !68, line: 125, baseType: !1133, size: 8, offset: 464)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2376, file: !68, line: 126, baseType: !1133, size: 8, offset: 472)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2360, file: !2307, line: 572, baseType: !2376, size: 512, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2360, file: !2307, line: 580, baseType: !2441, size: 64, offset: 1728)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2306, file: !2307, line: 721, baseType: !7, size: 32, offset: 3584)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2306, file: !2307, line: 722, baseType: !347, size: 32, offset: 3616)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2306, file: !2307, line: 723, baseType: !2445, size: 64, offset: 3648)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2448, line: 17, baseType: !2449)
!2448 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2448, line: 17, size: 64, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2449, file: !2448, line: 17, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 64, elements: !2453)
!2453 = !{!2454}
!2454 = !DISubrange(count: 1)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2306, file: !2307, line: 724, baseType: !2447, size: 64, offset: 3712)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2306, file: !2307, line: 749, baseType: !2457, offset: 3776)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2307, line: 290, elements: !335)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2306, file: !2307, line: 751, baseType: !307, size: 128, offset: 3776)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2306, file: !2307, line: 757, baseType: !2072, size: 64, offset: 3904)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2306, file: !2307, line: 758, baseType: !2072, size: 64, offset: 3968)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2306, file: !2307, line: 761, baseType: !2462, size: 320, offset: 4032)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2249, line: 34, size: 320, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2462, file: !2249, line: 35, baseType: !511, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2462, file: !2249, line: 36, baseType: !2466, size: 256, offset: 64)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2079, size: 256, elements: !1400)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2306, file: !2307, line: 766, baseType: !347, size: 32, offset: 4352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2306, file: !2307, line: 767, baseType: !347, size: 32, offset: 4384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2306, file: !2307, line: 768, baseType: !347, size: 32, offset: 4416)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2306, file: !2307, line: 770, baseType: !347, size: 32, offset: 4448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2306, file: !2307, line: 772, baseType: !413, size: 64, offset: 4480)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2306, file: !2307, line: 775, baseType: !7, size: 32, offset: 4544)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2306, file: !2307, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2306, file: !2307, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2306, file: !2307, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2306, file: !2307, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2306, file: !2307, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2306, file: !2307, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2306, file: !2307, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2306, file: !2307, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2306, file: !2307, line: 831, baseType: !413, size: 64, offset: 4672)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2306, file: !2307, line: 833, baseType: !2483, size: 384, offset: 4736)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !73, line: 25, size: 384, elements: !2484)
!2484 = !{!2485, !2490}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2483, file: !73, line: 26, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!398, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !73, line: 27, baseType: !2491, size: 320, offset: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !73, line: 27, size: 320, elements: !2492)
!2492 = !{!2493, !2503, !2529}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2491, file: !73, line: 36, baseType: !2494, size: 320)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2491, file: !73, line: 29, size: 320, elements: !2495)
!2495 = !{!2496, !2498, !2499, !2500, !2501, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2494, file: !73, line: 30, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2494, file: !73, line: 31, baseType: !505, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2494, file: !73, line: 32, baseType: !505, size: 32, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2494, file: !73, line: 33, baseType: !505, size: 32, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2494, file: !73, line: 34, baseType: !511, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2494, file: !73, line: 35, baseType: !2497, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2491, file: !73, line: 46, baseType: !2504, size: 192)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2491, file: !73, line: 38, size: 192, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2528}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2504, file: !73, line: 39, baseType: !2418, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2504, file: !73, line: 40, baseType: !72, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !73, line: 41, baseType: !2509, size: 64, offset: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2504, file: !73, line: 41, size: 64, elements: !2510)
!2510 = !{!2511, !2519}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2509, file: !73, line: 42, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2514, line: 7, size: 128, elements: !2515)
!2514 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2513, file: !2514, line: 8, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !396, line: 93, baseType: !622)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2513, file: !2514, line: 9, baseType: !622, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2509, file: !73, line: 43, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2522, line: 7, size: 64, elements: !2523)
!2522 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2523 = !{!2524, !2527}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2521, file: !2522, line: 8, baseType: !2525, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2522, line: 5, baseType: !2526)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !506, line: 20, baseType: !1914)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2521, file: !2522, line: 9, baseType: !2526, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2504, file: !73, line: 45, baseType: !511, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2491, file: !73, line: 54, baseType: !2530, size: 256)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2491, file: !73, line: 48, size: 256, elements: !2531)
!2531 = !{!2532, !2535, !2536, !2537, !2538}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2530, file: !73, line: 49, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !73, line: 14, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2530, file: !73, line: 50, baseType: !347, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2530, file: !73, line: 51, baseType: !347, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2530, file: !73, line: 52, baseType: !413, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2530, file: !73, line: 53, baseType: !413, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2306, file: !2307, line: 835, baseType: !2540, size: 32, offset: 5120)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !308, line: 22, baseType: !2541)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !396, line: 28, baseType: !347)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2306, file: !2307, line: 836, baseType: !2540, size: 32, offset: 5152)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2306, file: !2307, line: 840, baseType: !413, size: 64, offset: 5184)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2306, file: !2307, line: 849, baseType: !2305, size: 64, offset: 5248)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2306, file: !2307, line: 852, baseType: !2305, size: 64, offset: 5312)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2306, file: !2307, line: 857, baseType: !307, size: 128, offset: 5376)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2306, file: !2307, line: 858, baseType: !307, size: 128, offset: 5504)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2306, file: !2307, line: 859, baseType: !2305, size: 64, offset: 5632)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2306, file: !2307, line: 867, baseType: !307, size: 128, offset: 5696)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2306, file: !2307, line: 868, baseType: !307, size: 128, offset: 5824)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2306, file: !2307, line: 871, baseType: !2552, size: 64, offset: 5952)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !101, line: 59, size: 768, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2560, !2561, !2562, !2563}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2553, file: !101, line: 61, baseType: !1515, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2553, file: !101, line: 62, baseType: !7, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2553, file: !101, line: 63, baseType: !321, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2553, file: !101, line: 65, baseType: !2559, size: 256, offset: 64)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 256, elements: !1400)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2553, file: !101, line: 66, baseType: !724, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2553, file: !101, line: 68, baseType: !1322, size: 128, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2553, file: !101, line: 69, baseType: !455, size: 128, align: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2553, file: !101, line: 70, baseType: !2564, size: 128, offset: 640)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2565, size: 128, elements: !2453)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !101, line: 54, size: 128, elements: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2565, file: !101, line: 55, baseType: !347, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2565, file: !101, line: 56, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !101, line: 56, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2306, file: !2307, line: 872, baseType: !2572, size: 512, offset: 6016)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 512, elements: !1400)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2306, file: !2307, line: 873, baseType: !307, size: 128, offset: 6528)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2306, file: !2307, line: 874, baseType: !307, size: 128, offset: 6656)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2306, file: !2307, line: 876, baseType: !2576, size: 64, offset: 6784)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2578, line: 26, size: 192, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2577, file: !2578, line: 27, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2577, file: !2578, line: 28, baseType: !2582, size: 128, offset: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2583, line: 43, size: 128, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2582, file: !2583, line: 44, baseType: !926)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2582, file: !2583, line: 45, baseType: !307, size: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2306, file: !2307, line: 879, baseType: !808, size: 64, offset: 6848)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2306, file: !2307, line: 882, baseType: !808, size: 64, offset: 6912)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2306, file: !2307, line: 884, baseType: !511, size: 64, offset: 6976)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2306, file: !2307, line: 885, baseType: !511, size: 64, offset: 7040)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2306, file: !2307, line: 890, baseType: !511, size: 64, offset: 7104)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2306, file: !2307, line: 891, baseType: !2593, size: 128, offset: 7168)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2307, line: 242, size: 128, elements: !2594)
!2594 = !{!2595, !2596, !2597}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2593, file: !2307, line: 244, baseType: !511, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2593, file: !2307, line: 245, baseType: !511, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2593, file: !2307, line: 246, baseType: !926, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2306, file: !2307, line: 900, baseType: !413, size: 64, offset: 7296)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2306, file: !2307, line: 901, baseType: !413, size: 64, offset: 7360)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2306, file: !2307, line: 904, baseType: !511, size: 64, offset: 7424)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2306, file: !2307, line: 907, baseType: !511, size: 64, offset: 7488)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2306, file: !2307, line: 910, baseType: !413, size: 64, offset: 7552)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2306, file: !2307, line: 911, baseType: !413, size: 64, offset: 7616)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2306, file: !2307, line: 914, baseType: !2605, size: 640, offset: 7680)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2606, line: 123, size: 640, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608, !2614, !2615}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2605, file: !2606, line: 124, baseType: !2609, size: 576)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 576, elements: !364)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2606, line: 108, size: 192, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2610, file: !2606, line: 109, baseType: !511, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2610, file: !2606, line: 110, baseType: !2427, size: 128, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2605, file: !2606, line: 125, baseType: !7, size: 32, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2605, file: !2606, line: 126, baseType: !7, size: 32, offset: 608)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2306, file: !2307, line: 917, baseType: !2617, size: 192, offset: 8320)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2606, line: 134, size: 192, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2617, file: !2606, line: 135, baseType: !455, size: 128, align: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2617, file: !2606, line: 136, baseType: !7, size: 32, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2306, file: !2307, line: 923, baseType: !2622, size: 64, offset: 8512)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2625, line: 111, size: 1280, elements: !2626)
!2625 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2644, !2645, !2646, !2647, !2648, !2649, !2756, !2757, !2758, !2759, !2785, !2928, !2938}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2624, file: !2625, line: 112, baseType: !900, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2624, file: !2625, line: 120, baseType: !524, size: 32, offset: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2624, file: !2625, line: 121, baseType: !532, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2624, file: !2625, line: 122, baseType: !524, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2624, file: !2625, line: 123, baseType: !532, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2624, file: !2625, line: 124, baseType: !524, size: 32, offset: 160)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2624, file: !2625, line: 125, baseType: !532, size: 32, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2624, file: !2625, line: 126, baseType: !524, size: 32, offset: 224)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2624, file: !2625, line: 127, baseType: !532, size: 32, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2624, file: !2625, line: 128, baseType: !7, size: 32, offset: 288)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2624, file: !2625, line: 129, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2639, line: 26, baseType: !2640)
!2639 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2639, line: 24, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2640, file: !2639, line: 25, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 64, elements: !1492)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2624, file: !2625, line: 130, baseType: !2638, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2624, file: !2625, line: 131, baseType: !2638, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2624, file: !2625, line: 132, baseType: !2638, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2624, file: !2625, line: 133, baseType: !2638, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2624, file: !2625, line: 135, baseType: !516, size: 8, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2624, file: !2625, line: 137, baseType: !2650, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2652, line: 189, size: 1664, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2653 = !{!2654, !2655, !2658, !2663, !2664, !2667, !2668, !2673, !2674, !2675, !2676, !2678, !2679, !2680, !2681, !2682, !2720, !2741}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2651, file: !2652, line: 190, baseType: !1515, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2651, file: !2652, line: 191, baseType: !2656, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2652, line: 28, baseType: !2657)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !308, line: 98, baseType: !2526)
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !2652, line: 192, baseType: !2659, size: 192, offset: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !2652, line: 192, size: 192, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2659, file: !2652, line: 193, baseType: !307, size: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2659, file: !2652, line: 194, baseType: !913, size: 192, align: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2651, file: !2652, line: 199, baseType: !920, size: 256, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2651, file: !2652, line: 200, baseType: !2665, size: 64, offset: 512)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2652, line: 200, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2651, file: !2652, line: 201, baseType: !437, size: 64, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !2652, line: 202, baseType: !2669, size: 64, offset: 640)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !2652, line: 202, size: 64, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2669, file: !2652, line: 203, baseType: !628, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2669, file: !2652, line: 204, baseType: !628, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2651, file: !2652, line: 206, baseType: !628, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2651, file: !2652, line: 207, baseType: !524, size: 32, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2651, file: !2652, line: 208, baseType: !532, size: 32, offset: 800)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2651, file: !2652, line: 209, baseType: !2677, size: 32, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2652, line: 31, baseType: !648)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2651, file: !2652, line: 210, baseType: !405, size: 16, offset: 864)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2651, file: !2652, line: 211, baseType: !405, size: 16, offset: 880)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2651, file: !2652, line: 215, baseType: !1076, size: 16, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2651, file: !2652, line: 222, baseType: !413, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !2652, line: 239, baseType: !2683, size: 320, offset: 1024)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !2652, line: 239, size: 320, elements: !2684)
!2684 = !{!2685, !2712}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2683, file: !2652, line: 240, baseType: !2686, size: 320)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2652, line: 108, size: 320, elements: !2687)
!2687 = !{!2688, !2689, !2701, !2704, !2711}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2686, file: !2652, line: 110, baseType: !413, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, scope: !2686, file: !2652, line: 111, baseType: !2690, size: 64, offset: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2686, file: !2652, line: 111, size: 64, elements: !2691)
!2691 = !{!2692, !2700}
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2690, file: !2652, line: 112, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2652, line: 112, size: 64, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2693, file: !2652, line: 114, baseType: !1012, size: 16)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2693, file: !2652, line: 115, baseType: !2697, size: 48, offset: 16)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 48, elements: !2698)
!2698 = !{!2699}
!2699 = !DISubrange(count: 6)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2690, file: !2652, line: 121, baseType: !413, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2686, file: !2652, line: 123, baseType: !2702, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2652, line: 96, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2686, file: !2652, line: 124, baseType: !2705, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2652, line: 102, size: 192, elements: !2707)
!2707 = !{!2708, !2709, !2710}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2706, file: !2652, line: 103, baseType: !455, size: 128, align: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2706, file: !2652, line: 104, baseType: !1515, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2706, file: !2652, line: 105, baseType: !579, size: 8, offset: 160)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2686, file: !2652, line: 125, baseType: !282, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2652, line: 241, baseType: !2713, size: 320)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2683, file: !2652, line: 241, size: 320, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2713, file: !2652, line: 242, baseType: !413, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2713, file: !2652, line: 243, baseType: !413, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2713, file: !2652, line: 244, baseType: !2702, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2713, file: !2652, line: 245, baseType: !2705, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2713, file: !2652, line: 246, baseType: !363, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !2652, line: 254, baseType: !2721, size: 256, offset: 1344)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !2652, line: 254, size: 256, elements: !2722)
!2722 = !{!2723, !2729}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2721, file: !2652, line: 255, baseType: !2724, size: 256)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2652, line: 128, size: 256, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2724, file: !2652, line: 129, baseType: !437, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2724, file: !2652, line: 130, baseType: !2728, size: 256)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !1400)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !2652, line: 256, baseType: !2730, size: 256)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2652, line: 256, size: 256, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2730, file: !2652, line: 258, baseType: !307, size: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2730, file: !2652, line: 259, baseType: !2734, size: 128, offset: 128)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2735, line: 22, size: 128, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2736 = !{!2737, !2740}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2734, file: !2735, line: 23, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2735, line: 23, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2734, file: !2735, line: 24, baseType: !413, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2651, file: !2652, line: 274, baseType: !2742, size: 64, offset: 1600)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2652, line: 170, size: 192, elements: !2744)
!2744 = !{!2745, !2754, !2755}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2743, file: !2652, line: 171, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2652, line: 165, baseType: !2747)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!347, !2650, !2750, !2752, !2650}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2743, file: !2652, line: 172, baseType: !2650, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2743, file: !2652, line: 173, baseType: !2702, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2624, file: !2625, line: 138, baseType: !2650, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2624, file: !2625, line: 139, baseType: !2650, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2624, file: !2625, line: 140, baseType: !2650, size: 64, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2624, file: !2625, line: 145, baseType: !2760, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2762, line: 13, size: 896, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2761, file: !2762, line: 14, baseType: !1515, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2761, file: !2762, line: 15, baseType: !900, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2761, file: !2762, line: 16, baseType: !900, size: 32, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2761, file: !2762, line: 21, baseType: !830, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2761, file: !2762, line: 27, baseType: !413, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2761, file: !2762, line: 28, baseType: !413, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2761, file: !2762, line: 29, baseType: !830, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2761, file: !2762, line: 32, baseType: !728, size: 128, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2761, file: !2762, line: 33, baseType: !524, size: 32, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2761, file: !2762, line: 37, baseType: !830, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2761, file: !2762, line: 44, baseType: !2775, size: 256, offset: 640)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2776, line: 15, size: 256, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2775, file: !2776, line: 16, baseType: !926)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2775, file: !2776, line: 18, baseType: !347, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2775, file: !2776, line: 19, baseType: !347, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2775, file: !2776, line: 20, baseType: !347, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2775, file: !2776, line: 21, baseType: !347, size: 32, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2775, file: !2776, line: 22, baseType: !413, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !2776, line: 23, baseType: !413, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2624, file: !2625, line: 146, baseType: !2786, size: 64, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2788, line: 56, size: 4160, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !{!2790, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2827, !2828, !2829, !2830, !2831, !2832, !2913, !2914, !2926}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2787, file: !2788, line: 57, baseType: !2791, size: 576)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2788, line: 23, size: 576, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2791, file: !2788, line: 24, baseType: !505, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !2791, file: !2788, line: 25, baseType: !2795, size: 512, offset: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2791, file: !2788, line: 25, size: 512, elements: !2796)
!2796 = !{!2797, !2804}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2795, file: !2788, line: 26, baseType: !2798, size: 480)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2799, size: 480, elements: !1969)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2788, line: 17, size: 96, elements: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2799, file: !2788, line: 18, baseType: !505, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2799, file: !2788, line: 19, baseType: !505, size: 32, offset: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2799, file: !2788, line: 20, baseType: !505, size: 32, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !2788, line: 27, baseType: !2805, size: 128)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2795, file: !2788, line: 27, size: 128, elements: !2806)
!2806 = !{!2807, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2805, file: !2788, line: 28, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2805, file: !2788, line: 29, baseType: !2808, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2787, file: !2788, line: 58, baseType: !2791, size: 576, offset: 576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2787, file: !2788, line: 59, baseType: !2791, size: 576, offset: 1152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2787, file: !2788, line: 60, baseType: !900, size: 32, offset: 1728)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2787, file: !2788, line: 61, baseType: !2786, size: 64, offset: 1792)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2787, file: !2788, line: 62, baseType: !347, size: 32, offset: 1856)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2787, file: !2788, line: 63, baseType: !524, size: 32, offset: 1888)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2787, file: !2788, line: 64, baseType: !532, size: 32, offset: 1920)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2787, file: !2788, line: 65, baseType: !2818, size: 192, offset: 1984)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2819, line: 7, size: 192, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2820 = !{!2821, !2822, !2826}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2818, file: !2819, line: 8, baseType: !830, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2818, file: !2819, line: 9, baseType: !2823, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2819, line: 5, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2818, file: !2819, line: 10, baseType: !7, size: 32, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2787, file: !2788, line: 66, baseType: !413, size: 64, offset: 2176)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2787, file: !2788, line: 74, baseType: !307, size: 128, offset: 2240)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2787, file: !2788, line: 75, baseType: !2650, size: 64, offset: 2368)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2787, file: !2788, line: 76, baseType: !920, size: 256, offset: 2432)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2787, file: !2788, line: 83, baseType: !1186, size: 256, offset: 2688)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2787, file: !2788, line: 85, baseType: !2833, size: 768, offset: 2944)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2834, line: 156, size: 768, elements: !2835)
!2834 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2835 = !{!2836, !2841}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2833, file: !2834, line: 157, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!347, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2833, file: !2834, line: 158, baseType: !2842, size: 704, offset: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2834, line: 150, size: 704, elements: !2843)
!2843 = !{!2844, !2912}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2842, file: !2834, line: 152, baseType: !2845, size: 640)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2834, line: 131, size: 640, elements: !2846)
!2846 = !{!2847, !2880, !2881, !2882, !2902, !2903, !2905, !2911}
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2845, file: !2834, line: 132, baseType: !2848, size: 192)
!2848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2845, file: !2834, line: 132, size: 192, elements: !2849)
!2849 = !{!2850, !2879}
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2848, file: !2834, line: 133, baseType: !2851, size: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2848, file: !2834, line: 133, size: 192, elements: !2852)
!2852 = !{!2853, !2876, !2877, !2878}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2851, file: !2834, line: 134, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2834, line: 112, size: 512, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862, !2868, !2874, !2875}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2855, file: !2834, line: 113, baseType: !282, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2855, file: !2834, line: 114, baseType: !437, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2855, file: !2834, line: 115, baseType: !347, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2855, file: !2834, line: 116, baseType: !404, size: 16, offset: 160)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2855, file: !2834, line: 117, baseType: !2854, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2855, file: !2834, line: 118, baseType: !2863, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2834, line: 47, baseType: !2865)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!347, !2854, !347, !437, !2867, !848}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2855, file: !2834, line: 119, baseType: !2869, size: 64, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2834, line: 94, size: 192, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2870, file: !2834, line: 95, baseType: !900, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2870, file: !2834, line: 96, baseType: !1322, size: 128, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2855, file: !2834, line: 120, baseType: !437, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2855, file: !2834, line: 121, baseType: !437, size: 64, offset: 448)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2851, file: !2834, line: 135, baseType: !347, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2851, file: !2834, line: 136, baseType: !347, size: 32, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2851, file: !2834, line: 137, baseType: !347, size: 32, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2848, file: !2834, line: 139, baseType: !455, size: 128, align: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2845, file: !2834, line: 141, baseType: !2576, size: 64, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2845, file: !2834, line: 142, baseType: !2854, size: 64, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2845, file: !2834, line: 143, baseType: !2883, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2834, line: 161, size: 960, elements: !2885)
!2885 = !{!2886, !2887, !2891, !2898}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2884, file: !2834, line: 162, baseType: !2833, size: 768)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2884, file: !2834, line: 163, baseType: !2888, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!2840, !2883}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2884, file: !2834, line: 164, baseType: !2892, size: 64, offset: 832)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2895, !2854, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2884, file: !2834, line: 167, baseType: !2899, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!347, !2895, !2854}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2845, file: !2834, line: 144, baseType: !2840, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2845, file: !2834, line: 145, baseType: !2904, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2845, file: !2834, line: 146, baseType: !2906, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2834, line: 124, size: 256, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2907, file: !2834, line: 125, baseType: !913, size: 192, align: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2907, file: !2834, line: 126, baseType: !2895, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2845, file: !2834, line: 147, baseType: !724, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2842, file: !2834, line: 153, baseType: !909, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2787, file: !2788, line: 86, baseType: !2895, size: 64, offset: 3712)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2787, file: !2788, line: 88, baseType: !2915, size: 64, offset: 3776)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2788, line: 92, size: 576, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921, !2922}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2916, file: !2788, line: 93, baseType: !728, size: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2916, file: !2788, line: 94, baseType: !2786, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2916, file: !2788, line: 95, baseType: !524, size: 32, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2916, file: !2788, line: 96, baseType: !347, size: 32, offset: 224)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2916, file: !2788, line: 97, baseType: !2923, size: 320, offset: 256)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 320, elements: !2924)
!2924 = !{!2925}
!2925 = !DISubrange(count: 10)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2787, file: !2788, line: 89, baseType: !2927, size: 320, offset: 3840)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 320, elements: !2924)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2624, file: !2625, line: 147, baseType: !2929, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2625, line: 25, size: 64, elements: !2931)
!2931 = !{!2932, !2933, !2934}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2930, file: !2625, line: 26, baseType: !900, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2930, file: !2625, line: 27, baseType: !347, size: 32, offset: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2930, file: !2625, line: 28, baseType: !2935, offset: 64)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, elements: !2936)
!2936 = !{!2937}
!2937 = !DISubrange(count: 0)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !2625, line: 149, baseType: !2939, size: 128, offset: 1152)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2624, file: !2625, line: 149, size: 128, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2939, file: !2625, line: 150, baseType: !347, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2939, file: !2625, line: 151, baseType: !455, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2306, file: !2307, line: 926, baseType: !2622, size: 64, offset: 8576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2306, file: !2307, line: 929, baseType: !2622, size: 64, offset: 8640)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2306, file: !2307, line: 933, baseType: !2650, size: 64, offset: 8704)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2306, file: !2307, line: 943, baseType: !2947, size: 128, offset: 8768)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !1841)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2306, file: !2307, line: 945, baseType: !2949, size: 64, offset: 8896)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2307, line: 49, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2306, file: !2307, line: 956, baseType: !2952, size: 64, offset: 8960)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2307, line: 45, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2306, file: !2307, line: 959, baseType: !2955, size: 64, offset: 9024)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2307, line: 959, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2306, file: !2307, line: 962, baseType: !2958, size: 64, offset: 9088)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2307, line: 66, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2306, file: !2307, line: 966, baseType: !2961, size: 64, offset: 9152)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2963, line: 31, size: 576, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2964 = !{!2965, !2966, !2969, !2972, !2975, !2976, !2979, !2982, !2983}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2962, file: !2963, line: 32, baseType: !900, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2962, file: !2963, line: 33, baseType: !2967, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2963, line: 9, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2962, file: !2963, line: 34, baseType: !2970, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2963, line: 10, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2962, file: !2963, line: 35, baseType: !2973, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2963, line: 8, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2962, file: !2963, line: 36, baseType: !2569, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2962, file: !2963, line: 37, baseType: !2977, size: 64, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2652, line: 34, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2962, file: !2963, line: 38, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2963, line: 38, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2962, file: !2963, line: 39, baseType: !2980, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2962, file: !2963, line: 40, baseType: !2984, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2986, line: 856, size: 448, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2987 = !{!2988, !2989, !2990, !2991, !2992}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2986, line: 857, baseType: !1515, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2985, file: !2986, line: 858, baseType: !2818, size: 192, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2985, file: !2986, line: 859, baseType: !2786, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2985, file: !2986, line: 860, baseType: !2915, size: 64, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2985, file: !2986, line: 861, baseType: !2993, size: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2995, line: 16, flags: DIFlagFwdDecl)
!2995 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2306, file: !2307, line: 969, baseType: !2997, size: 64, offset: 9216)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2999, line: 82, size: 7296, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006, !3007, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3036, !3045, !3046, !3048, !3049, !3050, !3053, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3083, !3084, !3091, !3092, !3093, !3094, !3095, !3096}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2998, file: !2999, line: 83, baseType: !1515, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2998, file: !2999, line: 84, baseType: !900, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2998, file: !2999, line: 85, baseType: !347, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2998, file: !2999, line: 86, baseType: !307, size: 128, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2998, file: !2999, line: 88, baseType: !1322, size: 128, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2998, file: !2999, line: 91, baseType: !2305, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2998, file: !2999, line: 94, baseType: !3008, size: 192, offset: 448)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3009, line: 30, size: 192, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3009, line: 31, baseType: !307, size: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3008, file: !3009, line: 32, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3014, line: 25, baseType: !3015)
!3014 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3014, line: 23, size: 64, elements: !3016)
!3016 = !{!3017}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3015, file: !3014, line: 24, baseType: !2452, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2998, file: !2999, line: 97, baseType: !724, size: 64, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2998, file: !2999, line: 100, baseType: !347, size: 32, offset: 704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2998, file: !2999, line: 106, baseType: !347, size: 32, offset: 736)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2998, file: !2999, line: 107, baseType: !2305, size: 64, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2998, file: !2999, line: 110, baseType: !347, size: 32, offset: 832)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2998, file: !2999, line: 111, baseType: !7, size: 32, offset: 864)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2998, file: !2999, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2998, file: !2999, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2998, file: !2999, line: 128, baseType: !347, size: 32, offset: 928)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2998, file: !2999, line: 129, baseType: !307, size: 128, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2998, file: !2999, line: 132, baseType: !2376, size: 512, offset: 1088)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2998, file: !2999, line: 133, baseType: !2384, size: 64, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2998, file: !2999, line: 140, baseType: !3031, size: 256, offset: 1664)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 256, elements: !1492)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2999, line: 38, size: 128, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3032, file: !2999, line: 39, baseType: !511, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3032, file: !2999, line: 40, baseType: !511, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2998, file: !2999, line: 146, baseType: !3037, size: 192, offset: 1920)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2999, line: 66, size: 192, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3037, file: !2999, line: 67, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2999, line: 47, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3040, file: !2999, line: 48, baseType: !832, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3040, file: !2999, line: 49, baseType: !832, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3040, file: !2999, line: 50, baseType: !832, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2998, file: !2999, line: 150, baseType: !2605, size: 640, offset: 2112)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2998, file: !2999, line: 153, baseType: !3047, size: 256, offset: 2752)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 256, elements: !1400)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2998, file: !2999, line: 159, baseType: !2552, size: 64, offset: 3008)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2998, file: !2999, line: 162, baseType: !347, size: 32, offset: 3072)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2998, file: !2999, line: 164, baseType: !3051, size: 64, offset: 3136)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2999, line: 164, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2998, file: !2999, line: 175, baseType: !3054, size: 32, offset: 3200)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !478, line: 805, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 798, size: 32, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3055, file: !478, line: 803, baseType: !477, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !478, line: 804, baseType: !321, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2998, file: !2999, line: 176, baseType: !511, size: 64, offset: 3264)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2998, file: !2999, line: 176, baseType: !511, size: 64, offset: 3328)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2998, file: !2999, line: 176, baseType: !511, size: 64, offset: 3392)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2998, file: !2999, line: 176, baseType: !511, size: 64, offset: 3456)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2998, file: !2999, line: 177, baseType: !511, size: 64, offset: 3520)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2998, file: !2999, line: 178, baseType: !511, size: 64, offset: 3584)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2998, file: !2999, line: 179, baseType: !2593, size: 128, offset: 3648)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2998, file: !2999, line: 180, baseType: !413, size: 64, offset: 3776)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2998, file: !2999, line: 180, baseType: !413, size: 64, offset: 3840)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2998, file: !2999, line: 180, baseType: !413, size: 64, offset: 3904)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2998, file: !2999, line: 180, baseType: !413, size: 64, offset: 3968)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2998, file: !2999, line: 181, baseType: !413, size: 64, offset: 4032)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2998, file: !2999, line: 181, baseType: !413, size: 64, offset: 4096)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2998, file: !2999, line: 181, baseType: !413, size: 64, offset: 4160)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2998, file: !2999, line: 181, baseType: !413, size: 64, offset: 4224)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2998, file: !2999, line: 182, baseType: !413, size: 64, offset: 4288)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2998, file: !2999, line: 182, baseType: !413, size: 64, offset: 4352)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2998, file: !2999, line: 182, baseType: !413, size: 64, offset: 4416)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2998, file: !2999, line: 182, baseType: !413, size: 64, offset: 4480)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2998, file: !2999, line: 183, baseType: !413, size: 64, offset: 4544)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2998, file: !2999, line: 183, baseType: !413, size: 64, offset: 4608)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2998, file: !2999, line: 184, baseType: !3081, offset: 4672)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3082, line: 12, elements: !335)
!3082 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2998, file: !2999, line: 192, baseType: !286, size: 64, offset: 4672)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2998, file: !2999, line: 203, baseType: !3085, size: 2048, offset: 4736)
!3085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3086, size: 2048, elements: !1841)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3087, line: 43, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3086, file: !3087, line: 44, baseType: !412, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3086, file: !3087, line: 45, baseType: !412, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2998, file: !2999, line: 220, baseType: !579, size: 8, offset: 6784)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2998, file: !2999, line: 221, baseType: !1076, size: 16, offset: 6800)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2998, file: !2999, line: 222, baseType: !1076, size: 16, offset: 6816)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2998, file: !2999, line: 224, baseType: !2072, size: 64, offset: 6848)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2998, file: !2999, line: 227, baseType: !826, size: 192, offset: 6912)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2998, file: !2999, line: 233, baseType: !826, size: 192, offset: 7104)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2306, file: !2307, line: 970, baseType: !3098, size: 64, offset: 9280)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2999, line: 20, size: 16576, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3099, file: !2999, line: 21, baseType: !321)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3099, file: !2999, line: 22, baseType: !1515, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3099, file: !2999, line: 23, baseType: !1322, size: 128, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3099, file: !2999, line: 24, baseType: !3105, size: 16384, offset: 192)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 16384, elements: !368)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3009, line: 49, size: 256, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3106, file: !3009, line: 50, baseType: !3109, size: 256)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3009, line: 35, size: 256, elements: !3110)
!3110 = !{!3111, !3118, !3119, !3125}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3109, file: !3009, line: 37, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3113, line: 19, baseType: !3114)
!3113 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3113, line: 18, baseType: !3116)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !347}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3109, file: !3009, line: 38, baseType: !413, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3109, file: !3009, line: 44, baseType: !3120, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3113, line: 22, baseType: !3121)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3113, line: 21, baseType: !3123)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3109, file: !3009, line: 46, baseType: !3013, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2306, file: !2307, line: 971, baseType: !3013, size: 64, offset: 9344)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2306, file: !2307, line: 972, baseType: !3013, size: 64, offset: 9408)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2306, file: !2307, line: 974, baseType: !3013, size: 64, offset: 9472)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2306, file: !2307, line: 975, baseType: !3008, size: 192, offset: 9536)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2306, file: !2307, line: 976, baseType: !413, size: 64, offset: 9728)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2306, file: !2307, line: 977, baseType: !410, size: 64, offset: 9792)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2306, file: !2307, line: 978, baseType: !7, size: 32, offset: 9856)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2306, file: !2307, line: 980, baseType: !458, size: 64, offset: 9920)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2306, file: !2307, line: 989, baseType: !3135, size: 128, offset: 9984)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3136, line: 35, size: 128, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3135, file: !3136, line: 36, baseType: !347, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3135, file: !3136, line: 37, baseType: !900, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3135, file: !3136, line: 38, baseType: !3141, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3136, line: 23, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2306, file: !2307, line: 992, baseType: !511, size: 64, offset: 10112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2306, file: !2307, line: 993, baseType: !511, size: 64, offset: 10176)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2306, file: !2307, line: 996, baseType: !321, offset: 10240)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2306, file: !2307, line: 999, baseType: !926, offset: 10240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2306, file: !2307, line: 1001, baseType: !3148, size: 64, offset: 10240)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2307, line: 636, size: 64, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3148, file: !2307, line: 637, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2306, file: !2307, line: 1005, baseType: !905, size: 128, offset: 10304)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2306, file: !2307, line: 1007, baseType: !2305, size: 64, offset: 10432)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2306, file: !2307, line: 1009, baseType: !3155, size: 64, offset: 10496)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2307, line: 1009, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2306, file: !2307, line: 1043, baseType: !437, size: 64, offset: 10560)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2306, file: !2307, line: 1046, baseType: !3159, size: 64, offset: 10624)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2306, file: !2307, line: 1050, baseType: !3161, size: 64, offset: 10688)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !25, line: 1236, size: 320, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3162, file: !25, line: 1237, baseType: !307, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3162, file: !25, line: 1238, baseType: !307, size: 128, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3162, file: !25, line: 1239, baseType: !405, size: 16, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3162, file: !25, line: 1240, baseType: !579, size: 8, offset: 272)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3162, file: !25, line: 1241, baseType: !579, size: 8, offset: 280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2306, file: !2307, line: 1054, baseType: !3170, size: 64, offset: 10752)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1072, line: 131, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3171, file: !1072, line: 132, baseType: !413, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2306, file: !2307, line: 1056, baseType: !1696, size: 64, offset: 10816)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2306, file: !2307, line: 1058, baseType: !1467, size: 64, offset: 10880)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2306, file: !2307, line: 1061, baseType: !3177, size: 64, offset: 10944)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2307, line: 43, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2306, file: !2307, line: 1064, baseType: !413, size: 64, offset: 11008)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2306, file: !2307, line: 1065, baseType: !3181, size: 64, offset: 11072)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3009, line: 14, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3009, line: 12, size: 384, elements: !3184)
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3009, line: 13, baseType: !3186, size: 384)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3183, file: !3009, line: 13, size: 384, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3186, file: !3009, line: 13, baseType: !347, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3186, file: !3009, line: 13, baseType: !347, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3186, file: !3009, line: 13, baseType: !347, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3186, file: !3009, line: 13, baseType: !3192, size: 256, offset: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3193, line: 32, size: 256, elements: !3194)
!3193 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195, !3200, !3213, !3219, !3228, !3248, !3253}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3192, file: !3193, line: 37, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 34, size: 64, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3196, file: !3193, line: 35, baseType: !2541, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3196, file: !3193, line: 36, baseType: !530, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3192, file: !3193, line: 45, baseType: !3201, size: 192)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 40, size: 192, elements: !3202)
!3202 = !{!3203, !3205, !3206, !3212}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3201, file: !3193, line: 41, baseType: !3204, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !396, line: 95, baseType: !347)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3201, file: !3193, line: 42, baseType: !347, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3201, file: !3193, line: 43, baseType: !3207, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3193, line: 11, baseType: !3208)
!3208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3193, line: 8, size: 64, elements: !3209)
!3209 = !{!3210, !3211}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3208, file: !3193, line: 9, baseType: !347, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3208, file: !3193, line: 10, baseType: !437, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3201, file: !3193, line: 44, baseType: !347, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3192, file: !3193, line: 52, baseType: !3214, size: 128)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 48, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3214, file: !3193, line: 49, baseType: !2541, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3214, file: !3193, line: 50, baseType: !530, size: 32, offset: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3214, file: !3193, line: 51, baseType: !3207, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3192, file: !3193, line: 61, baseType: !3220, size: 256)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 55, size: 256, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3227}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3220, file: !3193, line: 56, baseType: !2541, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3220, file: !3193, line: 57, baseType: !530, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3220, file: !3193, line: 58, baseType: !347, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3220, file: !3193, line: 59, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !396, line: 94, baseType: !397)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3220, file: !3193, line: 60, baseType: !3226, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3192, file: !3193, line: 95, baseType: !3229, size: 256)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 64, size: 256, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3229, file: !3193, line: 65, baseType: !437, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !3193, line: 77, baseType: !3233, size: 192, offset: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !3193, line: 77, size: 192, elements: !3234)
!3234 = !{!3235, !3236, !3243}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3233, file: !3193, line: 82, baseType: !1076, size: 16)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3233, file: !3193, line: 88, baseType: !3237, size: 192)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3233, file: !3193, line: 84, size: 192, elements: !3238)
!3238 = !{!3239, !3241, !3242}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3237, file: !3193, line: 85, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 64, elements: !2414)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3237, file: !3193, line: 86, baseType: !437, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3237, file: !3193, line: 87, baseType: !437, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3233, file: !3193, line: 93, baseType: !3244, size: 96)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3233, file: !3193, line: 90, size: 96, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3244, file: !3193, line: 91, baseType: !3240, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3244, file: !3193, line: 92, baseType: !507, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3192, file: !3193, line: 101, baseType: !3249, size: 128)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 98, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3249, file: !3193, line: 99, baseType: !398, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3249, file: !3193, line: 100, baseType: !347, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3192, file: !3193, line: 108, baseType: !3254, size: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3193, line: 104, size: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3254, file: !3193, line: 105, baseType: !437, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3254, file: !3193, line: 106, baseType: !347, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3254, file: !3193, line: 107, baseType: !7, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2306, file: !2307, line: 1067, baseType: !3081, offset: 11136)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2306, file: !2307, line: 1099, baseType: !3261, size: 64, offset: 11136)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2307, line: 56, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2306, file: !2307, line: 1103, baseType: !307, size: 128, offset: 11200)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2306, file: !2307, line: 1104, baseType: !3265, size: 64, offset: 11328)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2307, line: 46, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2306, file: !2307, line: 1105, baseType: !826, size: 192, offset: 11392)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2306, file: !2307, line: 1106, baseType: !7, size: 32, offset: 11584)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2306, file: !2307, line: 1109, baseType: !3270, size: 128, offset: 11648)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3271, size: 128, elements: !1492)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2307, line: 51, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2306, file: !2307, line: 1110, baseType: !826, size: 192, offset: 11776)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2306, file: !2307, line: 1111, baseType: !307, size: 128, offset: 11968)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2306, file: !2307, line: 1173, baseType: !3276, size: 64, offset: 12096)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3278, line: 62, size: 256, align: 256, elements: !3279)
!3278 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281, !3282, !3287}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3277, file: !3278, line: 75, baseType: !507, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3277, file: !3278, line: 90, baseType: !507, size: 32, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3277, file: !3278, line: 124, baseType: !3283, size: 64, offset: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3278, line: 109, size: 64, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3283, file: !3278, line: 110, baseType: !512, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3283, file: !3278, line: 112, baseType: !512, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3277, file: !3278, line: 144, baseType: !507, size: 32, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2306, file: !2307, line: 1174, baseType: !505, size: 32, offset: 12160)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2306, file: !2307, line: 1179, baseType: !413, size: 64, offset: 12224)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2306, file: !2307, line: 1182, baseType: !3291, size: 128, offset: 12288)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2249, line: 76, size: 128, elements: !3292)
!3292 = !{!3293, !3298, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3291, file: !2249, line: 85, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3295, line: 7, size: 64, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3294, file: !3295, line: 12, baseType: !2449, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3291, file: !2249, line: 88, baseType: !579, size: 8, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3291, file: !2249, line: 95, baseType: !579, size: 8, offset: 72)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !2307, line: 1184, baseType: !3301, size: 128, offset: 12416)
!3301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !2307, line: 1184, size: 128, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3301, file: !2307, line: 1185, baseType: !1515, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3301, file: !2307, line: 1186, baseType: !455, size: 128, align: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2306, file: !2307, line: 1190, baseType: !3306, size: 64, offset: 12544)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2307, line: 53, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2306, file: !2307, line: 1192, baseType: !3309, size: 128, offset: 12608)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2249, line: 64, size: 128, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3309, file: !2249, line: 65, baseType: !873, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3309, file: !2249, line: 67, baseType: !507, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3309, file: !2249, line: 68, baseType: !507, size: 32, offset: 96)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2306, file: !2307, line: 1206, baseType: !347, size: 32, offset: 12736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2306, file: !2307, line: 1207, baseType: !347, size: 32, offset: 12768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2306, file: !2307, line: 1209, baseType: !413, size: 64, offset: 12800)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2306, file: !2307, line: 1219, baseType: !511, size: 64, offset: 12864)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2306, file: !2307, line: 1220, baseType: !511, size: 64, offset: 12928)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2306, file: !2307, line: 1317, baseType: !347, size: 32, offset: 12992)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2306, file: !2307, line: 1319, baseType: !2305, size: 64, offset: 13056)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2306, file: !2307, line: 1322, baseType: !3322, size: 64, offset: 13120)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3324, line: 56, size: 512, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3334}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3323, file: !3324, line: 57, baseType: !3322, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3323, file: !3324, line: 58, baseType: !437, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3323, file: !3324, line: 59, baseType: !413, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3323, file: !3324, line: 60, baseType: !413, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3323, file: !3324, line: 61, baseType: !973, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3323, file: !3324, line: 62, baseType: !7, size: 32, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3323, file: !3324, line: 63, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !308, line: 153, baseType: !511)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3323, file: !3324, line: 64, baseType: !3335, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2306, file: !2307, line: 1326, baseType: !1515, size: 32, offset: 13184)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2306, file: !2307, line: 1342, baseType: !437, size: 64, offset: 13248)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2306, file: !2307, line: 1343, baseType: !512, size: 64, offset: 13312)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2306, file: !2307, line: 1344, baseType: !511, size: 64, offset: 13376)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2306, file: !2307, line: 1345, baseType: !512, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2306, file: !2307, line: 1346, baseType: !512, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2306, file: !2307, line: 1347, baseType: !512, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2306, file: !2307, line: 1348, baseType: !455, size: 128, align: 64, offset: 13504)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2306, file: !2307, line: 1358, baseType: !3346, size: 34816, offset: 13824)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3347, line: 485, size: 34816, elements: !3348)
!3347 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3378, !3379, !3380, !3381, !3382, !3383, !3386, !3387, !3388}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3346, file: !3347, line: 487, baseType: !3350, size: 192)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 192, elements: !364)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3352, line: 16, size: 64, elements: !3353)
!3352 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3351, file: !3352, line: 17, baseType: !1012, size: 16)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3351, file: !3352, line: 18, baseType: !1012, size: 16, offset: 16)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3351, file: !3352, line: 19, baseType: !1012, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3351, file: !3352, line: 19, baseType: !1012, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3351, file: !3352, line: 19, baseType: !1012, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3351, file: !3352, line: 19, baseType: !1012, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3351, file: !3352, line: 19, baseType: !1012, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3351, file: !3352, line: 20, baseType: !1012, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3346, file: !3347, line: 491, baseType: !413, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3346, file: !3347, line: 495, baseType: !405, size: 16, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3346, file: !3347, line: 496, baseType: !405, size: 16, offset: 272)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3346, file: !3347, line: 497, baseType: !405, size: 16, offset: 288)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3346, file: !3347, line: 498, baseType: !405, size: 16, offset: 304)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3346, file: !3347, line: 502, baseType: !413, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3346, file: !3347, line: 503, baseType: !413, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3346, file: !3347, line: 514, baseType: !3375, size: 256, offset: 448)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3376, size: 256, elements: !1400)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3347, line: 483, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3346, file: !3347, line: 516, baseType: !413, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3346, file: !3347, line: 518, baseType: !413, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3346, file: !3347, line: 520, baseType: !413, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3346, file: !3347, line: 521, baseType: !413, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3346, file: !3347, line: 522, baseType: !413, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3346, file: !3347, line: 528, baseType: !3384, size: 64, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3347, line: 10, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3346, file: !3347, line: 535, baseType: !413, size: 64, offset: 1088)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3346, file: !3347, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3346, file: !3347, line: 540, baseType: !3389, size: 33280, offset: 1536)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3390, line: 317, size: 33280, elements: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3389, file: !3390, line: 330, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3389, file: !3390, line: 337, baseType: !413, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3389, file: !3390, line: 348, baseType: !3395, size: 32768, offset: 512)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3390, line: 304, size: 32768, elements: !3396)
!3396 = !{!3397, !3412, !3449, !3499, !3512}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3395, file: !3390, line: 305, baseType: !3398, size: 896)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3390, line: 12, size: 896, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3411}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3398, file: !3390, line: 13, baseType: !505, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3398, file: !3390, line: 14, baseType: !505, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3398, file: !3390, line: 15, baseType: !505, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3390, line: 16, baseType: !505, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3390, line: 17, baseType: !505, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3390, line: 18, baseType: !505, size: 32, offset: 160)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3390, line: 19, baseType: !505, size: 32, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3398, file: !3390, line: 22, baseType: !3408, size: 640, offset: 224)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 640, elements: !3409)
!3409 = !{!3410}
!3410 = !DISubrange(count: 20)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3398, file: !3390, line: 25, baseType: !505, size: 32, offset: 864)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3395, file: !3390, line: 306, baseType: !3413, size: 4096, align: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3390, line: 34, size: 4096, align: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3434, !3435, !3436, !3438, !3440, !3444}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3413, file: !3390, line: 35, baseType: !1012, size: 16)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3413, file: !3390, line: 36, baseType: !1012, size: 16, offset: 16)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3413, file: !3390, line: 37, baseType: !1012, size: 16, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3413, file: !3390, line: 38, baseType: !1012, size: 16, offset: 48)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3390, line: 39, baseType: !3420, size: 128, offset: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3390, line: 39, size: 128, elements: !3421)
!3421 = !{!3422, !3427}
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3390, line: 40, baseType: !3423, size: 128)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3390, line: 40, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3423, file: !3390, line: 41, baseType: !511, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3423, file: !3390, line: 42, baseType: !511, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3390, line: 44, baseType: !3428, size: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3390, line: 44, size: 128, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3428, file: !3390, line: 45, baseType: !505, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3428, file: !3390, line: 46, baseType: !505, size: 32, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3428, file: !3390, line: 47, baseType: !505, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3428, file: !3390, line: 48, baseType: !505, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3413, file: !3390, line: 51, baseType: !505, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3413, file: !3390, line: 52, baseType: !505, size: 32, offset: 224)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3413, file: !3390, line: 55, baseType: !3437, size: 1024, offset: 256)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1024, elements: !1211)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3413, file: !3390, line: 58, baseType: !3439, size: 2048, offset: 1280)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 2048, elements: !368)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3413, file: !3390, line: 60, baseType: !3441, size: 384, offset: 3328)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 384, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 12)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3390, line: 62, baseType: !3445, size: 384, offset: 3712)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3390, line: 62, size: 384, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3445, file: !3390, line: 63, baseType: !3441, size: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3445, file: !3390, line: 64, baseType: !3441, size: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3395, file: !3390, line: 307, baseType: !3450, size: 1088)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3390, line: 79, size: 1088, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3498}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3450, file: !3390, line: 80, baseType: !505, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3450, file: !3390, line: 81, baseType: !505, size: 32, offset: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3450, file: !3390, line: 82, baseType: !505, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3450, file: !3390, line: 83, baseType: !505, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3450, file: !3390, line: 84, baseType: !505, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3450, file: !3390, line: 85, baseType: !505, size: 32, offset: 160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3450, file: !3390, line: 86, baseType: !505, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3450, file: !3390, line: 88, baseType: !3408, size: 640, offset: 224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3450, file: !3390, line: 89, baseType: !1133, size: 8, offset: 864)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3450, file: !3390, line: 90, baseType: !1133, size: 8, offset: 872)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3450, file: !3390, line: 91, baseType: !1133, size: 8, offset: 880)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3450, file: !3390, line: 92, baseType: !1133, size: 8, offset: 888)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3450, file: !3390, line: 93, baseType: !1133, size: 8, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3450, file: !3390, line: 94, baseType: !1133, size: 8, offset: 904)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3450, file: !3390, line: 95, baseType: !3467, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3469, line: 11, size: 128, elements: !3470)
!3469 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3468, file: !3469, line: 12, baseType: !398, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3468, file: !3469, line: 13, baseType: !3473, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3475, line: 56, size: 1344, elements: !3476)
!3475 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3474, file: !3475, line: 61, baseType: !413, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3474, file: !3475, line: 62, baseType: !413, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3474, file: !3475, line: 63, baseType: !413, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3474, file: !3475, line: 64, baseType: !413, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3474, file: !3475, line: 65, baseType: !413, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3474, file: !3475, line: 66, baseType: !413, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3474, file: !3475, line: 68, baseType: !413, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3474, file: !3475, line: 69, baseType: !413, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3474, file: !3475, line: 70, baseType: !413, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3474, file: !3475, line: 71, baseType: !413, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3474, file: !3475, line: 72, baseType: !413, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3474, file: !3475, line: 73, baseType: !413, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3474, file: !3475, line: 74, baseType: !413, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3474, file: !3475, line: 75, baseType: !413, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3474, file: !3475, line: 76, baseType: !413, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3474, file: !3475, line: 81, baseType: !413, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3474, file: !3475, line: 83, baseType: !413, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3474, file: !3475, line: 84, baseType: !413, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3474, file: !3475, line: 85, baseType: !413, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3474, file: !3475, line: 86, baseType: !413, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3474, file: !3475, line: 87, baseType: !413, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3450, file: !3390, line: 96, baseType: !505, size: 32, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3395, file: !3390, line: 308, baseType: !3500, size: 4608, align: 512)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3390, line: 289, size: 4608, align: 512, elements: !3501)
!3501 = !{!3502, !3503, !3510}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3500, file: !3390, line: 290, baseType: !3413, size: 4096, align: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3500, file: !3390, line: 291, baseType: !3504, size: 512, offset: 4096)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3390, line: 268, size: 512, elements: !3505)
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3504, file: !3390, line: 269, baseType: !511, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3504, file: !3390, line: 270, baseType: !511, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3504, file: !3390, line: 271, baseType: !3509, size: 384, offset: 128)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 384, elements: !2698)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3500, file: !3390, line: 292, baseType: !3511, offset: 4608)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, elements: !2936)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3395, file: !3390, line: 309, baseType: !3513, size: 32768)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 32768, elements: !3514)
!3514 = !{!3515}
!3515 = !DISubrange(count: 4096)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2302, file: !875, line: 378, baseType: !3517, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2298, file: !875, line: 384, baseType: !2577, size: 192, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2076, file: !875, line: 500, baseType: !321, offset: 6656)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2076, file: !875, line: 501, baseType: !3521, size: 64, offset: 6656)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !875, line: 387, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2076, file: !875, line: 516, baseType: !2786, size: 64, offset: 6720)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2076, file: !875, line: 519, baseType: !442, size: 64, offset: 6784)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2076, file: !875, line: 521, baseType: !3526, size: 64, offset: 6848)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !875, line: 521, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2076, file: !875, line: 545, baseType: !900, size: 32, offset: 6912)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2076, file: !875, line: 548, baseType: !579, size: 8, offset: 6944)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2076, file: !875, line: 550, baseType: !3531, offset: 6952)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3532, line: 142, elements: !335)
!3532 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2076, file: !875, line: 554, baseType: !1186, size: 256, offset: 6976)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2076, file: !875, line: 557, baseType: !505, size: 32, offset: 7232)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2073, file: !875, line: 565, baseType: !3536, offset: 7296)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, elements: !1224)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2069, file: !875, line: 151, baseType: !900, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2061, file: !875, line: 156, baseType: !321, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !875, line: 159, baseType: !3540, size: 128)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !875, line: 159, size: 128, elements: !3541)
!3541 = !{!3542, !3586}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3540, file: !875, line: 161, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !79, line: 110, size: 1152, elements: !3545)
!3545 = !{!3546, !3556, !3557, !3558, !3559, !3560, !3561, !3573, !3574, !3575}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3544, file: !79, line: 111, baseType: !3547, size: 384)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !79, line: 19, size: 384, elements: !3548)
!3548 = !{!3549, !3551, !3552, !3553, !3554, !3555}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3547, file: !79, line: 20, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3547, file: !79, line: 21, baseType: !3550, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3547, file: !79, line: 22, baseType: !3550, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3547, file: !79, line: 23, baseType: !413, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3547, file: !79, line: 24, baseType: !413, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3547, file: !79, line: 25, baseType: !413, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3544, file: !79, line: 112, baseType: !1161, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3544, file: !79, line: 113, baseType: !1147, size: 128, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3544, file: !79, line: 114, baseType: !2577, size: 192, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3544, file: !79, line: 115, baseType: !78, size: 32, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3544, file: !79, line: 116, baseType: !7, size: 32, offset: 800)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3544, file: !79, line: 117, baseType: !3562, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !79, line: 67, size: 256, elements: !3565)
!3565 = !{!3566, !3567, !3571, !3572}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3564, file: !79, line: 73, baseType: !993, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3564, file: !79, line: 78, baseType: !3568, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !3543}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3564, file: !79, line: 83, baseType: !3568, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3564, file: !79, line: 89, baseType: !2125, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3544, file: !79, line: 118, baseType: !437, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3544, file: !79, line: 119, baseType: !347, size: 32, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3544, file: !79, line: 120, baseType: !3576, size: 128, offset: 1024)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3544, file: !79, line: 120, size: 128, elements: !3577)
!3577 = !{!3578, !3584}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3576, file: !79, line: 121, baseType: !3579, size: 128)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3580, line: 6, size: 128, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582, !3583}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3579, file: !3580, line: 7, baseType: !511, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3579, file: !3580, line: 8, baseType: !511, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3576, file: !79, line: 122, baseType: !3585)
!3585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3579, elements: !2936)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3540, file: !875, line: 162, baseType: !437, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !879, file: !875, line: 176, baseType: !455, size: 128, align: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 179, baseType: !3589, size: 32, offset: 384)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 179, size: 32, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3589, file: !875, line: 184, baseType: !900, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3589, file: !875, line: 192, baseType: !7, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3589, file: !875, line: 194, baseType: !7, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3589, file: !875, line: 195, baseType: !347, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !874, file: !875, line: 199, baseType: !900, size: 32, offset: 416)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !746, file: !92, line: 1964, baseType: !3597, size: 64, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!398, !688, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3602, line: 12, size: 256, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3603 = !{!3604, !3605, !3606, !3607, !3608}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3601, file: !3602, line: 13, baseType: !896, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3601, file: !3602, line: 16, baseType: !347, size: 32, offset: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3601, file: !3602, line: 23, baseType: !413, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3601, file: !3602, line: 30, baseType: !413, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3601, file: !3602, line: 33, baseType: !3609, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !875, line: 27, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !746, file: !92, line: 1966, baseType: !3597, size: 64, offset: 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !689, file: !92, line: 1424, baseType: !3613, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !86, line: 322, size: 704, elements: !3616)
!3616 = !{!3617, !3663, !3667, !3671, !3672, !3673, !3674, !3675, !3680, !3685, !3689}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3615, file: !86, line: 323, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!347, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !86, line: 294, size: 1600, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3648, !3649, !3650}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3622, file: !86, line: 295, baseType: !728, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3622, file: !86, line: 296, baseType: !307, size: 128, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3622, file: !86, line: 297, baseType: !307, size: 128, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3622, file: !86, line: 298, baseType: !307, size: 128, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3622, file: !86, line: 299, baseType: !826, size: 192, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3622, file: !86, line: 300, baseType: !321, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3622, file: !86, line: 301, baseType: !900, size: 32, offset: 704)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3622, file: !86, line: 302, baseType: !688, size: 64, offset: 768)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3622, file: !86, line: 303, baseType: !3633, size: 64, offset: 832)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !86, line: 68, size: 64, elements: !3634)
!3634 = !{!3635, !3647}
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !86, line: 69, baseType: !3636, size: 32)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !86, line: 69, size: 32, elements: !3637)
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3636, file: !86, line: 70, baseType: !524, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3636, file: !86, line: 71, baseType: !532, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3636, file: !86, line: 72, baseType: !3641, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3642, line: 24, baseType: !3643)
!3642 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3642, line: 22, size: 32, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3643, file: !3642, line: 23, baseType: !3646, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3642, line: 20, baseType: !530)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3633, file: !86, line: 74, baseType: !85, size: 32, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3622, file: !86, line: 304, baseType: !620, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3622, file: !86, line: 305, baseType: !413, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3622, file: !86, line: 306, baseType: !3651, size: 576, offset: 1024)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !86, line: 205, size: 576, elements: !3652)
!3652 = !{!3653, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3651, file: !86, line: 206, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !86, line: 66, baseType: !622)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3651, file: !86, line: 207, baseType: !3654, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3651, file: !86, line: 208, baseType: !3654, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3651, file: !86, line: 209, baseType: !3654, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3651, file: !86, line: 210, baseType: !3654, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3651, file: !86, line: 211, baseType: !3654, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3651, file: !86, line: 212, baseType: !3654, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3651, file: !86, line: 213, baseType: !628, size: 64, offset: 448)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3651, file: !86, line: 214, baseType: !628, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3615, file: !86, line: 324, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!3621, !688, !347}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3615, file: !86, line: 325, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3621}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3615, file: !86, line: 326, baseType: !3618, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3615, file: !86, line: 327, baseType: !3618, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3615, file: !86, line: 328, baseType: !3618, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3615, file: !86, line: 329, baseType: !788, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3615, file: !86, line: 332, baseType: !3676, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3679, !518}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3615, file: !86, line: 333, baseType: !3681, size: 64, offset: 512)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!347, !518, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3615, file: !86, line: 335, baseType: !3686, size: 64, offset: 576)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!347, !518, !3679}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3615, file: !86, line: 337, baseType: !3690, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!347, !688, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !689, file: !92, line: 1425, baseType: !3695, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !86, line: 428, size: 704, elements: !3698)
!3698 = !{!3699, !3703, !3704, !3708, !3709, !3710, !3725, !3748, !3752, !3753, !3776}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3697, file: !86, line: 429, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!347, !688, !347, !347, !638}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3697, file: !86, line: 430, baseType: !788, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3697, file: !86, line: 431, baseType: !3705, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!347, !688, !7}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3697, file: !86, line: 432, baseType: !3705, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3697, file: !86, line: 433, baseType: !788, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3697, file: !86, line: 434, baseType: !3711, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!347, !688, !347, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !86, line: 415, size: 256, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3715, file: !86, line: 416, baseType: !347, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3715, file: !86, line: 417, baseType: !7, size: 32, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3715, file: !86, line: 418, baseType: !7, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3715, file: !86, line: 420, baseType: !7, size: 32, offset: 96)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3715, file: !86, line: 421, baseType: !7, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3715, file: !86, line: 422, baseType: !7, size: 32, offset: 160)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3715, file: !86, line: 423, baseType: !7, size: 32, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3715, file: !86, line: 424, baseType: !7, size: 32, offset: 224)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3697, file: !86, line: 435, baseType: !3726, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!347, !688, !3633, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !86, line: 343, size: 960, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3730, file: !86, line: 344, baseType: !347, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3730, file: !86, line: 345, baseType: !511, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3730, file: !86, line: 346, baseType: !511, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3730, file: !86, line: 347, baseType: !511, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3730, file: !86, line: 348, baseType: !511, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3730, file: !86, line: 349, baseType: !511, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3730, file: !86, line: 350, baseType: !511, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3730, file: !86, line: 351, baseType: !836, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3730, file: !86, line: 353, baseType: !836, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3730, file: !86, line: 354, baseType: !347, size: 32, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3730, file: !86, line: 355, baseType: !347, size: 32, offset: 608)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3730, file: !86, line: 356, baseType: !511, size: 64, offset: 640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3730, file: !86, line: 357, baseType: !511, size: 64, offset: 704)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3730, file: !86, line: 358, baseType: !511, size: 64, offset: 768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3730, file: !86, line: 359, baseType: !836, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3730, file: !86, line: 360, baseType: !347, size: 32, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3697, file: !86, line: 436, baseType: !3749, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!347, !688, !3693, !3729}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3697, file: !86, line: 438, baseType: !3726, size: 64, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3697, file: !86, line: 439, baseType: !3754, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!347, !688, !3757}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !86, line: 409, size: 1408, elements: !3759)
!3759 = !{!3760, !3761}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3758, file: !86, line: 410, baseType: !7, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3758, file: !86, line: 411, baseType: !3762, size: 1344, offset: 64)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3763, size: 1344, elements: !364)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !86, line: 395, size: 448, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3775}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3763, file: !86, line: 396, baseType: !7, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3763, file: !86, line: 397, baseType: !7, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3763, file: !86, line: 399, baseType: !7, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3763, file: !86, line: 400, baseType: !7, size: 32, offset: 96)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3763, file: !86, line: 401, baseType: !7, size: 32, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3763, file: !86, line: 402, baseType: !7, size: 32, offset: 160)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3763, file: !86, line: 403, baseType: !7, size: 32, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3763, file: !86, line: 404, baseType: !286, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3763, file: !86, line: 405, baseType: !3774, size: 64, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !308, line: 126, baseType: !511)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3763, file: !86, line: 406, baseType: !3774, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3697, file: !86, line: 440, baseType: !3705, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !689, file: !92, line: 1426, baseType: !3778, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !92, line: 49, flags: DIFlagFwdDecl)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !689, file: !92, line: 1427, baseType: !413, size: 64, offset: 640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !689, file: !92, line: 1428, baseType: !413, size: 64, offset: 704)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !689, file: !92, line: 1429, baseType: !413, size: 64, offset: 768)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !689, file: !92, line: 1430, baseType: !472, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !689, file: !92, line: 1431, baseType: !920, size: 256, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !689, file: !92, line: 1432, baseType: !347, size: 32, offset: 1152)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !689, file: !92, line: 1433, baseType: !900, size: 32, offset: 1184)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !689, file: !92, line: 1437, baseType: !3789, size: 64, offset: 1216)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3792)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !92, line: 1437, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !689, file: !92, line: 1449, baseType: !3794, size: 64, offset: 1280)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !488, line: 34, size: 64, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3794, file: !488, line: 35, baseType: !491, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !689, file: !92, line: 1450, baseType: !307, size: 128, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !689, file: !92, line: 1451, baseType: !1117, size: 64, offset: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !689, file: !92, line: 1452, baseType: !1696, size: 64, offset: 1536)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !689, file: !92, line: 1453, baseType: !3801, size: 64, offset: 1600)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !92, line: 1453, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !689, file: !92, line: 1454, baseType: !728, size: 128, offset: 1664)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !689, file: !92, line: 1455, baseType: !7, size: 32, offset: 1792)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !689, file: !92, line: 1456, baseType: !3806, size: 2432, offset: 1856)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !86, line: 518, size: 2432, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3812, !3844}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3806, file: !86, line: 519, baseType: !7, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3806, file: !86, line: 520, baseType: !920, size: 256, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3806, file: !86, line: 521, baseType: !3811, size: 192, offset: 320)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 192, elements: !364)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3806, file: !86, line: 522, baseType: !3813, size: 1728, offset: 512)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3814, size: 1728, elements: !364)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !86, line: 222, size: 576, elements: !3815)
!3815 = !{!3816, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3814, file: !86, line: 223, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !86, line: 443, size: 256, elements: !3819)
!3819 = !{!3820, !3821, !3834, !3835}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3818, file: !86, line: 444, baseType: !347, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3818, file: !86, line: 445, baseType: !3822, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !86, line: 310, size: 512, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3824, file: !86, line: 311, baseType: !788, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3824, file: !86, line: 312, baseType: !788, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3824, file: !86, line: 313, baseType: !788, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3824, file: !86, line: 314, baseType: !788, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3824, file: !86, line: 315, baseType: !3618, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3824, file: !86, line: 316, baseType: !3618, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3824, file: !86, line: 317, baseType: !3618, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3824, file: !86, line: 318, baseType: !3690, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3818, file: !86, line: 446, baseType: !274, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3818, file: !86, line: 447, baseType: !3817, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3814, file: !86, line: 224, baseType: !347, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3814, file: !86, line: 226, baseType: !307, size: 128, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3814, file: !86, line: 227, baseType: !413, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3814, file: !86, line: 228, baseType: !7, size: 32, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3814, file: !86, line: 229, baseType: !7, size: 32, offset: 352)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3814, file: !86, line: 230, baseType: !3654, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3814, file: !86, line: 231, baseType: !3654, size: 64, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3814, file: !86, line: 232, baseType: !437, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3806, file: !86, line: 523, baseType: !3845, size: 192, offset: 2240)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3822, size: 192, elements: !364)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !689, file: !92, line: 1458, baseType: !3847, size: 2112, offset: 4288)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !92, line: 1410, size: 2112, elements: !3848)
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3847, file: !92, line: 1411, baseType: !347, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3847, file: !92, line: 1412, baseType: !1322, size: 128, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3847, file: !92, line: 1413, baseType: !3852, size: 1920, offset: 192)
!3852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3853, size: 1920, elements: !364)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3854, line: 12, size: 640, elements: !3855)
!3854 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3855 = !{!3856, !3864, !3865, !3870, !3871}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3853, file: !3854, line: 13, baseType: !3857, size: 320)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3858, line: 17, size: 320, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3857, file: !3858, line: 18, baseType: !347, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3857, file: !3858, line: 19, baseType: !347, size: 32, offset: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3857, file: !3858, line: 20, baseType: !1322, size: 128, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3857, file: !3858, line: 22, baseType: !455, size: 128, align: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3853, file: !3854, line: 14, baseType: !1108, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3853, file: !3854, line: 15, baseType: !3866, size: 64, offset: 384)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3867, line: 16, size: 64, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !{!3869}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3866, file: !3867, line: 17, baseType: !2305, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3853, file: !3854, line: 16, baseType: !1322, size: 128, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3853, file: !3854, line: 17, baseType: !900, size: 32, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !689, file: !92, line: 1465, baseType: !437, size: 64, offset: 6400)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !689, file: !92, line: 1468, baseType: !505, size: 32, offset: 6464)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !689, file: !92, line: 1470, baseType: !628, size: 64, offset: 6528)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !689, file: !92, line: 1471, baseType: !628, size: 64, offset: 6592)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !689, file: !92, line: 1473, baseType: !507, size: 32, offset: 6656)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !689, file: !92, line: 1474, baseType: !3878, size: 64, offset: 6720)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !92, line: 603, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !689, file: !92, line: 1477, baseType: !1210, size: 256, offset: 6784)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !689, file: !92, line: 1478, baseType: !3882, size: 128, offset: 7040)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3883, line: 18, baseType: !3884)
!3883 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3883, line: 16, size: 128, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3884, file: !3883, line: 17, baseType: !3887, size: 128)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 128, elements: !1841)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !689, file: !92, line: 1480, baseType: !7, size: 32, offset: 7168)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !689, file: !92, line: 1481, baseType: !1343, size: 32, offset: 7200)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !689, file: !92, line: 1487, baseType: !826, size: 192, offset: 7232)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !689, file: !92, line: 1493, baseType: !282, size: 64, offset: 7424)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !689, file: !92, line: 1495, baseType: !3893, size: 64, offset: 7488)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !470, line: 135, size: 1024, align: 512, elements: !3896)
!3896 = !{!3897, !3901, !3902, !3909, !3915, !3919, !3923, !3927, !3928, !3932, !3936, !3941, !3945}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3895, file: !470, line: 136, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!347, !472, !7}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3895, file: !470, line: 137, baseType: !3898, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3895, file: !470, line: 138, baseType: !3903, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!347, !3906, !3908}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3895, file: !470, line: 139, baseType: !3910, size: 64, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!347, !3906, !7, !282, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3895, file: !470, line: 141, baseType: !3916, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!347, !3906}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3895, file: !470, line: 142, baseType: !3920, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!347, !472}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3895, file: !470, line: 143, baseType: !3924, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !472}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3895, file: !470, line: 144, baseType: !3924, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3895, file: !470, line: 145, baseType: !3929, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !472, !518}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3895, file: !470, line: 146, baseType: !3933, size: 64, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!363, !472, !363, !347}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3895, file: !470, line: 147, baseType: !3937, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!468, !3940}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3895, file: !470, line: 148, baseType: !3942, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!347, !638, !579}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3895, file: !470, line: 149, baseType: !3946, size: 64, offset: 768)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!472, !472, !3949}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !689, file: !92, line: 1500, baseType: !347, size: 32, offset: 7552)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !689, file: !92, line: 1502, baseType: !3953, size: 448, offset: 7616)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3602, line: 60, size: 448, elements: !3954)
!3954 = !{!3955, !3960, !3961, !3962, !3963, !3964, !3965}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3953, file: !3602, line: 61, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!413, !3959, !3600}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3953, file: !3602, line: 63, baseType: !3956, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3953, file: !3602, line: 66, baseType: !398, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3953, file: !3602, line: 67, baseType: !347, size: 32, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3953, file: !3602, line: 68, baseType: !7, size: 32, offset: 224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3953, file: !3602, line: 71, baseType: !307, size: 128, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3953, file: !3602, line: 77, baseType: !3966, size: 64, offset: 384)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !689, file: !92, line: 1505, baseType: !830, size: 64, offset: 8064)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !689, file: !92, line: 1508, baseType: !830, size: 64, offset: 8128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !689, file: !92, line: 1511, baseType: !347, size: 32, offset: 8192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !689, file: !92, line: 1514, baseType: !2008, size: 32, offset: 8224)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !689, file: !92, line: 1517, baseType: !1198, size: 64, offset: 8256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !689, file: !92, line: 1518, baseType: !724, size: 64, offset: 8320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !689, file: !92, line: 1525, baseType: !2786, size: 64, offset: 8384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !689, file: !92, line: 1532, baseType: !3975, size: 64, offset: 8448)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3976, line: 52, size: 64, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !{!3978}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3975, file: !3976, line: 53, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3976, line: 40, size: 256, elements: !3981)
!3981 = !{!3982, !3983, !3988}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3980, file: !3976, line: 42, baseType: !321)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3980, file: !3976, line: 44, baseType: !3984, size: 192)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3976, line: 28, size: 192, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3984, file: !3976, line: 29, baseType: !307, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3984, file: !3976, line: 31, baseType: !398, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3980, file: !3976, line: 49, baseType: !398, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !689, file: !92, line: 1533, baseType: !3975, size: 64, offset: 8512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !689, file: !92, line: 1534, baseType: !455, size: 128, align: 64, offset: 8576)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !689, file: !92, line: 1535, baseType: !1186, size: 256, offset: 8704)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !689, file: !92, line: 1537, baseType: !826, size: 192, offset: 8960)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !689, file: !92, line: 1542, baseType: !347, size: 32, offset: 9152)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !689, file: !92, line: 1545, baseType: !321, offset: 9184)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !689, file: !92, line: 1546, baseType: !307, size: 128, offset: 9216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !689, file: !92, line: 1548, baseType: !321, offset: 9344)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !689, file: !92, line: 1549, baseType: !307, size: 128, offset: 9344)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !519, file: !92, line: 624, baseType: !886, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !519, file: !92, line: 631, baseType: !413, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !92, line: 639, baseType: !4001, size: 32, offset: 384)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !92, line: 639, size: 32, elements: !4002)
!4002 = !{!4003, !4004}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4001, file: !92, line: 640, baseType: !1666, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4001, file: !92, line: 641, baseType: !7, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !519, file: !92, line: 643, baseType: !602, size: 32, offset: 416)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !519, file: !92, line: 644, baseType: !620, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !519, file: !92, line: 645, baseType: !624, size: 128, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !519, file: !92, line: 646, baseType: !624, size: 128, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !519, file: !92, line: 647, baseType: !624, size: 128, offset: 768)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !519, file: !92, line: 648, baseType: !321, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !519, file: !92, line: 649, baseType: !405, size: 16, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !519, file: !92, line: 650, baseType: !1133, size: 8, offset: 912)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !519, file: !92, line: 651, baseType: !1133, size: 8, offset: 920)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !519, file: !92, line: 652, baseType: !3774, size: 64, offset: 960)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !519, file: !92, line: 659, baseType: !413, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !519, file: !92, line: 660, baseType: !920, size: 256, offset: 1088)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !519, file: !92, line: 662, baseType: !413, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !519, file: !92, line: 663, baseType: !413, size: 64, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !519, file: !92, line: 665, baseType: !728, size: 128, offset: 1472)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !519, file: !92, line: 666, baseType: !307, size: 128, offset: 1600)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !519, file: !92, line: 675, baseType: !307, size: 128, offset: 1728)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !519, file: !92, line: 676, baseType: !307, size: 128, offset: 1856)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !519, file: !92, line: 677, baseType: !307, size: 128, offset: 1984)
!4024 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !92, line: 678, baseType: !4025, size: 128, offset: 2112)
!4025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !92, line: 678, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4025, file: !92, line: 679, baseType: !724, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4025, file: !92, line: 680, baseType: !455, size: 128, align: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !519, file: !92, line: 682, baseType: !832, size: 64, offset: 2240)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !519, file: !92, line: 683, baseType: !832, size: 64, offset: 2304)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !519, file: !92, line: 684, baseType: !900, size: 32, offset: 2368)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !519, file: !92, line: 685, baseType: !900, size: 32, offset: 2400)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !519, file: !92, line: 686, baseType: !900, size: 32, offset: 2432)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !519, file: !92, line: 688, baseType: !900, size: 32, offset: 2464)
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !92, line: 690, baseType: !4036, size: 64, offset: 2496)
!4036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !92, line: 690, size: 64, elements: !4037)
!4037 = !{!4038, !4260}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4036, file: !92, line: 691, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !92, line: 1822, size: 2048, elements: !4042)
!4042 = !{!4043, !4044, !4048, !4052, !4056, !4057, !4058, !4062, !4075, !4076, !4084, !4088, !4089, !4093, !4094, !4098, !4103, !4104, !4108, !4112, !4220, !4224, !4225, !4229, !4230, !4234, !4238, !4243, !4247, !4251, !4255, !4259}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4041, file: !92, line: 1823, baseType: !274, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4041, file: !92, line: 1824, baseType: !4045, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!620, !442, !620, !347}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4041, file: !92, line: 1825, baseType: !4049, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!394, !442, !363, !410, !848}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4041, file: !92, line: 1826, baseType: !4053, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!394, !442, !282, !410, !848}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4041, file: !92, line: 1827, baseType: !997, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4041, file: !92, line: 1828, baseType: !997, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4041, file: !92, line: 1829, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!347, !1000, !579}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4041, file: !92, line: 1830, baseType: !4063, size: 64, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!347, !442, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !92, line: 1776, size: 128, elements: !4068)
!4068 = !{!4069, !4074}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4067, file: !92, line: 1777, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !92, line: 1773, baseType: !4071)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!347, !4066, !282, !347, !620, !511, !7}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4067, file: !92, line: 1778, baseType: !620, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4041, file: !92, line: 1831, baseType: !4063, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4041, file: !92, line: 1832, baseType: !4077, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!4080, !442, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4081, line: 52, baseType: !7)
!4081 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !708, line: 27, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4041, file: !92, line: 1833, baseType: !4085, size: 64, offset: 640)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!398, !442, !7, !413}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4041, file: !92, line: 1834, baseType: !4085, size: 64, offset: 704)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4041, file: !92, line: 1835, baseType: !4090, size: 64, offset: 768)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!347, !442, !2079}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4041, file: !92, line: 1836, baseType: !413, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4041, file: !92, line: 1837, baseType: !4095, size: 64, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!347, !518, !442}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4041, file: !92, line: 1838, baseType: !4099, size: 64, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!347, !442, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !92, line: 1007, baseType: !437)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4041, file: !92, line: 1839, baseType: !4095, size: 64, offset: 1024)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4041, file: !92, line: 1840, baseType: !4105, size: 64, offset: 1088)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!347, !442, !620, !620, !347}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4041, file: !92, line: 1841, baseType: !4109, size: 64, offset: 1152)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!347, !347, !442, !347}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4041, file: !92, line: 1842, baseType: !4113, size: 64, offset: 1216)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!347, !442, !347, !4116}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !92, line: 1062, size: 1664, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4150, !4151, !4152, !4165, !4196}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4117, file: !92, line: 1063, baseType: !4116, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4117, file: !92, line: 1064, baseType: !307, size: 128, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4117, file: !92, line: 1065, baseType: !728, size: 128, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4117, file: !92, line: 1066, baseType: !307, size: 128, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4117, file: !92, line: 1069, baseType: !307, size: 128, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4117, file: !92, line: 1072, baseType: !4102, size: 64, offset: 576)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4117, file: !92, line: 1073, baseType: !7, size: 32, offset: 640)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4117, file: !92, line: 1074, baseType: !516, size: 8, offset: 672)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4117, file: !92, line: 1075, baseType: !7, size: 32, offset: 704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4117, file: !92, line: 1076, baseType: !347, size: 32, offset: 736)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4117, file: !92, line: 1077, baseType: !1322, size: 128, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4117, file: !92, line: 1078, baseType: !442, size: 64, offset: 896)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4117, file: !92, line: 1079, baseType: !620, size: 64, offset: 960)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4117, file: !92, line: 1080, baseType: !620, size: 64, offset: 1024)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4117, file: !92, line: 1082, baseType: !4134, size: 64, offset: 1088)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !92, line: 1314, size: 320, elements: !4136)
!4136 = !{!4137, !4145, !4146, !4147, !4148, !4149}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4135, file: !92, line: 1315, baseType: !4138)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4139, line: 20, baseType: !4140)
!4139 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4139, line: 11, elements: !4141)
!4141 = !{!4142}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4140, file: !4139, line: 12, baseType: !4143)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !333, line: 33, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 31, elements: !335)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4135, file: !92, line: 1316, baseType: !347, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4135, file: !92, line: 1317, baseType: !347, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4135, file: !92, line: 1318, baseType: !4134, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4135, file: !92, line: 1319, baseType: !442, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4135, file: !92, line: 1320, baseType: !455, size: 128, align: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4117, file: !92, line: 1084, baseType: !413, size: 64, offset: 1152)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4117, file: !92, line: 1085, baseType: !413, size: 64, offset: 1216)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4117, file: !92, line: 1087, baseType: !4153, size: 64, offset: 1280)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !92, line: 1011, size: 128, elements: !4156)
!4156 = !{!4157, !4161}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4155, file: !92, line: 1012, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !4116, !4116}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4155, file: !92, line: 1013, baseType: !4162, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4116}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4117, file: !92, line: 1088, baseType: !4166, size: 64, offset: 1344)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !92, line: 1016, size: 512, elements: !4169)
!4169 = !{!4170, !4174, !4178, !4179, !4183, !4187, !4191, !4195}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4168, file: !92, line: 1017, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!4102, !4102}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4168, file: !92, line: 1018, baseType: !4175, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4102}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4168, file: !92, line: 1019, baseType: !4162, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4168, file: !92, line: 1020, baseType: !4180, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!347, !4116, !347}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4168, file: !92, line: 1021, baseType: !4184, size: 64, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!579, !4116}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4168, file: !92, line: 1022, baseType: !4188, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!347, !4116, !347, !311}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4168, file: !92, line: 1023, baseType: !4192, size: 64, offset: 384)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4116, !974}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4168, file: !92, line: 1024, baseType: !4184, size: 64, offset: 448)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4117, file: !92, line: 1097, baseType: !4197, size: 256, offset: 1408)
!4197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4117, file: !92, line: 1089, size: 256, elements: !4198)
!4198 = !{!4199, !4208, !4214}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4197, file: !92, line: 1090, baseType: !4200, size: 256)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4201, line: 10, size: 256, elements: !4202)
!4201 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4202 = !{!4203, !4204, !4207}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4200, file: !4201, line: 11, baseType: !505, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4200, file: !4201, line: 12, baseType: !4205, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4201, line: 5, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4200, file: !4201, line: 13, baseType: !307, size: 128, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4197, file: !92, line: 1091, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4201, line: 17, size: 64, elements: !4210)
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4209, file: !4201, line: 18, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4201, line: 16, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4197, file: !92, line: 1096, baseType: !4215, size: 192)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4197, file: !92, line: 1092, size: 192, elements: !4216)
!4216 = !{!4217, !4218, !4219}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4215, file: !92, line: 1093, baseType: !307, size: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4215, file: !92, line: 1094, baseType: !347, size: 32, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4215, file: !92, line: 1095, baseType: !7, size: 32, offset: 160)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4041, file: !92, line: 1843, baseType: !4221, size: 64, offset: 1280)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!394, !442, !873, !347, !410, !848, !347}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4041, file: !92, line: 1844, baseType: !2199, size: 64, offset: 1344)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4041, file: !92, line: 1845, baseType: !4226, size: 64, offset: 1408)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!347, !347}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4041, file: !92, line: 1846, baseType: !4113, size: 64, offset: 1472)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4041, file: !92, line: 1847, baseType: !4231, size: 64, offset: 1536)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!394, !3306, !442, !848, !410, !7}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4041, file: !92, line: 1848, baseType: !4235, size: 64, offset: 1600)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!394, !442, !848, !3306, !410, !7}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4041, file: !92, line: 1849, baseType: !4239, size: 64, offset: 1664)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!347, !442, !398, !4242, !974}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4041, file: !92, line: 1850, baseType: !4244, size: 64, offset: 1728)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!398, !442, !347, !620, !620}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4041, file: !92, line: 1852, baseType: !4248, size: 64, offset: 1792)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !814, !442}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4041, file: !92, line: 1856, baseType: !4252, size: 64, offset: 1856)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!394, !442, !620, !442, !620, !410, !7}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4041, file: !92, line: 1858, baseType: !4256, size: 64, offset: 1920)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!620, !442, !620, !442, !620, !620, !7}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4041, file: !92, line: 1861, baseType: !4105, size: 64, offset: 1984)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4036, file: !92, line: 692, baseType: !753, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !519, file: !92, line: 694, baseType: !4262, size: 64, offset: 2560)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !92, line: 1100, size: 384, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4268}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4263, file: !92, line: 1101, baseType: !321)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4263, file: !92, line: 1102, baseType: !307, size: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4263, file: !92, line: 1103, baseType: !307, size: 128, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4263, file: !92, line: 1104, baseType: !307, size: 128, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !519, file: !92, line: 695, baseType: !887, size: 1216, align: 64, offset: 2624)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !519, file: !92, line: 696, baseType: !307, size: 128, offset: 3840)
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !92, line: 697, baseType: !4272, size: 64, offset: 3968)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !92, line: 697, size: 64, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4279, !4280}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4272, file: !92, line: 698, baseType: !3306, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4272, file: !92, line: 699, baseType: !1117, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4272, file: !92, line: 700, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !92, line: 700, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4272, file: !92, line: 701, baseType: !363, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4272, file: !92, line: 702, baseType: !7, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !519, file: !92, line: 705, baseType: !507, size: 32, offset: 4032)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !519, file: !92, line: 708, baseType: !507, size: 32, offset: 4064)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !519, file: !92, line: 709, baseType: !3878, size: 64, offset: 4096)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !519, file: !92, line: 720, baseType: !437, size: 64, offset: 4160)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !473, file: !470, line: 98, baseType: !4286, size: 256, offset: 448)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 256, elements: !1211)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !473, file: !470, line: 101, baseType: !4288, size: 32, offset: 704)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4289, line: 25, size: 32, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4290 = !{!4291}
!4291 = !DIDerivedType(tag: DW_TAG_member, scope: !4288, file: !4289, line: 26, baseType: !4292, size: 32)
!4292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4288, file: !4289, line: 26, size: 32, elements: !4293)
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, scope: !4292, file: !4289, line: 30, baseType: !4295, size: 32)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4292, file: !4289, line: 30, size: 32, elements: !4296)
!4296 = !{!4297, !4298}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4295, file: !4289, line: 31, baseType: !321)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4295, file: !4289, line: 32, baseType: !347, size: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !473, file: !470, line: 102, baseType: !3893, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !473, file: !470, line: 103, baseType: !688, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !473, file: !470, line: 104, baseType: !413, size: 64, offset: 896)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !473, file: !470, line: 105, baseType: !437, size: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !470, line: 107, baseType: !4304, size: 128, offset: 1024)
!4304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !470, line: 107, size: 128, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4304, file: !470, line: 108, baseType: !307, size: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4304, file: !470, line: 109, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !473, file: !470, line: 111, baseType: !307, size: 128, offset: 1152)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !473, file: !470, line: 112, baseType: !307, size: 128, offset: 1280)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !473, file: !470, line: 120, baseType: !4312, size: 128, offset: 1408)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !470, line: 116, size: 128, elements: !4313)
!4313 = !{!4314, !4315, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4312, file: !470, line: 117, baseType: !728, size: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4312, file: !470, line: 118, baseType: !487, size: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4312, file: !470, line: 119, baseType: !455, size: 128, align: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !443, file: !92, line: 922, baseType: !518, size: 64, offset: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !443, file: !92, line: 923, baseType: !4039, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !443, file: !92, line: 929, baseType: !321, offset: 384)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !443, file: !92, line: 930, baseType: !91, size: 32, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !443, file: !92, line: 931, baseType: !830, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !443, file: !92, line: 932, baseType: !7, size: 32, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !443, file: !92, line: 933, baseType: !1343, size: 32, offset: 544)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !443, file: !92, line: 934, baseType: !826, size: 192, offset: 576)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !443, file: !92, line: 935, baseType: !620, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !443, file: !92, line: 936, baseType: !4327, size: 192, offset: 832)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !92, line: 885, size: 192, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !92, line: 886, baseType: !4138)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4327, file: !92, line: 887, baseType: !2552, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4327, file: !92, line: 888, baseType: !100, size: 32, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4327, file: !92, line: 889, baseType: !524, size: 32, offset: 96)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4327, file: !92, line: 889, baseType: !524, size: 32, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4327, file: !92, line: 890, baseType: !347, size: 32, offset: 160)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !443, file: !92, line: 937, baseType: !2622, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !443, file: !92, line: 938, baseType: !4337, size: 256, offset: 1088)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !92, line: 896, size: 256, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4337, file: !92, line: 897, baseType: !413, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4337, file: !92, line: 898, baseType: !7, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4337, file: !92, line: 899, baseType: !7, size: 32, offset: 96)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4337, file: !92, line: 902, baseType: !7, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4337, file: !92, line: 903, baseType: !7, size: 32, offset: 160)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4337, file: !92, line: 904, baseType: !620, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !443, file: !92, line: 940, baseType: !511, size: 64, offset: 1344)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !443, file: !92, line: 945, baseType: !437, size: 64, offset: 1408)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !443, file: !92, line: 949, baseType: !307, size: 128, offset: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !443, file: !92, line: 950, baseType: !307, size: 128, offset: 1600)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !443, file: !92, line: 952, baseType: !886, size: 64, offset: 1728)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !443, file: !92, line: 953, baseType: !2008, size: 32, offset: 1792)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !443, file: !92, line: 954, baseType: !2008, size: 32, offset: 1824)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !432, file: !388, line: 174, baseType: !439, size: 64, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !432, file: !388, line: 176, baseType: !4354, size: 64, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!347, !442, !314, !431, !2079}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !420, file: !388, line: 90, baseType: !415, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !420, file: !388, line: 91, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !378, file: !303, line: 143, baseType: !4361, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4364, !314}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !109, line: 39, size: 384, elements: !4367)
!4367 = !{!4368, !4369, !4373, !4377, !4383, !4387}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4366, file: !109, line: 40, baseType: !108, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4366, file: !109, line: 41, baseType: !4370, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!579}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4366, file: !109, line: 42, baseType: !4374, size: 64, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!437}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4366, file: !109, line: 43, baseType: !4378, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!3335, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !109, line: 19, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4366, file: !109, line: 44, baseType: !4384, size: 64, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!3335}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4366, file: !109, line: 45, baseType: !557, size: 64, offset: 320)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !378, file: !303, line: 144, baseType: !4389, size: 64, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!3335, !314}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !378, file: !303, line: 145, baseType: !4393, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !314, !2896, !2897}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !302, file: !303, line: 70, baseType: !4397, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !708, line: 123, size: 1024, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4516, !4517, !4518, !4519, !4520}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4398, file: !708, line: 124, baseType: !900, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4398, file: !708, line: 125, baseType: !900, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4398, file: !708, line: 135, baseType: !4397, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4398, file: !708, line: 136, baseType: !282, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4398, file: !708, line: 138, baseType: !913, size: 192, align: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4398, file: !708, line: 140, baseType: !3335, size: 64, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4398, file: !708, line: 141, baseType: !7, size: 32, offset: 448)
!4407 = !DIDerivedType(tag: DW_TAG_member, scope: !4398, file: !708, line: 142, baseType: !4408, size: 256, offset: 512)
!4408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4398, file: !708, line: 142, size: 256, elements: !4409)
!4409 = !{!4410, !4456, !4460}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4408, file: !708, line: 143, baseType: !4411, size: 192)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !708, line: 91, size: 192, elements: !4412)
!4412 = !{!4413, !4414, !4415}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4411, file: !708, line: 92, baseType: !413, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4411, file: !708, line: 94, baseType: !909, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4411, file: !708, line: 100, baseType: !4416, size: 64, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !708, line: 180, size: 704, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4428, !4429, !4430, !4454, !4455}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4417, file: !708, line: 182, baseType: !4397, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4417, file: !708, line: 183, baseType: !7, size: 32, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4417, file: !708, line: 186, baseType: !4422, size: 192, offset: 128)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4423, line: 19, size: 192, elements: !4424)
!4423 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4424 = !{!4425, !4426, !4427}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4422, file: !4423, line: 20, baseType: !891, size: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4422, file: !4423, line: 21, baseType: !7, size: 32, offset: 128)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4422, file: !4423, line: 22, baseType: !7, size: 32, offset: 160)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4417, file: !708, line: 187, baseType: !505, size: 32, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4417, file: !708, line: 188, baseType: !505, size: 32, offset: 352)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4417, file: !708, line: 189, baseType: !4431, size: 64, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !708, line: 168, size: 320, elements: !4433)
!4433 = !{!4434, !4438, !4442, !4446, !4450}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4432, file: !708, line: 169, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!347, !814, !4416}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4432, file: !708, line: 171, baseType: !4439, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!347, !4397, !282, !404}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4432, file: !708, line: 173, baseType: !4443, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!347, !4397}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4432, file: !708, line: 174, baseType: !4447, size: 64, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!347, !4397, !4397, !282}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4432, file: !708, line: 176, baseType: !4451, size: 64, offset: 256)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!347, !814, !4397, !4416}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4417, file: !708, line: 192, baseType: !307, size: 128, offset: 448)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4417, file: !708, line: 194, baseType: !1322, size: 128, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4408, file: !708, line: 144, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !708, line: 103, size: 64, elements: !4458)
!4458 = !{!4459}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4457, file: !708, line: 104, baseType: !4397, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4408, file: !708, line: 145, baseType: !4461, size: 256)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !708, line: 107, size: 256, elements: !4462)
!4462 = !{!4463, !4511, !4514, !4515}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4461, file: !708, line: 108, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4466)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !708, line: 217, size: 768, elements: !4467)
!4467 = !{!4468, !4488, !4492, !4493, !4494, !4495, !4496, !4500, !4501, !4502, !4503, !4507}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4466, file: !708, line: 222, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!347, !4472}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !708, line: 197, size: 1088, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4473, file: !708, line: 199, baseType: !4397, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4473, file: !708, line: 200, baseType: !442, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4473, file: !708, line: 201, baseType: !814, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4473, file: !708, line: 202, baseType: !437, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4473, file: !708, line: 205, baseType: !826, size: 192, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4473, file: !708, line: 206, baseType: !826, size: 192, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4473, file: !708, line: 207, baseType: !347, size: 32, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4473, file: !708, line: 208, baseType: !307, size: 128, offset: 704)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4473, file: !708, line: 209, baseType: !363, size: 64, offset: 832)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4473, file: !708, line: 211, baseType: !410, size: 64, offset: 896)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4473, file: !708, line: 212, baseType: !579, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4473, file: !708, line: 213, baseType: !579, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4473, file: !708, line: 214, baseType: !2107, size: 64, offset: 1024)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4466, file: !708, line: 223, baseType: !4489, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4472}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4466, file: !708, line: 236, baseType: !858, size: 64, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4466, file: !708, line: 238, baseType: !845, size: 64, offset: 192)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4466, file: !708, line: 239, baseType: !854, size: 64, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4466, file: !708, line: 240, baseType: !850, size: 64, offset: 320)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4466, file: !708, line: 242, baseType: !4497, size: 64, offset: 384)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!394, !4472, !363, !410, !620}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4466, file: !708, line: 252, baseType: !410, size: 64, offset: 448)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4466, file: !708, line: 259, baseType: !579, size: 8, offset: 512)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4466, file: !708, line: 260, baseType: !4497, size: 64, offset: 576)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4466, file: !708, line: 263, baseType: !4504, size: 64, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!4080, !4472, !4082}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4466, file: !708, line: 266, baseType: !4508, size: 64, offset: 704)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!347, !4472, !2079}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4461, file: !708, line: 109, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !708, line: 31, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4461, file: !708, line: 110, baseType: !620, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4461, file: !708, line: 111, baseType: !4397, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4398, file: !708, line: 148, baseType: !437, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4398, file: !708, line: 154, baseType: !511, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4398, file: !708, line: 156, baseType: !405, size: 16, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4398, file: !708, line: 157, baseType: !404, size: 16, offset: 912)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4398, file: !708, line: 158, baseType: !4521, size: 64, offset: 960)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !708, line: 32, flags: DIFlagFwdDecl)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !302, file: !303, line: 71, baseType: !1705, size: 32, offset: 448)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !302, file: !303, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !302, file: !303, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !302, file: !303, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !302, file: !303, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !302, file: !303, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !121, line: 463, baseType: !298, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !299, file: !121, line: 465, baseType: !4531, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !121, line: 36, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !299, file: !121, line: 467, baseType: !282, size: 64, offset: 640)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !121, line: 468, baseType: !4535, size: 64, offset: 704)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4537)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !121, line: 87, size: 384, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4545, !4549, !4553}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4537, file: !121, line: 88, baseType: !282, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4537, file: !121, line: 89, baseType: !417, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4537, file: !121, line: 90, baseType: !4542, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!347, !298, !358}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4537, file: !121, line: 91, baseType: !4546, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!363, !298, !1411, !2896, !2897}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4537, file: !121, line: 93, baseType: !4550, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{null, !298}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4537, file: !121, line: 95, baseType: !4554, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4556)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !50, line: 278, size: 1472, elements: !4557)
!4557 = !{!4558, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4556, file: !50, line: 279, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!347, !298}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4556, file: !50, line: 280, baseType: !4550, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4556, file: !50, line: 281, baseType: !4559, size: 64, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4556, file: !50, line: 282, baseType: !4559, size: 64, offset: 192)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4556, file: !50, line: 283, baseType: !4559, size: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4556, file: !50, line: 284, baseType: !4559, size: 64, offset: 320)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4556, file: !50, line: 285, baseType: !4559, size: 64, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4556, file: !50, line: 286, baseType: !4559, size: 64, offset: 448)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4556, file: !50, line: 287, baseType: !4559, size: 64, offset: 512)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4556, file: !50, line: 288, baseType: !4559, size: 64, offset: 576)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4556, file: !50, line: 289, baseType: !4559, size: 64, offset: 640)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4556, file: !50, line: 290, baseType: !4559, size: 64, offset: 704)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4556, file: !50, line: 291, baseType: !4559, size: 64, offset: 768)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4556, file: !50, line: 292, baseType: !4559, size: 64, offset: 832)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4556, file: !50, line: 293, baseType: !4559, size: 64, offset: 896)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4556, file: !50, line: 294, baseType: !4559, size: 64, offset: 960)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4556, file: !50, line: 295, baseType: !4559, size: 64, offset: 1024)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4556, file: !50, line: 296, baseType: !4559, size: 64, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4556, file: !50, line: 297, baseType: !4559, size: 64, offset: 1152)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4556, file: !50, line: 298, baseType: !4559, size: 64, offset: 1216)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4556, file: !50, line: 299, baseType: !4559, size: 64, offset: 1280)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4556, file: !50, line: 300, baseType: !4559, size: 64, offset: 1344)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4556, file: !50, line: 301, baseType: !4559, size: 64, offset: 1408)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !299, file: !121, line: 470, baseType: !4585, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4587, line: 82, size: 1408, elements: !4588)
!4587 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4670, !4673, !4674}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4586, file: !4587, line: 83, baseType: !282, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4586, file: !4587, line: 84, baseType: !282, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4586, file: !4587, line: 85, baseType: !298, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4586, file: !4587, line: 86, baseType: !417, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4586, file: !4587, line: 87, baseType: !417, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4586, file: !4587, line: 88, baseType: !417, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4586, file: !4587, line: 90, baseType: !4596, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!347, !298, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !115, line: 95, size: 1152, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4621, !4634, !4635, !4636, !4637, !4638, !4646, !4647, !4648, !4649, !4650, !4651}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4600, file: !115, line: 96, baseType: !282, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4600, file: !115, line: 97, baseType: !4585, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4600, file: !115, line: 99, baseType: !274, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4600, file: !115, line: 100, baseType: !282, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4600, file: !115, line: 102, baseType: !579, size: 8, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4600, file: !115, line: 103, baseType: !114, size: 32, offset: 288)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4600, file: !115, line: 105, baseType: !4609, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4611)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4612, line: 262, size: 1600, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4613 = !{!4614, !4615, !4616, !4620}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4611, file: !4612, line: 263, baseType: !1210, size: 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4611, file: !4612, line: 264, baseType: !1210, size: 256, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4611, file: !4612, line: 265, baseType: !4617, size: 1024, offset: 512)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !4618)
!4618 = !{!4619}
!4619 = !DISubrange(count: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4611, file: !4612, line: 266, baseType: !3335, size: 64, offset: 1536)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4600, file: !115, line: 106, baseType: !4622, size: 64, offset: 384)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4612, line: 210, size: 256, elements: !4625)
!4625 = !{!4626, !4630, !4632, !4633}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4624, file: !4612, line: 211, baseType: !4627, size: 72)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 72, elements: !4628)
!4628 = !{!4629}
!4629 = !DISubrange(count: 9)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4624, file: !4612, line: 212, baseType: !4631, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4612, line: 14, baseType: !413)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4624, file: !4612, line: 213, baseType: !507, size: 32, offset: 192)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4624, file: !4612, line: 214, baseType: !507, size: 32, offset: 224)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4600, file: !115, line: 108, baseType: !4559, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4600, file: !115, line: 109, baseType: !4550, size: 64, offset: 512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4600, file: !115, line: 110, baseType: !4559, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4600, file: !115, line: 111, baseType: !4550, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4600, file: !115, line: 112, baseType: !4639, size: 64, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!347, !298, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !50, line: 52, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !50, line: 50, size: 32, elements: !4644)
!4644 = !{!4645}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4643, file: !50, line: 51, baseType: !347, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4600, file: !115, line: 113, baseType: !4559, size: 64, offset: 768)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4600, file: !115, line: 114, baseType: !417, size: 64, offset: 832)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4600, file: !115, line: 115, baseType: !417, size: 64, offset: 896)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4600, file: !115, line: 117, baseType: !4554, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4600, file: !115, line: 118, baseType: !4550, size: 64, offset: 1024)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4600, file: !115, line: 120, baseType: !4652, size: 64, offset: 1088)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !115, line: 120, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4586, file: !4587, line: 91, baseType: !4542, size: 64, offset: 448)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4586, file: !4587, line: 92, baseType: !4559, size: 64, offset: 512)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4586, file: !4587, line: 93, baseType: !4550, size: 64, offset: 576)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4586, file: !4587, line: 94, baseType: !4559, size: 64, offset: 640)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4586, file: !4587, line: 95, baseType: !4550, size: 64, offset: 704)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4586, file: !4587, line: 97, baseType: !4559, size: 64, offset: 768)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4586, file: !4587, line: 98, baseType: !4559, size: 64, offset: 832)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4586, file: !4587, line: 100, baseType: !4639, size: 64, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4586, file: !4587, line: 101, baseType: !4559, size: 64, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4586, file: !4587, line: 103, baseType: !4559, size: 64, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4586, file: !4587, line: 105, baseType: !4559, size: 64, offset: 1088)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4586, file: !4587, line: 107, baseType: !4554, size: 64, offset: 1152)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4586, file: !4587, line: 109, baseType: !4667, size: 64, offset: 1216)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4669)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4587, line: 109, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4586, file: !4587, line: 111, baseType: !4671, size: 64, offset: 1280)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4587, line: 111, flags: DIFlagFwdDecl)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4586, file: !4587, line: 112, baseType: !734, offset: 1344)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4586, file: !4587, line: 114, baseType: !579, size: 8, offset: 1344)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !299, file: !121, line: 471, baseType: !4599, size: 64, offset: 832)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !299, file: !121, line: 473, baseType: !437, size: 64, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !299, file: !121, line: 475, baseType: !437, size: 64, offset: 960)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !299, file: !121, line: 480, baseType: !826, size: 192, offset: 1024)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !299, file: !121, line: 484, baseType: !4680, size: 576, offset: 1216)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !121, line: 361, size: 576, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685, !4686, !4687}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4680, file: !121, line: 362, baseType: !307, size: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4680, file: !121, line: 363, baseType: !307, size: 128, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4680, file: !121, line: 364, baseType: !307, size: 128, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4680, file: !121, line: 365, baseType: !307, size: 128, offset: 384)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4680, file: !121, line: 366, baseType: !579, size: 8, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4680, file: !121, line: 367, baseType: !120, size: 32, offset: 544)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !299, file: !121, line: 485, baseType: !4689, size: 2304, offset: 1792)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !50, line: 565, size: 2304, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4775, !4779}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4689, file: !50, line: 566, baseType: !4642, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4689, file: !50, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4689, file: !50, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4689, file: !50, line: 569, baseType: !579, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4689, file: !50, line: 570, baseType: !579, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4689, file: !50, line: 571, baseType: !579, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4689, file: !50, line: 572, baseType: !579, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4689, file: !50, line: 573, baseType: !579, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4689, file: !50, line: 574, baseType: !579, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4689, file: !50, line: 575, baseType: !579, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4689, file: !50, line: 576, baseType: !579, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4689, file: !50, line: 577, baseType: !505, size: 32, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4689, file: !50, line: 578, baseType: !321, offset: 96)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4689, file: !50, line: 580, baseType: !307, size: 128, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4689, file: !50, line: 581, baseType: !2577, size: 192, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4689, file: !50, line: 582, baseType: !4707, size: 64, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4709, line: 43, size: 1472, elements: !4710)
!4709 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4710 = !{!4711, !4712, !4713, !4714, !4715, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4708, file: !4709, line: 44, baseType: !282, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4708, file: !4709, line: 45, baseType: !347, size: 32, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4708, file: !4709, line: 46, baseType: !307, size: 128, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4708, file: !4709, line: 47, baseType: !321, offset: 256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4708, file: !4709, line: 48, baseType: !4716, size: 64, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !50, line: 533, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4708, file: !4709, line: 49, baseType: !1755, size: 320, offset: 320)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4708, file: !4709, line: 50, baseType: !413, size: 64, offset: 640)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4708, file: !4709, line: 51, baseType: !2384, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4708, file: !4709, line: 52, baseType: !2384, size: 64, offset: 768)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4708, file: !4709, line: 53, baseType: !2384, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4708, file: !4709, line: 54, baseType: !2384, size: 64, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4708, file: !4709, line: 55, baseType: !2384, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4708, file: !4709, line: 56, baseType: !413, size: 64, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4708, file: !4709, line: 57, baseType: !413, size: 64, offset: 1088)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4708, file: !4709, line: 58, baseType: !413, size: 64, offset: 1152)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4708, file: !4709, line: 59, baseType: !413, size: 64, offset: 1216)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4708, file: !4709, line: 60, baseType: !413, size: 64, offset: 1280)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4708, file: !4709, line: 61, baseType: !298, size: 64, offset: 1344)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4708, file: !4709, line: 62, baseType: !579, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4708, file: !4709, line: 63, baseType: !579, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4689, file: !50, line: 583, baseType: !579, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4689, file: !50, line: 584, baseType: !579, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4689, file: !50, line: 585, baseType: !579, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4689, file: !50, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4689, file: !50, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4689, file: !50, line: 592, baseType: !2376, size: 512, offset: 576)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4689, file: !50, line: 593, baseType: !511, size: 64, offset: 1088)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4689, file: !50, line: 594, baseType: !1186, size: 256, offset: 1152)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4689, file: !50, line: 595, baseType: !1322, size: 128, offset: 1408)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4689, file: !50, line: 596, baseType: !4716, size: 64, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4689, file: !50, line: 597, baseType: !900, size: 32, offset: 1600)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4689, file: !50, line: 598, baseType: !900, size: 32, offset: 1632)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4689, file: !50, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4689, file: !50, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4689, file: !50, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4689, file: !50, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4689, file: !50, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4689, file: !50, line: 604, baseType: !579, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4689, file: !50, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4689, file: !50, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4689, file: !50, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4689, file: !50, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4689, file: !50, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4689, file: !50, line: 610, baseType: !7, size: 32, offset: 1696)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4689, file: !50, line: 611, baseType: !127, size: 32, offset: 1728)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4689, file: !50, line: 612, baseType: !49, size: 32, offset: 1760)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4689, file: !50, line: 613, baseType: !347, size: 32, offset: 1792)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4689, file: !50, line: 614, baseType: !347, size: 32, offset: 1824)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4689, file: !50, line: 615, baseType: !511, size: 64, offset: 1856)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4689, file: !50, line: 616, baseType: !511, size: 64, offset: 1920)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4689, file: !50, line: 617, baseType: !511, size: 64, offset: 1984)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4689, file: !50, line: 618, baseType: !511, size: 64, offset: 2048)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4689, file: !50, line: 620, baseType: !4766, size: 64, offset: 2112)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !50, line: 536, size: 256, elements: !4768)
!4768 = !{!4769, !4770, !4771, !4772}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4767, file: !50, line: 537, baseType: !321)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4767, file: !50, line: 538, baseType: !7, size: 32)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4767, file: !50, line: 540, baseType: !307, size: 128, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4767, file: !50, line: 543, baseType: !4773, size: 64, offset: 192)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !50, line: 534, flags: DIFlagFwdDecl)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4689, file: !50, line: 621, baseType: !4776, size: 64, offset: 2176)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{null, !298, !2526}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4689, file: !50, line: 622, baseType: !4780, size: 64, offset: 2240)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !50, line: 622, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !299, file: !121, line: 486, baseType: !4783, size: 64, offset: 4096)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !50, line: 642, size: 1792, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4792, !4793, !4794}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4784, file: !50, line: 643, baseType: !4556, size: 1472)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4784, file: !50, line: 644, baseType: !4559, size: 64, offset: 1472)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4784, file: !50, line: 645, baseType: !4789, size: 64, offset: 1536)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !298, !579}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4784, file: !50, line: 646, baseType: !4559, size: 64, offset: 1600)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4784, file: !50, line: 647, baseType: !4550, size: 64, offset: 1664)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4784, file: !50, line: 648, baseType: !4550, size: 64, offset: 1728)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !299, file: !121, line: 493, baseType: !4796, size: 64, offset: 4160)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !135, line: 162, size: 1088, elements: !4798)
!4798 = !{!4799, !4800, !4801, !4974, !4975, !4976, !4977, !4978, !4979, !4982, !4983, !4984, !4985, !4986, !4987, !4988}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4797, file: !135, line: 163, baseType: !307, size: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4797, file: !135, line: 164, baseType: !282, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4797, file: !135, line: 165, baseType: !4802, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4804)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !135, line: 105, size: 640, elements: !4805)
!4805 = !{!4806, !4924, !4935, !4940, !4944, !4951, !4955, !4959, !4966, !4970}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4804, file: !135, line: 106, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!347, !4796, !4810, !134}
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4812, line: 51, size: 1344, elements: !4813)
!4812 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4813 = !{!4814, !4815, !4817, !4818, !4908, !4917, !4918, !4919, !4920, !4921, !4922, !4923}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4811, file: !4812, line: 52, baseType: !282, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4811, file: !4812, line: 53, baseType: !4816, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4812, line: 28, baseType: !505)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4811, file: !4812, line: 54, baseType: !282, size: 64, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4811, file: !4812, line: 55, baseType: !4819, size: 192, offset: 192)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4820, line: 17, size: 192, elements: !4821)
!4820 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !{!4822, !4824, !4907}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4819, file: !4820, line: 18, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4819, file: !4820, line: 19, baseType: !4825, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4827)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4820, line: 110, size: 1152, elements: !4828)
!4828 = !{!4829, !4833, !4837, !4843, !4849, !4853, !4857, !4862, !4866, !4867, !4871, !4875, !4879, !4890, !4891, !4892, !4893, !4903}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4827, file: !4820, line: 111, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!4823, !4823}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4827, file: !4820, line: 112, baseType: !4834, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{null, !4823}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4827, file: !4820, line: 113, baseType: !4838, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!579, !4841}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4819)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4827, file: !4820, line: 114, baseType: !4844, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!3335, !4841, !4847}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4827, file: !4820, line: 116, baseType: !4850, size: 64, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!579, !4841, !282}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4827, file: !4820, line: 118, baseType: !4854, size: 64, offset: 320)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!347, !4841, !282, !7, !437, !410}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4827, file: !4820, line: 123, baseType: !4858, size: 64, offset: 384)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!347, !4841, !282, !4861, !410}
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4827, file: !4820, line: 126, baseType: !4863, size: 64, offset: 448)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!282, !4841}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4827, file: !4820, line: 127, baseType: !4863, size: 64, offset: 512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4827, file: !4820, line: 128, baseType: !4868, size: 64, offset: 576)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!4823, !4841}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4827, file: !4820, line: 130, baseType: !4872, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!4823, !4841, !4823}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4827, file: !4820, line: 133, baseType: !4876, size: 64, offset: 704)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!4823, !4841, !282}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4827, file: !4820, line: 135, baseType: !4880, size: 64, offset: 768)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!347, !4841, !282, !282, !7, !7, !4883}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4820, line: 43, size: 640, elements: !4885)
!4885 = !{!4886, !4887, !4888}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4884, file: !4820, line: 44, baseType: !4823, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4884, file: !4820, line: 45, baseType: !7, size: 32, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4884, file: !4820, line: 46, baseType: !4889, size: 512, offset: 128)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 512, elements: !2414)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4827, file: !4820, line: 140, baseType: !4872, size: 64, offset: 832)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4827, file: !4820, line: 143, baseType: !4868, size: 64, offset: 896)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4827, file: !4820, line: 145, baseType: !4830, size: 64, offset: 960)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4827, file: !4820, line: 146, baseType: !4894, size: 64, offset: 1024)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!347, !4841, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4820, line: 29, size: 128, elements: !4899)
!4899 = !{!4900, !4901, !4902}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4898, file: !4820, line: 30, baseType: !7, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4898, file: !4820, line: 31, baseType: !7, size: 32, offset: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4898, file: !4820, line: 32, baseType: !4841, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4827, file: !4820, line: 148, baseType: !4904, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!347, !4841, !298}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4819, file: !4820, line: 20, baseType: !298, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4811, file: !4812, line: 57, baseType: !4909, size: 64, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4812, line: 31, size: 704, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4910, file: !4812, line: 32, baseType: !363, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4910, file: !4812, line: 33, baseType: !347, size: 32, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4910, file: !4812, line: 34, baseType: !437, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4910, file: !4812, line: 35, baseType: !4909, size: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4910, file: !4812, line: 43, baseType: !432, size: 448, offset: 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4811, file: !4812, line: 58, baseType: !4909, size: 64, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4811, file: !4812, line: 59, baseType: !4810, size: 64, offset: 512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4811, file: !4812, line: 60, baseType: !4810, size: 64, offset: 576)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4811, file: !4812, line: 61, baseType: !4810, size: 64, offset: 640)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4811, file: !4812, line: 63, baseType: !302, size: 512, offset: 704)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4811, file: !4812, line: 65, baseType: !413, size: 64, offset: 1216)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4811, file: !4812, line: 66, baseType: !437, size: 64, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4804, file: !135, line: 108, baseType: !4925, size: 64, offset: 64)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!347, !4796, !4928, !134}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !135, line: 63, size: 640, elements: !4930)
!4930 = !{!4931, !4932, !4933}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4929, file: !135, line: 64, baseType: !4823, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4929, file: !135, line: 65, baseType: !347, size: 32, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4929, file: !135, line: 66, baseType: !4934, size: 512, offset: 96)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 512, elements: !1841)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4804, file: !135, line: 110, baseType: !4936, size: 64, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!347, !4796, !7, !4939}
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !308, line: 164, baseType: !413)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4804, file: !135, line: 111, baseType: !4941, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !4796, !7}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4804, file: !135, line: 112, baseType: !4945, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!347, !4796, !4810, !4948, !7, !4950, !1108}
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4804, file: !135, line: 117, baseType: !4952, size: 64, offset: 320)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!347, !4796, !7, !7, !437}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4804, file: !135, line: 119, baseType: !4956, size: 64, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4796, !7, !7}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4804, file: !135, line: 121, baseType: !4960, size: 64, offset: 448)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!347, !4796, !4963, !579}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4965, line: 11, flags: DIFlagFwdDecl)
!4965 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4804, file: !135, line: 122, baseType: !4967, size: 64, offset: 512)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{null, !4796, !4963}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4804, file: !135, line: 123, baseType: !4971, size: 64, offset: 576)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!347, !4796, !4928, !4950, !1108}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4797, file: !135, line: 166, baseType: !437, size: 64, offset: 256)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4797, file: !135, line: 167, baseType: !7, size: 32, offset: 320)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4797, file: !135, line: 168, baseType: !7, size: 32, offset: 352)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4797, file: !135, line: 171, baseType: !4823, size: 64, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4797, file: !135, line: 172, baseType: !134, size: 32, offset: 448)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4797, file: !135, line: 173, baseType: !4980, size: 64, offset: 512)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !135, line: 134, flags: DIFlagFwdDecl)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4797, file: !135, line: 175, baseType: !4796, size: 64, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4797, file: !135, line: 182, baseType: !4939, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4797, file: !135, line: 183, baseType: !7, size: 32, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4797, file: !135, line: 184, baseType: !7, size: 32, offset: 736)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4797, file: !135, line: 185, baseType: !891, size: 128, offset: 768)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4797, file: !135, line: 186, baseType: !826, size: 192, offset: 896)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4797, file: !135, line: 187, baseType: !4989, offset: 1088)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1224)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !299, file: !121, line: 499, baseType: !307, size: 128, offset: 4224)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !299, file: !121, line: 502, baseType: !4992, size: 64, offset: 4352)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4994)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !121, line: 502, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !299, file: !121, line: 504, baseType: !4996, size: 64, offset: 4416)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !299, file: !121, line: 505, baseType: !511, size: 64, offset: 4480)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !299, file: !121, line: 510, baseType: !511, size: 64, offset: 4544)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !299, file: !121, line: 511, baseType: !5000, size: 64, offset: 4608)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5002)
!5002 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !121, line: 511, flags: DIFlagFwdDecl)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !299, file: !121, line: 513, baseType: !5004, size: 64, offset: 4672)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !121, line: 288, size: 128, elements: !5006)
!5006 = !{!5007, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5005, file: !121, line: 293, baseType: !7, size: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5005, file: !121, line: 294, baseType: !413, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !299, file: !121, line: 515, baseType: !307, size: 128, offset: 4736)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !299, file: !121, line: 526, baseType: !5011, offset: 4864)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5012, line: 5, elements: !335)
!5012 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !299, file: !121, line: 528, baseType: !4810, size: 64, offset: 4864)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !299, file: !121, line: 529, baseType: !4823, size: 64, offset: 4928)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !299, file: !121, line: 534, baseType: !602, size: 32, offset: 4992)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !299, file: !121, line: 535, baseType: !505, size: 32, offset: 5024)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !299, file: !121, line: 537, baseType: !321, offset: 5056)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !299, file: !121, line: 538, baseType: !307, size: 128, offset: 5056)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !121, line: 540, baseType: !5020, size: 64, offset: 5184)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5022, line: 54, size: 960, elements: !5023)
!5022 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!5023 = !{!5024, !5025, !5026, !5027, !5028, !5029, !5030, !5034, !5038, !5039, !5040, !5041, !5045, !5049, !5050}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5021, file: !5022, line: 55, baseType: !282, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5021, file: !5022, line: 56, baseType: !274, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5021, file: !5022, line: 58, baseType: !417, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5021, file: !5022, line: 59, baseType: !417, size: 64, offset: 192)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !5021, file: !5022, line: 60, baseType: !314, size: 64, offset: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5021, file: !5022, line: 62, baseType: !4542, size: 64, offset: 320)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5021, file: !5022, line: 63, baseType: !5031, size: 64, offset: 384)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!363, !298, !1411}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5021, file: !5022, line: 65, baseType: !5035, size: 64, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{null, !5020}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5021, file: !5022, line: 66, baseType: !4550, size: 64, offset: 512)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5021, file: !5022, line: 68, baseType: !4559, size: 64, offset: 576)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5021, file: !5022, line: 70, baseType: !4364, size: 64, offset: 640)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5021, file: !5022, line: 71, baseType: !5042, size: 64, offset: 704)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!3335, !298}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5021, file: !5022, line: 73, baseType: !5046, size: 64, offset: 768)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !298, !2896, !2897}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5021, file: !5022, line: 75, baseType: !4554, size: 64, offset: 832)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5021, file: !5022, line: 77, baseType: !4671, size: 64, offset: 896)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !299, file: !121, line: 541, baseType: !417, size: 64, offset: 5248)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !299, file: !121, line: 543, baseType: !4550, size: 64, offset: 5312)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !299, file: !121, line: 544, baseType: !5054, size: 64, offset: 5376)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !121, line: 45, flags: DIFlagFwdDecl)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !299, file: !121, line: 545, baseType: !5057, size: 64, offset: 5440)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !121, line: 47, flags: DIFlagFwdDecl)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !299, file: !121, line: 547, baseType: !579, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !299, file: !121, line: 548, baseType: !579, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !299, file: !121, line: 549, baseType: !579, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !299, file: !121, line: 550, baseType: !579, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !295, file: !170, line: 426, baseType: !298, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !295, file: !170, line: 427, baseType: !347, size: 32, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !295, file: !170, line: 428, baseType: !282, size: 64, offset: 192)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !295, file: !170, line: 429, baseType: !1133, size: 8, offset: 256)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !295, file: !170, line: 433, baseType: !1133, size: 8, offset: 264)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !295, file: !170, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !295, file: !170, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !295, file: !170, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !295, file: !170, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !295, file: !170, line: 442, baseType: !7, size: 32, offset: 288)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !295, file: !170, line: 444, baseType: !347, size: 32, offset: 320)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !295, file: !170, line: 446, baseType: !826, size: 192, offset: 384)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !295, file: !170, line: 448, baseType: !5076, size: 128, offset: 576)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !170, line: 417, size: 128, elements: !5077)
!5077 = !{!5078}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5076, file: !170, line: 418, baseType: !5079, size: 128)
!5079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 128, elements: !1492)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !295, file: !170, line: 449, baseType: !5081, size: 64, offset: 704)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !170, line: 631, size: 10624, elements: !5083)
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5102, !5103, !5105, !5106, !5108, !5148, !5149, !5166, !5227, !5309, !5310, !5312, !5313, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5348, !5349, !5350, !5355, !5362, !5363, !5364, !5365}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5082, file: !170, line: 632, baseType: !347, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5082, file: !170, line: 633, baseType: !2947, size: 128, offset: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5082, file: !170, line: 634, baseType: !505, size: 32, offset: 160)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5082, file: !170, line: 635, baseType: !148, size: 32, offset: 192)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5082, file: !170, line: 636, baseType: !160, size: 32, offset: 224)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5082, file: !170, line: 637, baseType: !7, size: 32, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5082, file: !170, line: 638, baseType: !7, size: 32, offset: 288)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5082, file: !170, line: 640, baseType: !5092, size: 64, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !247, line: 554, size: 576, elements: !5094)
!5094 = !{!5095, !5096, !5097, !5098, !5099, !5100, !5101}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !5093, file: !247, line: 555, baseType: !5081, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !5093, file: !247, line: 556, baseType: !347, size: 32, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !5093, file: !247, line: 557, baseType: !7, size: 32, offset: 96)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5093, file: !247, line: 558, baseType: !437, size: 64, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5093, file: !247, line: 561, baseType: !321, offset: 192)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !5093, file: !247, line: 562, baseType: !307, size: 128, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !5093, file: !247, line: 563, baseType: !1186, size: 256, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5082, file: !170, line: 641, baseType: !347, size: 32, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5082, file: !170, line: 643, baseType: !5104, size: 64, offset: 416)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1492)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5082, file: !170, line: 645, baseType: !5081, size: 64, offset: 512)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5082, file: !170, line: 646, baseType: !5107, size: 64, offset: 576)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5082, file: !170, line: 647, baseType: !5109, size: 640, offset: 640)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !170, line: 67, size: 640, elements: !5110)
!5110 = !{!5111, !5123, !5131, !5139, !5140, !5141, !5144, !5145, !5146, !5147}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5109, file: !170, line: 68, baseType: !5112, size: 72)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !149, line: 407, size: 72, elements: !5113)
!5113 = !{!5114, !5115, !5116, !5117, !5118, !5120, !5121, !5122}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5112, file: !149, line: 408, baseType: !1134, size: 8)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5112, file: !149, line: 409, baseType: !1134, size: 8, offset: 8)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5112, file: !149, line: 411, baseType: !1134, size: 8, offset: 16)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5112, file: !149, line: 412, baseType: !1134, size: 8, offset: 24)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5112, file: !149, line: 413, baseType: !5119, size: 16, offset: 32)
!5119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !4081, line: 29, baseType: !1013)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5112, file: !149, line: 414, baseType: !1134, size: 8, offset: 48)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5112, file: !149, line: 418, baseType: !1134, size: 8, offset: 56)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5112, file: !149, line: 419, baseType: !1134, size: 8, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5109, file: !170, line: 69, baseType: !5124, size: 48, offset: 72)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !149, line: 689, size: 48, elements: !5125)
!5125 = !{!5126, !5127, !5128, !5129, !5130}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5124, file: !149, line: 690, baseType: !1134, size: 8)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5124, file: !149, line: 691, baseType: !1134, size: 8, offset: 8)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5124, file: !149, line: 693, baseType: !1134, size: 8, offset: 16)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5124, file: !149, line: 694, baseType: !1134, size: 8, offset: 24)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5124, file: !149, line: 695, baseType: !5119, size: 16, offset: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5109, file: !170, line: 70, baseType: !5132, size: 64, offset: 120)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !149, line: 677, size: 64, elements: !5133)
!5133 = !{!5134, !5135, !5136, !5137}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5132, file: !149, line: 678, baseType: !1134, size: 8)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5132, file: !149, line: 679, baseType: !1134, size: 8, offset: 8)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5132, file: !149, line: 680, baseType: !5119, size: 16, offset: 16)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5132, file: !149, line: 681, baseType: !5138, size: 32, offset: 32)
!5138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !4081, line: 31, baseType: !507)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5109, file: !170, line: 71, baseType: !307, size: 128, offset: 192)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5109, file: !170, line: 72, baseType: !437, size: 64, offset: 320)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5109, file: !170, line: 73, baseType: !5142, size: 64, offset: 384)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !170, line: 48, flags: DIFlagFwdDecl)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5109, file: !170, line: 75, baseType: !1088, size: 64, offset: 448)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5109, file: !170, line: 76, baseType: !347, size: 32, offset: 512)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5109, file: !170, line: 77, baseType: !347, size: 32, offset: 544)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5109, file: !170, line: 78, baseType: !347, size: 32, offset: 576)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5082, file: !170, line: 649, baseType: !299, size: 5568, offset: 1280)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5082, file: !170, line: 651, baseType: !5150, size: 144, offset: 6848)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !149, line: 289, size: 144, elements: !5151)
!5151 = !{!5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5150, file: !149, line: 290, baseType: !1134, size: 8)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5150, file: !149, line: 291, baseType: !1134, size: 8, offset: 8)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5150, file: !149, line: 293, baseType: !5119, size: 16, offset: 16)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5150, file: !149, line: 294, baseType: !1134, size: 8, offset: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5150, file: !149, line: 295, baseType: !1134, size: 8, offset: 40)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5150, file: !149, line: 296, baseType: !1134, size: 8, offset: 48)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5150, file: !149, line: 297, baseType: !1134, size: 8, offset: 56)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5150, file: !149, line: 298, baseType: !5119, size: 16, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5150, file: !149, line: 299, baseType: !5119, size: 16, offset: 80)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5150, file: !149, line: 300, baseType: !5119, size: 16, offset: 96)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5150, file: !149, line: 301, baseType: !1134, size: 8, offset: 112)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5150, file: !149, line: 302, baseType: !1134, size: 8, offset: 120)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5150, file: !149, line: 303, baseType: !1134, size: 8, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5150, file: !149, line: 304, baseType: !1134, size: 8, offset: 136)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5082, file: !170, line: 652, baseType: !5167, size: 64, offset: 7040)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !170, line: 396, size: 384, elements: !5169)
!5169 = !{!5170, !5178, !5186, !5198, !5211, !5220}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5168, file: !170, line: 397, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !149, line: 844, size: 40, elements: !5173)
!5173 = !{!5174, !5175, !5176, !5177}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5172, file: !149, line: 845, baseType: !1134, size: 8)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5172, file: !149, line: 846, baseType: !1134, size: 8, offset: 8)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5172, file: !149, line: 848, baseType: !5119, size: 16, offset: 16)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5172, file: !149, line: 849, baseType: !1134, size: 8, offset: 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5168, file: !170, line: 400, baseType: !5179, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !149, line: 895, size: 56, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5185}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5180, file: !149, line: 896, baseType: !1134, size: 8)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5180, file: !149, line: 897, baseType: !1134, size: 8, offset: 8)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5180, file: !149, line: 898, baseType: !1134, size: 8, offset: 16)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5180, file: !149, line: 899, baseType: !5138, size: 32, offset: 24)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5168, file: !170, line: 401, baseType: !5187, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !149, line: 917, size: 80, elements: !5189)
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5188, file: !149, line: 918, baseType: !1134, size: 8)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5188, file: !149, line: 919, baseType: !1134, size: 8, offset: 8)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5188, file: !149, line: 920, baseType: !1134, size: 8, offset: 16)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5188, file: !149, line: 921, baseType: !1134, size: 8, offset: 24)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5188, file: !149, line: 923, baseType: !5119, size: 16, offset: 32)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5188, file: !149, line: 928, baseType: !1134, size: 8, offset: 48)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5188, file: !149, line: 929, baseType: !1134, size: 8, offset: 56)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5188, file: !149, line: 930, baseType: !5119, size: 16, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5168, file: !170, line: 402, baseType: !5199, size: 64, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !149, line: 955, size: 128, elements: !5201)
!5201 = !{!5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5200, file: !149, line: 956, baseType: !1134, size: 8)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5200, file: !149, line: 957, baseType: !1134, size: 8, offset: 8)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5200, file: !149, line: 958, baseType: !1134, size: 8, offset: 16)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5200, file: !149, line: 959, baseType: !1134, size: 8, offset: 24)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5200, file: !149, line: 960, baseType: !5138, size: 32, offset: 32)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5200, file: !149, line: 963, baseType: !5119, size: 16, offset: 64)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5200, file: !149, line: 967, baseType: !5119, size: 16, offset: 80)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5200, file: !149, line: 968, baseType: !5210, size: 32, offset: 96)
!5210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 32, elements: !2453)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5168, file: !170, line: 403, baseType: !5212, size: 64, offset: 256)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !149, line: 940, size: 160, elements: !5214)
!5214 = !{!5215, !5216, !5217, !5218, !5219}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5213, file: !149, line: 941, baseType: !1134, size: 8)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5213, file: !149, line: 942, baseType: !1134, size: 8, offset: 8)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5213, file: !149, line: 943, baseType: !1134, size: 8, offset: 16)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5213, file: !149, line: 944, baseType: !1134, size: 8, offset: 24)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5213, file: !149, line: 945, baseType: !3887, size: 128, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5168, file: !170, line: 404, baseType: !5221, size: 64, offset: 320)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !149, line: 1080, size: 24, elements: !5223)
!5223 = !{!5224, !5225, !5226}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5222, file: !149, line: 1081, baseType: !1134, size: 8)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5222, file: !149, line: 1082, baseType: !1134, size: 8, offset: 8)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5222, file: !149, line: 1083, baseType: !1134, size: 8, offset: 16)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5082, file: !170, line: 653, baseType: !5228, size: 64, offset: 7104)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !170, line: 374, size: 5440, elements: !5230)
!5230 = !{!5231, !5242, !5243, !5256, !5298, !5307, !5308}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5229, file: !170, line: 375, baseType: !5232, size: 72)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !149, line: 349, size: 72, elements: !5233)
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5232, file: !149, line: 350, baseType: !1134, size: 8)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5232, file: !149, line: 351, baseType: !1134, size: 8, offset: 8)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5232, file: !149, line: 353, baseType: !5119, size: 16, offset: 16)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5232, file: !149, line: 354, baseType: !1134, size: 8, offset: 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5232, file: !149, line: 355, baseType: !1134, size: 8, offset: 40)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5232, file: !149, line: 356, baseType: !1134, size: 8, offset: 48)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5232, file: !149, line: 357, baseType: !1134, size: 8, offset: 56)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5232, file: !149, line: 358, baseType: !1134, size: 8, offset: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5229, file: !170, line: 377, baseType: !363, size: 64, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5229, file: !170, line: 381, baseType: !5244, size: 1024, offset: 192)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5245, size: 1024, elements: !1841)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !149, line: 783, size: 64, elements: !5247)
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5246, file: !149, line: 784, baseType: !1134, size: 8)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5246, file: !149, line: 785, baseType: !1134, size: 8, offset: 8)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5246, file: !149, line: 787, baseType: !1134, size: 8, offset: 16)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5246, file: !149, line: 788, baseType: !1134, size: 8, offset: 24)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5246, file: !149, line: 789, baseType: !1134, size: 8, offset: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5246, file: !149, line: 790, baseType: !1134, size: 8, offset: 40)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5246, file: !149, line: 791, baseType: !1134, size: 8, offset: 48)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5246, file: !149, line: 792, baseType: !1134, size: 8, offset: 56)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5229, file: !170, line: 385, baseType: !5257, size: 2048, offset: 1216)
!5257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5258, size: 2048, elements: !1211)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !170, line: 232, size: 6272, elements: !5260)
!5260 = !{!5261, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5259, file: !170, line: 235, baseType: !5262, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !170, line: 82, size: 320, elements: !5264)
!5264 = !{!5265, !5277, !5278, !5279, !5281}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5263, file: !170, line: 83, baseType: !5266, size: 72)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !149, line: 389, size: 72, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5266, file: !149, line: 390, baseType: !1134, size: 8)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5266, file: !149, line: 391, baseType: !1134, size: 8, offset: 8)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5266, file: !149, line: 393, baseType: !1134, size: 8, offset: 16)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5266, file: !149, line: 394, baseType: !1134, size: 8, offset: 24)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5266, file: !149, line: 395, baseType: !1134, size: 8, offset: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5266, file: !149, line: 396, baseType: !1134, size: 8, offset: 40)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5266, file: !149, line: 397, baseType: !1134, size: 8, offset: 48)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5266, file: !149, line: 398, baseType: !1134, size: 8, offset: 56)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5266, file: !149, line: 399, baseType: !1134, size: 8, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5263, file: !170, line: 85, baseType: !347, size: 32, offset: 96)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5263, file: !170, line: 86, baseType: !1088, size: 64, offset: 128)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5263, file: !170, line: 91, baseType: !5280, size: 64, offset: 192)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5263, file: !170, line: 93, baseType: !363, size: 64, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5259, file: !170, line: 237, baseType: !5262, size: 64, offset: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5259, file: !170, line: 239, baseType: !7, size: 32, offset: 128)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5259, file: !170, line: 243, baseType: !5245, size: 64, offset: 192)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5259, file: !170, line: 245, baseType: !347, size: 32, offset: 256)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5259, file: !170, line: 247, baseType: !169, size: 32, offset: 288)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5259, file: !170, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5259, file: !170, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5259, file: !170, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5259, file: !170, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5259, file: !170, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5259, file: !170, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5259, file: !170, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5259, file: !170, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5259, file: !170, line: 257, baseType: !299, size: 5568, offset: 384)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5259, file: !170, line: 258, baseType: !298, size: 64, offset: 5952)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5259, file: !170, line: 259, baseType: !1186, size: 256, offset: 6016)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5229, file: !170, line: 389, baseType: !5299, size: 2048, offset: 3264)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5300, size: 2048, elements: !1211)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !170, line: 322, size: 64, elements: !5302)
!5302 = !{!5303, !5304, !5305}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5301, file: !170, line: 323, baseType: !7, size: 32)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5301, file: !170, line: 324, baseType: !1705, size: 32, offset: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5301, file: !170, line: 328, baseType: !5306, offset: 64)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5263, elements: !1224)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5229, file: !170, line: 391, baseType: !1088, size: 64, offset: 5312)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5229, file: !170, line: 392, baseType: !347, size: 32, offset: 5376)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5082, file: !170, line: 655, baseType: !5228, size: 64, offset: 7168)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5082, file: !170, line: 656, baseType: !5311, size: 1024, offset: 7232)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5280, size: 1024, elements: !1841)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5082, file: !170, line: 657, baseType: !5311, size: 1024, offset: 8256)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5082, file: !170, line: 659, baseType: !5314, size: 64, offset: 9280)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5082, file: !170, line: 661, baseType: !405, size: 16, offset: 9344)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5082, file: !170, line: 662, baseType: !1133, size: 8, offset: 9360)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5082, file: !170, line: 663, baseType: !1133, size: 8, offset: 9368)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5082, file: !170, line: 664, baseType: !1133, size: 8, offset: 9376)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5082, file: !170, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5082, file: !170, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5082, file: !170, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5082, file: !170, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5082, file: !170, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5082, file: !170, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5082, file: !170, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5082, file: !170, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5082, file: !170, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5082, file: !170, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5082, file: !170, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5082, file: !170, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5082, file: !170, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5082, file: !170, line: 679, baseType: !347, size: 32, offset: 9408)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5082, file: !170, line: 682, baseType: !363, size: 64, offset: 9472)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5082, file: !170, line: 683, baseType: !363, size: 64, offset: 9536)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5082, file: !170, line: 684, baseType: !363, size: 64, offset: 9600)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5082, file: !170, line: 686, baseType: !307, size: 128, offset: 9664)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5082, file: !170, line: 688, baseType: !347, size: 32, offset: 9792)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5082, file: !170, line: 690, baseType: !505, size: 32, offset: 9824)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5082, file: !170, line: 691, baseType: !900, size: 32, offset: 9856)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5082, file: !170, line: 693, baseType: !413, size: 64, offset: 9920)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5082, file: !170, line: 696, baseType: !413, size: 64, offset: 9984)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5082, file: !170, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5082, file: !170, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5082, file: !170, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5082, file: !170, line: 702, baseType: !5346, size: 64, offset: 10112)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !170, line: 28, flags: DIFlagFwdDecl)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5082, file: !170, line: 703, baseType: !347, size: 32, offset: 10176)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5082, file: !170, line: 704, baseType: !176, size: 32, offset: 10208)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5082, file: !170, line: 705, baseType: !5351, size: 64, offset: 10240)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !170, line: 502, size: 64, elements: !5352)
!5352 = !{!5353, !5354}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5351, file: !170, line: 506, baseType: !7, size: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5351, file: !170, line: 512, baseType: !347, size: 32, offset: 32)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5082, file: !170, line: 706, baseType: !5356, size: 128, offset: 10304)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !170, line: 522, size: 128, elements: !5357)
!5357 = !{!5358, !5359, !5360, !5361}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5356, file: !170, line: 529, baseType: !7, size: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5356, file: !170, line: 535, baseType: !7, size: 32, offset: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5356, file: !170, line: 545, baseType: !7, size: 32, offset: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5356, file: !170, line: 551, baseType: !347, size: 32, offset: 96)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5082, file: !170, line: 707, baseType: !5356, size: 128, offset: 10432)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5082, file: !170, line: 708, baseType: !7, size: 32, offset: 10560)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5082, file: !170, line: 710, baseType: !1012, size: 16, offset: 10592)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5082, file: !170, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !295, file: !170, line: 450, baseType: !5107, size: 64, offset: 768)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !295, file: !170, line: 452, baseType: !347, size: 32, offset: 832)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !295, file: !170, line: 459, baseType: !347, size: 32, offset: 864)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !295, file: !170, line: 460, baseType: !347, size: 32, offset: 896)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !295, file: !170, line: 462, baseType: !7, size: 32, offset: 928)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !292, file: !247, line: 87, baseType: !1705, size: 32, offset: 960)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !292, file: !247, line: 89, baseType: !282, size: 64, offset: 1024)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !292, file: !247, line: 90, baseType: !347, size: 32, offset: 1088)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !292, file: !247, line: 94, baseType: !5375, size: 192, offset: 1120)
!5375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !1405)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !292, file: !247, line: 96, baseType: !1755, size: 320, offset: 1344)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !292, file: !247, line: 97, baseType: !5378, size: 64, offset: 1664)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !170, line: 1561, size: 1472, elements: !5380)
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5431}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5379, file: !170, line: 1563, baseType: !1705, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5379, file: !170, line: 1564, baseType: !347, size: 32, offset: 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5379, file: !170, line: 1565, baseType: !437, size: 64, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5379, file: !170, line: 1566, baseType: !900, size: 32, offset: 128)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5379, file: !170, line: 1567, baseType: !900, size: 32, offset: 160)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5379, file: !170, line: 1570, baseType: !307, size: 128, offset: 192)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5379, file: !170, line: 1572, baseType: !307, size: 128, offset: 320)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5379, file: !170, line: 1573, baseType: !5389, size: 64, offset: 448)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !170, line: 1360, size: 320, elements: !5391)
!5391 = !{!5392, !5393, !5394, !5395, !5396}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5390, file: !170, line: 1361, baseType: !307, size: 128)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5390, file: !170, line: 1362, baseType: !1322, size: 128, offset: 128)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5390, file: !170, line: 1363, baseType: !321, offset: 256)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !5390, file: !170, line: 1364, baseType: !900, size: 32, offset: 256)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !5390, file: !170, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5379, file: !170, line: 1574, baseType: !5081, size: 64, offset: 512)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5379, file: !170, line: 1575, baseType: !5280, size: 64, offset: 576)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5379, file: !170, line: 1576, baseType: !7, size: 32, offset: 640)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5379, file: !170, line: 1577, baseType: !7, size: 32, offset: 672)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5379, file: !170, line: 1578, baseType: !347, size: 32, offset: 704)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5379, file: !170, line: 1579, baseType: !7, size: 32, offset: 736)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5379, file: !170, line: 1580, baseType: !437, size: 64, offset: 768)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5379, file: !170, line: 1581, baseType: !2019, size: 64, offset: 832)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5379, file: !170, line: 1582, baseType: !5406, size: 64, offset: 896)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5408, line: 11, size: 256, elements: !5409)
!5408 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!5409 = !{!5410, !5411, !5412, !5413, !5414}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5407, file: !5408, line: 12, baseType: !413, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5407, file: !5408, line: 13, baseType: !7, size: 32, offset: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5407, file: !5408, line: 14, baseType: !7, size: 32, offset: 96)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5407, file: !5408, line: 15, baseType: !2019, size: 64, offset: 128)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5407, file: !5408, line: 17, baseType: !7, size: 32, offset: 192)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5379, file: !170, line: 1583, baseType: !347, size: 32, offset: 960)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5379, file: !170, line: 1584, baseType: !347, size: 32, offset: 992)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5379, file: !170, line: 1585, baseType: !505, size: 32, offset: 1024)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5379, file: !170, line: 1586, baseType: !505, size: 32, offset: 1056)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5379, file: !170, line: 1587, baseType: !1088, size: 64, offset: 1088)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5379, file: !170, line: 1588, baseType: !2019, size: 64, offset: 1152)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5379, file: !170, line: 1589, baseType: !347, size: 32, offset: 1216)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5379, file: !170, line: 1590, baseType: !347, size: 32, offset: 1248)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5379, file: !170, line: 1591, baseType: !347, size: 32, offset: 1280)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5379, file: !170, line: 1593, baseType: !347, size: 32, offset: 1312)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5379, file: !170, line: 1594, baseType: !437, size: 64, offset: 1344)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5379, file: !170, line: 1595, baseType: !5427, size: 64, offset: 1408)
!5427 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !170, line: 1376, baseType: !5428)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{null, !5378}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5379, file: !170, line: 1596, baseType: !5432, offset: 1472)
!5432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5433, elements: !1224)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !170, line: 1351, size: 128, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5438}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5433, file: !170, line: 1352, baseType: !7, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5433, file: !170, line: 1353, baseType: !7, size: 32, offset: 32)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5433, file: !170, line: 1354, baseType: !7, size: 32, offset: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5433, file: !170, line: 1355, baseType: !347, size: 32, offset: 96)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !292, file: !247, line: 99, baseType: !1186, size: 256, offset: 1728)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !292, file: !247, line: 101, baseType: !1186, size: 256, offset: 1984)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !292, file: !247, line: 106, baseType: !5442, size: 64, offset: 2240)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5444)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !247, line: 249, size: 2880, elements: !5445)
!5445 = !{!5446, !5447, !5448, !5449, !5454, !5455, !5459, !5460, !5464, !5465, !5466, !5467, !5468, !5472, !5476, !5477, !5481, !5485, !5486, !5490, !5494, !5495, !5496, !5500, !5504, !5508, !5512, !5513, !5517, !5521, !5526, !5530, !5534, !5535, !5536, !5537, !5538, !5539, !5543, !5544, !5545, !5549, !5553, !5554, !5555}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !5444, file: !247, line: 250, baseType: !282, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !5444, file: !247, line: 251, baseType: !282, size: 64, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !5444, file: !247, line: 252, baseType: !410, size: 64, offset: 128)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5444, file: !247, line: 255, baseType: !5450, size: 64, offset: 192)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!5453, !291}
!5453 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5444, file: !247, line: 257, baseType: !347, size: 32, offset: 256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5444, file: !247, line: 271, baseType: !5456, size: 64, offset: 320)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!347, !291}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5444, file: !247, line: 272, baseType: !5456, size: 64, offset: 384)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !5444, file: !247, line: 278, baseType: !5461, size: 64, offset: 448)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!347, !291, !579}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !5444, file: !247, line: 281, baseType: !5461, size: 64, offset: 512)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5444, file: !247, line: 284, baseType: !288, size: 64, offset: 576)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5444, file: !247, line: 287, baseType: !288, size: 64, offset: 640)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !5444, file: !247, line: 290, baseType: !5456, size: 64, offset: 704)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !5444, file: !247, line: 293, baseType: !5469, size: 64, offset: 768)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!347, !291, !5378, !896}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !5444, file: !247, line: 295, baseType: !5473, size: 64, offset: 832)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!347, !291, !5378, !347}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !5444, file: !247, line: 307, baseType: !5469, size: 64, offset: 896)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !5444, file: !247, line: 309, baseType: !5478, size: 64, offset: 960)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !291, !5378}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !5444, file: !247, line: 312, baseType: !5482, size: 64, offset: 1024)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !291, !5280}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !5444, file: !247, line: 317, baseType: !5482, size: 64, offset: 1088)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !5444, file: !247, line: 321, baseType: !5487, size: 64, offset: 1152)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!347, !291, !363}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !5444, file: !247, line: 322, baseType: !5491, size: 64, offset: 1216)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!347, !291, !1012, !1012, !1012, !363, !1012}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !5444, file: !247, line: 325, baseType: !5456, size: 64, offset: 1280)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !5444, file: !247, line: 326, baseType: !5456, size: 64, offset: 1344)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !5444, file: !247, line: 327, baseType: !5497, size: 64, offset: 1408)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!347, !291, !7}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !5444, file: !247, line: 328, baseType: !5501, size: 64, offset: 1472)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!413, !291}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !5444, file: !247, line: 331, baseType: !5505, size: 64, offset: 1536)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{null, !291, !347}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !5444, file: !247, line: 333, baseType: !5509, size: 64, offset: 1600)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!347, !291, !347}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !5444, file: !247, line: 336, baseType: !5482, size: 64, offset: 1664)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !5444, file: !247, line: 341, baseType: !5514, size: 64, offset: 1728)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!347, !291, !5081}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !5444, file: !247, line: 343, baseType: !5518, size: 64, offset: 1792)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{null, !291, !5081}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !5444, file: !247, line: 345, baseType: !5522, size: 64, offset: 1856)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!347, !291, !5081, !5525, !7, !7, !896}
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !5444, file: !247, line: 351, baseType: !5527, size: 64, offset: 1920)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!347, !291, !5081, !5525, !7, !896}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !5444, file: !247, line: 366, baseType: !5531, size: 64, offset: 1984)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!347, !291, !5081, !5280}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !5444, file: !247, line: 369, baseType: !5531, size: 64, offset: 2048)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !5444, file: !247, line: 376, baseType: !5514, size: 64, offset: 2112)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !5444, file: !247, line: 384, baseType: !5518, size: 64, offset: 2176)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !5444, file: !247, line: 386, baseType: !5514, size: 64, offset: 2240)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !5444, file: !247, line: 388, baseType: !5514, size: 64, offset: 2304)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !5444, file: !247, line: 392, baseType: !5540, size: 64, offset: 2368)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!347, !291, !5081, !5092, !896}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !5444, file: !247, line: 394, baseType: !5514, size: 64, offset: 2432)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !5444, file: !247, line: 398, baseType: !5514, size: 64, offset: 2496)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !5444, file: !247, line: 399, baseType: !5546, size: 64, offset: 2560)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!347, !291, !5081, !347}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !5444, file: !247, line: 402, baseType: !5550, size: 64, offset: 2624)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!347, !291, !5081, !252}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !5444, file: !247, line: 407, baseType: !5550, size: 64, offset: 2688)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !5444, file: !247, line: 409, baseType: !5509, size: 64, offset: 2752)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !5444, file: !247, line: 411, baseType: !5556, size: 64, offset: 2816)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!347, !291, !347, !579}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !292, file: !247, line: 112, baseType: !5560, size: 64, offset: 2304)
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5561, size: 64)
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !182, line: 88, size: 2624, elements: !5562)
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5568, !5692, !5693, !5705, !5706, !5710, !5711, !5723, !5724, !5725, !5726, !5727, !5738, !5739, !5744, !5745, !5746, !5747, !5751, !5755, !5759, !5763, !5764, !5768, !5772, !5773}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5561, file: !182, line: 89, baseType: !298, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !5561, file: !182, line: 90, baseType: !282, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5561, file: !182, line: 91, baseType: !7, size: 32, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5561, file: !182, line: 93, baseType: !181, size: 32, offset: 160)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !5561, file: !182, line: 94, baseType: !187, size: 32, offset: 192)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !5561, file: !182, line: 96, baseType: !5569, size: 64, offset: 256)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg", file: !5571, line: 16, size: 704, elements: !5572)
!5571 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!5572 = !{!5573, !5574, !5669, !5670, !5671, !5674, !5675, !5679, !5683, !5687, !5691}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "default_a", scope: !5570, file: !5571, line: 17, baseType: !1133, size: 8)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5570, file: !5571, line: 19, baseType: !5575, size: 64, offset: 64)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !195, line: 138, size: 6144, elements: !5577)
!5577 = !{!5578, !5579, !5580, !5656, !5657, !5658, !5659, !5665}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5576, file: !195, line: 139, baseType: !299, size: 5568)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5576, file: !195, line: 140, baseType: !347, size: 32, offset: 5568)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5576, file: !195, line: 141, baseType: !5581, size: 64, offset: 5632)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5583)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !195, line: 72, size: 704, elements: !5584)
!5584 = !{!5585, !5589, !5590, !5591, !5592, !5596, !5645, !5649, !5650, !5651, !5655}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5583, file: !195, line: 73, baseType: !5586, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!347, !5575}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5583, file: !195, line: 74, baseType: !5586, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5583, file: !195, line: 75, baseType: !5586, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5583, file: !195, line: 76, baseType: !5586, size: 64, offset: 192)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5583, file: !195, line: 77, baseType: !5593, size: 64, offset: 256)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!347, !5575, !194, !347}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5583, file: !195, line: 89, baseType: !5597, size: 64, offset: 320)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!347, !5575, !5600}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !195, line: 55, size: 896, elements: !5602)
!5602 = !{!5603, !5632}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5601, file: !195, line: 56, baseType: !5604, size: 896)
!5604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5605, line: 15, size: 896, elements: !5606)
!5605 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5606 = !{!5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5604, file: !5605, line: 24, baseType: !7, size: 32)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5604, file: !5605, line: 36, baseType: !7, size: 32, offset: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5604, file: !5605, line: 47, baseType: !7, size: 32, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5604, file: !5605, line: 59, baseType: !7, size: 32, offset: 96)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5604, file: !5605, line: 71, baseType: !7, size: 32, offset: 128)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5604, file: !5605, line: 81, baseType: !7, size: 32, offset: 160)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5604, file: !5605, line: 92, baseType: !7, size: 32, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5604, file: !5605, line: 100, baseType: !7, size: 32, offset: 224)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5604, file: !5605, line: 110, baseType: !7, size: 32, offset: 256)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5604, file: !5605, line: 121, baseType: !7, size: 32, offset: 288)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5604, file: !5605, line: 131, baseType: !7, size: 32, offset: 320)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5604, file: !5605, line: 143, baseType: !7, size: 32, offset: 352)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5604, file: !5605, line: 155, baseType: !7, size: 32, offset: 384)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5604, file: !5605, line: 168, baseType: !7, size: 32, offset: 416)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5604, file: !5605, line: 180, baseType: !7, size: 32, offset: 448)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5604, file: !5605, line: 188, baseType: !7, size: 32, offset: 480)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5604, file: !5605, line: 198, baseType: !7, size: 32, offset: 512)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5604, file: !5605, line: 208, baseType: !7, size: 32, offset: 544)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5604, file: !5605, line: 219, baseType: !7, size: 32, offset: 576)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5604, file: !5605, line: 230, baseType: !7, size: 32, offset: 608)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5604, file: !5605, line: 242, baseType: !7, size: 32, offset: 640)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5604, file: !5605, line: 253, baseType: !7, size: 32, offset: 672)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5604, file: !5605, line: 260, baseType: !413, size: 64, offset: 704)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5604, file: !5605, line: 267, baseType: !413, size: 64, offset: 768)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5604, file: !5605, line: 275, baseType: !516, size: 8, offset: 832)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5601, file: !195, line: 57, baseType: !5633, size: 352)
!5633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5634, line: 17, size: 352, elements: !5635)
!5634 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5635 = !{!5636, !5637, !5638, !5640, !5641, !5642, !5643, !5644}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5633, file: !5634, line: 25, baseType: !7, size: 32)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5633, file: !5634, line: 35, baseType: !7, size: 32, offset: 32)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5633, file: !5634, line: 46, baseType: !5639, size: 128, offset: 64)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1400)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5633, file: !5634, line: 56, baseType: !5639, size: 128, offset: 192)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5633, file: !5634, line: 64, baseType: !1133, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5633, file: !5634, line: 73, baseType: !1133, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5633, file: !5634, line: 82, baseType: !1133, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5633, file: !5634, line: 92, baseType: !1133, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5583, file: !195, line: 107, baseType: !5646, size: 64, offset: 384)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!347, !5575, !194, !347, !5600}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5583, file: !195, line: 109, baseType: !5586, size: 64, offset: 448)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5583, file: !195, line: 110, baseType: !5586, size: 64, offset: 512)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5583, file: !195, line: 111, baseType: !5652, size: 64, offset: 576)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{null, !5575}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5583, file: !195, line: 112, baseType: !274, size: 64, offset: 640)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5576, file: !195, line: 142, baseType: !826, size: 192, offset: 5696)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5576, file: !195, line: 143, baseType: !347, size: 32, offset: 5888)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5576, file: !195, line: 144, baseType: !347, size: 32, offset: 5920)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5576, file: !195, line: 145, baseType: !5660, size: 96, offset: 5952)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !195, line: 121, size: 96, elements: !5661)
!5661 = !{!5662, !5663, !5664}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5660, file: !195, line: 122, baseType: !505, size: 32)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5660, file: !195, line: 123, baseType: !505, size: 32, offset: 32)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5660, file: !195, line: 124, baseType: !194, size: 32, offset: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5576, file: !195, line: 146, baseType: !5666, size: 64, offset: 6080)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5668, line: 155, flags: DIFlagFwdDecl)
!5668 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5570, file: !5571, line: 21, baseType: !5560, size: 64, offset: 128)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5570, file: !5571, line: 22, baseType: !5107, size: 64, offset: 192)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !5570, file: !5571, line: 23, baseType: !5672, size: 64, offset: 256)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget", file: !5571, line: 23, flags: DIFlagFwdDecl)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5570, file: !5571, line: 25, baseType: !217, size: 32, offset: 320)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "set_host", scope: !5570, file: !5571, line: 28, baseType: !5676, size: 64, offset: 384)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!347, !5569, !5107}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "set_peripheral", scope: !5570, file: !5571, line: 31, baseType: !5680, size: 64, offset: 448)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!347, !5569, !5672}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5570, file: !5571, line: 35, baseType: !5684, size: 64, offset: 512)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5685, size: 64)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!347, !5569, !579}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "start_srp", scope: !5570, file: !5571, line: 38, baseType: !5688, size: 64, offset: 576)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!347, !5569}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "start_hnp", scope: !5570, file: !5571, line: 41, baseType: !5688, size: 64, offset: 640)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "io_dev", scope: !5561, file: !182, line: 98, baseType: !298, size: 64, offset: 320)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "io_ops", scope: !5561, file: !182, line: 99, baseType: !5694, size: 64, offset: 384)
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_io_ops", file: !182, line: 72, size: 128, elements: !5696)
!5696 = !{!5697, !5701}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5695, file: !182, line: 73, baseType: !5698, size: 64)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{!347, !5560, !505}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5695, file: !182, line: 74, baseType: !5702, size: 64, offset: 64)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!347, !5560, !505, !505}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "io_priv", scope: !5561, file: !182, line: 100, baseType: !437, size: 64, offset: 448)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !5561, file: !182, line: 103, baseType: !5707, size: 64, offset: 512)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !5709, line: 166, flags: DIFlagFwdDecl)
!5709 = !DIFile(filename: "./include/linux/extcon.h", directory: "/home/lizy2001/genbc/linux")
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "id_edev", scope: !5561, file: !182, line: 104, baseType: !5707, size: 64, offset: 576)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_nb", scope: !5561, file: !182, line: 105, baseType: !5712, size: 192, offset: 640)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5713, line: 54, size: 192, elements: !5714)
!5713 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!5714 = !{!5715, !5721, !5722}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5712, file: !5713, line: 55, baseType: !5716, size: 64)
!5716 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5713, line: 51, baseType: !5717)
!5717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5718, size: 64)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{!347, !5720, !413, !437}
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5712, file: !5713, line: 56, baseType: !5720, size: 64, offset: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5712, file: !5713, line: 57, baseType: !347, size: 32, offset: 128)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "id_nb", scope: !5561, file: !182, line: 106, baseType: !5712, size: 192, offset: 832)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "type_nb", scope: !5561, file: !182, line: 107, baseType: !5712, size: 192, offset: 1024)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "chg_type", scope: !5561, file: !182, line: 110, baseType: !233, size: 32, offset: 1216)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "chg_state", scope: !5561, file: !182, line: 111, baseType: !241, size: 32, offset: 1248)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "chg_cur", scope: !5561, file: !182, line: 112, baseType: !5728, size: 256, offset: 1280)
!5728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_charger_current", file: !182, line: 77, size: 256, elements: !5729)
!5729 = !{!5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_min", scope: !5728, file: !182, line: 78, baseType: !7, size: 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_max", scope: !5728, file: !182, line: 79, baseType: !7, size: 32, offset: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_min", scope: !5728, file: !182, line: 80, baseType: !7, size: 32, offset: 64)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_max", scope: !5728, file: !182, line: 81, baseType: !7, size: 32, offset: 96)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_min", scope: !5728, file: !182, line: 82, baseType: !7, size: 32, offset: 128)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_max", scope: !5728, file: !182, line: 83, baseType: !7, size: 32, offset: 160)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "aca_min", scope: !5728, file: !182, line: 84, baseType: !7, size: 32, offset: 192)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "aca_max", scope: !5728, file: !182, line: 85, baseType: !7, size: 32, offset: 224)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "chg_work", scope: !5561, file: !182, line: 113, baseType: !1186, size: 256, offset: 1536)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !5561, file: !182, line: 116, baseType: !5740, size: 64, offset: 1792)
!5740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !5713, line: 60, size: 64, elements: !5741)
!5741 = !{!5742, !5743}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5740, file: !5713, line: 61, baseType: !321)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5740, file: !5713, line: 62, baseType: !5720, size: 64)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !5561, file: !182, line: 119, baseType: !1012, size: 16, offset: 1856)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "port_change", scope: !5561, file: !182, line: 120, baseType: !1012, size: 16, offset: 1872)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5561, file: !182, line: 123, baseType: !307, size: 128, offset: 1920)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5561, file: !182, line: 126, baseType: !5748, size: 64, offset: 2048)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!347, !5560}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5561, file: !182, line: 127, baseType: !5752, size: 64, offset: 2112)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{null, !5560}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5561, file: !182, line: 130, baseType: !5756, size: 64, offset: 2176)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!347, !5560, !347}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !5561, file: !182, line: 133, baseType: !5760, size: 64, offset: 2240)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!347, !5560, !7}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "set_suspend", scope: !5561, file: !182, line: 137, baseType: !5756, size: 64, offset: 2304)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup", scope: !5561, file: !182, line: 145, baseType: !5765, size: 64, offset: 2368)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!347, !5560, !579}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connect", scope: !5561, file: !182, line: 148, baseType: !5769, size: 64, offset: 2432)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!347, !5560, !160}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "notify_disconnect", scope: !5561, file: !182, line: 150, baseType: !5769, size: 64, offset: 2496)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "charger_detect", scope: !5561, file: !182, line: 157, baseType: !5774, size: 64, offset: 2560)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!233, !5560}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !292, file: !247, line: 113, baseType: !5778, size: 64, offset: 2368)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !247, line: 113, flags: DIFlagFwdDecl)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !247, line: 119, baseType: !413, size: 64, offset: 2432)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !292, file: !247, line: 151, baseType: !246, size: 32, offset: 2496)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !292, file: !247, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !292, file: !247, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !292, file: !247, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !292, file: !247, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !292, file: !247, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !292, file: !247, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !292, file: !247, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !292, file: !247, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !292, file: !247, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !292, file: !247, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !292, file: !247, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !292, file: !247, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !292, file: !247, line: 176, baseType: !7, size: 32, offset: 2560)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !292, file: !247, line: 177, baseType: !437, size: 64, offset: 2624)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !292, file: !247, line: 178, baseType: !5797, size: 64, offset: 2688)
!5797 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !308, line: 158, baseType: !3333)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !292, file: !247, line: 179, baseType: !5797, size: 64, offset: 2752)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !292, file: !247, line: 180, baseType: !7, size: 32, offset: 2816)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !292, file: !247, line: 182, baseType: !5801, size: 576, offset: 2880)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !247, line: 67, size: 576, elements: !5802)
!5802 = !{!5803, !5804, !5805, !5806, !5827}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !5801, file: !247, line: 68, baseType: !579, size: 8)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5801, file: !247, line: 69, baseType: !321, offset: 8)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5801, file: !247, line: 70, baseType: !307, size: 128, offset: 64)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5801, file: !247, line: 71, baseType: !5807, size: 320, offset: 192)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !5808, line: 609, size: 320, elements: !5809)
!5808 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!5809 = !{!5810, !5812, !5813, !5814, !5815, !5826}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5807, file: !5808, line: 611, baseType: !5811, size: 64)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5807, file: !5808, line: 612, baseType: !413, size: 64, offset: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5807, file: !5808, line: 613, baseType: !900, size: 32, offset: 128)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5807, file: !5808, line: 614, baseType: !579, size: 8, offset: 160)
!5815 = !DIDerivedType(tag: DW_TAG_member, scope: !5807, file: !5808, line: 615, baseType: !5816, size: 64, offset: 192)
!5816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5807, file: !5808, line: 615, size: 64, elements: !5817)
!5817 = !{!5818, !5822}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5816, file: !5808, line: 616, baseType: !5819, size: 64)
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5820, size: 64)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{null, !413}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5816, file: !5808, line: 617, baseType: !5823, size: 64)
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5824, size: 64)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{null, !5811}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5807, file: !5808, line: 619, baseType: !413, size: 64, offset: 256)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !5801, file: !247, line: 72, baseType: !5280, size: 64, offset: 512)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !292, file: !247, line: 183, baseType: !5801, size: 576, offset: 3456)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !292, file: !247, line: 196, baseType: !5830, size: 64, offset: 4032)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !292, file: !247, line: 197, baseType: !5830, size: 64, offset: 4096)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !292, file: !247, line: 198, baseType: !291, size: 64, offset: 4160)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !292, file: !247, line: 199, baseType: !291, size: 64, offset: 4224)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !292, file: !247, line: 203, baseType: !5835, size: 256, offset: 4288)
!5835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5836, size: 256, elements: !1400)
!5836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5837, size: 64)
!5837 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !5838, line: 21, flags: DIFlagFwdDecl)
!5838 = !DIFile(filename: "./include/linux/dmapool.h", directory: "/home/lizy2001/genbc/linux")
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !247, line: 205, baseType: !347, size: 32, offset: 4544)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !292, file: !247, line: 220, baseType: !5841, size: 64, offset: 4608)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !247, line: 220, flags: DIFlagFwdDecl)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !292, file: !247, line: 231, baseType: !3536, align: 64, offset: 4672)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "init_quirk", scope: !278, file: !279, line: 17, baseType: !5456, size: 64, offset: 192)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_quirk", scope: !278, file: !279, line: 18, baseType: !5456, size: 64, offset: 256)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "resume_quirk", scope: !278, file: !279, line: 19, baseType: !5456, size: 64, offset: 320)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_hcd", file: !259, line: 1734, size: 50560, elements: !5849)
!5849 = !{!5850, !5851, !5852, !5864, !5892, !5911, !5919, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5942, !5943, !5946, !5953, !6010, !6011, !6012, !6013, !6014, !6015, !6033, !6034, !6047, !6054, !6055, !6056, !6057, !6140, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6165, !6166, !6167, !6168, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "main_hcd", scope: !5848, file: !259, line: 1735, baseType: !291, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !5848, file: !259, line: 1736, baseType: !291, size: 64, offset: 64)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "cap_regs", scope: !5848, file: !259, line: 1738, baseType: !5853, size: 64, offset: 128)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_cap_regs", file: !259, line: 50, size: 256, elements: !5855)
!5855 = !{!5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "hc_capbase", scope: !5854, file: !259, line: 51, baseType: !5138, size: 32)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params1", scope: !5854, file: !259, line: 52, baseType: !5138, size: 32, offset: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params2", scope: !5854, file: !259, line: 53, baseType: !5138, size: 32, offset: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params3", scope: !5854, file: !259, line: 54, baseType: !5138, size: 32, offset: 96)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params", scope: !5854, file: !259, line: 55, baseType: !5138, size: 32, offset: 128)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "db_off", scope: !5854, file: !259, line: 56, baseType: !5138, size: 32, offset: 160)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "run_regs_off", scope: !5854, file: !259, line: 57, baseType: !5138, size: 32, offset: 192)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params2", scope: !5854, file: !259, line: 58, baseType: !5138, size: 32, offset: 224)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "op_regs", scope: !5848, file: !259, line: 1739, baseType: !5865, size: 64, offset: 192)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_op_regs", file: !259, line: 176, size: 40832, elements: !5867)
!5867 = !{!5868, !5869, !5870, !5871, !5872, !5873, !5874, !5876, !5878, !5879, !5880, !5884, !5885, !5886, !5887, !5888}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5866, file: !259, line: 177, baseType: !5138, size: 32)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5866, file: !259, line: 178, baseType: !5138, size: 32, offset: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !5866, file: !259, line: 179, baseType: !5138, size: 32, offset: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5866, file: !259, line: 180, baseType: !5138, size: 32, offset: 96)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5866, file: !259, line: 181, baseType: !5138, size: 32, offset: 128)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_notification", scope: !5866, file: !259, line: 182, baseType: !5138, size: 32, offset: 160)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring", scope: !5866, file: !259, line: 183, baseType: !5875, size: 64, offset: 192)
!5875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !4081, line: 33, baseType: !512)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5866, file: !259, line: 185, baseType: !5877, size: 128, offset: 256)
!5877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 128, elements: !1400)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa_ptr", scope: !5866, file: !259, line: 186, baseType: !5875, size: 64, offset: 384)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "config_reg", scope: !5866, file: !259, line: 187, baseType: !5138, size: 32, offset: 448)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5866, file: !259, line: 189, baseType: !5881, size: 7712, offset: 480)
!5881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 7712, elements: !5882)
!5882 = !{!5883}
!5883 = !DISubrange(count: 241)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "port_status_base", scope: !5866, file: !259, line: 191, baseType: !5138, size: 32, offset: 8192)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "port_power_base", scope: !5866, file: !259, line: 192, baseType: !5138, size: 32, offset: 8224)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "port_link_base", scope: !5866, file: !259, line: 193, baseType: !5138, size: 32, offset: 8256)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !5866, file: !259, line: 194, baseType: !5138, size: 32, offset: 8288)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !5866, file: !259, line: 196, baseType: !5889, size: 32512, offset: 8320)
!5889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 32512, elements: !5890)
!5890 = !{!5891}
!5891 = !DISubrange(count: 1016)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "run_regs", scope: !5848, file: !259, line: 1740, baseType: !5893, size: 64, offset: 256)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_run_regs", file: !259, line: 530, size: 33024, elements: !5895)
!5895 = !{!5896, !5897, !5901}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "microframe_index", scope: !5894, file: !259, line: 531, baseType: !5138, size: 32)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !5894, file: !259, line: 532, baseType: !5898, size: 224, offset: 32)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 224, elements: !5899)
!5899 = !{!5900}
!5900 = !DISubrange(count: 7)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "ir_set", scope: !5894, file: !259, line: 533, baseType: !5902, size: 32768, offset: 256)
!5902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5903, size: 32768, elements: !4618)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_intr_reg", file: !259, line: 480, size: 256, elements: !5904)
!5904 = !{!5905, !5906, !5907, !5908, !5909, !5910}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !5903, file: !259, line: 481, baseType: !5138, size: 32)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "irq_control", scope: !5903, file: !259, line: 482, baseType: !5138, size: 32, offset: 32)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !5903, file: !259, line: 483, baseType: !5138, size: 32, offset: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !5903, file: !259, line: 484, baseType: !5138, size: 32, offset: 96)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "erst_base", scope: !5903, file: !259, line: 485, baseType: !5875, size: 64, offset: 128)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dequeue", scope: !5903, file: !259, line: 486, baseType: !5875, size: 64, offset: 192)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "dba", scope: !5848, file: !259, line: 1741, baseType: !5912, size: 64, offset: 320)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_doorbell_array", file: !259, line: 545, size: 8192, elements: !5914)
!5914 = !{!5915}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell", scope: !5913, file: !259, line: 546, baseType: !5916, size: 8192)
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 8192, elements: !5917)
!5917 = !{!5918}
!5918 = !DISubrange(count: 256)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "ir_set", scope: !5848, file: !259, line: 1743, baseType: !5920, size: 64, offset: 384)
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params1", scope: !5848, file: !259, line: 1746, baseType: !507, size: 32, offset: 448)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params2", scope: !5848, file: !259, line: 1747, baseType: !507, size: 32, offset: 480)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params3", scope: !5848, file: !259, line: 1748, baseType: !507, size: 32, offset: 512)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params", scope: !5848, file: !259, line: 1749, baseType: !507, size: 32, offset: 544)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params2", scope: !5848, file: !259, line: 1750, baseType: !507, size: 32, offset: 576)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5848, file: !259, line: 1752, baseType: !321, offset: 608)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "sbrn", scope: !5848, file: !259, line: 1755, baseType: !1133, size: 8, offset: 608)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "hci_version", scope: !5848, file: !259, line: 1756, baseType: !1012, size: 16, offset: 624)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "max_slots", scope: !5848, file: !259, line: 1757, baseType: !1133, size: 8, offset: 640)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "max_interrupters", scope: !5848, file: !259, line: 1758, baseType: !1133, size: 8, offset: 648)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "max_ports", scope: !5848, file: !259, line: 1759, baseType: !1133, size: 8, offset: 656)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "isoc_threshold", scope: !5848, file: !259, line: 1760, baseType: !1133, size: 8, offset: 664)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "imod_interval", scope: !5848, file: !259, line: 1762, baseType: !505, size: 32, offset: 672)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "event_ring_max", scope: !5848, file: !259, line: 1763, baseType: !347, size: 32, offset: 704)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !5848, file: !259, line: 1765, baseType: !347, size: 32, offset: 736)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !5848, file: !259, line: 1767, baseType: !347, size: 32, offset: 768)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "msix_count", scope: !5848, file: !259, line: 1769, baseType: !347, size: 32, offset: 800)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !5848, file: !259, line: 1771, baseType: !5939, size: 64, offset: 832)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !5941, line: 17, flags: DIFlagFwdDecl)
!5941 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_clk", scope: !5848, file: !259, line: 1772, baseType: !5939, size: 64, offset: 896)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5848, file: !259, line: 1774, baseType: !5944, size: 64, offset: 960)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !259, line: 1774, flags: DIFlagFwdDecl)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa", scope: !5848, file: !259, line: 1776, baseType: !5947, size: 64, offset: 1024)
!5947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5948, size: 64)
!5948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_device_context_array", file: !259, line: 1057, size: 16448, elements: !5949)
!5949 = !{!5950, !5952}
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_context_ptrs", scope: !5948, file: !259, line: 1059, baseType: !5951, size: 16384)
!5951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5875, size: 16384, elements: !5917)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5948, file: !259, line: 1061, baseType: !2019, size: 64, offset: 16384)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring", scope: !5848, file: !259, line: 1777, baseType: !5954, size: 64, offset: 1088)
!5954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5955, size: 64)
!5955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_ring", file: !259, line: 1594, size: 896, elements: !5956)
!5956 = !{!5957, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008}
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "first_seg", scope: !5955, file: !259, line: 1595, baseType: !5958, size: 64)
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5959, size: 64)
!5959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_segment", file: !259, line: 1522, size: 384, elements: !5960)
!5960 = !{!5961, !5987, !5988, !5989, !5990, !5991, !5992}
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "trbs", scope: !5959, file: !259, line: 1523, baseType: !5962, size: 64)
!5962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5963, size: 64)
!5963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "xhci_trb", file: !259, line: 1337, size: 128, elements: !5964)
!5964 = !{!5965, !5971, !5977, !5983}
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5963, file: !259, line: 1338, baseType: !5966, size: 128)
!5966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_link_trb", file: !259, line: 1205, size: 128, elements: !5967)
!5967 = !{!5968, !5969, !5970}
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "segment_ptr", scope: !5966, file: !259, line: 1207, baseType: !5875, size: 64)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "intr_target", scope: !5966, file: !259, line: 1208, baseType: !5138, size: 32, offset: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5966, file: !259, line: 1209, baseType: !5138, size: 32, offset: 96)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "trans_event", scope: !5963, file: !259, line: 1339, baseType: !5972, size: 128)
!5972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_transfer_event", file: !259, line: 1070, size: 128, elements: !5973)
!5973 = !{!5974, !5975, !5976}
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5972, file: !259, line: 1072, baseType: !5875, size: 64)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_len", scope: !5972, file: !259, line: 1073, baseType: !5138, size: 32, offset: 64)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5972, file: !259, line: 1075, baseType: !5138, size: 32, offset: 96)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "event_cmd", scope: !5963, file: !259, line: 1340, baseType: !5978, size: 128)
!5978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_event_cmd", file: !259, line: 1216, size: 128, elements: !5979)
!5979 = !{!5980, !5981, !5982}
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_trb", scope: !5978, file: !259, line: 1218, baseType: !5875, size: 64)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5978, file: !259, line: 1219, baseType: !5138, size: 32, offset: 64)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5978, file: !259, line: 1220, baseType: !5138, size: 32, offset: 96)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !5963, file: !259, line: 1341, baseType: !5984, size: 128)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_generic_trb", file: !259, line: 1333, size: 128, elements: !5985)
!5985 = !{!5986}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5984, file: !259, line: 1334, baseType: !5877, size: 128)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5959, file: !259, line: 1525, baseType: !5958, size: 64, offset: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5959, file: !259, line: 1526, baseType: !2019, size: 64, offset: 128)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_dma", scope: !5959, file: !259, line: 1528, baseType: !2019, size: 64, offset: 192)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_buf", scope: !5959, file: !259, line: 1529, baseType: !437, size: 64, offset: 256)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_offs", scope: !5959, file: !259, line: 1530, baseType: !7, size: 32, offset: 320)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_len", scope: !5959, file: !259, line: 1531, baseType: !7, size: 32, offset: 352)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "last_seg", scope: !5955, file: !259, line: 1596, baseType: !5958, size: 64, offset: 64)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "enqueue", scope: !5955, file: !259, line: 1597, baseType: !5962, size: 64, offset: 128)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "enq_seg", scope: !5955, file: !259, line: 1598, baseType: !5958, size: 64, offset: 192)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !5955, file: !259, line: 1599, baseType: !5962, size: 64, offset: 256)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "deq_seg", scope: !5955, file: !259, line: 1600, baseType: !5958, size: 64, offset: 320)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "td_list", scope: !5955, file: !259, line: 1601, baseType: !307, size: 128, offset: 384)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_state", scope: !5955, file: !259, line: 1607, baseType: !505, size: 32, offset: 512)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "err_count", scope: !5955, file: !259, line: 1608, baseType: !7, size: 32, offset: 544)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5955, file: !259, line: 1609, baseType: !7, size: 32, offset: 576)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "num_segs", scope: !5955, file: !259, line: 1610, baseType: !7, size: 32, offset: 608)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs_free", scope: !5955, file: !259, line: 1611, baseType: !7, size: 32, offset: 640)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs_free_temp", scope: !5955, file: !259, line: 1612, baseType: !7, size: 32, offset: 672)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_buf_len", scope: !5955, file: !259, line: 1613, baseType: !7, size: 32, offset: 704)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5955, file: !259, line: 1614, baseType: !258, size: 32, offset: 736)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "last_td_was_short", scope: !5955, file: !259, line: 1615, baseType: !579, size: 8, offset: 768)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "trb_address_map", scope: !5955, file: !259, line: 1616, baseType: !6009, size: 64, offset: 832)
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_state", scope: !5848, file: !259, line: 1778, baseType: !7, size: 32, offset: 1152)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_list", scope: !5848, file: !259, line: 1782, baseType: !307, size: 128, offset: 1216)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_reserved_trbs", scope: !5848, file: !259, line: 1783, baseType: !7, size: 32, offset: 1344)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_timer", scope: !5848, file: !259, line: 1784, baseType: !1751, size: 704, offset: 1408)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_stop_completion", scope: !5848, file: !259, line: 1785, baseType: !2577, size: 192, offset: 2112)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "current_cmd", scope: !5848, file: !259, line: 1786, baseType: !6016, size: 64, offset: 2304)
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_command", file: !259, line: 801, size: 384, elements: !6018)
!6018 = !{!6019, !6028, !6029, !6030, !6031, !6032}
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "in_ctx", scope: !6017, file: !259, line: 803, baseType: !6020, size: 64)
!6020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6021, size: 64)
!6021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_container_ctx", file: !259, line: 594, size: 192, elements: !6022)
!6022 = !{!6023, !6024, !6025, !6027}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6021, file: !259, line: 595, baseType: !7, size: 32)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6021, file: !259, line: 599, baseType: !347, size: 32, offset: 32)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !6021, file: !259, line: 601, baseType: !6026, size: 64, offset: 64)
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !6021, file: !259, line: 602, baseType: !2019, size: 64, offset: 128)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6017, file: !259, line: 804, baseType: !505, size: 32, offset: 64)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !6017, file: !259, line: 805, baseType: !347, size: 32, offset: 96)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !6017, file: !259, line: 809, baseType: !2576, size: 64, offset: 128)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "command_trb", scope: !6017, file: !259, line: 810, baseType: !5962, size: 64, offset: 192)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_list", scope: !6017, file: !259, line: 811, baseType: !307, size: 128, offset: 256)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "event_ring", scope: !5848, file: !259, line: 1787, baseType: !5954, size: 64, offset: 2368)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "erst", scope: !5848, file: !259, line: 1788, baseType: !6035, size: 256, offset: 2432)
!6035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_erst", file: !259, line: 1627, size: 256, elements: !6036)
!6036 = !{!6037, !6044, !6045, !6046}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6035, file: !259, line: 1628, baseType: !6038, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_erst_entry", file: !259, line: 1619, size: 128, elements: !6040)
!6040 = !{!6041, !6042, !6043}
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "seg_addr", scope: !6039, file: !259, line: 1621, baseType: !5875, size: 64)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "seg_size", scope: !6039, file: !259, line: 1622, baseType: !5138, size: 32, offset: 64)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !6039, file: !259, line: 1624, baseType: !5138, size: 32, offset: 96)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !6035, file: !259, line: 1629, baseType: !7, size: 32, offset: 64)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dma_addr", scope: !6035, file: !259, line: 1631, baseType: !2019, size: 64, offset: 128)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !6035, file: !259, line: 1633, baseType: !7, size: 32, offset: 192)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !5848, file: !259, line: 1790, baseType: !6048, size: 64, offset: 2688)
!6048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6049, size: 64)
!6049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_scratchpad", file: !259, line: 1636, size: 192, elements: !6050)
!6050 = !{!6051, !6052, !6053}
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "sp_array", scope: !6049, file: !259, line: 1637, baseType: !4996, size: 64)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "sp_dma", scope: !6049, file: !259, line: 1638, baseType: !2019, size: 64, offset: 64)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "sp_buffers", scope: !6049, file: !259, line: 1639, baseType: !974, size: 64, offset: 128)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_failed_devs", scope: !5848, file: !259, line: 1792, baseType: !307, size: 128, offset: 2752)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5848, file: !259, line: 1796, baseType: !826, size: 192, offset: 2880)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_command", scope: !5848, file: !259, line: 1798, baseType: !6016, size: 64, offset: 3072)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !5848, file: !259, line: 1800, baseType: !6058, size: 16384, offset: 3136)
!6058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6059, size: 16384, elements: !5917)
!6059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6060, size: 64)
!6060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_virt_device", file: !259, line: 997, size: 42240, elements: !6061)
!6061 = !{!6062, !6063, !6064, !6065, !6110, !6111, !6112, !6128, !6137, !6138, !6139}
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !6060, file: !259, line: 998, baseType: !5081, size: 64)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "out_ctx", scope: !6060, file: !259, line: 1007, baseType: !6020, size: 64, offset: 64)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "in_ctx", scope: !6060, file: !259, line: 1009, baseType: !6020, size: 64, offset: 128)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !6060, file: !259, line: 1010, baseType: !6066, size: 41664, offset: 192)
!6066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6067, size: 41664, elements: !6108)
!6067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_virt_ep", file: !259, line: 920, size: 1344, elements: !6068)
!6068 = !{!6069, !6070, !6088, !6089, !6090, !6091, !6092, !6093, !6094, !6095, !6096, !6105, !6106, !6107}
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "ring", scope: !6067, file: !259, line: 921, baseType: !5954, size: 64)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "stream_info", scope: !6067, file: !259, line: 923, baseType: !6071, size: 64, offset: 64)
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_stream_info", file: !259, line: 841, size: 512, elements: !6073)
!6073 = !{!6074, !6076, !6077, !6084, !6085, !6086, !6087}
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "stream_rings", scope: !6072, file: !259, line: 842, baseType: !6075, size: 64)
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !6072, file: !259, line: 844, baseType: !7, size: 32, offset: 64)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "stream_ctx_array", scope: !6072, file: !259, line: 848, baseType: !6078, size: 64, offset: 128)
!6078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6079, size: 64)
!6079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_stream_ctx", file: !259, line: 819, size: 128, elements: !6080)
!6080 = !{!6081, !6082}
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "stream_ring", scope: !6079, file: !259, line: 821, baseType: !5875, size: 64)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6079, file: !259, line: 823, baseType: !6083, size: 64, offset: 64)
!6083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5138, size: 64, elements: !1492)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "num_stream_ctxs", scope: !6072, file: !259, line: 849, baseType: !7, size: 32, offset: 192)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_array_dma", scope: !6072, file: !259, line: 850, baseType: !2019, size: 64, offset: 256)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "trb_address_map", scope: !6072, file: !259, line: 852, baseType: !891, size: 128, offset: 320)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams_command", scope: !6072, file: !259, line: 853, baseType: !6016, size: 64, offset: 448)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "new_ring", scope: !6067, file: !259, line: 927, baseType: !5954, size: 64, offset: 128)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "ep_state", scope: !6067, file: !259, line: 928, baseType: !7, size: 32, offset: 192)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_td_list", scope: !6067, file: !259, line: 942, baseType: !307, size: 128, offset: 256)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "stop_cmd_timer", scope: !6067, file: !259, line: 944, baseType: !1755, size: 320, offset: 384)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "xhci", scope: !6067, file: !259, line: 945, baseType: !5847, size: 64, offset: 704)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "queued_deq_seg", scope: !6067, file: !259, line: 950, baseType: !5958, size: 64, offset: 768)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "queued_deq_ptr", scope: !6067, file: !259, line: 951, baseType: !5962, size: 64, offset: 832)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !6067, file: !259, line: 959, baseType: !579, size: 8, offset: 896)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "bw_info", scope: !6067, file: !259, line: 961, baseType: !6097, size: 192, offset: 928)
!6097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_bw_info", file: !259, line: 865, size: 192, elements: !6098)
!6098 = !{!6099, !6100, !6101, !6102, !6103, !6104}
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "ep_interval", scope: !6097, file: !259, line: 867, baseType: !7, size: 32)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !6097, file: !259, line: 869, baseType: !7, size: 32, offset: 32)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "num_packets", scope: !6097, file: !259, line: 870, baseType: !7, size: 32, offset: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !6097, file: !259, line: 871, baseType: !7, size: 32, offset: 96)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "max_esit_payload", scope: !6097, file: !259, line: 872, baseType: !7, size: 32, offset: 128)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6097, file: !259, line: 873, baseType: !7, size: 32, offset: 160)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "bw_endpoint_list", scope: !6067, file: !259, line: 962, baseType: !307, size: 128, offset: 1152)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame_id", scope: !6067, file: !259, line: 964, baseType: !347, size: 32, offset: 1280)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "use_extended_tbc", scope: !6067, file: !259, line: 966, baseType: !579, size: 8, offset: 1312)
!6108 = !{!6109}
!6109 = !DISubrange(count: 31)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "fake_port", scope: !6060, file: !259, line: 1011, baseType: !1133, size: 8, offset: 41856)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "real_port", scope: !6060, file: !259, line: 1012, baseType: !1133, size: 8, offset: 41864)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !6060, file: !259, line: 1013, baseType: !6113, size: 64, offset: 41920)
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_interval_bw_table", file: !259, line: 987, size: 5312, elements: !6115)
!6115 = !{!6116, !6117, !6125, !6126, !6127}
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "interval0_esit_payload", scope: !6114, file: !259, line: 988, baseType: !7, size: 32)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "interval_bw", scope: !6114, file: !259, line: 989, baseType: !6118, size: 5120, offset: 64)
!6118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6119, size: 5120, elements: !1841)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_interval_bw", file: !259, line: 975, size: 320, elements: !6120)
!6120 = !{!6121, !6122, !6123}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "num_packets", scope: !6119, file: !259, line: 976, baseType: !7, size: 32)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "endpoints", scope: !6119, file: !259, line: 980, baseType: !307, size: 128, offset: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "overhead", scope: !6119, file: !259, line: 982, baseType: !6124, size: 96, offset: 192)
!6124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !364)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "bw_used", scope: !6114, file: !259, line: 991, baseType: !7, size: 32, offset: 5184)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "ss_bw_in", scope: !6114, file: !259, line: 992, baseType: !7, size: 32, offset: 5216)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "ss_bw_out", scope: !6114, file: !259, line: 993, baseType: !7, size: 32, offset: 5248)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "tt_info", scope: !6060, file: !259, line: 1014, baseType: !6129, size: 64, offset: 41984)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_tt_bw_info", file: !259, line: 1044, size: 5568, elements: !6131)
!6131 = !{!6132, !6133, !6134, !6135, !6136}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "tt_list", scope: !6130, file: !259, line: 1045, baseType: !307, size: 128)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !6130, file: !259, line: 1046, baseType: !347, size: 32, offset: 128)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !6130, file: !259, line: 1047, baseType: !347, size: 32, offset: 160)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !6130, file: !259, line: 1048, baseType: !6114, size: 5312, offset: 192)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "active_eps", scope: !6130, file: !259, line: 1049, baseType: !347, size: 32, offset: 5504)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6060, file: !259, line: 1021, baseType: !413, size: 64, offset: 42048)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "current_mel", scope: !6060, file: !259, line: 1025, baseType: !1012, size: 16, offset: 42112)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_private", scope: !6060, file: !259, line: 1027, baseType: !437, size: 64, offset: 42176)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "rh_bw", scope: !5848, file: !259, line: 1802, baseType: !6141, size: 64, offset: 19520)
!6141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6142, size: 64)
!6142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_root_port_bw_info", file: !259, line: 1038, size: 5504, elements: !6143)
!6143 = !{!6144, !6145, !6146}
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "tts", scope: !6142, file: !259, line: 1039, baseType: !307, size: 128)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_tts", scope: !6142, file: !259, line: 1040, baseType: !7, size: 32, offset: 128)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !6142, file: !259, line: 1041, baseType: !6114, size: 5312, offset: 192)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "device_pool", scope: !5848, file: !259, line: 1805, baseType: !5836, size: 64, offset: 19584)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "segment_pool", scope: !5848, file: !259, line: 1806, baseType: !5836, size: 64, offset: 19648)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "small_streams_pool", scope: !5848, file: !259, line: 1807, baseType: !5836, size: 64, offset: 19712)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "medium_streams_pool", scope: !5848, file: !259, line: 1808, baseType: !5836, size: 64, offset: 19776)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "xhc_state", scope: !5848, file: !259, line: 1811, baseType: !7, size: 32, offset: 19840)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5848, file: !259, line: 1813, baseType: !505, size: 32, offset: 19872)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !5848, file: !259, line: 1814, baseType: !6154, size: 384, offset: 19904)
!6154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s3_save", file: !259, line: 1664, size: 384, elements: !6155)
!6155 = !{!6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6164}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !6154, file: !259, line: 1665, baseType: !505, size: 32)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "dev_nt", scope: !6154, file: !259, line: 1666, baseType: !505, size: 32, offset: 32)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa_ptr", scope: !6154, file: !259, line: 1667, baseType: !511, size: 64, offset: 64)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "config_reg", scope: !6154, file: !259, line: 1668, baseType: !505, size: 32, offset: 128)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !6154, file: !259, line: 1669, baseType: !505, size: 32, offset: 160)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_control", scope: !6154, file: !259, line: 1670, baseType: !505, size: 32, offset: 192)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !6154, file: !259, line: 1671, baseType: !505, size: 32, offset: 224)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "erst_base", scope: !6154, file: !259, line: 1672, baseType: !511, size: 64, offset: 256)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dequeue", scope: !6154, file: !259, line: 1673, baseType: !511, size: 64, offset: 320)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5848, file: !259, line: 1830, baseType: !286, size: 64, offset: 20288)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_eps", scope: !5848, file: !259, line: 1882, baseType: !7, size: 32, offset: 20352)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "limit_active_eps", scope: !5848, file: !259, line: 1883, baseType: !7, size: 32, offset: 20384)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ports", scope: !5848, file: !259, line: 1884, baseType: !6169, size: 64, offset: 20416)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_port", file: !259, line: 1714, size: 256, elements: !6171)
!6171 = !{!6172, !6174, !6175, !6176, !6201}
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6170, file: !259, line: 1715, baseType: !6173, size: 64)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "hw_portnum", scope: !6170, file: !259, line: 1716, baseType: !347, size: 32, offset: 64)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_portnum", scope: !6170, file: !259, line: 1717, baseType: !347, size: 32, offset: 96)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "rhub", scope: !6170, file: !259, line: 1718, baseType: !6177, size: 64, offset: 128)
!6177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6178, size: 64)
!6178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_hub", file: !259, line: 1722, size: 14528, elements: !6179)
!6179 = !{!6180, !6182, !6183, !6184, !6199, !6200}
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !6178, file: !259, line: 1723, baseType: !6181, size: 64)
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6169, size: 64)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "num_ports", scope: !6178, file: !259, line: 1724, baseType: !7, size: 32, offset: 64)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "hcd", scope: !6178, file: !259, line: 1725, baseType: !291, size: 64, offset: 128)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "bus_state", scope: !6178, file: !259, line: 1727, baseType: !6185, size: 14272, offset: 192)
!6185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_bus_state", file: !259, line: 1682, size: 14272, elements: !6186)
!6186 = !{!6187, !6188, !6189, !6190, !6191, !6192, !6194, !6195, !6196, !6198}
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspended", scope: !6185, file: !259, line: 1683, baseType: !413, size: 64)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "next_statechange", scope: !6185, file: !259, line: 1684, baseType: !413, size: 64, offset: 64)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "port_c_suspend", scope: !6185, file: !259, line: 1688, baseType: !505, size: 32, offset: 128)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_ports", scope: !6185, file: !259, line: 1689, baseType: !505, size: 32, offset: 160)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "port_remote_wakeup", scope: !6185, file: !259, line: 1690, baseType: !505, size: 32, offset: 192)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "resume_done", scope: !6185, file: !259, line: 1691, baseType: !6193, size: 1984, offset: 256)
!6193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1984, elements: !6108)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !6185, file: !259, line: 1693, baseType: !413, size: 64, offset: 2240)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "rexit_ports", scope: !6185, file: !259, line: 1695, baseType: !413, size: 64, offset: 2304)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "rexit_done", scope: !6185, file: !259, line: 1696, baseType: !6197, size: 5952, offset: 2368)
!6197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2577, size: 5952, elements: !6108)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "u3exit_done", scope: !6185, file: !259, line: 1697, baseType: !6197, size: 5952, offset: 8320)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "maj_rev", scope: !6178, file: !259, line: 1729, baseType: !1133, size: 8, offset: 14464)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "min_rev", scope: !6178, file: !259, line: 1730, baseType: !1133, size: 8, offset: 14472)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "port_cap", scope: !6170, file: !259, line: 1719, baseType: !6202, size: 64, offset: 192)
!6202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6203, size: 64)
!6203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_port_cap", file: !259, line: 1706, size: 128, elements: !6204)
!6204 = !{!6205, !6206, !6207, !6208, !6209}
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !6203, file: !259, line: 1707, baseType: !2497, size: 64)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "psi_count", scope: !6203, file: !259, line: 1708, baseType: !1133, size: 8, offset: 64)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "psi_uid_count", scope: !6203, file: !259, line: 1709, baseType: !1133, size: 8, offset: 72)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "maj_rev", scope: !6203, file: !259, line: 1710, baseType: !1133, size: 8, offset: 80)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "min_rev", scope: !6203, file: !259, line: 1711, baseType: !1133, size: 8, offset: 88)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_rhub", scope: !5848, file: !259, line: 1885, baseType: !6178, size: 14528, offset: 20480)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_rhub", scope: !5848, file: !259, line: 1886, baseType: !6178, size: 14528, offset: 35008)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "hw_lpm_support", scope: !5848, file: !259, line: 1888, baseType: !7, size: 1, offset: 49536, flags: DIFlagBitField, extraData: i64 49536)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "broken_suspend", scope: !5848, file: !259, line: 1890, baseType: !7, size: 1, offset: 49537, flags: DIFlagBitField, extraData: i64 49536)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "ext_caps", scope: !5848, file: !259, line: 1892, baseType: !2497, size: 64, offset: 49600)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "num_ext_caps", scope: !5848, file: !259, line: 1893, baseType: !7, size: 32, offset: 49664)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "port_caps", scope: !5848, file: !259, line: 1895, baseType: !6202, size: 64, offset: 49728)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "num_port_caps", scope: !5848, file: !259, line: 1896, baseType: !7, size: 32, offset: 49792)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "comp_mode_recovery_timer", scope: !5848, file: !259, line: 1898, baseType: !1755, size: 320, offset: 49856)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "port_status_u0", scope: !5848, file: !259, line: 1899, baseType: !505, size: 32, offset: 50176)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode", scope: !5848, file: !259, line: 1900, baseType: !1012, size: 16, offset: 50208)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !5848, file: !259, line: 1904, baseType: !472, size: 64, offset: 50240)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_slots", scope: !5848, file: !259, line: 1905, baseType: !472, size: 64, offset: 50304)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "regset_list", scope: !5848, file: !259, line: 1906, baseType: !307, size: 128, offset: 50368)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "dbc", scope: !5848, file: !259, line: 1908, baseType: !437, size: 64, offset: 50496)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5848, file: !259, line: 1910, baseType: !3536, align: 64, offset: 50560)
!6226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6227, size: 64)
!6227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6228)
!6228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !347)
!6229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6230, size: 64)
!6230 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !505)
!6231 = !{!0, !6232, !6234, !6239, !6244, !6249, !6254, !6256, !6264, !6323, !6328, !6331, !6333, !6335, !6337, !6339, !6342}
!6232 = !DIGlobalVariableExpression(var: !6233, expr: !DIExpression())
!6233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xhci_plat_init308", scope: !2, file: !3, line: 506, type: !437, isLocal: true, isDefinition: true)
!6234 = !DIGlobalVariableExpression(var: !6235, expr: !DIExpression())
!6235 = distinct !DIGlobalVariable(name: "__exitcall_xhci_plat_exit", scope: !2, file: !3, line: 512, type: !6236, isLocal: true, isDefinition: true)
!6236 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !6237, line: 117, baseType: !6238)
!6237 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!6238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!6239 = !DIGlobalVariableExpression(var: !6240, expr: !DIExpression())
!6240 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description309", scope: !2, file: !3, line: 514, type: !6241, isLocal: true, isDefinition: true, align: 8)
!6241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 504, elements: !6242)
!6242 = !{!6243}
!6243 = !DISubrange(count: 63)
!6244 = !DIGlobalVariableExpression(var: !6245, expr: !DIExpression())
!6245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file310", scope: !2, file: !3, line: 515, type: !6246, isLocal: true, isDefinition: true, align: 8)
!6246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 400, elements: !6247)
!6247 = !{!6248}
!6248 = !DISubrange(count: 50)
!6249 = !DIGlobalVariableExpression(var: !6250, expr: !DIExpression())
!6250 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license311", scope: !2, file: !3, line: 515, type: !6251, isLocal: true, isDefinition: true, align: 8)
!6251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 208, elements: !6252)
!6252 = !{!6253}
!6253 = !DISubrange(count: 26)
!6254 = !DIGlobalVariableExpression(var: !6255, expr: !DIExpression())
!6255 = distinct !DIGlobalVariable(name: "xhci_plat_hc_driver", scope: !2, file: !3, line: 28, type: !5444, isLocal: true, isDefinition: true)
!6256 = !DIGlobalVariableExpression(var: !6257, expr: !DIExpression())
!6257 = distinct !DIGlobalVariable(name: "xhci_plat_overrides", scope: !2, file: !3, line: 33, type: !6258, isLocal: true, isDefinition: true)
!6258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6259)
!6259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_driver_overrides", file: !259, line: 1914, size: 192, elements: !6260)
!6260 = !{!6261, !6262, !6263}
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_priv_size", scope: !6259, file: !259, line: 1915, baseType: !410, size: 64)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6259, file: !259, line: 1916, baseType: !5456, size: 64, offset: 64)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6259, file: !259, line: 1917, baseType: !5456, size: 64, offset: 128)
!6264 = !DIGlobalVariableExpression(var: !6265, expr: !DIExpression())
!6265 = distinct !DIGlobalVariable(name: "usb_xhci_driver", scope: !2, file: !3, line: 488, type: !6266, isLocal: true, isDefinition: true)
!6266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !6267, line: 200, size: 1600, elements: !6268)
!6267 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!6268 = !{!6269, !6310, !6311, !6315, !6319, !6320, !6321, !6322}
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !6266, file: !6267, line: 201, baseType: !6270, size: 64)
!6270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6271, size: 64)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{!347, !6273}
!6273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6274, size: 64)
!6274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !6267, line: 22, size: 6208, elements: !6275)
!6275 = !{!6276, !6277, !6278, !6279, !6280, !6281, !6282, !6283, !6296, !6304, !6305, !6308}
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6274, file: !6267, line: 23, baseType: !282, size: 64)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6274, file: !6267, line: 24, baseType: !347, size: 32, offset: 64)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !6274, file: !6267, line: 25, baseType: !579, size: 8, offset: 96)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6274, file: !6267, line: 26, baseType: !299, size: 5568, offset: 128)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !6274, file: !6267, line: 27, baseType: !511, size: 64, offset: 5696)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !6274, file: !6267, line: 28, baseType: !5005, size: 128, offset: 5760)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !6274, file: !6267, line: 29, baseType: !505, size: 32, offset: 5888)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !6274, file: !6267, line: 30, baseType: !6284, size: 64, offset: 5952)
!6284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6285, size: 64)
!6285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !6286, line: 20, size: 512, elements: !6287)
!6286 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!6287 = !{!6288, !6289, !6290, !6291, !6292, !6293, !6294, !6295}
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6285, file: !6286, line: 21, baseType: !5797, size: 64)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6285, file: !6286, line: 22, baseType: !5797, size: 64, offset: 64)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6285, file: !6286, line: 23, baseType: !282, size: 64, offset: 128)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6285, file: !6286, line: 24, baseType: !413, size: 64, offset: 192)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !6285, file: !6286, line: 25, baseType: !413, size: 64, offset: 256)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6285, file: !6286, line: 26, baseType: !6284, size: 64, offset: 320)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !6285, file: !6286, line: 26, baseType: !6284, size: 64, offset: 384)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !6285, file: !6286, line: 26, baseType: !6284, size: 64, offset: 448)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !6274, file: !6267, line: 32, baseType: !6297, size: 64, offset: 6016)
!6297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6298, size: 64)
!6298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6299)
!6299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4612, line: 586, size: 256, elements: !6300)
!6300 = !{!6301, !6303}
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6299, file: !4612, line: 587, baseType: !6302, size: 160)
!6302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 160, elements: !3409)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6299, file: !4612, line: 588, baseType: !4631, size: 64, offset: 192)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !6274, file: !6267, line: 33, baseType: !363, size: 64, offset: 6080)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !6274, file: !6267, line: 36, baseType: !6306, size: 64, offset: 6144)
!6306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6307, size: 64)
!6307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !6267, line: 18, flags: DIFlagFwdDecl)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !6274, file: !6267, line: 39, baseType: !6309, offset: 6208)
!6309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !5012, line: 8, elements: !335)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !6266, file: !6267, line: 202, baseType: !6270, size: 64, offset: 64)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !6266, file: !6267, line: 203, baseType: !6312, size: 64, offset: 128)
!6312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6313, size: 64)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{null, !6273}
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !6266, file: !6267, line: 204, baseType: !6316, size: 64, offset: 192)
!6316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6317, size: 64)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{!347, !6273, !4642}
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !6266, file: !6267, line: 205, baseType: !6270, size: 64, offset: 256)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !6266, file: !6267, line: 206, baseType: !4600, size: 1152, offset: 320)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !6266, file: !6267, line: 207, baseType: !6297, size: 64, offset: 1472)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !6266, file: !6267, line: 208, baseType: !579, size: 8, offset: 1536)
!6323 = !DIGlobalVariableExpression(var: !6324, expr: !DIExpression())
!6324 = distinct !DIGlobalVariable(name: "usb_xhci_of_match", scope: !2, file: !3, line: 129, type: !6325, isLocal: true, isDefinition: true)
!6325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4610, size: 24000, elements: !6326)
!6326 = !{!6327}
!6327 = !DISubrange(count: 15)
!6328 = !DIGlobalVariableExpression(var: !6329, expr: !DIExpression())
!6329 = distinct !DIGlobalVariable(name: "xhci_plat_marvell_armada", scope: !2, file: !3, line: 109, type: !6330, isLocal: true, isDefinition: true)
!6330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!6331 = !DIGlobalVariableExpression(var: !6332, expr: !DIExpression())
!6332 = distinct !DIGlobalVariable(name: "xhci_plat_marvell_armada3700", scope: !2, file: !3, line: 113, type: !6330, isLocal: true, isDefinition: true)
!6333 = !DIGlobalVariableExpression(var: !6334, expr: !DIExpression())
!6334 = distinct !DIGlobalVariable(name: "xhci_plat_renesas_rcar_gen2", scope: !2, file: !3, line: 117, type: !6330, isLocal: true, isDefinition: true)
!6335 = !DIGlobalVariableExpression(var: !6336, expr: !DIExpression())
!6336 = distinct !DIGlobalVariable(name: "xhci_plat_renesas_rcar_gen3", scope: !2, file: !3, line: 121, type: !6330, isLocal: true, isDefinition: true)
!6337 = !DIGlobalVariableExpression(var: !6338, expr: !DIExpression())
!6338 = distinct !DIGlobalVariable(name: "xhci_plat_brcm", scope: !2, file: !3, line: 125, type: !6330, isLocal: true, isDefinition: true)
!6339 = !DIGlobalVariableExpression(var: !6340, expr: !DIExpression())
!6340 = distinct !DIGlobalVariable(name: "usb_xhci_acpi_match", scope: !2, file: !3, line: 480, type: !6341, isLocal: true, isDefinition: true)
!6341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4623, size: 512, elements: !1492)
!6342 = !DIGlobalVariableExpression(var: !6343, expr: !DIExpression())
!6343 = distinct !DIGlobalVariable(name: "xhci_plat_pm_ops", scope: !2, file: !3, line: 471, type: !4555, isLocal: true, isDefinition: true)
!6344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 304, elements: !6345)
!6345 = !{!6346}
!6346 = !DISubrange(count: 38)
!6347 = !{i32 7, !"Dwarf Version", i32 4}
!6348 = !{i32 2, !"Debug Info Version", i32 3}
!6349 = !{i32 1, !"wchar_size", i32 2}
!6350 = !{i32 1, !"Code Model", i32 2}
!6351 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!6352 = distinct !DISubprogram(name: "xhci_plat_init", scope: !3, file: !3, line: 501, type: !6353, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{!347}
!6355 = !DILocation(line: 503, column: 2, scope: !6352)
!6356 = !DILocation(line: 504, column: 9, scope: !6352)
!6357 = !DILocation(line: 504, column: 2, scope: !6352)
!6358 = distinct !DISubprogram(name: "xhci_plat_exit", scope: !3, file: !3, line: 508, type: !3123, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6359 = !DILocation(line: 510, column: 2, scope: !6358)
!6360 = !DILocation(line: 511, column: 1, scope: !6358)
!6361 = distinct !DISubprogram(name: "xhci_plat_setup", scope: !3, file: !3, line: 90, type: !5457, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6362 = !DILocalVariable(name: "hcd", arg: 1, scope: !6361, file: !3, line: 90, type: !291)
!6363 = !DILocation(line: 90, column: 44, scope: !6361)
!6364 = !DILocalVariable(name: "ret", scope: !6361, file: !3, line: 92, type: !347)
!6365 = !DILocation(line: 92, column: 6, scope: !6361)
!6366 = !DILocation(line: 95, column: 29, scope: !6361)
!6367 = !DILocation(line: 95, column: 8, scope: !6361)
!6368 = !DILocation(line: 95, column: 6, scope: !6361)
!6369 = !DILocation(line: 96, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 96, column: 6)
!6371 = !DILocation(line: 96, column: 6, scope: !6361)
!6372 = !DILocation(line: 97, column: 10, scope: !6370)
!6373 = !DILocation(line: 97, column: 3, scope: !6370)
!6374 = !DILocation(line: 99, column: 24, scope: !6361)
!6375 = !DILocation(line: 99, column: 9, scope: !6361)
!6376 = !DILocation(line: 99, column: 2, scope: !6361)
!6377 = !DILocation(line: 100, column: 1, scope: !6361)
!6378 = distinct !DISubprogram(name: "xhci_plat_start", scope: !3, file: !3, line: 102, type: !5457, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6379 = !DILocalVariable(name: "hcd", arg: 1, scope: !6378, file: !3, line: 102, type: !291)
!6380 = !DILocation(line: 102, column: 44, scope: !6378)
!6381 = !DILocation(line: 104, column: 23, scope: !6378)
!6382 = !DILocation(line: 104, column: 2, scope: !6378)
!6383 = !DILocation(line: 105, column: 18, scope: !6378)
!6384 = !DILocation(line: 105, column: 9, scope: !6378)
!6385 = !DILocation(line: 105, column: 2, scope: !6378)
!6386 = distinct !DISubprogram(name: "xhci_priv_init_quirk", scope: !3, file: !3, line: 47, type: !5457, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6387 = !DILocalVariable(name: "hcd", arg: 1, scope: !6386, file: !3, line: 47, type: !291)
!6388 = !DILocation(line: 47, column: 49, scope: !6386)
!6389 = !DILocalVariable(name: "priv", scope: !6386, file: !3, line: 49, type: !277)
!6390 = !DILocation(line: 49, column: 25, scope: !6386)
!6391 = !DILocation(line: 49, column: 32, scope: !6386)
!6392 = !DILocation(line: 51, column: 7, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 51, column: 6)
!6394 = !DILocation(line: 51, column: 13, scope: !6393)
!6395 = !DILocation(line: 51, column: 6, scope: !6386)
!6396 = !DILocation(line: 52, column: 3, scope: !6393)
!6397 = !DILocation(line: 54, column: 9, scope: !6386)
!6398 = !DILocation(line: 54, column: 15, scope: !6386)
!6399 = !DILocation(line: 54, column: 26, scope: !6386)
!6400 = !DILocation(line: 54, column: 2, scope: !6386)
!6401 = !DILocation(line: 55, column: 1, scope: !6386)
!6402 = distinct !DISubprogram(name: "xhci_plat_quirks", scope: !3, file: !3, line: 77, type: !6403, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{null, !298, !5847}
!6405 = !DILocalVariable(name: "dev", arg: 1, scope: !6402, file: !3, line: 77, type: !298)
!6406 = !DILocation(line: 77, column: 45, scope: !6402)
!6407 = !DILocalVariable(name: "xhci", arg: 2, scope: !6402, file: !3, line: 77, type: !5847)
!6408 = !DILocation(line: 77, column: 67, scope: !6402)
!6409 = !DILocalVariable(name: "priv", scope: !6402, file: !3, line: 79, type: !277)
!6410 = !DILocation(line: 79, column: 25, scope: !6402)
!6411 = !DILocation(line: 79, column: 32, scope: !6402)
!6412 = !DILocation(line: 86, column: 30, scope: !6402)
!6413 = !DILocation(line: 86, column: 36, scope: !6402)
!6414 = !DILocation(line: 86, column: 28, scope: !6402)
!6415 = !DILocation(line: 86, column: 2, scope: !6402)
!6416 = !DILocation(line: 86, column: 8, scope: !6402)
!6417 = !DILocation(line: 86, column: 15, scope: !6402)
!6418 = !DILocation(line: 87, column: 1, scope: !6402)
!6419 = distinct !DISubprogram(name: "hcd_to_xhci", scope: !259, file: !259, line: 1923, type: !6420, scopeLine: 1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!5847, !291}
!6422 = !DILocalVariable(name: "hcd", arg: 1, scope: !6419, file: !259, line: 1923, type: !291)
!6423 = !DILocation(line: 1923, column: 60, scope: !6419)
!6424 = !DILocalVariable(name: "primary_hcd", scope: !6419, file: !259, line: 1925, type: !291)
!6425 = !DILocation(line: 1925, column: 18, scope: !6419)
!6426 = !DILocation(line: 1927, column: 29, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6419, file: !259, line: 1927, column: 6)
!6428 = !DILocation(line: 1927, column: 6, scope: !6427)
!6429 = !DILocation(line: 1927, column: 6, scope: !6419)
!6430 = !DILocation(line: 1928, column: 17, scope: !6427)
!6431 = !DILocation(line: 1928, column: 15, scope: !6427)
!6432 = !DILocation(line: 1928, column: 3, scope: !6427)
!6433 = !DILocation(line: 1930, column: 17, scope: !6427)
!6434 = !DILocation(line: 1930, column: 22, scope: !6427)
!6435 = !DILocation(line: 1930, column: 15, scope: !6427)
!6436 = !DILocation(line: 1932, column: 30, scope: !6419)
!6437 = !DILocation(line: 1932, column: 43, scope: !6419)
!6438 = !DILocation(line: 1932, column: 29, scope: !6419)
!6439 = !DILocation(line: 1932, column: 9, scope: !6419)
!6440 = !DILocation(line: 1932, column: 2, scope: !6419)
!6441 = distinct !DISubprogram(name: "xhci_priv_plat_start", scope: !3, file: !3, line: 39, type: !289, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6442 = !DILocalVariable(name: "hcd", arg: 1, scope: !6441, file: !3, line: 39, type: !291)
!6443 = !DILocation(line: 39, column: 50, scope: !6441)
!6444 = !DILocalVariable(name: "priv", scope: !6441, file: !3, line: 41, type: !277)
!6445 = !DILocation(line: 41, column: 25, scope: !6441)
!6446 = !DILocation(line: 41, column: 32, scope: !6441)
!6447 = !DILocation(line: 43, column: 6, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 43, column: 6)
!6449 = !DILocation(line: 43, column: 12, scope: !6448)
!6450 = !DILocation(line: 43, column: 6, scope: !6441)
!6451 = !DILocation(line: 44, column: 3, scope: !6448)
!6452 = !DILocation(line: 44, column: 9, scope: !6448)
!6453 = !DILocation(line: 44, column: 20, scope: !6448)
!6454 = !DILocation(line: 45, column: 1, scope: !6441)
!6455 = distinct !DISubprogram(name: "xhci_plat_probe", scope: !3, file: !3, line: 176, type: !6271, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6456 = !DILocalVariable(name: "pdev", arg: 1, scope: !6455, file: !3, line: 176, type: !6273)
!6457 = !DILocation(line: 176, column: 52, scope: !6455)
!6458 = !DILocalVariable(name: "priv_match", scope: !6455, file: !3, line: 178, type: !6459)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6330, size: 64)
!6460 = !DILocation(line: 178, column: 31, scope: !6455)
!6461 = !DILocalVariable(name: "driver", scope: !6455, file: !3, line: 179, type: !5442)
!6462 = !DILocation(line: 179, column: 26, scope: !6455)
!6463 = !DILocalVariable(name: "sysdev", scope: !6455, file: !3, line: 180, type: !298)
!6464 = !DILocation(line: 180, column: 18, scope: !6455)
!6465 = !DILocalVariable(name: "tmpdev", scope: !6455, file: !3, line: 180, type: !298)
!6466 = !DILocation(line: 180, column: 27, scope: !6455)
!6467 = !DILocalVariable(name: "xhci", scope: !6455, file: !3, line: 181, type: !5847)
!6468 = !DILocation(line: 181, column: 20, scope: !6455)
!6469 = !DILocalVariable(name: "res", scope: !6455, file: !3, line: 182, type: !6284)
!6470 = !DILocation(line: 182, column: 27, scope: !6455)
!6471 = !DILocalVariable(name: "hcd", scope: !6455, file: !3, line: 183, type: !291)
!6472 = !DILocation(line: 183, column: 19, scope: !6455)
!6473 = !DILocalVariable(name: "ret", scope: !6455, file: !3, line: 184, type: !347)
!6474 = !DILocation(line: 184, column: 8, scope: !6455)
!6475 = !DILocalVariable(name: "irq", scope: !6455, file: !3, line: 185, type: !347)
!6476 = !DILocation(line: 185, column: 8, scope: !6455)
!6477 = !DILocalVariable(name: "priv", scope: !6455, file: !3, line: 186, type: !277)
!6478 = !DILocation(line: 186, column: 25, scope: !6455)
!6479 = !DILocation(line: 189, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 189, column: 6)
!6481 = !DILocation(line: 189, column: 6, scope: !6455)
!6482 = !DILocation(line: 190, column: 3, scope: !6480)
!6483 = !DILocation(line: 192, column: 9, scope: !6455)
!6484 = !DILocation(line: 194, column: 25, scope: !6455)
!6485 = !DILocation(line: 194, column: 8, scope: !6455)
!6486 = !DILocation(line: 194, column: 6, scope: !6455)
!6487 = !DILocation(line: 195, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 195, column: 6)
!6489 = !DILocation(line: 195, column: 10, scope: !6488)
!6490 = !DILocation(line: 195, column: 6, scope: !6455)
!6491 = !DILocation(line: 196, column: 10, scope: !6488)
!6492 = !DILocation(line: 196, column: 3, scope: !6488)
!6493 = !DILocation(line: 205, column: 17, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 205, column: 2)
!6495 = !DILocation(line: 205, column: 23, scope: !6494)
!6496 = !DILocation(line: 205, column: 14, scope: !6494)
!6497 = !DILocation(line: 205, column: 7, scope: !6494)
!6498 = !DILocation(line: 205, column: 28, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 205, column: 2)
!6500 = !DILocation(line: 205, column: 2, scope: !6494)
!6501 = !DILocation(line: 206, column: 18, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 206, column: 7)
!6503 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 205, column: 61)
!6504 = !DILocation(line: 206, column: 26, scope: !6502)
!6505 = !DILocation(line: 206, column: 7, scope: !6502)
!6506 = !DILocation(line: 206, column: 34, scope: !6502)
!6507 = !DILocation(line: 207, column: 24, scope: !6502)
!6508 = !DILocation(line: 207, column: 32, scope: !6502)
!6509 = !DILocation(line: 207, column: 4, scope: !6502)
!6510 = !DILocation(line: 206, column: 7, scope: !6503)
!6511 = !DILocation(line: 208, column: 4, scope: !6502)
!6512 = !DILocation(line: 210, column: 12, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 210, column: 12)
!6514 = !DILocation(line: 210, column: 20, scope: !6513)
!6515 = !DILocation(line: 210, column: 24, scope: !6513)
!6516 = !DILocation(line: 210, column: 12, scope: !6502)
!6517 = !DILocation(line: 211, column: 4, scope: !6513)
!6518 = !DILocation(line: 213, column: 2, scope: !6503)
!6519 = !DILocation(line: 205, column: 45, scope: !6499)
!6520 = !DILocation(line: 205, column: 53, scope: !6499)
!6521 = !DILocation(line: 205, column: 43, scope: !6499)
!6522 = !DILocation(line: 205, column: 2, scope: !6499)
!6523 = distinct !{!6523, !6500, !6524}
!6524 = !DILocation(line: 213, column: 2, scope: !6494)
!6525 = !DILocation(line: 215, column: 7, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 215, column: 6)
!6527 = !DILocation(line: 215, column: 6, scope: !6455)
!6528 = !DILocation(line: 216, column: 13, scope: !6526)
!6529 = !DILocation(line: 216, column: 19, scope: !6526)
!6530 = !DILocation(line: 216, column: 10, scope: !6526)
!6531 = !DILocation(line: 216, column: 3, scope: !6526)
!6532 = !DILocalVariable(name: "__ret_warn_on", scope: !6533, file: !3, line: 219, type: !347)
!6533 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 219, column: 6)
!6534 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 219, column: 6)
!6535 = !DILocation(line: 219, column: 6, scope: !6533)
!6536 = !DILocation(line: 219, column: 6, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 219, column: 6)
!6538 = !DILocation(line: 219, column: 6, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 219, column: 6)
!6540 = !DILocation(line: 219, column: 6, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 219, column: 6)
!6542 = !DILocation(line: 219, column: 6, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 219, column: 6)
!6544 = !{i32 -2139550767, i32 -2139550738, i32 -2139550692, i32 -2139550634, i32 -2139550580, i32 -2139550526, i32 -2139550471, i32 -2139550440}
!6545 = !DILocation(line: 219, column: 6, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 219, column: 6)
!6547 = !{i32 -2139550030, i32 -2139550023, i32 -2139549971, i32 -2139549940, i32 -2139549910}
!6548 = !DILocation(line: 219, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 219, column: 6)
!6550 = !DILocation(line: 219, column: 6, scope: !6534)
!6551 = !DILocation(line: 219, column: 6, scope: !6455)
!6552 = !DILocation(line: 221, column: 38, scope: !6534)
!6553 = !DILocation(line: 221, column: 9, scope: !6534)
!6554 = !DILocation(line: 221, column: 7, scope: !6534)
!6555 = !DILocation(line: 221, column: 3, scope: !6534)
!6556 = !DILocation(line: 224, column: 35, scope: !6534)
!6557 = !DILocation(line: 224, column: 9, scope: !6534)
!6558 = !DILocation(line: 224, column: 7, scope: !6534)
!6559 = !DILocation(line: 227, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 227, column: 6)
!6561 = !DILocation(line: 227, column: 6, scope: !6455)
!6562 = !DILocation(line: 228, column: 35, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 227, column: 11)
!6564 = !DILocation(line: 228, column: 9, scope: !6563)
!6565 = !DILocation(line: 228, column: 7, scope: !6563)
!6566 = !DILocation(line: 229, column: 7, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 229, column: 7)
!6568 = !DILocation(line: 229, column: 7, scope: !6563)
!6569 = !DILocation(line: 230, column: 11, scope: !6567)
!6570 = !DILocation(line: 230, column: 4, scope: !6567)
!6571 = !DILocation(line: 231, column: 2, scope: !6563)
!6572 = !DILocation(line: 233, column: 25, scope: !6455)
!6573 = !DILocation(line: 233, column: 31, scope: !6455)
!6574 = !DILocation(line: 233, column: 2, scope: !6455)
!6575 = !DILocation(line: 234, column: 21, scope: !6455)
!6576 = !DILocation(line: 234, column: 27, scope: !6455)
!6577 = !DILocation(line: 234, column: 2, scope: !6455)
!6578 = !DILocation(line: 235, column: 27, scope: !6455)
!6579 = !DILocation(line: 235, column: 33, scope: !6455)
!6580 = !DILocation(line: 235, column: 2, scope: !6455)
!6581 = !DILocation(line: 237, column: 25, scope: !6455)
!6582 = !DILocation(line: 237, column: 33, scope: !6455)
!6583 = !DILocation(line: 237, column: 42, scope: !6455)
!6584 = !DILocation(line: 237, column: 48, scope: !6455)
!6585 = !DILocation(line: 238, column: 21, scope: !6455)
!6586 = !DILocation(line: 238, column: 27, scope: !6455)
!6587 = !DILocation(line: 238, column: 11, scope: !6455)
!6588 = !DILocation(line: 237, column: 8, scope: !6455)
!6589 = !DILocation(line: 237, column: 6, scope: !6455)
!6590 = !DILocation(line: 239, column: 7, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 239, column: 6)
!6592 = !DILocation(line: 239, column: 6, scope: !6455)
!6593 = !DILocation(line: 240, column: 7, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 239, column: 12)
!6595 = !DILocation(line: 241, column: 3, scope: !6594)
!6596 = !DILocation(line: 244, column: 53, scope: !6455)
!6597 = !DILocation(line: 244, column: 14, scope: !6455)
!6598 = !DILocation(line: 244, column: 2, scope: !6455)
!6599 = !DILocation(line: 244, column: 7, scope: !6455)
!6600 = !DILocation(line: 244, column: 12, scope: !6455)
!6601 = !DILocation(line: 245, column: 13, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 245, column: 6)
!6603 = !DILocation(line: 245, column: 18, scope: !6602)
!6604 = !DILocation(line: 245, column: 6, scope: !6602)
!6605 = !DILocation(line: 245, column: 6, scope: !6455)
!6606 = !DILocation(line: 246, column: 17, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 245, column: 25)
!6608 = !DILocation(line: 246, column: 22, scope: !6607)
!6609 = !DILocation(line: 246, column: 9, scope: !6607)
!6610 = !DILocation(line: 246, column: 7, scope: !6607)
!6611 = !DILocation(line: 247, column: 3, scope: !6607)
!6612 = !DILocation(line: 250, column: 20, scope: !6455)
!6613 = !DILocation(line: 250, column: 25, scope: !6455)
!6614 = !DILocation(line: 250, column: 2, scope: !6455)
!6615 = !DILocation(line: 250, column: 7, scope: !6455)
!6616 = !DILocation(line: 250, column: 18, scope: !6455)
!6617 = !DILocation(line: 251, column: 32, scope: !6455)
!6618 = !DILocation(line: 251, column: 18, scope: !6455)
!6619 = !DILocation(line: 251, column: 2, scope: !6455)
!6620 = !DILocation(line: 251, column: 7, scope: !6455)
!6621 = !DILocation(line: 251, column: 16, scope: !6455)
!6622 = !DILocation(line: 253, column: 21, scope: !6455)
!6623 = !DILocation(line: 253, column: 9, scope: !6455)
!6624 = !DILocation(line: 253, column: 7, scope: !6455)
!6625 = !DILocation(line: 259, column: 41, scope: !6455)
!6626 = !DILocation(line: 259, column: 47, scope: !6455)
!6627 = !DILocation(line: 259, column: 18, scope: !6455)
!6628 = !DILocation(line: 259, column: 2, scope: !6455)
!6629 = !DILocation(line: 259, column: 8, scope: !6455)
!6630 = !DILocation(line: 259, column: 16, scope: !6455)
!6631 = !DILocation(line: 260, column: 13, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 260, column: 6)
!6633 = !DILocation(line: 260, column: 19, scope: !6632)
!6634 = !DILocation(line: 260, column: 6, scope: !6632)
!6635 = !DILocation(line: 260, column: 6, scope: !6455)
!6636 = !DILocation(line: 261, column: 17, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 260, column: 29)
!6638 = !DILocation(line: 261, column: 23, scope: !6637)
!6639 = !DILocation(line: 261, column: 9, scope: !6637)
!6640 = !DILocation(line: 261, column: 7, scope: !6637)
!6641 = !DILocation(line: 262, column: 3, scope: !6637)
!6642 = !DILocation(line: 265, column: 27, scope: !6455)
!6643 = !DILocation(line: 265, column: 33, scope: !6455)
!6644 = !DILocation(line: 265, column: 8, scope: !6455)
!6645 = !DILocation(line: 265, column: 6, scope: !6455)
!6646 = !DILocation(line: 266, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 266, column: 6)
!6648 = !DILocation(line: 266, column: 6, scope: !6455)
!6649 = !DILocation(line: 267, column: 3, scope: !6647)
!6650 = !DILocation(line: 269, column: 37, scope: !6455)
!6651 = !DILocation(line: 269, column: 43, scope: !6455)
!6652 = !DILocation(line: 269, column: 14, scope: !6455)
!6653 = !DILocation(line: 269, column: 2, scope: !6455)
!6654 = !DILocation(line: 269, column: 8, scope: !6455)
!6655 = !DILocation(line: 269, column: 12, scope: !6455)
!6656 = !DILocation(line: 270, column: 13, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 270, column: 6)
!6658 = !DILocation(line: 270, column: 19, scope: !6657)
!6659 = !DILocation(line: 270, column: 6, scope: !6657)
!6660 = !DILocation(line: 270, column: 6, scope: !6455)
!6661 = !DILocation(line: 271, column: 17, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 270, column: 25)
!6663 = !DILocation(line: 271, column: 23, scope: !6662)
!6664 = !DILocation(line: 271, column: 9, scope: !6662)
!6665 = !DILocation(line: 271, column: 7, scope: !6662)
!6666 = !DILocation(line: 272, column: 3, scope: !6662)
!6667 = !DILocation(line: 275, column: 27, scope: !6455)
!6668 = !DILocation(line: 275, column: 33, scope: !6455)
!6669 = !DILocation(line: 275, column: 8, scope: !6455)
!6670 = !DILocation(line: 275, column: 6, scope: !6455)
!6671 = !DILocation(line: 276, column: 6, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 276, column: 6)
!6673 = !DILocation(line: 276, column: 6, scope: !6455)
!6674 = !DILocation(line: 277, column: 3, scope: !6672)
!6675 = !DILocation(line: 279, column: 6, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 279, column: 6)
!6677 = !DILocation(line: 279, column: 12, scope: !6676)
!6678 = !DILocation(line: 279, column: 16, scope: !6676)
!6679 = !DILocation(line: 279, column: 6, scope: !6455)
!6680 = !DILocation(line: 280, column: 42, scope: !6676)
!6681 = !DILocation(line: 280, column: 48, scope: !6676)
!6682 = !DILocation(line: 280, column: 16, scope: !6676)
!6683 = !DILocation(line: 280, column: 14, scope: !6676)
!6684 = !DILocation(line: 280, column: 3, scope: !6676)
!6685 = !DILocation(line: 282, column: 34, scope: !6676)
!6686 = !DILocation(line: 282, column: 40, scope: !6676)
!6687 = !DILocation(line: 282, column: 16, scope: !6676)
!6688 = !DILocation(line: 282, column: 14, scope: !6676)
!6689 = !DILocation(line: 284, column: 6, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 284, column: 6)
!6691 = !DILocation(line: 284, column: 6, scope: !6455)
!6692 = !DILocation(line: 285, column: 10, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 284, column: 18)
!6694 = !DILocation(line: 285, column: 8, scope: !6693)
!6695 = !DILocation(line: 287, column: 4, scope: !6693)
!6696 = !DILocation(line: 287, column: 12, scope: !6693)
!6697 = !DILocation(line: 287, column: 11, scope: !6693)
!6698 = !DILocation(line: 288, column: 2, scope: !6693)
!6699 = !DILocation(line: 290, column: 29, scope: !6455)
!6700 = !DILocation(line: 290, column: 35, scope: !6455)
!6701 = !DILocation(line: 290, column: 2, scope: !6455)
!6702 = !DILocation(line: 292, column: 19, scope: !6455)
!6703 = !DILocation(line: 292, column: 2, scope: !6455)
!6704 = !DILocation(line: 292, column: 8, scope: !6455)
!6705 = !DILocation(line: 292, column: 17, scope: !6455)
!6706 = !DILocation(line: 293, column: 38, scope: !6455)
!6707 = !DILocation(line: 293, column: 46, scope: !6455)
!6708 = !DILocation(line: 293, column: 55, scope: !6455)
!6709 = !DILocation(line: 293, column: 61, scope: !6455)
!6710 = !DILocation(line: 294, column: 14, scope: !6455)
!6711 = !DILocation(line: 294, column: 20, scope: !6455)
!6712 = !DILocation(line: 294, column: 4, scope: !6455)
!6713 = !DILocation(line: 294, column: 26, scope: !6455)
!6714 = !DILocation(line: 293, column: 21, scope: !6455)
!6715 = !DILocation(line: 293, column: 2, scope: !6455)
!6716 = !DILocation(line: 293, column: 8, scope: !6455)
!6717 = !DILocation(line: 293, column: 19, scope: !6455)
!6718 = !DILocation(line: 295, column: 7, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 295, column: 6)
!6720 = !DILocation(line: 295, column: 13, scope: !6719)
!6721 = !DILocation(line: 295, column: 6, scope: !6455)
!6722 = !DILocation(line: 296, column: 7, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 295, column: 25)
!6724 = !DILocation(line: 297, column: 3, scope: !6723)
!6725 = !DILocation(line: 301, column: 2, scope: !6455)
!6726 = !DILocation(line: 301, column: 8, scope: !6455)
!6727 = !DILocation(line: 301, column: 22, scope: !6455)
!6728 = !DILocation(line: 304, column: 17, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 304, column: 2)
!6730 = !DILocation(line: 304, column: 23, scope: !6729)
!6731 = !DILocation(line: 304, column: 14, scope: !6729)
!6732 = !DILocation(line: 304, column: 7, scope: !6729)
!6733 = !DILocation(line: 304, column: 28, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 304, column: 2)
!6735 = !DILocation(line: 304, column: 2, scope: !6729)
!6736 = !DILocation(line: 306, column: 33, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6738, file: !3, line: 306, column: 7)
!6738 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 304, column: 61)
!6739 = !DILocation(line: 306, column: 7, scope: !6737)
!6740 = !DILocation(line: 306, column: 7, scope: !6738)
!6741 = !DILocation(line: 307, column: 4, scope: !6737)
!6742 = !DILocation(line: 307, column: 10, scope: !6737)
!6743 = !DILocation(line: 307, column: 17, scope: !6737)
!6744 = !DILocation(line: 309, column: 33, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6738, file: !3, line: 309, column: 7)
!6746 = !DILocation(line: 309, column: 7, scope: !6745)
!6747 = !DILocation(line: 309, column: 7, scope: !6738)
!6748 = !DILocation(line: 310, column: 4, scope: !6745)
!6749 = !DILocation(line: 310, column: 10, scope: !6745)
!6750 = !DILocation(line: 310, column: 17, scope: !6745)
!6751 = !DILocation(line: 312, column: 33, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6738, file: !3, line: 312, column: 7)
!6753 = !DILocation(line: 312, column: 7, scope: !6752)
!6754 = !DILocation(line: 312, column: 7, scope: !6738)
!6755 = !DILocation(line: 313, column: 4, scope: !6752)
!6756 = !DILocation(line: 313, column: 10, scope: !6752)
!6757 = !DILocation(line: 313, column: 17, scope: !6752)
!6758 = !DILocation(line: 315, column: 28, scope: !6738)
!6759 = !DILocation(line: 316, column: 8, scope: !6738)
!6760 = !DILocation(line: 316, column: 14, scope: !6738)
!6761 = !DILocation(line: 315, column: 3, scope: !6738)
!6762 = !DILocation(line: 317, column: 2, scope: !6738)
!6763 = !DILocation(line: 304, column: 45, scope: !6734)
!6764 = !DILocation(line: 304, column: 53, scope: !6734)
!6765 = !DILocation(line: 304, column: 43, scope: !6734)
!6766 = !DILocation(line: 304, column: 2, scope: !6734)
!6767 = distinct !{!6767, !6735, !6768}
!6768 = !DILocation(line: 317, column: 2, scope: !6729)
!6769 = !DILocation(line: 319, column: 45, scope: !6455)
!6770 = !DILocation(line: 319, column: 17, scope: !6455)
!6771 = !DILocation(line: 319, column: 2, scope: !6455)
!6772 = !DILocation(line: 319, column: 7, scope: !6455)
!6773 = !DILocation(line: 319, column: 15, scope: !6455)
!6774 = !DILocation(line: 320, column: 13, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 320, column: 6)
!6776 = !DILocation(line: 320, column: 18, scope: !6775)
!6777 = !DILocation(line: 320, column: 6, scope: !6775)
!6778 = !DILocation(line: 320, column: 6, scope: !6455)
!6779 = !DILocation(line: 321, column: 17, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 320, column: 28)
!6781 = !DILocation(line: 321, column: 22, scope: !6780)
!6782 = !DILocation(line: 321, column: 9, scope: !6780)
!6783 = !DILocation(line: 321, column: 7, scope: !6780)
!6784 = !DILocation(line: 322, column: 7, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6780, file: !3, line: 322, column: 7)
!6786 = !DILocation(line: 322, column: 11, scope: !6785)
!6787 = !DILocation(line: 322, column: 7, scope: !6780)
!6788 = !DILocation(line: 323, column: 4, scope: !6785)
!6789 = !DILocation(line: 324, column: 3, scope: !6780)
!6790 = !DILocation(line: 324, column: 8, scope: !6780)
!6791 = !DILocation(line: 324, column: 16, scope: !6780)
!6792 = !DILocation(line: 325, column: 2, scope: !6780)
!6793 = !DILocation(line: 326, column: 22, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 325, column: 9)
!6795 = !DILocation(line: 326, column: 27, scope: !6794)
!6796 = !DILocation(line: 326, column: 9, scope: !6794)
!6797 = !DILocation(line: 326, column: 7, scope: !6794)
!6798 = !DILocation(line: 327, column: 7, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 327, column: 7)
!6800 = !DILocation(line: 327, column: 7, scope: !6794)
!6801 = !DILocation(line: 328, column: 4, scope: !6799)
!6802 = !DILocation(line: 331, column: 45, scope: !6455)
!6803 = !DILocation(line: 331, column: 53, scope: !6455)
!6804 = !DILocation(line: 331, column: 21, scope: !6455)
!6805 = !DILocation(line: 331, column: 2, scope: !6455)
!6806 = !DILocation(line: 331, column: 7, scope: !6455)
!6807 = !DILocation(line: 331, column: 19, scope: !6455)
!6808 = !DILocation(line: 332, column: 34, scope: !6455)
!6809 = !DILocation(line: 332, column: 39, scope: !6455)
!6810 = !DILocation(line: 332, column: 2, scope: !6455)
!6811 = !DILocation(line: 332, column: 8, scope: !6455)
!6812 = !DILocation(line: 332, column: 20, scope: !6455)
!6813 = !DILocation(line: 332, column: 32, scope: !6455)
!6814 = !DILocation(line: 333, column: 6, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 333, column: 6)
!6816 = !DILocation(line: 333, column: 11, scope: !6815)
!6817 = !DILocation(line: 333, column: 15, scope: !6815)
!6818 = !DILocation(line: 333, column: 21, scope: !6815)
!6819 = !DILocation(line: 333, column: 28, scope: !6815)
!6820 = !DILocation(line: 333, column: 6, scope: !6455)
!6821 = !DILocation(line: 334, column: 3, scope: !6815)
!6822 = !DILocation(line: 334, column: 8, scope: !6815)
!6823 = !DILocation(line: 334, column: 32, scope: !6815)
!6824 = !DILocation(line: 336, column: 20, scope: !6455)
!6825 = !DILocation(line: 336, column: 25, scope: !6455)
!6826 = !DILocation(line: 336, column: 8, scope: !6455)
!6827 = !DILocation(line: 336, column: 6, scope: !6455)
!6828 = !DILocation(line: 337, column: 6, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 337, column: 6)
!6830 = !DILocation(line: 337, column: 6, scope: !6455)
!6831 = !DILocation(line: 338, column: 3, scope: !6829)
!6832 = !DILocation(line: 340, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 340, column: 6)
!6834 = !DILocation(line: 340, column: 36, scope: !6833)
!6835 = !DILocation(line: 340, column: 6, scope: !6455)
!6836 = !DILocation(line: 341, column: 3, scope: !6833)
!6837 = !DILocation(line: 341, column: 9, scope: !6833)
!6838 = !DILocation(line: 341, column: 21, scope: !6833)
!6839 = !DILocation(line: 341, column: 36, scope: !6833)
!6840 = !DILocation(line: 343, column: 20, scope: !6455)
!6841 = !DILocation(line: 343, column: 26, scope: !6455)
!6842 = !DILocation(line: 343, column: 38, scope: !6455)
!6843 = !DILocation(line: 343, column: 8, scope: !6455)
!6844 = !DILocation(line: 343, column: 6, scope: !6455)
!6845 = !DILocation(line: 344, column: 6, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 344, column: 6)
!6847 = !DILocation(line: 344, column: 6, scope: !6455)
!6848 = !DILocation(line: 345, column: 3, scope: !6846)
!6849 = !DILocation(line: 347, column: 31, scope: !6455)
!6850 = !DILocation(line: 347, column: 37, scope: !6455)
!6851 = !DILocation(line: 347, column: 2, scope: !6455)
!6852 = !DILocation(line: 348, column: 25, scope: !6455)
!6853 = !DILocation(line: 348, column: 31, scope: !6455)
!6854 = !DILocation(line: 348, column: 2, scope: !6455)
!6855 = !DILocation(line: 354, column: 21, scope: !6455)
!6856 = !DILocation(line: 354, column: 27, scope: !6455)
!6857 = !DILocation(line: 354, column: 2, scope: !6455)
!6858 = !DILocation(line: 356, column: 2, scope: !6455)
!6859 = !DILabel(scope: !6455, name: "dealloc_usb2_hcd", file: !3, line: 359)
!6860 = !DILocation(line: 359, column: 1, scope: !6455)
!6861 = !DILocation(line: 360, column: 17, scope: !6455)
!6862 = !DILocation(line: 360, column: 2, scope: !6455)
!6863 = !DILabel(scope: !6455, name: "disable_usb_phy", file: !3, line: 362)
!6864 = !DILocation(line: 362, column: 1, scope: !6455)
!6865 = !DILocation(line: 363, column: 19, scope: !6455)
!6866 = !DILocation(line: 363, column: 24, scope: !6455)
!6867 = !DILocation(line: 363, column: 2, scope: !6455)
!6868 = !DILabel(scope: !6455, name: "put_usb3_hcd", file: !3, line: 365)
!6869 = !DILocation(line: 365, column: 1, scope: !6455)
!6870 = !DILocation(line: 366, column: 14, scope: !6455)
!6871 = !DILocation(line: 366, column: 20, scope: !6455)
!6872 = !DILocation(line: 366, column: 2, scope: !6455)
!6873 = !DILabel(scope: !6455, name: "disable_clk", file: !3, line: 368)
!6874 = !DILocation(line: 368, column: 1, scope: !6455)
!6875 = !DILocation(line: 369, column: 24, scope: !6455)
!6876 = !DILocation(line: 369, column: 30, scope: !6455)
!6877 = !DILocation(line: 369, column: 2, scope: !6455)
!6878 = !DILabel(scope: !6455, name: "disable_reg_clk", file: !3, line: 371)
!6879 = !DILocation(line: 371, column: 1, scope: !6455)
!6880 = !DILocation(line: 372, column: 24, scope: !6455)
!6881 = !DILocation(line: 372, column: 30, scope: !6455)
!6882 = !DILocation(line: 372, column: 2, scope: !6455)
!6883 = !DILabel(scope: !6455, name: "put_hcd", file: !3, line: 374)
!6884 = !DILocation(line: 374, column: 1, scope: !6455)
!6885 = !DILocation(line: 375, column: 14, scope: !6455)
!6886 = !DILocation(line: 375, column: 2, scope: !6455)
!6887 = !DILabel(scope: !6455, name: "disable_runtime", file: !3, line: 377)
!6888 = !DILocation(line: 377, column: 1, scope: !6455)
!6889 = !DILocation(line: 378, column: 25, scope: !6455)
!6890 = !DILocation(line: 378, column: 31, scope: !6455)
!6891 = !DILocation(line: 378, column: 2, scope: !6455)
!6892 = !DILocation(line: 379, column: 22, scope: !6455)
!6893 = !DILocation(line: 379, column: 28, scope: !6455)
!6894 = !DILocation(line: 379, column: 2, scope: !6455)
!6895 = !DILocation(line: 381, column: 9, scope: !6455)
!6896 = !DILocation(line: 381, column: 2, scope: !6455)
!6897 = !DILocation(line: 382, column: 1, scope: !6455)
!6898 = distinct !DISubprogram(name: "xhci_plat_remove", scope: !3, file: !3, line: 384, type: !6271, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6899 = !DILocalVariable(name: "dev", arg: 1, scope: !6898, file: !3, line: 384, type: !6273)
!6900 = !DILocation(line: 384, column: 53, scope: !6898)
!6901 = !DILocalVariable(name: "hcd", scope: !6898, file: !3, line: 386, type: !291)
!6902 = !DILocation(line: 386, column: 18, scope: !6898)
!6903 = !DILocation(line: 386, column: 45, scope: !6898)
!6904 = !DILocation(line: 386, column: 24, scope: !6898)
!6905 = !DILocalVariable(name: "xhci", scope: !6898, file: !3, line: 387, type: !5847)
!6906 = !DILocation(line: 387, column: 19, scope: !6898)
!6907 = !DILocation(line: 387, column: 38, scope: !6898)
!6908 = !DILocation(line: 387, column: 26, scope: !6898)
!6909 = !DILocalVariable(name: "clk", scope: !6898, file: !3, line: 388, type: !5939)
!6910 = !DILocation(line: 388, column: 14, scope: !6898)
!6911 = !DILocation(line: 388, column: 20, scope: !6898)
!6912 = !DILocation(line: 388, column: 26, scope: !6898)
!6913 = !DILocalVariable(name: "reg_clk", scope: !6898, file: !3, line: 389, type: !5939)
!6914 = !DILocation(line: 389, column: 14, scope: !6898)
!6915 = !DILocation(line: 389, column: 24, scope: !6898)
!6916 = !DILocation(line: 389, column: 30, scope: !6898)
!6917 = !DILocalVariable(name: "shared_hcd", scope: !6898, file: !3, line: 390, type: !291)
!6918 = !DILocation(line: 390, column: 18, scope: !6898)
!6919 = !DILocation(line: 390, column: 31, scope: !6898)
!6920 = !DILocation(line: 390, column: 37, scope: !6898)
!6921 = !DILocation(line: 392, column: 23, scope: !6898)
!6922 = !DILocation(line: 392, column: 28, scope: !6898)
!6923 = !DILocation(line: 392, column: 2, scope: !6898)
!6924 = !DILocation(line: 393, column: 2, scope: !6898)
!6925 = !DILocation(line: 393, column: 8, scope: !6898)
!6926 = !DILocation(line: 393, column: 18, scope: !6898)
!6927 = !DILocation(line: 395, column: 17, scope: !6898)
!6928 = !DILocation(line: 395, column: 2, scope: !6898)
!6929 = !DILocation(line: 396, column: 2, scope: !6898)
!6930 = !DILocation(line: 396, column: 8, scope: !6898)
!6931 = !DILocation(line: 396, column: 19, scope: !6898)
!6932 = !DILocation(line: 397, column: 19, scope: !6898)
!6933 = !DILocation(line: 397, column: 24, scope: !6898)
!6934 = !DILocation(line: 397, column: 2, scope: !6898)
!6935 = !DILocation(line: 399, column: 17, scope: !6898)
!6936 = !DILocation(line: 399, column: 2, scope: !6898)
!6937 = !DILocation(line: 400, column: 14, scope: !6898)
!6938 = !DILocation(line: 400, column: 2, scope: !6898)
!6939 = !DILocation(line: 402, column: 24, scope: !6898)
!6940 = !DILocation(line: 402, column: 2, scope: !6898)
!6941 = !DILocation(line: 403, column: 24, scope: !6898)
!6942 = !DILocation(line: 403, column: 2, scope: !6898)
!6943 = !DILocation(line: 404, column: 14, scope: !6898)
!6944 = !DILocation(line: 404, column: 2, scope: !6898)
!6945 = !DILocation(line: 406, column: 22, scope: !6898)
!6946 = !DILocation(line: 406, column: 27, scope: !6898)
!6947 = !DILocation(line: 406, column: 2, scope: !6898)
!6948 = !DILocation(line: 407, column: 25, scope: !6898)
!6949 = !DILocation(line: 407, column: 30, scope: !6898)
!6950 = !DILocation(line: 407, column: 2, scope: !6898)
!6951 = !DILocation(line: 408, column: 28, scope: !6898)
!6952 = !DILocation(line: 408, column: 33, scope: !6898)
!6953 = !DILocation(line: 408, column: 2, scope: !6898)
!6954 = !DILocation(line: 410, column: 2, scope: !6898)
!6955 = distinct !DISubprogram(name: "is_of_node", scope: !4812, file: !4812, line: 155, type: !4839, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6956 = !DILocalVariable(name: "fwnode", arg: 1, scope: !6955, file: !4812, line: 155, type: !4841)
!6957 = !DILocation(line: 155, column: 59, scope: !6955)
!6958 = !DILocation(line: 157, column: 25, scope: !6955)
!6959 = !DILocation(line: 157, column: 10, scope: !6955)
!6960 = !DILocation(line: 157, column: 33, scope: !6955)
!6961 = !DILocation(line: 157, column: 36, scope: !6955)
!6962 = !DILocation(line: 157, column: 44, scope: !6955)
!6963 = !DILocation(line: 157, column: 48, scope: !6955)
!6964 = !DILocation(line: 0, scope: !6955)
!6965 = !DILocation(line: 157, column: 2, scope: !6955)
!6966 = distinct !DISubprogram(name: "dma_coerce_mask_and_coherent", scope: !6967, file: !6967, line: 432, type: !6968, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6967 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!6968 = !DISubroutineType(types: !6969)
!6969 = !{!347, !298, !511}
!6970 = !DILocalVariable(name: "dev", arg: 1, scope: !6966, file: !6967, line: 432, type: !298)
!6971 = !DILocation(line: 432, column: 63, scope: !6966)
!6972 = !DILocalVariable(name: "mask", arg: 2, scope: !6966, file: !6967, line: 432, type: !511)
!6973 = !DILocation(line: 432, column: 72, scope: !6966)
!6974 = !DILocation(line: 434, column: 19, scope: !6966)
!6975 = !DILocation(line: 434, column: 24, scope: !6966)
!6976 = !DILocation(line: 434, column: 2, scope: !6966)
!6977 = !DILocation(line: 434, column: 7, scope: !6966)
!6978 = !DILocation(line: 434, column: 16, scope: !6966)
!6979 = !DILocation(line: 435, column: 35, scope: !6966)
!6980 = !DILocation(line: 435, column: 40, scope: !6966)
!6981 = !DILocation(line: 435, column: 9, scope: !6966)
!6982 = !DILocation(line: 435, column: 2, scope: !6966)
!6983 = distinct !DISubprogram(name: "dma_set_mask_and_coherent", scope: !6967, file: !6967, line: 420, type: !6968, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!6984 = !DILocalVariable(name: "dev", arg: 1, scope: !6983, file: !6967, line: 420, type: !298)
!6985 = !DILocation(line: 420, column: 60, scope: !6983)
!6986 = !DILocalVariable(name: "mask", arg: 2, scope: !6983, file: !6967, line: 420, type: !511)
!6987 = !DILocation(line: 420, column: 69, scope: !6983)
!6988 = !DILocalVariable(name: "rc", scope: !6983, file: !6967, line: 422, type: !347)
!6989 = !DILocation(line: 422, column: 6, scope: !6983)
!6990 = !DILocation(line: 422, column: 24, scope: !6983)
!6991 = !DILocation(line: 422, column: 29, scope: !6983)
!6992 = !DILocation(line: 422, column: 11, scope: !6983)
!6993 = !DILocation(line: 423, column: 6, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6983, file: !6967, line: 423, column: 6)
!6995 = !DILocation(line: 423, column: 9, scope: !6994)
!6996 = !DILocation(line: 423, column: 6, scope: !6983)
!6997 = !DILocation(line: 424, column: 25, scope: !6994)
!6998 = !DILocation(line: 424, column: 30, scope: !6994)
!6999 = !DILocation(line: 424, column: 3, scope: !6994)
!7000 = !DILocation(line: 425, column: 9, scope: !6983)
!7001 = !DILocation(line: 425, column: 2, scope: !6983)
!7002 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !7003, file: !7003, line: 495, type: !4560, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7003 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!7004 = !DILocalVariable(name: "dev", arg: 1, scope: !7002, file: !7003, line: 495, type: !298)
!7005 = !DILocation(line: 495, column: 56, scope: !7002)
!7006 = !DILocation(line: 497, column: 33, scope: !7002)
!7007 = !DILocation(line: 497, column: 9, scope: !7002)
!7008 = !DILocation(line: 497, column: 2, scope: !7002)
!7009 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !7003, file: !7003, line: 92, type: !4551, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7010 = !DILocalVariable(name: "v", arg: 1, scope: !7011, file: !7012, line: 93, type: !7015)
!7011 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7012, file: !7012, line: 93, type: !7013, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7012 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!7013 = !DISubroutineType(types: !7014)
!7014 = !{null, !7015}
!7015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!7016 = !DILocation(line: 93, column: 55, scope: !7011, inlinedAt: !7017)
!7017 = distinct !DILocation(line: 241, column: 2, scope: !7018, inlinedAt: !7020)
!7018 = distinct !DISubprogram(name: "atomic_inc", scope: !7019, file: !7019, line: 238, type: !7013, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7019 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7020 = distinct !DILocation(line: 94, column: 2, scope: !7009)
!7021 = !DILocalVariable(name: "v", arg: 1, scope: !7022, file: !7023, line: 99, type: !7026)
!7022 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7023, file: !7023, line: 99, type: !7024, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7023 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7024 = !DISubroutineType(types: !7025)
!7025 = !{null, !7026, !410}
!7026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7027, size: 64)
!7027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7028)
!7028 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7029 = !DILocation(line: 99, column: 79, scope: !7022, inlinedAt: !7030)
!7030 = distinct !DILocation(line: 240, column: 2, scope: !7018, inlinedAt: !7020)
!7031 = !DILocalVariable(name: "size", arg: 2, scope: !7022, file: !7023, line: 99, type: !410)
!7032 = !DILocation(line: 99, column: 89, scope: !7022, inlinedAt: !7030)
!7033 = !DILocalVariable(name: "v", arg: 1, scope: !7018, file: !7019, line: 238, type: !7015)
!7034 = !DILocation(line: 238, column: 22, scope: !7018, inlinedAt: !7020)
!7035 = !DILocalVariable(name: "dev", arg: 1, scope: !7009, file: !7003, line: 92, type: !298)
!7036 = !DILocation(line: 92, column: 59, scope: !7009)
!7037 = !DILocation(line: 94, column: 14, scope: !7009)
!7038 = !DILocation(line: 94, column: 19, scope: !7009)
!7039 = !DILocation(line: 94, column: 25, scope: !7009)
!7040 = !DILocation(line: 240, column: 31, scope: !7018, inlinedAt: !7020)
!7041 = !DILocation(line: 101, column: 20, scope: !7022, inlinedAt: !7030)
!7042 = !DILocation(line: 101, column: 23, scope: !7022, inlinedAt: !7030)
!7043 = !DILocation(line: 101, column: 2, scope: !7022, inlinedAt: !7030)
!7044 = !DILocation(line: 102, column: 2, scope: !7022, inlinedAt: !7030)
!7045 = !DILocation(line: 241, column: 18, scope: !7018, inlinedAt: !7020)
!7046 = !DILocation(line: 96, column: 16, scope: !7011, inlinedAt: !7017)
!7047 = !DILocation(line: 96, column: 19, scope: !7011, inlinedAt: !7017)
!7048 = !DILocation(line: 95, column: 2, scope: !7011, inlinedAt: !7017)
!7049 = !{i32 -2146659089}
!7050 = !DILocation(line: 95, column: 1, scope: !7009)
!7051 = distinct !DISubprogram(name: "dev_name", scope: !121, file: !121, line: 609, type: !7052, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7052 = !DISubroutineType(types: !7053)
!7053 = !{!282, !4847}
!7054 = !DILocalVariable(name: "dev", arg: 1, scope: !7051, file: !121, line: 609, type: !4847)
!7055 = !DILocation(line: 609, column: 57, scope: !7051)
!7056 = !DILocation(line: 612, column: 6, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7051, file: !121, line: 612, column: 6)
!7058 = !DILocation(line: 612, column: 11, scope: !7057)
!7059 = !DILocation(line: 612, column: 6, scope: !7051)
!7060 = !DILocation(line: 613, column: 10, scope: !7057)
!7061 = !DILocation(line: 613, column: 15, scope: !7057)
!7062 = !DILocation(line: 613, column: 3, scope: !7057)
!7063 = !DILocation(line: 615, column: 23, scope: !7051)
!7064 = !DILocation(line: 615, column: 28, scope: !7051)
!7065 = !DILocation(line: 615, column: 9, scope: !7051)
!7066 = !DILocation(line: 615, column: 2, scope: !7051)
!7067 = !DILocation(line: 616, column: 1, scope: !7051)
!7068 = distinct !DISubprogram(name: "IS_ERR", scope: !7069, file: !7069, line: 34, type: !7070, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7069 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!7070 = !DISubroutineType(types: !7071)
!7071 = !{!579, !3335}
!7072 = !DILocalVariable(name: "ptr", arg: 1, scope: !7068, file: !7069, line: 34, type: !3335)
!7073 = !DILocation(line: 34, column: 60, scope: !7068)
!7074 = !DILocation(line: 36, column: 9, scope: !7068)
!7075 = !DILocation(line: 36, column: 2, scope: !7068)
!7076 = distinct !DISubprogram(name: "PTR_ERR", scope: !7069, file: !7069, line: 29, type: !7077, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7077 = !DISubroutineType(types: !7078)
!7078 = !{!398, !3335}
!7079 = !DILocalVariable(name: "ptr", arg: 1, scope: !7076, file: !7069, line: 29, type: !3335)
!7080 = !DILocation(line: 29, column: 61, scope: !7076)
!7081 = !DILocation(line: 31, column: 16, scope: !7076)
!7082 = !DILocation(line: 31, column: 9, scope: !7076)
!7083 = !DILocation(line: 31, column: 2, scope: !7076)
!7084 = distinct !DISubprogram(name: "resource_size", scope: !6286, file: !6286, line: 210, type: !7085, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!5797, !7087}
!7087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7088, size: 64)
!7088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6285)
!7089 = !DILocalVariable(name: "res", arg: 1, scope: !7084, file: !6286, line: 210, type: !7087)
!7090 = !DILocation(line: 210, column: 68, scope: !7084)
!7091 = !DILocation(line: 212, column: 9, scope: !7084)
!7092 = !DILocation(line: 212, column: 14, scope: !7084)
!7093 = !DILocation(line: 212, column: 20, scope: !7084)
!7094 = !DILocation(line: 212, column: 25, scope: !7084)
!7095 = !DILocation(line: 212, column: 18, scope: !7084)
!7096 = !DILocation(line: 212, column: 31, scope: !7084)
!7097 = !DILocation(line: 212, column: 2, scope: !7084)
!7098 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !5941, file: !5941, line: 906, type: !7099, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7099 = !DISubroutineType(types: !7100)
!7100 = !{!347, !5939}
!7101 = !DILocalVariable(name: "clk", arg: 1, scope: !7098, file: !5941, line: 906, type: !5939)
!7102 = !DILocation(line: 906, column: 50, scope: !7098)
!7103 = !DILocalVariable(name: "ret", scope: !7098, file: !5941, line: 908, type: !347)
!7104 = !DILocation(line: 908, column: 6, scope: !7098)
!7105 = !DILocation(line: 910, column: 20, scope: !7098)
!7106 = !DILocation(line: 910, column: 8, scope: !7098)
!7107 = !DILocation(line: 910, column: 6, scope: !7098)
!7108 = !DILocation(line: 911, column: 6, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7098, file: !5941, line: 911, column: 6)
!7110 = !DILocation(line: 911, column: 6, scope: !7098)
!7111 = !DILocation(line: 912, column: 10, scope: !7109)
!7112 = !DILocation(line: 912, column: 3, scope: !7109)
!7113 = !DILocation(line: 913, column: 19, scope: !7098)
!7114 = !DILocation(line: 913, column: 8, scope: !7098)
!7115 = !DILocation(line: 913, column: 6, scope: !7098)
!7116 = !DILocation(line: 914, column: 6, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7098, file: !5941, line: 914, column: 6)
!7118 = !DILocation(line: 914, column: 6, scope: !7098)
!7119 = !DILocation(line: 915, column: 17, scope: !7117)
!7120 = !DILocation(line: 915, column: 3, scope: !7117)
!7121 = !DILocation(line: 917, column: 9, scope: !7098)
!7122 = !DILocation(line: 917, column: 2, scope: !7098)
!7123 = !DILocation(line: 918, column: 1, scope: !7098)
!7124 = distinct !DISubprogram(name: "dev_get_platdata", scope: !121, file: !121, line: 828, type: !7125, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7125 = !DISubroutineType(types: !7126)
!7126 = !{!437, !4847}
!7127 = !DILocalVariable(name: "dev", arg: 1, scope: !7124, file: !121, line: 828, type: !4847)
!7128 = !DILocation(line: 828, column: 59, scope: !7124)
!7129 = !DILocation(line: 830, column: 9, scope: !7124)
!7130 = !DILocation(line: 830, column: 14, scope: !7124)
!7131 = !DILocation(line: 830, column: 2, scope: !7124)
!7132 = distinct !DISubprogram(name: "device_property_read_bool", scope: !7133, file: !7133, line: 123, type: !7134, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7133 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!7134 = !DISubroutineType(types: !7135)
!7135 = !{!579, !298, !282}
!7136 = !DILocalVariable(name: "dev", arg: 1, scope: !7132, file: !7133, line: 123, type: !298)
!7137 = !DILocation(line: 123, column: 61, scope: !7132)
!7138 = !DILocalVariable(name: "propname", arg: 2, scope: !7132, file: !7133, line: 124, type: !282)
!7139 = !DILocation(line: 124, column: 23, scope: !7132)
!7140 = !DILocation(line: 126, column: 33, scope: !7132)
!7141 = !DILocation(line: 126, column: 38, scope: !7132)
!7142 = !DILocation(line: 126, column: 9, scope: !7132)
!7143 = !DILocation(line: 126, column: 2, scope: !7132)
!7144 = distinct !DISubprogram(name: "device_property_read_u32", scope: !7133, file: !7133, line: 141, type: !7145, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7145 = !DISubroutineType(types: !7146)
!7146 = !{!347, !298, !282, !2497}
!7147 = !DILocalVariable(name: "dev", arg: 1, scope: !7144, file: !7133, line: 141, type: !298)
!7148 = !DILocation(line: 141, column: 59, scope: !7144)
!7149 = !DILocalVariable(name: "propname", arg: 2, scope: !7144, file: !7133, line: 142, type: !282)
!7150 = !DILocation(line: 142, column: 21, scope: !7144)
!7151 = !DILocalVariable(name: "val", arg: 3, scope: !7144, file: !7133, line: 142, type: !2497)
!7152 = !DILocation(line: 142, column: 36, scope: !7144)
!7153 = !DILocation(line: 144, column: 40, scope: !7144)
!7154 = !DILocation(line: 144, column: 45, scope: !7144)
!7155 = !DILocation(line: 144, column: 55, scope: !7144)
!7156 = !DILocation(line: 144, column: 9, scope: !7144)
!7157 = !DILocation(line: 144, column: 2, scope: !7144)
!7158 = distinct !DISubprogram(name: "usb_phy_init", scope: !182, file: !182, line: 183, type: !5749, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7159 = !DILocalVariable(name: "x", arg: 1, scope: !7158, file: !182, line: 183, type: !5560)
!7160 = !DILocation(line: 183, column: 30, scope: !7158)
!7161 = !DILocation(line: 185, column: 6, scope: !7162)
!7162 = distinct !DILexicalBlock(scope: !7158, file: !182, line: 185, column: 6)
!7163 = !DILocation(line: 185, column: 8, scope: !7162)
!7164 = !DILocation(line: 185, column: 11, scope: !7162)
!7165 = !DILocation(line: 185, column: 14, scope: !7162)
!7166 = !DILocation(line: 185, column: 6, scope: !7158)
!7167 = !DILocation(line: 186, column: 10, scope: !7162)
!7168 = !DILocation(line: 186, column: 13, scope: !7162)
!7169 = !DILocation(line: 186, column: 18, scope: !7162)
!7170 = !DILocation(line: 186, column: 3, scope: !7162)
!7171 = !DILocation(line: 188, column: 2, scope: !7158)
!7172 = !DILocation(line: 189, column: 1, scope: !7158)
!7173 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !121, file: !121, line: 685, type: !4551, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7174 = !DILocalVariable(name: "dev", arg: 1, scope: !7173, file: !121, line: 685, type: !298)
!7175 = !DILocation(line: 685, column: 63, scope: !7173)
!7176 = !DILocation(line: 687, column: 7, scope: !7177)
!7177 = distinct !DILexicalBlock(scope: !7173, file: !121, line: 687, column: 6)
!7178 = !DILocation(line: 687, column: 12, scope: !7177)
!7179 = !DILocation(line: 687, column: 18, scope: !7177)
!7180 = !DILocation(line: 687, column: 6, scope: !7173)
!7181 = !DILocation(line: 688, column: 3, scope: !7177)
!7182 = !DILocation(line: 688, column: 8, scope: !7177)
!7183 = !DILocation(line: 688, column: 14, scope: !7177)
!7184 = !DILocation(line: 688, column: 28, scope: !7177)
!7185 = !DILocation(line: 689, column: 1, scope: !7173)
!7186 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !7003, file: !7003, line: 103, type: !4551, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7187 = !DILocalVariable(name: "v", arg: 1, scope: !7188, file: !7012, line: 200, type: !7015)
!7188 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !7012, file: !7012, line: 200, type: !7189, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7189 = !DISubroutineType(types: !7190)
!7190 = !{!579, !7015, !808, !347}
!7191 = !DILocation(line: 200, column: 63, scope: !7188, inlinedAt: !7192)
!7192 = distinct !DILocation(line: 1093, column: 12, scope: !7193, inlinedAt: !7197)
!7193 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !7194, file: !7194, line: 1086, type: !7195, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7194 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!7195 = !DISubroutineType(types: !7196)
!7196 = !{!347, !7015, !347, !347}
!7197 = distinct !DILocation(line: 1113, column: 9, scope: !7198, inlinedAt: !7201)
!7198 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !7194, file: !7194, line: 1111, type: !7199, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7199 = !DISubroutineType(types: !7200)
!7200 = !{!579, !7015, !347, !347}
!7201 = distinct !DILocation(line: 789, column: 9, scope: !7202, inlinedAt: !7203)
!7202 = distinct !DISubprogram(name: "atomic_add_unless", scope: !7019, file: !7019, line: 786, type: !7199, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7203 = distinct !DILocation(line: 105, column: 2, scope: !7186)
!7204 = !DILocalVariable(name: "old", arg: 2, scope: !7188, file: !7012, line: 200, type: !808)
!7205 = !DILocation(line: 200, column: 71, scope: !7188, inlinedAt: !7192)
!7206 = !DILocalVariable(name: "new", arg: 3, scope: !7188, file: !7012, line: 200, type: !347)
!7207 = !DILocation(line: 200, column: 80, scope: !7188, inlinedAt: !7192)
!7208 = !DILocalVariable(name: "success", scope: !7209, file: !7012, line: 202, type: !579)
!7209 = distinct !DILexicalBlock(scope: !7188, file: !7012, line: 202, column: 9)
!7210 = !DILocation(line: 202, column: 9, scope: !7209, inlinedAt: !7192)
!7211 = !DILocalVariable(name: "_old", scope: !7209, file: !7012, line: 202, type: !808)
!7212 = !DILocalVariable(name: "__old", scope: !7209, file: !7012, line: 202, type: !347)
!7213 = !DILocalVariable(name: "__new", scope: !7209, file: !7012, line: 202, type: !347)
!7214 = !DILocalVariable(name: "__ptr", scope: !7209, file: !7012, line: 202, type: !6229)
!7215 = !DILocalVariable(name: "v", arg: 1, scope: !7216, file: !7012, line: 23, type: !7219)
!7216 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7012, file: !7012, line: 23, type: !7217, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7217 = !DISubroutineType(types: !7218)
!7218 = !{!347, !7219}
!7219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7220, size: 64)
!7220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!7221 = !DILocation(line: 23, column: 61, scope: !7216, inlinedAt: !7222)
!7222 = distinct !DILocation(line: 1088, column: 10, scope: !7193, inlinedAt: !7197)
!7223 = !DILocalVariable(name: "v", arg: 1, scope: !7193, file: !7194, line: 1086, type: !7015)
!7224 = !DILocation(line: 1086, column: 40, scope: !7193, inlinedAt: !7197)
!7225 = !DILocalVariable(name: "a", arg: 2, scope: !7193, file: !7194, line: 1086, type: !347)
!7226 = !DILocation(line: 1086, column: 47, scope: !7193, inlinedAt: !7197)
!7227 = !DILocalVariable(name: "u", arg: 3, scope: !7193, file: !7194, line: 1086, type: !347)
!7228 = !DILocation(line: 1086, column: 54, scope: !7193, inlinedAt: !7197)
!7229 = !DILocalVariable(name: "c", scope: !7193, file: !7194, line: 1088, type: !347)
!7230 = !DILocation(line: 1088, column: 6, scope: !7193, inlinedAt: !7197)
!7231 = !DILocalVariable(name: "v", arg: 1, scope: !7198, file: !7194, line: 1111, type: !7015)
!7232 = !DILocation(line: 1111, column: 34, scope: !7198, inlinedAt: !7201)
!7233 = !DILocalVariable(name: "a", arg: 2, scope: !7198, file: !7194, line: 1111, type: !347)
!7234 = !DILocation(line: 1111, column: 41, scope: !7198, inlinedAt: !7201)
!7235 = !DILocalVariable(name: "u", arg: 3, scope: !7198, file: !7194, line: 1111, type: !347)
!7236 = !DILocation(line: 1111, column: 48, scope: !7198, inlinedAt: !7201)
!7237 = !DILocation(line: 99, column: 79, scope: !7022, inlinedAt: !7238)
!7238 = distinct !DILocation(line: 788, column: 2, scope: !7202, inlinedAt: !7203)
!7239 = !DILocation(line: 99, column: 89, scope: !7022, inlinedAt: !7238)
!7240 = !DILocalVariable(name: "v", arg: 1, scope: !7202, file: !7019, line: 786, type: !7015)
!7241 = !DILocation(line: 786, column: 29, scope: !7202, inlinedAt: !7203)
!7242 = !DILocalVariable(name: "a", arg: 2, scope: !7202, file: !7019, line: 786, type: !347)
!7243 = !DILocation(line: 786, column: 36, scope: !7202, inlinedAt: !7203)
!7244 = !DILocalVariable(name: "u", arg: 3, scope: !7202, file: !7019, line: 786, type: !347)
!7245 = !DILocation(line: 786, column: 43, scope: !7202, inlinedAt: !7203)
!7246 = !DILocalVariable(name: "dev", arg: 1, scope: !7186, file: !7003, line: 103, type: !298)
!7247 = !DILocation(line: 103, column: 57, scope: !7186)
!7248 = !DILocation(line: 105, column: 21, scope: !7186)
!7249 = !DILocation(line: 105, column: 26, scope: !7186)
!7250 = !DILocation(line: 105, column: 32, scope: !7186)
!7251 = !DILocation(line: 788, column: 31, scope: !7202, inlinedAt: !7203)
!7252 = !DILocation(line: 101, column: 20, scope: !7022, inlinedAt: !7238)
!7253 = !DILocation(line: 101, column: 23, scope: !7022, inlinedAt: !7238)
!7254 = !DILocation(line: 101, column: 2, scope: !7022, inlinedAt: !7238)
!7255 = !DILocation(line: 102, column: 2, scope: !7022, inlinedAt: !7238)
!7256 = !DILocation(line: 789, column: 32, scope: !7202, inlinedAt: !7203)
!7257 = !DILocation(line: 789, column: 35, scope: !7202, inlinedAt: !7203)
!7258 = !DILocation(line: 789, column: 38, scope: !7202, inlinedAt: !7203)
!7259 = !DILocation(line: 1113, column: 38, scope: !7198, inlinedAt: !7201)
!7260 = !DILocation(line: 1113, column: 41, scope: !7198, inlinedAt: !7201)
!7261 = !DILocation(line: 1113, column: 44, scope: !7198, inlinedAt: !7201)
!7262 = !DILocation(line: 1088, column: 27, scope: !7193, inlinedAt: !7197)
!7263 = !DILocation(line: 29, column: 9, scope: !7216, inlinedAt: !7222)
!7264 = !DILocation(line: 1090, column: 2, scope: !7193, inlinedAt: !7197)
!7265 = !DILocation(line: 1091, column: 7, scope: !7266, inlinedAt: !7197)
!7266 = distinct !DILexicalBlock(scope: !7267, file: !7194, line: 1091, column: 7)
!7267 = distinct !DILexicalBlock(scope: !7193, file: !7194, line: 1090, column: 5)
!7268 = !DILocation(line: 1091, column: 7, scope: !7267, inlinedAt: !7197)
!7269 = !DILocation(line: 1092, column: 4, scope: !7266, inlinedAt: !7197)
!7270 = !DILocation(line: 1093, column: 36, scope: !7193, inlinedAt: !7197)
!7271 = !DILocation(line: 1093, column: 43, scope: !7193, inlinedAt: !7197)
!7272 = !DILocation(line: 1093, column: 47, scope: !7193, inlinedAt: !7197)
!7273 = !DILocation(line: 1093, column: 45, scope: !7193, inlinedAt: !7197)
!7274 = !{i32 -2146647492, i32 -2146647337}
!7275 = !DILocation(line: 202, column: 9, scope: !7276, inlinedAt: !7192)
!7276 = distinct !DILexicalBlock(scope: !7209, file: !7012, line: 202, column: 9)
!7277 = !DILocation(line: 202, column: 9, scope: !7188, inlinedAt: !7192)
!7278 = !DILocation(line: 1093, column: 11, scope: !7193, inlinedAt: !7197)
!7279 = !DILocation(line: 1093, column: 2, scope: !7267, inlinedAt: !7197)
!7280 = distinct !{!7280, !7264, !7281}
!7281 = !DILocation(line: 1093, column: 49, scope: !7193, inlinedAt: !7197)
!7282 = !DILocation(line: 1095, column: 9, scope: !7193, inlinedAt: !7197)
!7283 = !DILocation(line: 1113, column: 50, scope: !7198, inlinedAt: !7201)
!7284 = !DILocation(line: 1113, column: 47, scope: !7198, inlinedAt: !7201)
!7285 = !DILocation(line: 106, column: 1, scope: !7186)
!7286 = distinct !DISubprogram(name: "usb_phy_shutdown", scope: !182, file: !182, line: 192, type: !5753, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7287 = !DILocalVariable(name: "x", arg: 1, scope: !7286, file: !182, line: 192, type: !5560)
!7288 = !DILocation(line: 192, column: 34, scope: !7286)
!7289 = !DILocation(line: 194, column: 6, scope: !7290)
!7290 = distinct !DILexicalBlock(scope: !7286, file: !182, line: 194, column: 6)
!7291 = !DILocation(line: 194, column: 8, scope: !7290)
!7292 = !DILocation(line: 194, column: 11, scope: !7290)
!7293 = !DILocation(line: 194, column: 14, scope: !7290)
!7294 = !DILocation(line: 194, column: 6, scope: !7286)
!7295 = !DILocation(line: 195, column: 3, scope: !7290)
!7296 = !DILocation(line: 195, column: 6, scope: !7290)
!7297 = !DILocation(line: 195, column: 15, scope: !7290)
!7298 = !DILocation(line: 196, column: 1, scope: !7286)
!7299 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !5941, file: !5941, line: 921, type: !7300, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7300 = !DISubroutineType(types: !7301)
!7301 = !{null, !5939}
!7302 = !DILocalVariable(name: "clk", arg: 1, scope: !7299, file: !5941, line: 921, type: !5939)
!7303 = !DILocation(line: 921, column: 54, scope: !7299)
!7304 = !DILocation(line: 923, column: 14, scope: !7299)
!7305 = !DILocation(line: 923, column: 2, scope: !7299)
!7306 = !DILocation(line: 924, column: 16, scope: !7299)
!7307 = !DILocation(line: 924, column: 2, scope: !7299)
!7308 = !DILocation(line: 925, column: 1, scope: !7299)
!7309 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !7003, file: !7003, line: 524, type: !4551, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7310 = !DILocalVariable(name: "dev", arg: 1, scope: !7309, file: !7003, line: 524, type: !298)
!7311 = !DILocation(line: 524, column: 54, scope: !7309)
!7312 = !DILocation(line: 526, column: 23, scope: !7309)
!7313 = !DILocation(line: 526, column: 2, scope: !7309)
!7314 = !DILocation(line: 527, column: 1, scope: !7309)
!7315 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !7069, file: !7069, line: 39, type: !7070, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7316 = !DILocalVariable(name: "ptr", arg: 1, scope: !7315, file: !7069, line: 39, type: !3335)
!7317 = !DILocation(line: 39, column: 68, scope: !7315)
!7318 = !DILocation(line: 41, column: 9, scope: !7315)
!7319 = !DILocation(line: 41, column: 24, scope: !7315)
!7320 = !DILocation(line: 41, column: 27, scope: !7315)
!7321 = !DILocation(line: 41, column: 2, scope: !7315)
!7322 = distinct !DISubprogram(name: "kasan_check_write", scope: !7323, file: !7323, line: 38, type: !7324, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7323 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7324 = !DISubroutineType(types: !7325)
!7325 = !{!579, !7026, !7}
!7326 = !DILocalVariable(name: "p", arg: 1, scope: !7322, file: !7323, line: 38, type: !7026)
!7327 = !DILocation(line: 38, column: 59, scope: !7322)
!7328 = !DILocalVariable(name: "size", arg: 2, scope: !7322, file: !7323, line: 38, type: !7)
!7329 = !DILocation(line: 38, column: 75, scope: !7322)
!7330 = !DILocation(line: 40, column: 2, scope: !7322)
!7331 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7332, file: !7332, line: 178, type: !7333, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7332 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7333 = !DISubroutineType(types: !7334)
!7334 = !{null, !7026, !410, !347}
!7335 = !DILocalVariable(name: "ptr", arg: 1, scope: !7331, file: !7332, line: 178, type: !7026)
!7336 = !DILocation(line: 178, column: 60, scope: !7331)
!7337 = !DILocalVariable(name: "size", arg: 2, scope: !7331, file: !7332, line: 178, type: !410)
!7338 = !DILocation(line: 178, column: 72, scope: !7331)
!7339 = !DILocalVariable(name: "type", arg: 3, scope: !7331, file: !7332, line: 179, type: !347)
!7340 = !DILocation(line: 179, column: 15, scope: !7331)
!7341 = !DILocation(line: 179, column: 23, scope: !7331)
!7342 = distinct !DISubprogram(name: "kobject_name", scope: !303, file: !303, line: 88, type: !7343, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!282, !7345}
!7345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7346, size: 64)
!7346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!7347 = !DILocalVariable(name: "kobj", arg: 1, scope: !7342, file: !303, line: 88, type: !7345)
!7348 = !DILocation(line: 88, column: 62, scope: !7342)
!7349 = !DILocation(line: 90, column: 9, scope: !7342)
!7350 = !DILocation(line: 90, column: 15, scope: !7342)
!7351 = !DILocation(line: 90, column: 2, scope: !7342)
!7352 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !6267, file: !6267, line: 231, type: !7353, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7353 = !DISubroutineType(types: !7354)
!7354 = !{!437, !7355}
!7355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7356, size: 64)
!7356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6274)
!7357 = !DILocalVariable(name: "pdev", arg: 1, scope: !7352, file: !6267, line: 231, type: !7355)
!7358 = !DILocation(line: 231, column: 72, scope: !7352)
!7359 = !DILocation(line: 233, column: 26, scope: !7352)
!7360 = !DILocation(line: 233, column: 32, scope: !7352)
!7361 = !DILocation(line: 233, column: 9, scope: !7352)
!7362 = !DILocation(line: 233, column: 2, scope: !7352)
!7363 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !7003, file: !7003, line: 384, type: !4560, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7364 = !DILocalVariable(name: "dev", arg: 1, scope: !7363, file: !7003, line: 384, type: !298)
!7365 = !DILocation(line: 384, column: 54, scope: !7363)
!7366 = !DILocation(line: 386, column: 29, scope: !7363)
!7367 = !DILocation(line: 386, column: 9, scope: !7363)
!7368 = !DILocation(line: 386, column: 2, scope: !7363)
!7369 = distinct !DISubprogram(name: "pm_runtime_set_suspended", scope: !7003, file: !7003, line: 509, type: !4560, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7370 = !DILocalVariable(name: "dev", arg: 1, scope: !7369, file: !7003, line: 509, type: !298)
!7371 = !DILocation(line: 509, column: 59, scope: !7369)
!7372 = !DILocation(line: 511, column: 33, scope: !7369)
!7373 = !DILocation(line: 511, column: 9, scope: !7369)
!7374 = !DILocation(line: 511, column: 2, scope: !7369)
!7375 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !121, file: !121, line: 655, type: !7125, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7376 = !DILocalVariable(name: "dev", arg: 1, scope: !7375, file: !121, line: 655, type: !4847)
!7377 = !DILocation(line: 655, column: 58, scope: !7375)
!7378 = !DILocation(line: 657, column: 9, scope: !7375)
!7379 = !DILocation(line: 657, column: 14, scope: !7375)
!7380 = !DILocation(line: 657, column: 2, scope: !7375)
!7381 = distinct !DISubprogram(name: "xhci_mvebu_mbus_init_quirk", scope: !7382, file: !7382, line: 17, type: !5457, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7382 = !DIFile(filename: "drivers/usb/host/xhci-mvebu.h", directory: "/home/lizy2001/genbc/linux")
!7383 = !DILocalVariable(name: "hcd", arg: 1, scope: !7381, file: !7382, line: 17, type: !291)
!7384 = !DILocation(line: 17, column: 62, scope: !7381)
!7385 = !DILocation(line: 19, column: 2, scope: !7381)
!7386 = distinct !DISubprogram(name: "xhci_mvebu_a3700_init_quirk", scope: !7382, file: !7382, line: 22, type: !5457, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7387 = !DILocalVariable(name: "hcd", arg: 1, scope: !7386, file: !7382, line: 22, type: !291)
!7388 = !DILocation(line: 22, column: 63, scope: !7386)
!7389 = !DILocation(line: 24, column: 2, scope: !7386)
!7390 = distinct !DISubprogram(name: "xhci_rcar_start", scope: !7391, file: !7391, line: 20, type: !289, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7391 = !DIFile(filename: "drivers/usb/host/xhci-rcar.h", directory: "/home/lizy2001/genbc/linux")
!7392 = !DILocalVariable(name: "hcd", arg: 1, scope: !7390, file: !7391, line: 20, type: !291)
!7393 = !DILocation(line: 20, column: 52, scope: !7390)
!7394 = !DILocation(line: 22, column: 1, scope: !7390)
!7395 = distinct !DISubprogram(name: "xhci_rcar_init_quirk", scope: !7391, file: !7391, line: 24, type: !5457, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7396 = !DILocalVariable(name: "hcd", arg: 1, scope: !7395, file: !7391, line: 24, type: !291)
!7397 = !DILocation(line: 24, column: 56, scope: !7395)
!7398 = !DILocation(line: 26, column: 2, scope: !7395)
!7399 = distinct !DISubprogram(name: "xhci_rcar_resume_quirk", scope: !7391, file: !7391, line: 29, type: !5457, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7400 = !DILocalVariable(name: "hcd", arg: 1, scope: !7399, file: !7391, line: 29, type: !291)
!7401 = !DILocation(line: 29, column: 58, scope: !7399)
!7402 = !DILocation(line: 31, column: 2, scope: !7399)
!7403 = distinct !DISubprogram(name: "xhci_plat_suspend", scope: !3, file: !3, line: 413, type: !4560, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7404 = !DILocalVariable(name: "dev", arg: 1, scope: !7403, file: !3, line: 413, type: !298)
!7405 = !DILocation(line: 413, column: 60, scope: !7403)
!7406 = !DILocalVariable(name: "hcd", scope: !7403, file: !3, line: 415, type: !291)
!7407 = !DILocation(line: 415, column: 18, scope: !7403)
!7408 = !DILocation(line: 415, column: 40, scope: !7403)
!7409 = !DILocation(line: 415, column: 24, scope: !7403)
!7410 = !DILocalVariable(name: "xhci", scope: !7403, file: !3, line: 416, type: !5847)
!7411 = !DILocation(line: 416, column: 19, scope: !7403)
!7412 = !DILocation(line: 416, column: 38, scope: !7403)
!7413 = !DILocation(line: 416, column: 26, scope: !7403)
!7414 = !DILocalVariable(name: "ret", scope: !7403, file: !3, line: 417, type: !347)
!7415 = !DILocation(line: 417, column: 6, scope: !7403)
!7416 = !DILocation(line: 419, column: 32, scope: !7403)
!7417 = !DILocation(line: 419, column: 8, scope: !7403)
!7418 = !DILocation(line: 419, column: 6, scope: !7403)
!7419 = !DILocation(line: 420, column: 6, scope: !7420)
!7420 = distinct !DILexicalBlock(scope: !7403, file: !3, line: 420, column: 6)
!7421 = !DILocation(line: 420, column: 6, scope: !7403)
!7422 = !DILocation(line: 421, column: 10, scope: !7420)
!7423 = !DILocation(line: 421, column: 3, scope: !7420)
!7424 = !DILocation(line: 426, column: 22, scope: !7403)
!7425 = !DILocation(line: 426, column: 46, scope: !7403)
!7426 = !DILocation(line: 426, column: 28, scope: !7403)
!7427 = !DILocation(line: 426, column: 9, scope: !7403)
!7428 = !DILocation(line: 426, column: 2, scope: !7403)
!7429 = !DILocation(line: 427, column: 1, scope: !7403)
!7430 = distinct !DISubprogram(name: "xhci_plat_resume", scope: !3, file: !3, line: 429, type: !4560, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7431 = !DILocalVariable(name: "dev", arg: 1, scope: !7430, file: !3, line: 429, type: !298)
!7432 = !DILocation(line: 429, column: 59, scope: !7430)
!7433 = !DILocalVariable(name: "hcd", scope: !7430, file: !3, line: 431, type: !291)
!7434 = !DILocation(line: 431, column: 18, scope: !7430)
!7435 = !DILocation(line: 431, column: 40, scope: !7430)
!7436 = !DILocation(line: 431, column: 24, scope: !7430)
!7437 = !DILocalVariable(name: "xhci", scope: !7430, file: !3, line: 432, type: !5847)
!7438 = !DILocation(line: 432, column: 19, scope: !7430)
!7439 = !DILocation(line: 432, column: 38, scope: !7430)
!7440 = !DILocation(line: 432, column: 26, scope: !7430)
!7441 = !DILocalVariable(name: "ret", scope: !7430, file: !3, line: 433, type: !347)
!7442 = !DILocation(line: 433, column: 6, scope: !7430)
!7443 = !DILocation(line: 435, column: 31, scope: !7430)
!7444 = !DILocation(line: 435, column: 8, scope: !7430)
!7445 = !DILocation(line: 435, column: 6, scope: !7430)
!7446 = !DILocation(line: 436, column: 6, scope: !7447)
!7447 = distinct !DILexicalBlock(scope: !7430, file: !3, line: 436, column: 6)
!7448 = !DILocation(line: 436, column: 6, scope: !7430)
!7449 = !DILocation(line: 437, column: 10, scope: !7447)
!7450 = !DILocation(line: 437, column: 3, scope: !7447)
!7451 = !DILocation(line: 439, column: 20, scope: !7430)
!7452 = !DILocation(line: 439, column: 8, scope: !7430)
!7453 = !DILocation(line: 439, column: 6, scope: !7430)
!7454 = !DILocation(line: 440, column: 6, scope: !7455)
!7455 = distinct !DILexicalBlock(scope: !7430, file: !3, line: 440, column: 6)
!7456 = !DILocation(line: 440, column: 6, scope: !7430)
!7457 = !DILocation(line: 441, column: 10, scope: !7455)
!7458 = !DILocation(line: 441, column: 3, scope: !7455)
!7459 = !DILocation(line: 443, column: 21, scope: !7430)
!7460 = !DILocation(line: 443, column: 2, scope: !7430)
!7461 = !DILocation(line: 444, column: 24, scope: !7430)
!7462 = !DILocation(line: 444, column: 2, scope: !7430)
!7463 = !DILocation(line: 445, column: 20, scope: !7430)
!7464 = !DILocation(line: 445, column: 2, scope: !7430)
!7465 = !DILocation(line: 447, column: 2, scope: !7430)
!7466 = !DILocation(line: 448, column: 1, scope: !7430)
!7467 = distinct !DISubprogram(name: "xhci_plat_runtime_suspend", scope: !3, file: !3, line: 450, type: !4560, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7468 = !DILocalVariable(name: "dev", arg: 1, scope: !7467, file: !3, line: 450, type: !298)
!7469 = !DILocation(line: 450, column: 68, scope: !7467)
!7470 = !DILocalVariable(name: "hcd", scope: !7467, file: !3, line: 452, type: !291)
!7471 = !DILocation(line: 452, column: 19, scope: !7467)
!7472 = !DILocation(line: 452, column: 41, scope: !7467)
!7473 = !DILocation(line: 452, column: 25, scope: !7467)
!7474 = !DILocalVariable(name: "xhci", scope: !7467, file: !3, line: 453, type: !5847)
!7475 = !DILocation(line: 453, column: 19, scope: !7467)
!7476 = !DILocation(line: 453, column: 38, scope: !7467)
!7477 = !DILocation(line: 453, column: 26, scope: !7467)
!7478 = !DILocalVariable(name: "ret", scope: !7467, file: !3, line: 454, type: !347)
!7479 = !DILocation(line: 454, column: 6, scope: !7467)
!7480 = !DILocation(line: 456, column: 32, scope: !7467)
!7481 = !DILocation(line: 456, column: 8, scope: !7467)
!7482 = !DILocation(line: 456, column: 6, scope: !7467)
!7483 = !DILocation(line: 457, column: 6, scope: !7484)
!7484 = distinct !DILexicalBlock(scope: !7467, file: !3, line: 457, column: 6)
!7485 = !DILocation(line: 457, column: 6, scope: !7467)
!7486 = !DILocation(line: 458, column: 10, scope: !7484)
!7487 = !DILocation(line: 458, column: 3, scope: !7484)
!7488 = !DILocation(line: 460, column: 22, scope: !7467)
!7489 = !DILocation(line: 460, column: 9, scope: !7467)
!7490 = !DILocation(line: 460, column: 2, scope: !7467)
!7491 = !DILocation(line: 461, column: 1, scope: !7467)
!7492 = distinct !DISubprogram(name: "xhci_plat_runtime_resume", scope: !3, file: !3, line: 463, type: !4560, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7493 = !DILocalVariable(name: "dev", arg: 1, scope: !7492, file: !3, line: 463, type: !298)
!7494 = !DILocation(line: 463, column: 67, scope: !7492)
!7495 = !DILocalVariable(name: "hcd", scope: !7492, file: !3, line: 465, type: !291)
!7496 = !DILocation(line: 465, column: 19, scope: !7492)
!7497 = !DILocation(line: 465, column: 41, scope: !7492)
!7498 = !DILocation(line: 465, column: 25, scope: !7492)
!7499 = !DILocalVariable(name: "xhci", scope: !7492, file: !3, line: 466, type: !5847)
!7500 = !DILocation(line: 466, column: 19, scope: !7492)
!7501 = !DILocation(line: 466, column: 38, scope: !7492)
!7502 = !DILocation(line: 466, column: 26, scope: !7492)
!7503 = !DILocation(line: 468, column: 21, scope: !7492)
!7504 = !DILocation(line: 468, column: 9, scope: !7492)
!7505 = !DILocation(line: 468, column: 2, scope: !7492)
!7506 = distinct !DISubprogram(name: "xhci_priv_suspend_quirk", scope: !3, file: !3, line: 57, type: !5457, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7507 = !DILocalVariable(name: "hcd", arg: 1, scope: !7506, file: !3, line: 57, type: !291)
!7508 = !DILocation(line: 57, column: 52, scope: !7506)
!7509 = !DILocalVariable(name: "priv", scope: !7506, file: !3, line: 59, type: !277)
!7510 = !DILocation(line: 59, column: 25, scope: !7506)
!7511 = !DILocation(line: 59, column: 32, scope: !7506)
!7512 = !DILocation(line: 61, column: 7, scope: !7513)
!7513 = distinct !DILexicalBlock(scope: !7506, file: !3, line: 61, column: 6)
!7514 = !DILocation(line: 61, column: 13, scope: !7513)
!7515 = !DILocation(line: 61, column: 6, scope: !7506)
!7516 = !DILocation(line: 62, column: 3, scope: !7513)
!7517 = !DILocation(line: 64, column: 9, scope: !7506)
!7518 = !DILocation(line: 64, column: 15, scope: !7506)
!7519 = !DILocation(line: 64, column: 29, scope: !7506)
!7520 = !DILocation(line: 64, column: 2, scope: !7506)
!7521 = !DILocation(line: 65, column: 1, scope: !7506)
!7522 = distinct !DISubprogram(name: "device_may_wakeup", scope: !4709, file: !4709, line: 82, type: !7523, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7523 = !DISubroutineType(types: !7524)
!7524 = !{!579, !298}
!7525 = !DILocalVariable(name: "dev", arg: 1, scope: !7522, file: !4709, line: 82, type: !298)
!7526 = !DILocation(line: 82, column: 53, scope: !7522)
!7527 = !DILocation(line: 84, column: 9, scope: !7522)
!7528 = !DILocation(line: 84, column: 14, scope: !7522)
!7529 = !DILocation(line: 84, column: 20, scope: !7522)
!7530 = !DILocation(line: 84, column: 31, scope: !7522)
!7531 = !DILocation(line: 84, column: 36, scope: !7522)
!7532 = !DILocation(line: 84, column: 41, scope: !7522)
!7533 = !DILocation(line: 84, column: 47, scope: !7522)
!7534 = !DILocation(line: 84, column: 35, scope: !7522)
!7535 = !DILocation(line: 84, column: 34, scope: !7522)
!7536 = !DILocation(line: 0, scope: !7522)
!7537 = !DILocation(line: 84, column: 2, scope: !7522)
!7538 = distinct !DISubprogram(name: "xhci_priv_resume_quirk", scope: !3, file: !3, line: 67, type: !5457, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !335)
!7539 = !DILocalVariable(name: "hcd", arg: 1, scope: !7538, file: !3, line: 67, type: !291)
!7540 = !DILocation(line: 67, column: 51, scope: !7538)
!7541 = !DILocalVariable(name: "priv", scope: !7538, file: !3, line: 69, type: !277)
!7542 = !DILocation(line: 69, column: 25, scope: !7538)
!7543 = !DILocation(line: 69, column: 32, scope: !7538)
!7544 = !DILocation(line: 71, column: 7, scope: !7545)
!7545 = distinct !DILexicalBlock(scope: !7538, file: !3, line: 71, column: 6)
!7546 = !DILocation(line: 71, column: 13, scope: !7545)
!7547 = !DILocation(line: 71, column: 6, scope: !7538)
!7548 = !DILocation(line: 72, column: 3, scope: !7545)
!7549 = !DILocation(line: 74, column: 9, scope: !7538)
!7550 = !DILocation(line: 74, column: 15, scope: !7538)
!7551 = !DILocation(line: 74, column: 28, scope: !7538)
!7552 = !DILocation(line: 74, column: 2, scope: !7538)
!7553 = !DILocation(line: 75, column: 1, scope: !7538)
