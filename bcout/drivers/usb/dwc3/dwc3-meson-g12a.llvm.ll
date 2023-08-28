; ModuleID = '../bcout/drivers/usb/dwc3/dwc3-meson-g12a.llvm.bc'
source_filename = "drivers/usb/dwc3/dwc3-meson-g12a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_dwc3_meson_g12a_driver_init6:\09\09\09"
module asm ".long\09dwc3_meson_g12a_driver_init - .\09\09\09"
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
%struct.dwc3_meson_g12a_drvdata = type { i8, i8, %struct.clk_bulk_data*, i32, i8**, i32, i32 (%struct.dwc3_meson_g12a*, i8*)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*)*, i32 (%struct.dwc3_meson_g12a*)* }
%struct.clk_bulk_data = type { i8*, %struct.clk* }
%struct.clk = type opaque
%struct.dwc3_meson_g12a = type { %struct.device*, [3 x %struct.regmap*], %struct.regmap*, %struct.reset_control*, [3 x %struct.phy*], i32, i32, i32, i32, %struct.regulator*, %struct.usb_role_switch_desc, %struct.usb_role_switch*, %struct.dwc3_meson_g12a_drvdata* }
%struct.regmap = type opaque
%struct.reset_control = type opaque
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.regulator = type opaque
%struct.usb_role_switch_desc = type { %struct.fwnode_handle*, %struct.device*, %struct.device*, %struct.device*, i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*)*, i8, i8*, i8* }
%struct.usb_role_switch = type opaque
%struct.regmap_config = type { i8*, i32, i32, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i8, void (i8*)*, void (i8*)*, i8*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i8, i32, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.reg_default*, i32, i32, i8*, i32, i64, i64, i8, i8, i8, i8, i32, i32, %struct.regmap_range_cfg*, i32, i8, i32, i32, i8 }
%struct.regmap_access_table = type { %struct.regmap_range*, i32, %struct.regmap_range*, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_dev_auxdata = type { i8*, i64, i8*, i8* }

@__UNIQUE_ID___addressable_dwc3_meson_g12a_driver_init330 = internal global i8* bitcast (i32 ()* @dwc3_meson_g12a_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@dwc3_meson_g12a_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @dwc3_meson_g12a_probe, i32 (%struct.platform_device*)* @dwc3_meson_g12a_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([6 x %struct.of_device_id], [6 x %struct.of_device_id]* @dwc3_meson_g12a_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @dwc3_meson_g12a_dev_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !238
@__exitcall_dwc3_meson_g12a_driver_exit = internal global void ()* @dwc3_meson_g12a_driver_exit, section ".exitcall.exit", align 8, !dbg !209
@__UNIQUE_ID_file331 = internal constant [54 x i8] c"dwc3_meson_g12a.file=drivers/usb/dwc3/dwc3-meson-g12a\00", section ".modinfo", align 1, !dbg !216
@__UNIQUE_ID_license332 = internal constant [31 x i8] c"dwc3_meson_g12a.license=GPL v2\00", section ".modinfo", align 1, !dbg !223
@__UNIQUE_ID_description333 = internal constant [62 x i8] c"dwc3_meson_g12a.description=Amlogic Meson G12A USB Glue Layer\00", section ".modinfo", align 1, !dbg !228
@__UNIQUE_ID_author334 = internal constant [64 x i8] c"dwc3_meson_g12a.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1, !dbg !233
@.str = private unnamed_addr constant [16 x i8] c"dwc3-meson-g12a\00", align 1
@dwc3_meson_g12a_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* getelementptr inbounds (%struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* @gxl_drvdata, i32 0, i32 0) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* getelementptr inbounds (%struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* @gxm_drvdata, i32 0, i32 0) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* getelementptr inbounds (%struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* @axg_drvdata, i32 0, i32 0) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* getelementptr inbounds (%struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* @g12a_drvdata, i32 0, i32 0) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* getelementptr inbounds (%struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* @a1_drvdata, i32 0, i32 0) }, %struct.of_device_id zeroinitializer], align 16, !dbg !4979
@dwc3_meson_g12a_dev_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @dwc3_meson_g12a_suspend, i32 (%struct.device*)* @dwc3_meson_g12a_resume, i32 (%struct.device*)* @dwc3_meson_g12a_suspend, i32 (%struct.device*)* @dwc3_meson_g12a_resume, i32 (%struct.device*)* @dwc3_meson_g12a_suspend, i32 (%struct.device*)* @dwc3_meson_g12a_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @dwc3_meson_g12a_runtime_suspend, i32 (%struct.device*)* @dwc3_meson_g12a_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !5269
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get device reset, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"USB2 ports: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"USB3 ports: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to switch OTG mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"snps,dwc3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"snps,dwc2\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to register Role Switch\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"switching to Host Mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"switching to Device Mode\0A\00", align 1
@dwc3_meson_g12a_role_set.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4972
@.str.12 = private unnamed_addr constant [26 x i8] c"Broken manual OTG switch\0A\00", align 1
@gxl_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, %struct.clk_bulk_data* getelementptr inbounds ([2 x %struct.clk_bulk_data], [2 x %struct.clk_bulk_data]* @meson_gxl_clocks, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @meson_a1_phy_names, i32 0, i32 0), i32 2, i32 (%struct.dwc3_meson_g12a*, i8*)* @dwc3_meson_gxl_setup_regmaps, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_usb2_init_phy, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_set_phy_mode, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_gxl_usb_init, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_gxl_usb_post_init }, align 8, !dbg !4982
@gxm_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, %struct.clk_bulk_data* getelementptr inbounds ([2 x %struct.clk_bulk_data], [2 x %struct.clk_bulk_data]* @meson_gxl_clocks, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @meson_gxm_phy_names, i32 0, i32 0), i32 3, i32 (%struct.dwc3_meson_g12a*, i8*)* @dwc3_meson_gxl_setup_regmaps, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_usb2_init_phy, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_set_phy_mode, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_gxl_usb_init, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_gxl_usb_post_init }, align 8, !dbg !5250
@axg_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, %struct.clk_bulk_data* getelementptr inbounds ([2 x %struct.clk_bulk_data], [2 x %struct.clk_bulk_data]* @meson_gxl_clocks, i32 0, i32 0), i32 2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @meson_a1_phy_names, i32 0, i32 0), i32 2, i32 (%struct.dwc3_meson_g12a*, i8*)* @dwc3_meson_gxl_setup_regmaps, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_usb2_init_phy, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_gxl_set_phy_mode, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb_init, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_gxl_usb_post_init }, align 8, !dbg !5255
@g12a_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, %struct.clk_bulk_data* getelementptr inbounds ([1 x %struct.clk_bulk_data], [1 x %struct.clk_bulk_data]* @meson_g12a_clocks, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @meson_g12a_phy_names, i32 0, i32 0), i32 3, i32 (%struct.dwc3_meson_g12a*, i8*)* @dwc3_meson_g12a_setup_regmaps, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_g12a_usb2_init_phy, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_g12a_set_phy_mode, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb_init, i32 (%struct.dwc3_meson_g12a*)* null }, align 8, !dbg !5257
@a1_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 0, i8 0, %struct.clk_bulk_data* getelementptr inbounds ([3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* @meson_a1_clocks, i32 0, i32 0), i32 3, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @meson_a1_phy_names, i32 0, i32 0), i32 2, i32 (%struct.dwc3_meson_g12a*, i8*)* @dwc3_meson_g12a_setup_regmaps, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_g12a_usb2_init_phy, i32 (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_g12a_set_phy_mode, i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb_init, i32 (%struct.dwc3_meson_g12a*)* null }, align 8, !dbg !5264
@meson_gxl_clocks = internal global [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.clk* null }, %struct.clk_bulk_data { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct.clk* null }], align 16, !dbg !5152
@meson_a1_phy_names = internal constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)], align 16, !dbg !5155
@.str.13 = private unnamed_addr constant [9 x i8] c"usb_ctrl\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"usb2-phy0\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"usb2-phy1\00", align 1
@phy_meson_g12a_usb_glue_regmap_conf = internal constant %struct.regmap_config { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 8, i32 4, i32 0, i32 32, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i8 0, void (i8*)* null, void (i8*)* null, i8* null, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i8 0, i32 20, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.reg_default* null, i32 0, i32 0, i8* null, i32 0, i64 0, i64 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, %struct.regmap_range_cfg* null, i32 0, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !5158
@.str.17 = private unnamed_addr constant [9 x i8] c"usb-glue\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@meson_gxm_phy_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)], align 16, !dbg !5252
@.str.19 = private unnamed_addr constant [10 x i8] c"usb2-phy2\00", align 1
@meson_g12a_clocks = internal global [1 x %struct.clk_bulk_data] zeroinitializer, align 16, !dbg !5259
@meson_g12a_phy_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)], align 16, !dbg !5262
@.str.20 = private unnamed_addr constant [10 x i8] c"usb3-phy0\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"u2p-%d\00", align 1
@meson_a1_clocks = internal global [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.clk* null }, %struct.clk_bulk_data { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct.clk* null }, %struct.clk_bulk_data { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct.clk* null }], align 16, !dbg !5266
@.str.22 = private unnamed_addr constant [8 x i8] c"usb_bus\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"xtal_usb_ctrl\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dwc3_meson_g12a_driver_init330 to i8*), i8* bitcast (void ()* @dwc3_meson_g12a_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_dwc3_meson_g12a_driver_exit to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_file331, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_license332, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_description333, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_author334, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_driver_init() #0 section ".init.text" !dbg !5276 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @dwc3_meson_g12a_driver, %struct.module* null) #6, !dbg !5279
  ret i32 %call, !dbg !5279
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_meson_g12a_driver_exit() #0 section ".exit.text" !dbg !5280 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @dwc3_meson_g12a_driver) #6, !dbg !5281
  ret void, !dbg !5281
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_probe(%struct.platform_device* %pdev) #2 !dbg !5282 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %dev = alloca %struct.device*, align 8
  %np = alloca %struct.device_node*, align 8
  %base = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5289
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5290
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5288
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5291, metadata !DIExpression()), !dbg !5292
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5293
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !5294
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5294
  store %struct.device_node* %2, %struct.device_node** %np, align 8, !dbg !5292
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5297, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5299, metadata !DIExpression()), !dbg !5300
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5301
  %call = call i8* @devm_kzalloc(%struct.device* %3, i64 184, i32 3264) #6, !dbg !5302
  %4 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !5302
  store %struct.dwc3_meson_g12a* %4, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5303
  %5 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5304
  %tobool = icmp ne %struct.dwc3_meson_g12a* %5, null, !dbg !5304
  br i1 %tobool, label %if.end, label %if.then, !dbg !5306

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

if.end:                                           ; preds = %entry
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5308
  %call2 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %6, i32 0) #6, !dbg !5309
  store i8* %call2, i8** %base, align 8, !dbg !5310
  %7 = load i8*, i8** %base, align 8, !dbg !5311
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #6, !dbg !5313
  br i1 %call3, label %if.then4, label %if.end6, !dbg !5314

if.then4:                                         ; preds = %if.end
  %8 = load i8*, i8** %base, align 8, !dbg !5315
  %call5 = call i64 @PTR_ERR(i8* %8) #6, !dbg !5316
  %conv = trunc i64 %call5 to i32, !dbg !5316
  store i32 %conv, i32* %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

if.end6:                                          ; preds = %if.end
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5318
  %dev7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !5319
  %call8 = call i8* @of_device_get_match_data(%struct.device* %dev7) #6, !dbg !5320
  %10 = bitcast i8* %call8 to %struct.dwc3_meson_g12a_drvdata*, !dbg !5320
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5321
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 12, !dbg !5322
  store %struct.dwc3_meson_g12a_drvdata* %10, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !5323
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5324
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5325
  %dev9 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %13, i32 0, i32 0, !dbg !5326
  store %struct.device* %12, %struct.device** %dev9, align 8, !dbg !5327
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5328
  %call10 = call %struct.regulator* @devm_regulator_get_optional(%struct.device* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5329
  %15 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5330
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %15, i32 0, i32 9, !dbg !5331
  store %struct.regulator* %call10, %struct.regulator** %vbus, align 8, !dbg !5332
  %16 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5333
  %vbus11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %16, i32 0, i32 9, !dbg !5335
  %17 = load %struct.regulator*, %struct.regulator** %vbus11, align 8, !dbg !5335
  %18 = bitcast %struct.regulator* %17 to i8*, !dbg !5333
  %call12 = call zeroext i1 @IS_ERR(i8* %18) #6, !dbg !5336
  br i1 %call12, label %if.then13, label %if.end23, !dbg !5337

if.then13:                                        ; preds = %if.end6
  %19 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5338
  %vbus14 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %19, i32 0, i32 9, !dbg !5341
  %20 = load %struct.regulator*, %struct.regulator** %vbus14, align 8, !dbg !5341
  %21 = bitcast %struct.regulator* %20 to i8*, !dbg !5338
  %call15 = call i64 @PTR_ERR(i8* %21) #6, !dbg !5342
  %cmp = icmp eq i64 %call15, -517, !dbg !5343
  br i1 %cmp, label %if.then17, label %if.end21, !dbg !5344

if.then17:                                        ; preds = %if.then13
  %22 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5345
  %vbus18 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %22, i32 0, i32 9, !dbg !5346
  %23 = load %struct.regulator*, %struct.regulator** %vbus18, align 8, !dbg !5346
  %24 = bitcast %struct.regulator* %23 to i8*, !dbg !5345
  %call19 = call i64 @PTR_ERR(i8* %24) #6, !dbg !5347
  %conv20 = trunc i64 %call19 to i32, !dbg !5347
  store i32 %conv20, i32* %retval, align 4, !dbg !5348
  br label %return, !dbg !5348

if.end21:                                         ; preds = %if.then13
  %25 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5349
  %vbus22 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %25, i32 0, i32 9, !dbg !5350
  store %struct.regulator* null, %struct.regulator** %vbus22, align 8, !dbg !5351
  br label %if.end23, !dbg !5352

if.end23:                                         ; preds = %if.end21, %if.end6
  %26 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5353
  %27 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5354
  %drvdata24 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %27, i32 0, i32 12, !dbg !5355
  %28 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata24, align 8, !dbg !5355
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %28, i32 0, i32 3, !dbg !5356
  %29 = load i32, i32* %num_clks, align 8, !dbg !5356
  %30 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5357
  %drvdata25 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %30, i32 0, i32 12, !dbg !5358
  %31 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata25, align 8, !dbg !5358
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %31, i32 0, i32 2, !dbg !5359
  %32 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks, align 8, !dbg !5359
  %call26 = call i32 @devm_clk_bulk_get(%struct.device* %26, i32 %29, %struct.clk_bulk_data* %32) #6, !dbg !5360
  store i32 %call26, i32* %ret, align 4, !dbg !5361
  %33 = load i32, i32* %ret, align 4, !dbg !5362
  %tobool27 = icmp ne i32 %33, 0, !dbg !5362
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5364

if.then28:                                        ; preds = %if.end23
  %34 = load i32, i32* %ret, align 4, !dbg !5365
  store i32 %34, i32* %retval, align 4, !dbg !5366
  br label %return, !dbg !5366

if.end29:                                         ; preds = %if.end23
  %35 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5367
  %drvdata30 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %35, i32 0, i32 12, !dbg !5368
  %36 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata30, align 8, !dbg !5368
  %num_clks31 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %36, i32 0, i32 3, !dbg !5369
  %37 = load i32, i32* %num_clks31, align 8, !dbg !5369
  %38 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5370
  %drvdata32 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %38, i32 0, i32 12, !dbg !5371
  %39 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata32, align 8, !dbg !5371
  %clks33 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %39, i32 0, i32 2, !dbg !5372
  %40 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks33, align 8, !dbg !5372
  %call34 = call i32 @clk_bulk_prepare_enable(i32 %37, %struct.clk_bulk_data* %40) #6, !dbg !5373
  store i32 %call34, i32* %ret, align 4, !dbg !5374
  %41 = load i32, i32* %ret, align 4, !dbg !5375
  %tobool35 = icmp ne i32 %41, 0, !dbg !5375
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5377

if.then36:                                        ; preds = %if.end29
  %42 = load i32, i32* %ret, align 4, !dbg !5378
  store i32 %42, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end37:                                         ; preds = %if.end29
  %43 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5380
  %44 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5381
  %45 = bitcast %struct.dwc3_meson_g12a* %44 to i8*, !dbg !5381
  call void @platform_set_drvdata(%struct.platform_device* %43, i8* %45) #6, !dbg !5382
  %46 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5383
  %call38 = call %struct.reset_control* @devm_reset_control_get_shared(%struct.device* %46, i8* null) #6, !dbg !5384
  %47 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5385
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %47, i32 0, i32 3, !dbg !5386
  store %struct.reset_control* %call38, %struct.reset_control** %reset, align 8, !dbg !5387
  %48 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5388
  %reset39 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %48, i32 0, i32 3, !dbg !5390
  %49 = load %struct.reset_control*, %struct.reset_control** %reset39, align 8, !dbg !5390
  %50 = bitcast %struct.reset_control* %49 to i8*, !dbg !5388
  %call40 = call zeroext i1 @IS_ERR(i8* %50) #6, !dbg !5391
  br i1 %call40, label %if.then41, label %if.end45, !dbg !5392

if.then41:                                        ; preds = %if.end37
  %51 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5393
  %reset42 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %51, i32 0, i32 3, !dbg !5395
  %52 = load %struct.reset_control*, %struct.reset_control** %reset42, align 8, !dbg !5395
  %53 = bitcast %struct.reset_control* %52 to i8*, !dbg !5393
  %call43 = call i64 @PTR_ERR(i8* %53) #6, !dbg !5396
  %conv44 = trunc i64 %call43 to i32, !dbg !5396
  store i32 %conv44, i32* %ret, align 4, !dbg !5397
  %54 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5398
  %55 = load i32, i32* %ret, align 4, !dbg !5398
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %55) #7, !dbg !5398
  br label %err_disable_clks, !dbg !5399

if.end45:                                         ; preds = %if.end37
  %56 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5400
  %reset46 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %56, i32 0, i32 3, !dbg !5401
  %57 = load %struct.reset_control*, %struct.reset_control** %reset46, align 8, !dbg !5401
  %call47 = call i32 @reset_control_reset(%struct.reset_control* %57) #6, !dbg !5402
  store i32 %call47, i32* %ret, align 4, !dbg !5403
  %58 = load i32, i32* %ret, align 4, !dbg !5404
  %tobool48 = icmp ne i32 %58, 0, !dbg !5404
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5406

if.then49:                                        ; preds = %if.end45
  br label %err_disable_clks, !dbg !5407

if.end50:                                         ; preds = %if.end45
  %59 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5408
  %call51 = call i32 @dwc3_meson_g12a_get_phys(%struct.dwc3_meson_g12a* %59) #6, !dbg !5409
  store i32 %call51, i32* %ret, align 4, !dbg !5410
  %60 = load i32, i32* %ret, align 4, !dbg !5411
  %tobool52 = icmp ne i32 %60, 0, !dbg !5411
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5413

if.then53:                                        ; preds = %if.end50
  br label %err_disable_clks, !dbg !5414

if.end54:                                         ; preds = %if.end50
  %61 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5415
  %drvdata55 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %61, i32 0, i32 12, !dbg !5416
  %62 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata55, align 8, !dbg !5416
  %setup_regmaps = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %62, i32 0, i32 6, !dbg !5417
  %63 = load i32 (%struct.dwc3_meson_g12a*, i8*)*, i32 (%struct.dwc3_meson_g12a*, i8*)** %setup_regmaps, align 8, !dbg !5417
  %64 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5418
  %65 = load i8*, i8** %base, align 8, !dbg !5419
  %call56 = call i32 %63(%struct.dwc3_meson_g12a* %64, i8* %65) #6, !dbg !5415
  store i32 %call56, i32* %ret, align 4, !dbg !5420
  %66 = load i32, i32* %ret, align 4, !dbg !5421
  %tobool57 = icmp ne i32 %66, 0, !dbg !5421
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !5423

if.then58:                                        ; preds = %if.end54
  %67 = load i32, i32* %ret, align 4, !dbg !5424
  store i32 %67, i32* %retval, align 4, !dbg !5425
  br label %return, !dbg !5425

if.end59:                                         ; preds = %if.end54
  %68 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5426
  %vbus60 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %68, i32 0, i32 9, !dbg !5428
  %69 = load %struct.regulator*, %struct.regulator** %vbus60, align 8, !dbg !5428
  %tobool61 = icmp ne %struct.regulator* %69, null, !dbg !5426
  br i1 %tobool61, label %if.then62, label %if.end68, !dbg !5429

if.then62:                                        ; preds = %if.end59
  %70 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5430
  %vbus63 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %70, i32 0, i32 9, !dbg !5432
  %71 = load %struct.regulator*, %struct.regulator** %vbus63, align 8, !dbg !5432
  %call64 = call i32 @regulator_enable(%struct.regulator* %71) #6, !dbg !5433
  store i32 %call64, i32* %ret, align 4, !dbg !5434
  %72 = load i32, i32* %ret, align 4, !dbg !5435
  %tobool65 = icmp ne i32 %72, 0, !dbg !5435
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !5437

if.then66:                                        ; preds = %if.then62
  br label %err_disable_clks, !dbg !5438

if.end67:                                         ; preds = %if.then62
  br label %if.end68, !dbg !5439

if.end68:                                         ; preds = %if.end67, %if.end59
  %73 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5440
  %call69 = call i32 @usb_get_dr_mode(%struct.device* %73) #6, !dbg !5441
  %74 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5442
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %74, i32 0, i32 5, !dbg !5443
  store i32 %call69, i32* %otg_mode, align 8, !dbg !5444
  %75 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5445
  %otg_mode70 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %75, i32 0, i32 5, !dbg !5447
  %76 = load i32, i32* %otg_mode70, align 8, !dbg !5447
  %cmp71 = icmp eq i32 %76, 2, !dbg !5448
  br i1 %cmp71, label %if.then73, label %if.else, !dbg !5449

if.then73:                                        ; preds = %if.end68
  %77 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5450
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %77, i32 0, i32 6, !dbg !5451
  store i32 6, i32* %otg_phy_mode, align 4, !dbg !5452
  br label %if.end75, !dbg !5450

if.else:                                          ; preds = %if.end68
  %78 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5453
  %otg_phy_mode74 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %78, i32 0, i32 6, !dbg !5454
  store i32 1, i32* %otg_phy_mode74, align 4, !dbg !5455
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then73
  %79 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5456
  %drvdata76 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %79, i32 0, i32 12, !dbg !5457
  %80 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata76, align 8, !dbg !5457
  %usb_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %80, i32 0, i32 9, !dbg !5458
  %81 = load i32 (%struct.dwc3_meson_g12a*)*, i32 (%struct.dwc3_meson_g12a*)** %usb_init, align 8, !dbg !5458
  %82 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5459
  %call77 = call i32 %81(%struct.dwc3_meson_g12a* %82) #6, !dbg !5456
  store i32 %call77, i32* %ret, align 4, !dbg !5460
  %83 = load i32, i32* %ret, align 4, !dbg !5461
  %tobool78 = icmp ne i32 %83, 0, !dbg !5461
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !5463

if.then79:                                        ; preds = %if.end75
  br label %err_disable_clks, !dbg !5464

if.end80:                                         ; preds = %if.end75
  store i32 0, i32* %i, align 4, !dbg !5465
  br label %for.cond, !dbg !5467

for.cond:                                         ; preds = %for.inc, %if.end80
  %84 = load i32, i32* %i, align 4, !dbg !5468
  %cmp81 = icmp slt i32 %84, 3, !dbg !5470
  br i1 %cmp81, label %for.body, label %for.end, !dbg !5471

for.body:                                         ; preds = %for.cond
  %85 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5472
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %85, i32 0, i32 4, !dbg !5474
  %86 = load i32, i32* %i, align 4, !dbg !5475
  %idxprom = sext i32 %86 to i64, !dbg !5472
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !5472
  %87 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !5472
  %call83 = call i32 @phy_init(%struct.phy* %87) #6, !dbg !5476
  store i32 %call83, i32* %ret, align 4, !dbg !5477
  %88 = load i32, i32* %ret, align 4, !dbg !5478
  %tobool84 = icmp ne i32 %88, 0, !dbg !5478
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !5480

if.then85:                                        ; preds = %for.body
  br label %err_disable_clks, !dbg !5481

if.end86:                                         ; preds = %for.body
  br label %for.inc, !dbg !5482

for.inc:                                          ; preds = %if.end86
  %89 = load i32, i32* %i, align 4, !dbg !5483
  %inc = add i32 %89, 1, !dbg !5483
  store i32 %inc, i32* %i, align 4, !dbg !5483
  br label %for.cond, !dbg !5484, !llvm.loop !5485

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5487
  br label %for.cond87, !dbg !5489

for.cond87:                                       ; preds = %for.inc98, %for.end
  %90 = load i32, i32* %i, align 4, !dbg !5490
  %cmp88 = icmp slt i32 %90, 3, !dbg !5492
  br i1 %cmp88, label %for.body90, label %for.end100, !dbg !5493

for.body90:                                       ; preds = %for.cond87
  %91 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5494
  %phys91 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %91, i32 0, i32 4, !dbg !5496
  %92 = load i32, i32* %i, align 4, !dbg !5497
  %idxprom92 = sext i32 %92 to i64, !dbg !5494
  %arrayidx93 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys91, i64 0, i64 %idxprom92, !dbg !5494
  %93 = load %struct.phy*, %struct.phy** %arrayidx93, align 8, !dbg !5494
  %call94 = call i32 @phy_power_on(%struct.phy* %93) #6, !dbg !5498
  store i32 %call94, i32* %ret, align 4, !dbg !5499
  %94 = load i32, i32* %ret, align 4, !dbg !5500
  %tobool95 = icmp ne i32 %94, 0, !dbg !5500
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !5502

if.then96:                                        ; preds = %for.body90
  br label %err_phys_exit, !dbg !5503

if.end97:                                         ; preds = %for.body90
  br label %for.inc98, !dbg !5504

for.inc98:                                        ; preds = %if.end97
  %95 = load i32, i32* %i, align 4, !dbg !5505
  %inc99 = add i32 %95, 1, !dbg !5505
  store i32 %inc99, i32* %i, align 4, !dbg !5505
  br label %for.cond87, !dbg !5506, !llvm.loop !5507

for.end100:                                       ; preds = %for.cond87
  %96 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5509
  %drvdata101 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %96, i32 0, i32 12, !dbg !5511
  %97 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata101, align 8, !dbg !5511
  %usb_post_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %97, i32 0, i32 10, !dbg !5512
  %98 = load i32 (%struct.dwc3_meson_g12a*)*, i32 (%struct.dwc3_meson_g12a*)** %usb_post_init, align 8, !dbg !5512
  %tobool102 = icmp ne i32 (%struct.dwc3_meson_g12a*)* %98, null, !dbg !5509
  br i1 %tobool102, label %if.then103, label %if.end110, !dbg !5513

if.then103:                                       ; preds = %for.end100
  %99 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5514
  %drvdata104 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %99, i32 0, i32 12, !dbg !5516
  %100 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata104, align 8, !dbg !5516
  %usb_post_init105 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %100, i32 0, i32 10, !dbg !5517
  %101 = load i32 (%struct.dwc3_meson_g12a*)*, i32 (%struct.dwc3_meson_g12a*)** %usb_post_init105, align 8, !dbg !5517
  %102 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5518
  %call106 = call i32 %101(%struct.dwc3_meson_g12a* %102) #6, !dbg !5514
  store i32 %call106, i32* %ret, align 4, !dbg !5519
  %103 = load i32, i32* %ret, align 4, !dbg !5520
  %tobool107 = icmp ne i32 %103, 0, !dbg !5520
  br i1 %tobool107, label %if.then108, label %if.end109, !dbg !5522

if.then108:                                       ; preds = %if.then103
  br label %err_phys_power, !dbg !5523

if.end109:                                        ; preds = %if.then103
  br label %if.end110, !dbg !5524

if.end110:                                        ; preds = %if.end109, %for.end100
  %104 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5525
  %105 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5526
  %call111 = call i32 @of_platform_populate(%struct.device_node* %104, %struct.of_device_id* null, %struct.of_dev_auxdata* null, %struct.device* %105) #6, !dbg !5527
  store i32 %call111, i32* %ret, align 4, !dbg !5528
  %106 = load i32, i32* %ret, align 4, !dbg !5529
  %tobool112 = icmp ne i32 %106, 0, !dbg !5529
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !5531

if.then113:                                       ; preds = %if.end110
  br label %err_phys_power, !dbg !5532

if.end114:                                        ; preds = %if.end110
  %107 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5533
  %108 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5534
  %call115 = call i32 @dwc3_meson_g12a_otg_init(%struct.platform_device* %107, %struct.dwc3_meson_g12a* %108) #6, !dbg !5535
  store i32 %call115, i32* %ret, align 4, !dbg !5536
  %109 = load i32, i32* %ret, align 4, !dbg !5537
  %tobool116 = icmp ne i32 %109, 0, !dbg !5537
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !5539

if.then117:                                       ; preds = %if.end114
  br label %err_phys_power, !dbg !5540

if.end118:                                        ; preds = %if.end114
  %110 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5541
  %call119 = call i32 @pm_runtime_set_active(%struct.device* %110) #6, !dbg !5542
  %111 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5543
  call void @pm_runtime_enable(%struct.device* %111) #6, !dbg !5544
  %112 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5545
  %call120 = call i32 @pm_runtime_get_sync(%struct.device* %112) #6, !dbg !5546
  store i32 0, i32* %retval, align 4, !dbg !5547
  br label %return, !dbg !5547

err_phys_power:                                   ; preds = %if.then117, %if.then113, %if.then108
  call void @llvm.dbg.label(metadata !5548), !dbg !5549
  store i32 0, i32* %i, align 4, !dbg !5550
  br label %for.cond121, !dbg !5552

for.cond121:                                      ; preds = %for.inc129, %err_phys_power
  %113 = load i32, i32* %i, align 4, !dbg !5553
  %cmp122 = icmp slt i32 %113, 3, !dbg !5555
  br i1 %cmp122, label %for.body124, label %for.end131, !dbg !5556

for.body124:                                      ; preds = %for.cond121
  %114 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5557
  %phys125 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %114, i32 0, i32 4, !dbg !5558
  %115 = load i32, i32* %i, align 4, !dbg !5559
  %idxprom126 = sext i32 %115 to i64, !dbg !5557
  %arrayidx127 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys125, i64 0, i64 %idxprom126, !dbg !5557
  %116 = load %struct.phy*, %struct.phy** %arrayidx127, align 8, !dbg !5557
  %call128 = call i32 @phy_power_off(%struct.phy* %116) #6, !dbg !5560
  br label %for.inc129, !dbg !5560

for.inc129:                                       ; preds = %for.body124
  %117 = load i32, i32* %i, align 4, !dbg !5561
  %inc130 = add i32 %117, 1, !dbg !5561
  store i32 %inc130, i32* %i, align 4, !dbg !5561
  br label %for.cond121, !dbg !5562, !llvm.loop !5563

for.end131:                                       ; preds = %for.cond121
  br label %err_phys_exit, !dbg !5564

err_phys_exit:                                    ; preds = %for.end131, %if.then96
  call void @llvm.dbg.label(metadata !5565), !dbg !5566
  store i32 0, i32* %i, align 4, !dbg !5567
  br label %for.cond132, !dbg !5569

for.cond132:                                      ; preds = %for.inc140, %err_phys_exit
  %118 = load i32, i32* %i, align 4, !dbg !5570
  %cmp133 = icmp slt i32 %118, 3, !dbg !5572
  br i1 %cmp133, label %for.body135, label %for.end142, !dbg !5573

for.body135:                                      ; preds = %for.cond132
  %119 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5574
  %phys136 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %119, i32 0, i32 4, !dbg !5575
  %120 = load i32, i32* %i, align 4, !dbg !5576
  %idxprom137 = sext i32 %120 to i64, !dbg !5574
  %arrayidx138 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys136, i64 0, i64 %idxprom137, !dbg !5574
  %121 = load %struct.phy*, %struct.phy** %arrayidx138, align 8, !dbg !5574
  %call139 = call i32 @phy_exit(%struct.phy* %121) #6, !dbg !5577
  br label %for.inc140, !dbg !5577

for.inc140:                                       ; preds = %for.body135
  %122 = load i32, i32* %i, align 4, !dbg !5578
  %inc141 = add i32 %122, 1, !dbg !5578
  store i32 %inc141, i32* %i, align 4, !dbg !5578
  br label %for.cond132, !dbg !5579, !llvm.loop !5580

for.end142:                                       ; preds = %for.cond132
  br label %err_disable_clks, !dbg !5581

err_disable_clks:                                 ; preds = %for.end142, %if.then85, %if.then79, %if.then66, %if.then53, %if.then49, %if.then41
  call void @llvm.dbg.label(metadata !5582), !dbg !5583
  %123 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5584
  %drvdata143 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %123, i32 0, i32 12, !dbg !5585
  %124 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata143, align 8, !dbg !5585
  %num_clks144 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %124, i32 0, i32 3, !dbg !5586
  %125 = load i32, i32* %num_clks144, align 8, !dbg !5586
  %126 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5587
  %drvdata145 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %126, i32 0, i32 12, !dbg !5588
  %127 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata145, align 8, !dbg !5588
  %clks146 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %127, i32 0, i32 2, !dbg !5589
  %128 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks146, align 8, !dbg !5589
  call void @clk_bulk_disable_unprepare(i32 %125, %struct.clk_bulk_data* %128) #6, !dbg !5590
  %129 = load i32, i32* %ret, align 4, !dbg !5591
  store i32 %129, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

return:                                           ; preds = %err_disable_clks, %if.end118, %if.then58, %if.then36, %if.then28, %if.then17, %if.then4, %if.then
  %130 = load i32, i32* %retval, align 4, !dbg !5593
  ret i32 %130, !dbg !5593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_remove(%struct.platform_device* %pdev) #2 !dbg !5594 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %dev = alloca %struct.device*, align 8
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5599
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #6, !dbg !5600
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !5600
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5598
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5601, metadata !DIExpression()), !dbg !5602
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5603
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !5604
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5607
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 12, !dbg !5609
  %4 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !5609
  %otg_switch_supported = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %4, i32 0, i32 0, !dbg !5610
  %5 = load i8, i8* %otg_switch_supported, align 8, !dbg !5610
  %tobool = trunc i8 %5 to i1, !dbg !5610
  br i1 %tobool, label %if.then, label %if.end, !dbg !5611

if.then:                                          ; preds = %entry
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5612
  %role_switch = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 11, !dbg !5613
  %7 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_switch, align 8, !dbg !5613
  call void @usb_role_switch_unregister(%struct.usb_role_switch* %7) #6, !dbg !5614
  br label %if.end, !dbg !5614

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5615
  call void @of_platform_depopulate(%struct.device* %8) #6, !dbg !5616
  store i32 0, i32* %i, align 4, !dbg !5617
  br label %for.cond, !dbg !5619

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5620
  %cmp = icmp slt i32 %9, 3, !dbg !5622
  br i1 %cmp, label %for.body, label %for.end, !dbg !5623

for.body:                                         ; preds = %for.cond
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5624
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 4, !dbg !5626
  %11 = load i32, i32* %i, align 4, !dbg !5627
  %idxprom = sext i32 %11 to i64, !dbg !5624
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !5624
  %12 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !5624
  %call2 = call i32 @phy_power_off(%struct.phy* %12) #6, !dbg !5628
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5629
  %phys3 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %13, i32 0, i32 4, !dbg !5630
  %14 = load i32, i32* %i, align 4, !dbg !5631
  %idxprom4 = sext i32 %14 to i64, !dbg !5629
  %arrayidx5 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys3, i64 0, i64 %idxprom4, !dbg !5629
  %15 = load %struct.phy*, %struct.phy** %arrayidx5, align 8, !dbg !5629
  %call6 = call i32 @phy_exit(%struct.phy* %15) #6, !dbg !5632
  br label %for.inc, !dbg !5633

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !5634
  %inc = add i32 %16, 1, !dbg !5634
  store i32 %inc, i32* %i, align 4, !dbg !5634
  br label %for.cond, !dbg !5635, !llvm.loop !5636

for.end:                                          ; preds = %for.cond
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5638
  call void @pm_runtime_disable(%struct.device* %17) #6, !dbg !5639
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5640
  call void @pm_runtime_put_noidle(%struct.device* %18) #6, !dbg !5641
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5642
  %call7 = call i32 @pm_runtime_set_suspended(%struct.device* %19) #6, !dbg !5643
  %20 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5644
  %drvdata8 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %20, i32 0, i32 12, !dbg !5645
  %21 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata8, align 8, !dbg !5645
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %21, i32 0, i32 3, !dbg !5646
  %22 = load i32, i32* %num_clks, align 8, !dbg !5646
  %23 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !5647
  %drvdata9 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %23, i32 0, i32 12, !dbg !5648
  %24 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata9, align 8, !dbg !5648
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %24, i32 0, i32 2, !dbg !5649
  %25 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks, align 8, !dbg !5649
  call void @clk_bulk_disable_unprepare(i32 %22, %struct.clk_bulk_data* %25) #6, !dbg !5650
  ret i32 0, !dbg !5651
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !5652 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5661
  %1 = load i64, i64* %size.addr, align 8, !dbg !5662
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5663
  %or = or i32 %2, 256, !dbg !5664
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !5665
  ret i8* %call, !dbg !5666
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5667 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5673
  %1 = ptrtoint i8* %0 to i64, !dbg !5673
  %2 = inttoptr i64 %1 to i8*, !dbg !5673
  %3 = ptrtoint i8* %2 to i64, !dbg !5673
  %cmp = icmp uge i64 %3, -4095, !dbg !5673
  %lnot = xor i1 %cmp, true, !dbg !5673
  %lnot1 = xor i1 %lnot, true, !dbg !5673
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5673
  %conv = sext i32 %lnot.ext to i64, !dbg !5673
  %tobool = icmp ne i64 %conv, 0, !dbg !5673
  ret i1 %tobool, !dbg !5674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5675 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5680
  %1 = ptrtoint i8* %0 to i64, !dbg !5681
  ret i64 %1, !dbg !5682
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.regulator* @devm_regulator_get_optional(%struct.device* %dev, i8* %id) #2 !dbg !5683 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  %call = call i8* @ERR_PTR(i64 -19) #6, !dbg !5690
  %0 = bitcast i8* %call to %struct.regulator*, !dbg !5690
  ret %struct.regulator* %0, !dbg !5691
}

; Function Attrs: noredzone
declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.clk_bulk_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_bulk_prepare_enable(i32 %num_clks, %struct.clk_bulk_data* %clks) #2 !dbg !5692 {
entry:
  %retval = alloca i32, align 4
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %ret = alloca i32, align 4
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load i32, i32* %num_clks.addr, align 4, !dbg !5703
  %1 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !5704
  %call = call i32 @clk_bulk_prepare(i32 %0, %struct.clk_bulk_data* %1) #6, !dbg !5705
  store i32 %call, i32* %ret, align 4, !dbg !5706
  %2 = load i32, i32* %ret, align 4, !dbg !5707
  %tobool = icmp ne i32 %2, 0, !dbg !5707
  br i1 %tobool, label %if.then, label %if.end, !dbg !5709

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !5710
  store i32 %3, i32* %retval, align 4, !dbg !5711
  br label %return, !dbg !5711

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %num_clks.addr, align 4, !dbg !5712
  %5 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !5713
  %call1 = call i32 @clk_bulk_enable(i32 %4, %struct.clk_bulk_data* %5) #6, !dbg !5714
  store i32 %call1, i32* %ret, align 4, !dbg !5715
  %6 = load i32, i32* %ret, align 4, !dbg !5716
  %tobool2 = icmp ne i32 %6, 0, !dbg !5716
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5718

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %num_clks.addr, align 4, !dbg !5719
  %8 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !5720
  call void @clk_bulk_unprepare(i32 %7, %struct.clk_bulk_data* %8) #6, !dbg !5721
  br label %if.end4, !dbg !5721

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !5722
  store i32 %9, i32* %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

return:                                           ; preds = %if.end4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5724
  ret i32 %10, !dbg !5724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !5725 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5732
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5733
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5734
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !5735
  ret void, !dbg !5736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @devm_reset_control_get_shared(%struct.device* %dev, i8* %id) #2 !dbg !5737 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5744
  %1 = load i8*, i8** %id.addr, align 8, !dbg !5745
  %call = call %struct.reset_control* @__devm_reset_control_get(%struct.device* %0, i8* %1, i32 0, i1 zeroext true, i1 zeroext false, i1 zeroext false) #6, !dbg !5746
  ret %struct.reset_control* %call, !dbg !5747
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @reset_control_reset(%struct.reset_control*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_get_phys(%struct.dwc3_meson_g12a* %priv) #2 !dbg !5748 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %phy_name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.declare(metadata i8** %phy_name, metadata !5751, metadata !DIExpression()), !dbg !5752
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5753, metadata !DIExpression()), !dbg !5754
  store i32 0, i32* %i, align 4, !dbg !5755
  br label %for.cond, !dbg !5757

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5758
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5760
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 12, !dbg !5761
  %2 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !5761
  %num_phys = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %2, i32 0, i32 5, !dbg !5762
  %3 = load i32, i32* %num_phys, align 8, !dbg !5762
  %cmp = icmp slt i32 %0, %3, !dbg !5763
  br i1 %cmp, label %for.body, label %for.end, !dbg !5764

for.body:                                         ; preds = %for.cond
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5765
  %drvdata1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 12, !dbg !5767
  %5 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata1, align 8, !dbg !5767
  %phy_names = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %5, i32 0, i32 4, !dbg !5768
  %6 = load i8**, i8*** %phy_names, align 8, !dbg !5768
  %7 = load i32, i32* %i, align 4, !dbg !5769
  %idxprom = sext i32 %7 to i64, !dbg !5765
  %arrayidx = getelementptr i8*, i8** %6, i64 %idxprom, !dbg !5765
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !5765
  store i8* %8, i8** %phy_name, align 8, !dbg !5770
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5771
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 0, !dbg !5772
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5772
  %11 = load i8*, i8** %phy_name, align 8, !dbg !5773
  %call = call %struct.phy* @devm_phy_optional_get(%struct.device* %10, i8* %11) #6, !dbg !5774
  %12 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5775
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %12, i32 0, i32 4, !dbg !5776
  %13 = load i32, i32* %i, align 4, !dbg !5777
  %idxprom2 = sext i32 %13 to i64, !dbg !5775
  %arrayidx3 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom2, !dbg !5775
  store %struct.phy* %call, %struct.phy** %arrayidx3, align 8, !dbg !5778
  %14 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5779
  %phys4 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %14, i32 0, i32 4, !dbg !5781
  %15 = load i32, i32* %i, align 4, !dbg !5782
  %idxprom5 = sext i32 %15 to i64, !dbg !5779
  %arrayidx6 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys4, i64 0, i64 %idxprom5, !dbg !5779
  %16 = load %struct.phy*, %struct.phy** %arrayidx6, align 8, !dbg !5779
  %tobool = icmp ne %struct.phy* %16, null, !dbg !5779
  br i1 %tobool, label %if.end, label %if.then, !dbg !5783

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5784

if.end:                                           ; preds = %for.body
  %17 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5785
  %phys7 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %17, i32 0, i32 4, !dbg !5787
  %18 = load i32, i32* %i, align 4, !dbg !5788
  %idxprom8 = sext i32 %18 to i64, !dbg !5785
  %arrayidx9 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys7, i64 0, i64 %idxprom8, !dbg !5785
  %19 = load %struct.phy*, %struct.phy** %arrayidx9, align 8, !dbg !5785
  %20 = bitcast %struct.phy* %19 to i8*, !dbg !5785
  %call10 = call zeroext i1 @IS_ERR(i8* %20) #6, !dbg !5789
  br i1 %call10, label %if.then11, label %if.end16, !dbg !5790

if.then11:                                        ; preds = %if.end
  %21 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5791
  %phys12 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %21, i32 0, i32 4, !dbg !5792
  %22 = load i32, i32* %i, align 4, !dbg !5793
  %idxprom13 = sext i32 %22 to i64, !dbg !5791
  %arrayidx14 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys12, i64 0, i64 %idxprom13, !dbg !5791
  %23 = load %struct.phy*, %struct.phy** %arrayidx14, align 8, !dbg !5791
  %24 = bitcast %struct.phy* %23 to i8*, !dbg !5791
  %call15 = call i64 @PTR_ERR(i8* %24) #6, !dbg !5794
  %conv = trunc i64 %call15 to i32, !dbg !5794
  store i32 %conv, i32* %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end16:                                         ; preds = %if.end
  %25 = load i8*, i8** %phy_name, align 8, !dbg !5796
  %call17 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5798
  %tobool18 = icmp ne i8* %call17, null, !dbg !5798
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5799

if.then19:                                        ; preds = %if.end16
  %26 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5800
  %usb3_ports = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %26, i32 0, i32 8, !dbg !5801
  %27 = load i32, i32* %usb3_ports, align 4, !dbg !5802
  %inc = add i32 %27, 1, !dbg !5802
  store i32 %inc, i32* %usb3_ports, align 4, !dbg !5802
  br label %if.end21, !dbg !5800

if.else:                                          ; preds = %if.end16
  %28 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5803
  %usb2_ports = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %28, i32 0, i32 7, !dbg !5804
  %29 = load i32, i32* %usb2_ports, align 8, !dbg !5805
  %inc20 = add i32 %29, 1, !dbg !5805
  store i32 %inc20, i32* %usb2_ports, align 8, !dbg !5805
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  br label %for.inc, !dbg !5806

for.inc:                                          ; preds = %if.end21, %if.then
  %30 = load i32, i32* %i, align 4, !dbg !5807
  %inc22 = add i32 %30, 1, !dbg !5807
  store i32 %inc22, i32* %i, align 4, !dbg !5807
  br label %for.cond, !dbg !5808, !llvm.loop !5809

for.end:                                          ; preds = %for.cond
  %31 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5811
  %dev23 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %31, i32 0, i32 0, !dbg !5811
  %32 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !5811
  %33 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5811
  %usb2_ports24 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %33, i32 0, i32 7, !dbg !5811
  %34 = load i32, i32* %usb2_ports24, align 8, !dbg !5811
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %34) #7, !dbg !5811
  %35 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5812
  %dev25 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %35, i32 0, i32 0, !dbg !5812
  %36 = load %struct.device*, %struct.device** %dev25, align 8, !dbg !5812
  %37 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5812
  %usb3_ports26 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %37, i32 0, i32 8, !dbg !5812
  %38 = load i32, i32* %usb3_ports26, align 4, !dbg !5812
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %38) #7, !dbg !5812
  store i32 0, i32* %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

return:                                           ; preds = %for.end, %if.then11
  %39 = load i32, i32* %retval, align 4, !dbg !5814
  ret i32 %39, !dbg !5814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regulator_enable(%struct.regulator* %regulator) #2 !dbg !5815 {
entry:
  %regulator.addr = alloca %struct.regulator*, align 8
  store %struct.regulator* %regulator, %struct.regulator** %regulator.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regulator** %regulator.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  ret i32 0, !dbg !5820
}

; Function Attrs: noredzone
declare dso_local i32 @usb_get_dr_mode(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @phy_init(%struct.phy*) #1

; Function Attrs: noredzone
declare dso_local i32 @phy_power_on(%struct.phy*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_platform_populate(%struct.device_node*, %struct.of_device_id*, %struct.of_dev_auxdata*, %struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_otg_init(%struct.platform_device* %pdev, %struct.dwc3_meson_g12a* %priv) #2 !dbg !5821 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %otg_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %irq = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %otg_id, metadata !5828, metadata !DIExpression()), !dbg !5829
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5830, metadata !DIExpression()), !dbg !5831
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !5832, metadata !DIExpression()), !dbg !5833
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5834, metadata !DIExpression()), !dbg !5835
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5836
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5837
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5835
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5838
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 12, !dbg !5840
  %2 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !5840
  %otg_switch_supported = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %2, i32 0, i32 0, !dbg !5841
  %3 = load i8, i8* %otg_switch_supported, align 8, !dbg !5841
  %tobool = trunc i8 %3 to i1, !dbg !5841
  br i1 %tobool, label %if.end, label %if.then, !dbg !5842

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5843
  br label %return, !dbg !5843

if.end:                                           ; preds = %entry
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5844
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 5, !dbg !5846
  %5 = load i32, i32* %otg_mode, align 8, !dbg !5846
  %cmp = icmp eq i32 %5, 3, !dbg !5847
  br i1 %cmp, label %if.then2, label %if.end9, !dbg !5848

if.then2:                                         ; preds = %if.end
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5849
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 2, !dbg !5851
  %7 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !5851
  %call = call i32 @regmap_update_bits(%struct.regmap* %7, i32 20, i32 128, i32 0) #6, !dbg !5852
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5853
  %call3 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0) #6, !dbg !5854
  store i32 %call3, i32* %irq, align 4, !dbg !5855
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5856
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !5857
  %10 = load i32, i32* %irq, align 4, !dbg !5858
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5859
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0, !dbg !5860
  %12 = load i8*, i8** %name, align 8, !dbg !5860
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5861
  %14 = bitcast %struct.dwc3_meson_g12a* %13 to i8*, !dbg !5861
  %call5 = call i32 @devm_request_threaded_irq(%struct.device* %dev4, i32 %10, i32 (i32, i8*)* null, i32 (i32, i8*)* @dwc3_meson_g12a_irq_thread, i64 8192, i8* %12, i8* %14) #6, !dbg !5862
  store i32 %call5, i32* %ret, align 4, !dbg !5863
  %15 = load i32, i32* %ret, align 4, !dbg !5864
  %tobool6 = icmp ne i32 %15, 0, !dbg !5864
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5866

if.then7:                                         ; preds = %if.then2
  %16 = load i32, i32* %ret, align 4, !dbg !5867
  store i32 %16, i32* %retval, align 4, !dbg !5868
  br label %return, !dbg !5868

if.end8:                                          ; preds = %if.then2
  br label %if.end9, !dbg !5869

if.end9:                                          ; preds = %if.end8, %if.end
  %17 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5870
  %otg_mode10 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %17, i32 0, i32 5, !dbg !5872
  %18 = load i32, i32* %otg_mode10, align 8, !dbg !5872
  %cmp11 = icmp eq i32 %18, 3, !dbg !5873
  br i1 %cmp11, label %if.then12, label %if.end21, !dbg !5874

if.then12:                                        ; preds = %if.end9
  %19 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5875
  %call13 = call i32 @dwc3_meson_g12a_get_id(%struct.dwc3_meson_g12a* %19) #6, !dbg !5877
  store i32 %call13, i32* %otg_id, align 4, !dbg !5878
  %20 = load i32, i32* %otg_id, align 4, !dbg !5879
  %21 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5881
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %21, i32 0, i32 6, !dbg !5882
  %22 = load i32, i32* %otg_phy_mode, align 4, !dbg !5882
  %cmp14 = icmp ne i32 %20, %22, !dbg !5883
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !5884

if.then15:                                        ; preds = %if.then12
  %23 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5885
  %24 = load i32, i32* %otg_id, align 4, !dbg !5888
  %call16 = call i32 @dwc3_meson_g12a_otg_mode_set(%struct.dwc3_meson_g12a* %23, i32 %24) #6, !dbg !5889
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5889
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5890

if.then18:                                        ; preds = %if.then15
  %25 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5891
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !5891
  br label %if.end19, !dbg !5891

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !5892

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %if.end21, !dbg !5893

if.end21:                                         ; preds = %if.end20, %if.end9
  %26 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5894
  %call22 = call %struct.device* @dwc3_meson_g12_find_child(%struct.device* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !5895
  %27 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5896
  %switch_desc = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %27, i32 0, i32 10, !dbg !5897
  %usb2_port = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc, i32 0, i32 1, !dbg !5898
  store %struct.device* %call22, %struct.device** %usb2_port, align 8, !dbg !5899
  %28 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5900
  %call23 = call %struct.device* @dwc3_meson_g12_find_child(%struct.device* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !5901
  %29 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5902
  %switch_desc24 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %29, i32 0, i32 10, !dbg !5903
  %udc = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc24, i32 0, i32 3, !dbg !5904
  store %struct.device* %call23, %struct.device** %udc, align 8, !dbg !5905
  %30 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5906
  %switch_desc25 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %30, i32 0, i32 10, !dbg !5907
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc25, i32 0, i32 6, !dbg !5908
  store i8 1, i8* %allow_userspace_control, align 8, !dbg !5909
  %31 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5910
  %switch_desc26 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %31, i32 0, i32 10, !dbg !5911
  %set = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc26, i32 0, i32 4, !dbg !5912
  store i32 (%struct.usb_role_switch*, i32)* @dwc3_meson_g12a_role_set, i32 (%struct.usb_role_switch*, i32)** %set, align 8, !dbg !5913
  %32 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5914
  %switch_desc27 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %32, i32 0, i32 10, !dbg !5915
  %get = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc27, i32 0, i32 5, !dbg !5916
  store i32 (%struct.usb_role_switch*)* @dwc3_meson_g12a_role_get, i32 (%struct.usb_role_switch*)** %get, align 8, !dbg !5917
  %33 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5918
  %34 = bitcast %struct.dwc3_meson_g12a* %33 to i8*, !dbg !5918
  %35 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5919
  %switch_desc28 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %35, i32 0, i32 10, !dbg !5920
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %switch_desc28, i32 0, i32 7, !dbg !5921
  store i8* %34, i8** %driver_data, align 8, !dbg !5922
  %36 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5923
  %37 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5924
  %switch_desc29 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %37, i32 0, i32 10, !dbg !5925
  %call30 = call %struct.usb_role_switch* @usb_role_switch_register(%struct.device* %36, %struct.usb_role_switch_desc* %switch_desc29) #6, !dbg !5926
  %38 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5927
  %role_switch = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %38, i32 0, i32 11, !dbg !5928
  store %struct.usb_role_switch* %call30, %struct.usb_role_switch** %role_switch, align 8, !dbg !5929
  %39 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !5930
  %role_switch31 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %39, i32 0, i32 11, !dbg !5932
  %40 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_switch31, align 8, !dbg !5932
  %41 = bitcast %struct.usb_role_switch* %40 to i8*, !dbg !5930
  %call32 = call zeroext i1 @IS_ERR(i8* %41) #6, !dbg !5933
  br i1 %call32, label %if.then33, label %if.end34, !dbg !5934

if.then33:                                        ; preds = %if.end21
  %42 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5935
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !5935
  br label %if.end34, !dbg !5935

if.end34:                                         ; preds = %if.then33, %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5936
  br label %return, !dbg !5936

return:                                           ; preds = %if.end34, %if.then7, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5937
  ret i32 %43, !dbg !5937
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #2 !dbg !5938 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5940, metadata !DIExpression()), !dbg !5941
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5942
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #6, !dbg !5943
  ret i32 %call, !dbg !5944
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !5945 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5948
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !5949
  ret i32 %call, !dbg !5950
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @phy_power_off(%struct.phy*) #1

; Function Attrs: noredzone
declare dso_local i32 @phy_exit(%struct.phy*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_bulk_disable_unprepare(i32 %num_clks, %struct.clk_bulk_data* %clks) #2 !dbg !5951 {
entry:
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  %0 = load i32, i32* %num_clks.addr, align 4, !dbg !5958
  %1 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !5959
  call void @clk_bulk_disable(i32 %0, %struct.clk_bulk_data* %1) #6, !dbg !5960
  %2 = load i32, i32* %num_clks.addr, align 4, !dbg !5961
  %3 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !5962
  call void @clk_bulk_unprepare(i32 %2, %struct.clk_bulk_data* %3) #6, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !5965 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  %0 = load i64, i64* %error.addr, align 8, !dbg !5970
  %1 = inttoptr i64 %0 to i8*, !dbg !5971
  ret i8* %1, !dbg !5972
}

; Function Attrs: noredzone
declare dso_local i32 @clk_bulk_prepare(i32, %struct.clk_bulk_data*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_bulk_enable(i32, %struct.clk_bulk_data*) #1

; Function Attrs: noredzone
declare dso_local void @clk_bulk_unprepare(i32, %struct.clk_bulk_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5973 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5980
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5981
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5982
  store i8* %0, i8** %driver_data, align 8, !dbg !5983
  ret void, !dbg !5984
}

; Function Attrs: noredzone
declare dso_local %struct.reset_control* @__devm_reset_control_get(%struct.device*, i8*, i32, i1 zeroext, i1 zeroext, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local %struct.phy* @devm_phy_optional_get(%struct.device*, i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regmap_update_bits(%struct.regmap* %map, i32 %reg, i32 %mask, i32 %val) #2 !dbg !5985 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5994, metadata !DIExpression()), !dbg !5995
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5996
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5997
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5998
  %3 = load i32, i32* %val.addr, align 4, !dbg !5999
  %call = call i32 @regmap_update_bits_base(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i8* null, i1 zeroext false, i1 zeroext false) #6, !dbg !6000
  ret i32 %call, !dbg !6001
}

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_irq_thread(i32 %irq, i8* %data) #2 !dbg !6002 {
entry:
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %otg_id = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6012
  %1 = bitcast i8* %0 to %struct.dwc3_meson_g12a*, !dbg !6012
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %otg_id, metadata !6013, metadata !DIExpression()), !dbg !6014
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6015
  %call = call i32 @dwc3_meson_g12a_get_id(%struct.dwc3_meson_g12a* %2) #6, !dbg !6016
  store i32 %call, i32* %otg_id, align 4, !dbg !6017
  %3 = load i32, i32* %otg_id, align 4, !dbg !6018
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6020
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 6, !dbg !6021
  %5 = load i32, i32* %otg_phy_mode, align 4, !dbg !6021
  %cmp = icmp ne i32 %3, %5, !dbg !6022
  br i1 %cmp, label %if.then, label %if.end3, !dbg !6023

if.then:                                          ; preds = %entry
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6024
  %7 = load i32, i32* %otg_id, align 4, !dbg !6027
  %call1 = call i32 @dwc3_meson_g12a_otg_mode_set(%struct.dwc3_meson_g12a* %6, i32 %7) #6, !dbg !6028
  %tobool = icmp ne i32 %call1, 0, !dbg !6028
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6029

if.then2:                                         ; preds = %if.then
  %8 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6030
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %8, i32 0, i32 0, !dbg !6030
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6030
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !6030
  br label %if.end, !dbg !6030

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !6031

if.end3:                                          ; preds = %if.end, %entry
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6032
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 2, !dbg !6033
  %11 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6033
  %call4 = call i32 @regmap_update_bits(%struct.regmap* %11, i32 20, i32 128, i32 0) #6, !dbg !6034
  ret i32 1, !dbg !6035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_get_id(%struct.dwc3_meson_g12a* %priv) #2 !dbg !6036 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6041, metadata !DIExpression()), !dbg !6042
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6043
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 2, !dbg !6044
  %1 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6044
  %call = call i32 @regmap_read(%struct.regmap* %1, i32 20, i32* %reg) #6, !dbg !6045
  %2 = load i32, i32* %reg, align 4, !dbg !6046
  %conv = zext i32 %2 to i64, !dbg !6046
  %and = and i64 %conv, 3, !dbg !6048
  %tobool = icmp ne i64 %and, 0, !dbg !6048
  br i1 %tobool, label %if.then, label %if.end, !dbg !6049

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !6050
  br label %return, !dbg !6050

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6052
  ret i32 %3, !dbg !6052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_otg_mode_set(%struct.dwc3_meson_g12a* %priv, i32 %mode) #2 !dbg !6053 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %mode.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6060, metadata !DIExpression()), !dbg !6061
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6062
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 12, !dbg !6064
  %1 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6064
  %otg_switch_supported = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %1, i32 0, i32 0, !dbg !6065
  %2 = load i8, i8* %otg_switch_supported, align 8, !dbg !6065
  %tobool = trunc i8 %2 to i1, !dbg !6065
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6066

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6067
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 4, !dbg !6068
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 1, !dbg !6067
  %4 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !6067
  %tobool1 = icmp ne %struct.phy* %4, null, !dbg !6067
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6069

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6070
  br label %return, !dbg !6070

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %mode.addr, align 4, !dbg !6071
  %cmp = icmp eq i32 %5, 1, !dbg !6073
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6074

if.then2:                                         ; preds = %if.end
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6075
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 0, !dbg !6075
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6075
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !6075
  br label %if.end4, !dbg !6075

if.else:                                          ; preds = %if.end
  %8 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6076
  %dev3 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %8, i32 0, i32 0, !dbg !6076
  %9 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !6076
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !6076
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6077
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 9, !dbg !6079
  %11 = load %struct.regulator*, %struct.regulator** %vbus, align 8, !dbg !6079
  %tobool5 = icmp ne %struct.regulator* %11, null, !dbg !6077
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !6080

if.then6:                                         ; preds = %if.end4
  %12 = load i32, i32* %mode.addr, align 4, !dbg !6081
  %cmp7 = icmp eq i32 %12, 6, !dbg !6084
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !6085

if.then8:                                         ; preds = %if.then6
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6086
  %vbus9 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %13, i32 0, i32 9, !dbg !6087
  %14 = load %struct.regulator*, %struct.regulator** %vbus9, align 8, !dbg !6087
  %call = call i32 @regulator_disable(%struct.regulator* %14) #6, !dbg !6088
  store i32 %call, i32* %ret, align 4, !dbg !6089
  br label %if.end13, !dbg !6090

if.else10:                                        ; preds = %if.then6
  %15 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6091
  %vbus11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %15, i32 0, i32 9, !dbg !6092
  %16 = load %struct.regulator*, %struct.regulator** %vbus11, align 8, !dbg !6092
  %call12 = call i32 @regulator_enable(%struct.regulator* %16) #6, !dbg !6093
  store i32 %call12, i32* %ret, align 4, !dbg !6094
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8
  %17 = load i32, i32* %ret, align 4, !dbg !6095
  %tobool14 = icmp ne i32 %17, 0, !dbg !6095
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6097

if.then15:                                        ; preds = %if.end13
  %18 = load i32, i32* %ret, align 4, !dbg !6098
  store i32 %18, i32* %retval, align 4, !dbg !6099
  br label %return, !dbg !6099

if.end16:                                         ; preds = %if.end13
  br label %if.end17, !dbg !6100

if.end17:                                         ; preds = %if.end16, %if.end4
  %19 = load i32, i32* %mode.addr, align 4, !dbg !6101
  %20 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6102
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %20, i32 0, i32 6, !dbg !6103
  store i32 %19, i32* %otg_phy_mode, align 4, !dbg !6104
  %21 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6105
  %drvdata18 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %21, i32 0, i32 12, !dbg !6106
  %22 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata18, align 8, !dbg !6106
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %22, i32 0, i32 8, !dbg !6107
  %23 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %set_phy_mode, align 8, !dbg !6107
  %24 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6108
  %25 = load i32, i32* %mode.addr, align 4, !dbg !6109
  %call19 = call i32 %23(%struct.dwc3_meson_g12a* %24, i32 1, i32 %25) #6, !dbg !6105
  store i32 %call19, i32* %ret, align 4, !dbg !6110
  %26 = load i32, i32* %ret, align 4, !dbg !6111
  %tobool20 = icmp ne i32 %26, 0, !dbg !6111
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6113

if.then21:                                        ; preds = %if.end17
  %27 = load i32, i32* %ret, align 4, !dbg !6114
  store i32 %27, i32* %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

if.end22:                                         ; preds = %if.end17
  %28 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6116
  %29 = load i32, i32* %mode.addr, align 4, !dbg !6117
  call void @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %28, i32 %29) #6, !dbg !6118
  store i32 0, i32* %retval, align 4, !dbg !6119
  br label %return, !dbg !6119

return:                                           ; preds = %if.end22, %if.then21, %if.then15, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !6120
  ret i32 %30, !dbg !6120
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @dwc3_meson_g12_find_child(%struct.device* %dev, i8* %compatible) #2 !dbg !6121 {
entry:
  %retval = alloca %struct.device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %compatible.addr = alloca i8*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  store i8* %compatible, i8** %compatible.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %compatible.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !6128, metadata !DIExpression()), !dbg !6129
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !6130, metadata !DIExpression()), !dbg !6131
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6132
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !6133
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !6133
  %2 = load i8*, i8** %compatible.addr, align 8, !dbg !6134
  %call = call %struct.device_node* @of_get_compatible_child(%struct.device_node* %1, i8* %2) #6, !dbg !6135
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !6136
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !6137
  %tobool = icmp ne %struct.device_node* %3, null, !dbg !6137
  br i1 %tobool, label %if.end, label %if.then, !dbg !6139

if.then:                                          ; preds = %entry
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !6140
  br label %return, !dbg !6140

if.end:                                           ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !6141
  %call1 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %4) #6, !dbg !6142
  store %struct.platform_device* %call1, %struct.platform_device** %pdev, align 8, !dbg !6143
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !6144
  call void @of_node_put(%struct.device_node* %5) #6, !dbg !6145
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !6146
  %tobool2 = icmp ne %struct.platform_device* %6, null, !dbg !6146
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6148

if.then3:                                         ; preds = %if.end
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !6149
  br label %return, !dbg !6149

if.end4:                                          ; preds = %if.end
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !6150
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !6151
  store %struct.device* %dev5, %struct.device** %retval, align 8, !dbg !6152
  br label %return, !dbg !6152

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load %struct.device*, %struct.device** %retval, align 8, !dbg !6153
  ret %struct.device* %8, !dbg !6153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_role_set(%struct.usb_role_switch* %sw, i32 %role) #2 !dbg !4974 {
entry:
  %retval = alloca i32, align 4
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %role.addr = alloca i32, align 4
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %mode = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !6158, metadata !DIExpression()), !dbg !6159
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !6160
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #6, !dbg !6161
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !6161
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6159
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !6162, metadata !DIExpression()), !dbg !6163
  %2 = load i32, i32* %role.addr, align 4, !dbg !6164
  %cmp = icmp eq i32 %2, 0, !dbg !6166
  br i1 %cmp, label %if.then, label %if.end, !dbg !6167

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %role.addr, align 4, !dbg !6169
  %cmp1 = icmp eq i32 %3, 1, !dbg !6170
  %4 = zext i1 %cmp1 to i64, !dbg !6171
  %cond = select i1 %cmp1, i32 1, i32 6, !dbg !6171
  store i32 %cond, i32* %mode, align 4, !dbg !6172
  %5 = load i32, i32* %mode, align 4, !dbg !6173
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6175
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 6, !dbg !6176
  %7 = load i32, i32* %otg_phy_mode, align 4, !dbg !6176
  %cmp2 = icmp eq i32 %5, %7, !dbg !6177
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6178

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6179
  br label %return, !dbg !6179

if.end4:                                          ; preds = %if.end
  %8 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6180
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %8, i32 0, i32 12, !dbg !6182
  %9 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6182
  %otg_phy_host_port_disable = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %9, i32 0, i32 1, !dbg !6183
  %10 = load i8, i8* %otg_phy_host_port_disable, align 1, !dbg !6183
  %tobool = trunc i8 %10 to i1, !dbg !6183
  br i1 %tobool, label %if.then5, label %if.end9, !dbg !6184

if.then5:                                         ; preds = %if.end4
  br label %do.body, !dbg !6185

do.body:                                          ; preds = %if.then5
  %11 = load i8, i8* @dwc3_meson_g12a_role_set.__print_once, align 1, !dbg !6186
  %tobool6 = trunc i8 %11 to i1, !dbg !6186
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6189

if.then7:                                         ; preds = %do.body
  store i8 1, i8* @dwc3_meson_g12a_role_set.__print_once, align 1, !dbg !6190
  %12 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6190
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %12, i32 0, i32 0, !dbg !6190
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6190
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !6190
  br label %if.end8, !dbg !6190

if.end8:                                          ; preds = %if.then7, %do.body
  br label %do.end, !dbg !6189

do.end:                                           ; preds = %if.end8
  br label %if.end9, !dbg !6189

if.end9:                                          ; preds = %do.end, %if.end4
  %14 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6192
  %15 = load i32, i32* %mode, align 4, !dbg !6193
  %call10 = call i32 @dwc3_meson_g12a_otg_mode_set(%struct.dwc3_meson_g12a* %14, i32 %15) #6, !dbg !6194
  store i32 %call10, i32* %retval, align 4, !dbg !6195
  br label %return, !dbg !6195

return:                                           ; preds = %if.end9, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !6196
  ret i32 %16, !dbg !6196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_role_get(%struct.usb_role_switch* %sw) #2 !dbg !6197 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !6200, metadata !DIExpression()), !dbg !6201
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !6202
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #6, !dbg !6203
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !6203
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6201
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6204
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %2, i32 0, i32 6, !dbg !6205
  %3 = load i32, i32* %otg_phy_mode, align 4, !dbg !6205
  %cmp = icmp eq i32 %3, 1, !dbg !6206
  %4 = zext i1 %cmp to i64, !dbg !6204
  %cond = select i1 %cmp, i32 1, i32 2, !dbg !6204
  ret i32 %cond, !dbg !6207
}

; Function Attrs: noredzone
declare dso_local %struct.usb_role_switch* @usb_role_switch_register(%struct.device*, %struct.usb_role_switch_desc*) #1

; Function Attrs: noredzone
declare dso_local i32 @regmap_update_bits_base(%struct.regmap*, i32, i32, i32, i8*, i1 zeroext, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regulator_disable(%struct.regulator* %regulator) #2 !dbg !6208 {
entry:
  %regulator.addr = alloca %struct.regulator*, align 8
  store %struct.regulator* %regulator, %struct.regulator** %regulator.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regulator** %regulator.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  ret i32 0, !dbg !6211
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %priv, i32 %mode) #2 !dbg !6212 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %mode.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6217, metadata !DIExpression()), !dbg !6218
  %0 = load i32, i32* %mode.addr, align 4, !dbg !6219
  %cmp = icmp eq i32 %0, 6, !dbg !6221
  br i1 %cmp, label %if.then, label %if.else, !dbg !6222

if.then:                                          ; preds = %entry
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6223
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 5, !dbg !6226
  %2 = load i32, i32* %otg_mode, align 8, !dbg !6226
  %cmp1 = icmp ne i32 %2, 3, !dbg !6227
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !6228

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6229
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 12, !dbg !6230
  %4 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6230
  %otg_phy_host_port_disable = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %4, i32 0, i32 1, !dbg !6231
  %5 = load i8, i8* %otg_phy_host_port_disable, align 1, !dbg !6231
  %tobool = trunc i8 %5 to i1, !dbg !6231
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6232

if.then2:                                         ; preds = %land.lhs.true
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6233
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 2, !dbg !6234
  %7 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6234
  br label %do.body, !dbg !6235

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !6238

do.end:                                           ; preds = %do.body
  br label %do.body3, !dbg !6235

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6240

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6235

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6242

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6235

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6244

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6235

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6246

do.end10:                                         ; preds = %do.body9
  store i64 8192, i64* %tmp, align 8, !dbg !6248
  %8 = load i64, i64* %tmp, align 8, !dbg !6248
  %conv = trunc i64 %8 to i32, !dbg !6249
  %call = call i32 @regmap_update_bits(%struct.regmap* %7, i32 4, i32 12288, i32 %conv) #6, !dbg !6250
  br label %if.end, !dbg !6250

if.end:                                           ; preds = %do.end10, %land.lhs.true, %if.then
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6251
  %usb_glue_regmap11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 2, !dbg !6252
  %10 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap11, align 8, !dbg !6252
  %call12 = call i32 @regmap_update_bits(%struct.regmap* %10, i32 0, i32 -2147483648, i32 -2147483648) #6, !dbg !6253
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6254
  %usb_glue_regmap13 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 2, !dbg !6255
  %12 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap13, align 8, !dbg !6255
  %call14 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 0, i32 1610612736, i32 0) #6, !dbg !6256
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6257
  %usb_glue_regmap15 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %13, i32 0, i32 2, !dbg !6258
  %14 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap15, align 8, !dbg !6258
  %call16 = call i32 @regmap_update_bits(%struct.regmap* %14, i32 16, i32 2, i32 2) #6, !dbg !6259
  br label %if.end33, !dbg !6260

if.else:                                          ; preds = %entry
  %15 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6261
  %otg_mode17 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %15, i32 0, i32 5, !dbg !6264
  %16 = load i32, i32* %otg_mode17, align 8, !dbg !6264
  %cmp18 = icmp ne i32 %16, 3, !dbg !6265
  br i1 %cmp18, label %land.lhs.true20, label %if.end28, !dbg !6266

land.lhs.true20:                                  ; preds = %if.else
  %17 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6267
  %drvdata21 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %17, i32 0, i32 12, !dbg !6268
  %18 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata21, align 8, !dbg !6268
  %otg_phy_host_port_disable22 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %18, i32 0, i32 1, !dbg !6269
  %19 = load i8, i8* %otg_phy_host_port_disable22, align 1, !dbg !6269
  %tobool23 = trunc i8 %19 to i1, !dbg !6269
  br i1 %tobool23, label %if.then25, label %if.end28, !dbg !6270

if.then25:                                        ; preds = %land.lhs.true20
  %20 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6271
  %usb_glue_regmap26 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %20, i32 0, i32 2, !dbg !6273
  %21 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap26, align 8, !dbg !6273
  %call27 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 4, i32 12288, i32 0) #6, !dbg !6274
  call void @msleep(i32 500) #6, !dbg !6275
  br label %if.end28, !dbg !6276

if.end28:                                         ; preds = %if.then25, %land.lhs.true20, %if.else
  %22 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6277
  %usb_glue_regmap29 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %22, i32 0, i32 2, !dbg !6278
  %23 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap29, align 8, !dbg !6278
  %call30 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 0, i32 -2147483648, i32 0) #6, !dbg !6279
  %24 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6280
  %usb_glue_regmap31 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %24, i32 0, i32 2, !dbg !6281
  %25 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap31, align 8, !dbg !6281
  %call32 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 16, i32 2, i32 0) #6, !dbg !6282
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.end
  ret void, !dbg !6283
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #1

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_compatible_child(%struct.device_node*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #2 !dbg !6284 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  ret void, !dbg !6289
}

; Function Attrs: noredzone
declare dso_local i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @clk_bulk_disable(i32, %struct.clk_bulk_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !6290 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6297
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !6298
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !6299
  ret i8* %call, !dbg !6300
}

; Function Attrs: noredzone
declare dso_local void @usb_role_switch_unregister(%struct.usb_role_switch*) #1

; Function Attrs: noredzone
declare dso_local void @of_platform_depopulate(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !6301 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6302, metadata !DIExpression()), !dbg !6303
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6304
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #6, !dbg !6305
  ret void, !dbg !6306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #2 !dbg !6307 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !6308, metadata !DIExpression()), !dbg !6314
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !6328, metadata !DIExpression()), !dbg !6329
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !6330, metadata !DIExpression()), !dbg !6331
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !6332, metadata !DIExpression()), !dbg !6334
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !6335, metadata !DIExpression()), !dbg !6334
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !6336, metadata !DIExpression()), !dbg !6334
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !6337, metadata !DIExpression()), !dbg !6334
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !6338, metadata !DIExpression()), !dbg !6334
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !6339, metadata !DIExpression()), !dbg !6345
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !6347, metadata !DIExpression()), !dbg !6348
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !6349, metadata !DIExpression()), !dbg !6350
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !6351, metadata !DIExpression()), !dbg !6352
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !6353, metadata !DIExpression()), !dbg !6354
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6355, metadata !DIExpression()), !dbg !6356
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !6357, metadata !DIExpression()), !dbg !6358
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !6359, metadata !DIExpression()), !dbg !6360
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6361, metadata !DIExpression()), !dbg !6369
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6371, metadata !DIExpression()), !dbg !6372
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6373, metadata !DIExpression()), !dbg !6374
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !6375, metadata !DIExpression()), !dbg !6376
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !6377, metadata !DIExpression()), !dbg !6378
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6381
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6382
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !6383
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6384
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !6384
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6385
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !6386
  %conv.i.i = trunc i64 %4 to i32, !dbg !6386
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #8, !dbg !6387
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6388
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6388
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !6388
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6389
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !6390
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !6391
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6392
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !6393
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !6394
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6395
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !6396
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !6396
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !6396
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !6354
  br label %do.body.i.i.i, !dbg !6397

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !6398
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !6398
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !6398
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !6398
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !6398
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !6398
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !6401

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !6402

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6403
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !6404
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !6405
  %add.i.i.i = add i32 %19, %20, !dbg !6406
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !6334
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !6334
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6334
  %23 = load i32, i32* %22, align 4, !dbg !6334
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !6334
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !6334
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !6334
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !6334
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !6334
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !6334
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !6334
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6334
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !6334
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #9, !dbg !6334, !srcloc !6407
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !6334
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !6334
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !6334
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !6334
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6408
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !6408
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6408
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6408
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !6408
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !6408
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6334

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6408
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6408
  store i32 %31, i32* %32, align 4, !dbg !6408
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6408

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6334
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !6334
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !6334
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !6334
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !6334
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !6408
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !6334
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !6410
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !6411
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !6412, !llvm.loop !6413

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !6415
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !6416
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !6417
  ret void, !dbg !6418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_suspended(%struct.device* %dev) #2 !dbg !6419 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6422
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 2) #6, !dbg !6423
  ret i32 %call, !dbg !6424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6425 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6430
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6431
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6431
  ret i8* %1, !dbg !6432
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6433 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6439, metadata !DIExpression()), !dbg !6440
  ret i1 true, !dbg !6441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6442 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  ret void, !dbg !6452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_gxl_setup_regmaps(%struct.dwc3_meson_g12a* %priv, i8* %base) #2 !dbg !6453 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %base.addr = alloca i8*, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !6456, metadata !DIExpression()), !dbg !6457
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6458
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 0, !dbg !6458
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6458
  %2 = load i8*, i8** %base.addr, align 8, !dbg !6458
  %call = call %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device* %1, i8* null, i8* %2, %struct.regmap_config* @phy_meson_g12a_usb_glue_regmap_conf, %struct.lock_class_key* null, i8* null) #6, !dbg !6458
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6459
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 2, !dbg !6460
  store %struct.regmap* %call, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6461
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6462
  %usb_glue_regmap1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 2, !dbg !6463
  %5 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap1, align 8, !dbg !6463
  %6 = bitcast %struct.regmap* %5 to i8*, !dbg !6462
  %call2 = call i32 @PTR_ERR_OR_ZERO(i8* %6) #6, !dbg !6464
  ret i32 %call2, !dbg !6465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_gxl_usb2_init_phy(%struct.dwc3_meson_g12a* %priv, i32 %i, i32 %mode) #2 !dbg !6466 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %i.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6467, metadata !DIExpression()), !dbg !6468
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6469, metadata !DIExpression()), !dbg !6470
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6471, metadata !DIExpression()), !dbg !6472
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6473
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 12, !dbg !6474
  %1 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6474
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %1, i32 0, i32 8, !dbg !6475
  %2 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %set_phy_mode, align 8, !dbg !6475
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6476
  %4 = load i32, i32* %i.addr, align 4, !dbg !6477
  %5 = load i32, i32* %i.addr, align 4, !dbg !6478
  %cmp = icmp eq i32 %5, 1, !dbg !6479
  %6 = zext i1 %cmp to i64, !dbg !6480
  %cond = select i1 %cmp, i32 6, i32 1, !dbg !6480
  %call = call i32 %2(%struct.dwc3_meson_g12a* %3, i32 %4, i32 %cond) #6, !dbg !6473
  ret i32 %call, !dbg !6481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_gxl_set_phy_mode(%struct.dwc3_meson_g12a* %priv, i32 %i, i32 %mode) #2 !dbg !6482 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %i.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6483, metadata !DIExpression()), !dbg !6484
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6485, metadata !DIExpression()), !dbg !6486
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6487, metadata !DIExpression()), !dbg !6488
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6489
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 4, !dbg !6489
  %1 = load i32, i32* %i.addr, align 4, !dbg !6489
  %idxprom = sext i32 %1 to i64, !dbg !6489
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !6489
  %2 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !6489
  %3 = load i32, i32* %mode.addr, align 4, !dbg !6489
  %call = call i32 @phy_set_mode_ext(%struct.phy* %2, i32 %3, i32 0) #6, !dbg !6489
  ret i32 %call, !dbg !6490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_gxl_usb_init(%struct.dwc3_meson_g12a* %priv) #2 !dbg !6491 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6494
  %call = call i32 @dwc3_meson_g12a_usb_init_glue(%struct.dwc3_meson_g12a* %0, i32 6) #6, !dbg !6495
  ret i32 %call, !dbg !6496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_gxl_usb_post_init(%struct.dwc3_meson_g12a* %priv) #2 !dbg !6497 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %ret = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6500, metadata !DIExpression()), !dbg !6501
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6502
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 12, !dbg !6503
  %1 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6503
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %1, i32 0, i32 8, !dbg !6504
  %2 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %set_phy_mode, align 8, !dbg !6504
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6505
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6506
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 6, !dbg !6507
  %5 = load i32, i32* %otg_phy_mode, align 4, !dbg !6507
  %call = call i32 %2(%struct.dwc3_meson_g12a* %3, i32 1, i32 %5) #6, !dbg !6502
  store i32 %call, i32* %ret, align 4, !dbg !6508
  %6 = load i32, i32* %ret, align 4, !dbg !6509
  %tobool = icmp ne i32 %6, 0, !dbg !6509
  br i1 %tobool, label %if.then, label %if.end, !dbg !6511

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !6512
  store i32 %7, i32* %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end:                                           ; preds = %entry
  %8 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6514
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6515
  %otg_phy_mode1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 6, !dbg !6516
  %10 = load i32, i32* %otg_phy_mode1, align 4, !dbg !6516
  call void @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %8, i32 %10) #6, !dbg !6517
  store i32 0, i32* %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6519
  ret i32 %11, !dbg !6519
}

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device*, i8*, i8*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #2 !dbg !6520 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6525
  %call = call zeroext i1 @IS_ERR(i8* %0) #6, !dbg !6527
  br i1 %call, label %if.then, label %if.else, !dbg !6528

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !6529
  %call1 = call i64 @PTR_ERR(i8* %1) #6, !dbg !6530
  %conv = trunc i64 %call1 to i32, !dbg !6530
  store i32 %conv, i32* %retval, align 4, !dbg !6531
  br label %return, !dbg !6531

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6532
  br label %return, !dbg !6532

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6533
  ret i32 %2, !dbg !6533
}

; Function Attrs: noredzone
declare dso_local i32 @phy_set_mode_ext(%struct.phy*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_usb_init_glue(%struct.dwc3_meson_g12a* %priv, i32 %mode) #2 !dbg !6534 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %mode.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp25 = alloca i64, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6537, metadata !DIExpression()), !dbg !6538
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6539, metadata !DIExpression()), !dbg !6540
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6541
  %1 = load i32, i32* %mode.addr, align 4, !dbg !6542
  %call = call i32 @dwc3_meson_g12a_usb2_init(%struct.dwc3_meson_g12a* %0, i32 %1) #6, !dbg !6543
  store i32 %call, i32* %ret, align 4, !dbg !6544
  %2 = load i32, i32* %ret, align 4, !dbg !6545
  %tobool = icmp ne i32 %2, 0, !dbg !6545
  br i1 %tobool, label %if.then, label %if.end, !dbg !6547

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !6548
  store i32 %3, i32* %retval, align 4, !dbg !6549
  br label %return, !dbg !6549

if.end:                                           ; preds = %entry
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6550
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 2, !dbg !6551
  %5 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6551
  br label %do.body, !dbg !6552

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6555

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6552

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6557

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6552

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6559

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6552

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6561

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6552

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6563

do.end8:                                          ; preds = %do.body7
  store i64 16777216, i64* %tmp, align 8, !dbg !6565
  %6 = load i64, i64* %tmp, align 8, !dbg !6565
  %conv = trunc i64 %6 to i32, !dbg !6566
  %call9 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 4, i32 33030144, i32 %conv) #6, !dbg !6567
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6568
  %usb_glue_regmap10 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %7, i32 0, i32 2, !dbg !6569
  %8 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap10, align 8, !dbg !6569
  %call11 = call i32 @regmap_update_bits(%struct.regmap* %8, i32 20, i32 16, i32 16) #6, !dbg !6570
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6571
  %usb_glue_regmap12 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 2, !dbg !6572
  %10 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap12, align 8, !dbg !6572
  %call13 = call i32 @regmap_update_bits(%struct.regmap* %10, i32 20, i32 32, i32 32) #6, !dbg !6573
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6574
  %usb_glue_regmap14 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 2, !dbg !6575
  %12 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap14, align 8, !dbg !6575
  br label %do.body15, !dbg !6576

do.body15:                                        ; preds = %do.end8
  br label %do.end16, !dbg !6579

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !6576

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6581

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !6576

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6583

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !6576

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6585

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !6576

do.body23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6587

do.end24:                                         ; preds = %do.body23
  store i64 65280, i64* %tmp25, align 8, !dbg !6589
  %13 = load i64, i64* %tmp25, align 8, !dbg !6589
  %conv26 = trunc i64 %13 to i32, !dbg !6590
  %call27 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 20, i32 65280, i32 %conv26) #6, !dbg !6591
  %14 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6592
  %usb3_ports = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %14, i32 0, i32 8, !dbg !6594
  %15 = load i32, i32* %usb3_ports, align 4, !dbg !6594
  %tobool28 = icmp ne i32 %15, 0, !dbg !6592
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6595

if.then29:                                        ; preds = %do.end24
  %16 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6596
  call void @dwc3_meson_g12a_usb3_init(%struct.dwc3_meson_g12a* %16) #6, !dbg !6597
  br label %if.end30, !dbg !6597

if.end30:                                         ; preds = %if.then29, %do.end24
  %17 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6598
  %18 = load i32, i32* %mode.addr, align 4, !dbg !6599
  call void @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %17, i32 %18) #6, !dbg !6600
  store i32 0, i32* %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

return:                                           ; preds = %if.end30, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !6602
  ret i32 %19, !dbg !6602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_usb2_init(%struct.dwc3_meson_g12a* %priv, i32 %mode) #2 !dbg !6603 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6606, metadata !DIExpression()), !dbg !6607
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6608, metadata !DIExpression()), !dbg !6609
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6610, metadata !DIExpression()), !dbg !6611
  store i32 0, i32* %i, align 4, !dbg !6612
  br label %for.cond, !dbg !6614

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6615
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6617
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 12, !dbg !6618
  %2 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6618
  %num_phys = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %2, i32 0, i32 5, !dbg !6619
  %3 = load i32, i32* %num_phys, align 8, !dbg !6619
  %cmp = icmp slt i32 %0, %3, !dbg !6620
  br i1 %cmp, label %for.body, label %for.end, !dbg !6621

for.body:                                         ; preds = %for.cond
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6622
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 4, !dbg !6625
  %5 = load i32, i32* %i, align 4, !dbg !6626
  %idxprom = sext i32 %5 to i64, !dbg !6622
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !6622
  %6 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !6622
  %tobool = icmp ne %struct.phy* %6, null, !dbg !6622
  br i1 %tobool, label %if.end, label %if.then, !dbg !6627

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6628

if.end:                                           ; preds = %for.body
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6629
  %drvdata1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %7, i32 0, i32 12, !dbg !6631
  %8 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata1, align 8, !dbg !6631
  %phy_names = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %8, i32 0, i32 4, !dbg !6632
  %9 = load i8**, i8*** %phy_names, align 8, !dbg !6632
  %10 = load i32, i32* %i, align 4, !dbg !6633
  %idxprom2 = sext i32 %10 to i64, !dbg !6629
  %arrayidx3 = getelementptr i8*, i8** %9, i64 %idxprom2, !dbg !6629
  %11 = load i8*, i8** %arrayidx3, align 8, !dbg !6629
  %call = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !6634
  %tobool4 = icmp ne i8* %call, null, !dbg !6634
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6635

if.then5:                                         ; preds = %if.end
  br label %for.inc, !dbg !6636

if.end6:                                          ; preds = %if.end
  %12 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6637
  %drvdata7 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %12, i32 0, i32 12, !dbg !6638
  %13 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata7, align 8, !dbg !6638
  %usb2_init_phy = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %13, i32 0, i32 7, !dbg !6639
  %14 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %usb2_init_phy, align 8, !dbg !6639
  %15 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6640
  %16 = load i32, i32* %i, align 4, !dbg !6641
  %17 = load i32, i32* %mode.addr, align 4, !dbg !6642
  %call8 = call i32 %14(%struct.dwc3_meson_g12a* %15, i32 %16, i32 %17) #6, !dbg !6637
  store i32 %call8, i32* %ret, align 4, !dbg !6643
  %18 = load i32, i32* %ret, align 4, !dbg !6644
  %tobool9 = icmp ne i32 %18, 0, !dbg !6644
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6646

if.then10:                                        ; preds = %if.end6
  %19 = load i32, i32* %ret, align 4, !dbg !6647
  store i32 %19, i32* %retval, align 4, !dbg !6648
  br label %return, !dbg !6648

if.end11:                                         ; preds = %if.end6
  br label %for.inc, !dbg !6649

for.inc:                                          ; preds = %if.end11, %if.then5, %if.then
  %20 = load i32, i32* %i, align 4, !dbg !6650
  %inc = add i32 %20, 1, !dbg !6650
  store i32 %inc, i32* %i, align 4, !dbg !6650
  br label %for.cond, !dbg !6651, !llvm.loop !6652

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6654
  br label %return, !dbg !6654

return:                                           ; preds = %for.end, %if.then10
  %21 = load i32, i32* %retval, align 4, !dbg !6655
  ret i32 %21, !dbg !6655
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_meson_g12a_usb3_init(%struct.dwc3_meson_g12a* %priv) #2 !dbg !6656 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %tmp = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  %tmp35 = alloca i64, align 8
  %tmp51 = alloca i64, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6659, metadata !DIExpression()), !dbg !6660
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6661
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 2, !dbg !6662
  %1 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6662
  br label %do.body, !dbg !6663

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6666

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6663

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6668

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6663

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6670

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6663

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6672

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6663

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6674

do.end8:                                          ; preds = %do.body7
  store i64 4, i64* %tmp, align 8, !dbg !6676
  %2 = load i64, i64* %tmp, align 8, !dbg !6676
  %or = or i64 1, %2, !dbg !6677
  %or9 = or i64 %or, 8192, !dbg !6678
  %conv = trunc i64 %or9 to i32, !dbg !6679
  %call = call i32 @regmap_update_bits(%struct.regmap* %1, i32 12, i32 8206, i32 %conv) #6, !dbg !6680
  call void @__const_udelay(i64 8590) #6, !dbg !6681
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6686
  %usb_glue_regmap10 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 2, !dbg !6687
  %4 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap10, align 8, !dbg !6687
  br label %do.body11, !dbg !6688

do.body11:                                        ; preds = %do.end8
  br label %do.end12, !dbg !6691

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !6688

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !6693

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !6688

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6695

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !6688

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6697

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !6688

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6699

do.end20:                                         ; preds = %do.body19
  store i64 22020096, i64* %tmp21, align 8, !dbg !6701
  %5 = load i64, i64* %tmp21, align 8, !dbg !6701
  %conv22 = trunc i64 %5 to i32, !dbg !6702
  %call23 = call i32 @regmap_update_bits(%struct.regmap* %4, i32 8, i32 66060288, i32 %conv22) #6, !dbg !6703
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6704
  %usb_glue_regmap24 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 2, !dbg !6705
  %7 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap24, align 8, !dbg !6705
  br label %do.body25, !dbg !6706

do.body25:                                        ; preds = %do.end20
  br label %do.end26, !dbg !6709

do.end26:                                         ; preds = %do.body25
  br label %do.body27, !dbg !6706

do.body27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !6711

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !6706

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !6713

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !6706

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !6715

do.end32:                                         ; preds = %do.body31
  br label %do.body33, !dbg !6706

do.body33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !6717

do.end34:                                         ; preds = %do.body33
  store i64 2147483648, i64* %tmp35, align 8, !dbg !6719
  %8 = load i64, i64* %tmp35, align 8, !dbg !6719
  %conv36 = trunc i64 %8 to i32, !dbg !6720
  %call37 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 8, i32 -67108864, i32 %conv36) #6, !dbg !6721
  call void @__const_udelay(i64 8590) #6, !dbg !6722
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6727
  %usb_glue_regmap38 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 2, !dbg !6728
  %10 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap38, align 8, !dbg !6728
  %call39 = call i32 @regmap_update_bits(%struct.regmap* %10, i32 4, i32 131072, i32 131072) #6, !dbg !6729
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6730
  %usb_glue_regmap40 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 2, !dbg !6731
  %12 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap40, align 8, !dbg !6731
  br label %do.body41, !dbg !6732

do.body41:                                        ; preds = %do.end34
  br label %do.end42, !dbg !6735

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !6732

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !6737

do.end44:                                         ; preds = %do.body43
  br label %do.body45, !dbg !6732

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !6739

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !6732

do.body47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !6741

do.end48:                                         ; preds = %do.body47
  br label %do.body49, !dbg !6732

do.body49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !6743

do.end50:                                         ; preds = %do.body49
  store i64 4261412864, i64* %tmp51, align 8, !dbg !6745
  %13 = load i64, i64* %tmp51, align 8, !dbg !6745
  %conv52 = trunc i64 %13 to i32, !dbg !6746
  %call53 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 4, i32 -33554432, i32 %conv52) #6, !dbg !6747
  ret void, !dbg !6748
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_usb_init(%struct.dwc3_meson_g12a* %priv) #2 !dbg !6749 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6750, metadata !DIExpression()), !dbg !6751
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6752
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6753
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 6, !dbg !6754
  %2 = load i32, i32* %otg_phy_mode, align 4, !dbg !6754
  %call = call i32 @dwc3_meson_g12a_usb_init_glue(%struct.dwc3_meson_g12a* %0, i32 %2) #6, !dbg !6755
  ret i32 %call, !dbg !6756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_setup_regmaps(%struct.dwc3_meson_g12a* %priv, i8* %base) #2 !dbg !6757 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %base.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %u2p_regmap_config = alloca %struct.regmap_config, align 8
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !6760, metadata !DIExpression()), !dbg !6761
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6762, metadata !DIExpression()), !dbg !6763
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6764
  %dev = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 0, !dbg !6764
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6764
  %2 = load i8*, i8** %base.addr, align 8, !dbg !6764
  %add.ptr = getelementptr i8, i8* %2, i64 128, !dbg !6764
  %call = call %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device* %1, i8* null, i8* %add.ptr, %struct.regmap_config* @phy_meson_g12a_usb_glue_regmap_conf, %struct.lock_class_key* null, i8* null) #6, !dbg !6764
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6765
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 2, !dbg !6766
  store %struct.regmap* %call, %struct.regmap** %usb_glue_regmap, align 8, !dbg !6767
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6768
  %usb_glue_regmap1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 2, !dbg !6770
  %5 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap1, align 8, !dbg !6770
  %6 = bitcast %struct.regmap* %5 to i8*, !dbg !6768
  %call2 = call zeroext i1 @IS_ERR(i8* %6) #6, !dbg !6771
  br i1 %call2, label %if.then, label %if.end, !dbg !6772

if.then:                                          ; preds = %entry
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6773
  %usb_glue_regmap3 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %7, i32 0, i32 2, !dbg !6774
  %8 = load %struct.regmap*, %struct.regmap** %usb_glue_regmap3, align 8, !dbg !6774
  %9 = bitcast %struct.regmap* %8 to i8*, !dbg !6773
  %call4 = call i64 @PTR_ERR(i8* %9) #6, !dbg !6775
  %conv = trunc i64 %call4 to i32, !dbg !6775
  store i32 %conv, i32* %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6777
  br label %for.cond, !dbg !6779

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !6780
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6782
  %usb2_ports = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 7, !dbg !6783
  %12 = load i32, i32* %usb2_ports, align 8, !dbg !6783
  %cmp = icmp ult i32 %10, %12, !dbg !6784
  br i1 %cmp, label %for.body, label %for.end, !dbg !6785

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.regmap_config* %u2p_regmap_config, metadata !6786, metadata !DIExpression()), !dbg !6788
  %13 = bitcast %struct.regmap_config* %u2p_regmap_config to i8*, !dbg !6788
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 272, i1 false), !dbg !6788
  %14 = bitcast i8* %13 to %struct.regmap_config*, !dbg !6788
  %15 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 1, !dbg !6788
  store i32 8, i32* %15, align 8, !dbg !6788
  %16 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 2, !dbg !6788
  store i32 4, i32* %16, align 4, !dbg !6788
  %17 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 4, !dbg !6788
  store i32 32, i32* %17, align 4, !dbg !6788
  %18 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 18, !dbg !6788
  store i32 4, i32* %18, align 4, !dbg !6788
  %19 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6789
  %dev6 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %19, i32 0, i32 0, !dbg !6790
  %20 = load %struct.device*, %struct.device** %dev6, align 8, !dbg !6790
  %21 = load i32, i32* %i, align 4, !dbg !6791
  %call7 = call noalias i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %20, i32 3264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %21) #6, !dbg !6792
  %name = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %u2p_regmap_config, i32 0, i32 0, !dbg !6793
  store i8* %call7, i8** %name, align 8, !dbg !6794
  %name8 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %u2p_regmap_config, i32 0, i32 0, !dbg !6795
  %22 = load i8*, i8** %name8, align 8, !dbg !6795
  %tobool = icmp ne i8* %22, null, !dbg !6797
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !6798

if.then9:                                         ; preds = %for.body
  store i32 -12, i32* %retval, align 4, !dbg !6799
  br label %return, !dbg !6799

if.end10:                                         ; preds = %for.body
  %23 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6800
  %dev11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %23, i32 0, i32 0, !dbg !6800
  %24 = load %struct.device*, %struct.device** %dev11, align 8, !dbg !6800
  %25 = load i8*, i8** %base.addr, align 8, !dbg !6800
  %26 = load i32, i32* %i, align 4, !dbg !6800
  %mul = mul i32 %26, 32, !dbg !6800
  %idx.ext = sext i32 %mul to i64, !dbg !6800
  %add.ptr12 = getelementptr i8, i8* %25, i64 %idx.ext, !dbg !6800
  %call13 = call %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device* %24, i8* null, i8* %add.ptr12, %struct.regmap_config* %u2p_regmap_config, %struct.lock_class_key* null, i8* null) #6, !dbg !6800
  %27 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6801
  %u2p_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %27, i32 0, i32 1, !dbg !6802
  %28 = load i32, i32* %i, align 4, !dbg !6803
  %idxprom = sext i32 %28 to i64, !dbg !6801
  %arrayidx = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap, i64 0, i64 %idxprom, !dbg !6801
  store %struct.regmap* %call13, %struct.regmap** %arrayidx, align 8, !dbg !6804
  %29 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6805
  %u2p_regmap14 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %29, i32 0, i32 1, !dbg !6807
  %30 = load i32, i32* %i, align 4, !dbg !6808
  %idxprom15 = sext i32 %30 to i64, !dbg !6805
  %arrayidx16 = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap14, i64 0, i64 %idxprom15, !dbg !6805
  %31 = load %struct.regmap*, %struct.regmap** %arrayidx16, align 8, !dbg !6805
  %32 = bitcast %struct.regmap* %31 to i8*, !dbg !6805
  %call17 = call zeroext i1 @IS_ERR(i8* %32) #6, !dbg !6809
  br i1 %call17, label %if.then18, label %if.end24, !dbg !6810

if.then18:                                        ; preds = %if.end10
  %33 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6811
  %u2p_regmap19 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %33, i32 0, i32 1, !dbg !6812
  %34 = load i32, i32* %i, align 4, !dbg !6813
  %idxprom20 = sext i32 %34 to i64, !dbg !6811
  %arrayidx21 = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap19, i64 0, i64 %idxprom20, !dbg !6811
  %35 = load %struct.regmap*, %struct.regmap** %arrayidx21, align 8, !dbg !6811
  %36 = bitcast %struct.regmap* %35 to i8*, !dbg !6811
  %call22 = call i64 @PTR_ERR(i8* %36) #6, !dbg !6814
  %conv23 = trunc i64 %call22 to i32, !dbg !6814
  store i32 %conv23, i32* %retval, align 4, !dbg !6815
  br label %return, !dbg !6815

if.end24:                                         ; preds = %if.end10
  br label %for.inc, !dbg !6816

for.inc:                                          ; preds = %if.end24
  %37 = load i32, i32* %i, align 4, !dbg !6817
  %inc = add i32 %37, 1, !dbg !6817
  store i32 %inc, i32* %i, align 4, !dbg !6817
  br label %for.cond, !dbg !6818, !llvm.loop !6819

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6821
  br label %return, !dbg !6821

return:                                           ; preds = %for.end, %if.then18, %if.then9, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !6822
  ret i32 %38, !dbg !6822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_usb2_init_phy(%struct.dwc3_meson_g12a* %priv, i32 %i, i32 %mode) #2 !dbg !6823 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %i.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6824, metadata !DIExpression()), !dbg !6825
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6826, metadata !DIExpression()), !dbg !6827
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6828, metadata !DIExpression()), !dbg !6829
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6830, metadata !DIExpression()), !dbg !6831
  %0 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6832
  %u2p_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %0, i32 0, i32 1, !dbg !6833
  %1 = load i32, i32* %i.addr, align 4, !dbg !6834
  %idxprom = sext i32 %1 to i64, !dbg !6832
  %arrayidx = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap, i64 0, i64 %idxprom, !dbg !6832
  %2 = load %struct.regmap*, %struct.regmap** %arrayidx, align 8, !dbg !6832
  %call = call i32 @regmap_update_bits(%struct.regmap* %2, i32 0, i32 8, i32 8) #6, !dbg !6835
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6836
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 12, !dbg !6838
  %4 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6838
  %otg_switch_supported = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %4, i32 0, i32 0, !dbg !6839
  %5 = load i8, i8* %otg_switch_supported, align 8, !dbg !6839
  %tobool = trunc i8 %5 to i1, !dbg !6839
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !6840

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %i.addr, align 4, !dbg !6841
  %cmp = icmp eq i32 %6, 1, !dbg !6842
  br i1 %cmp, label %if.then, label %if.else, !dbg !6843

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6844
  %u2p_regmap1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %7, i32 0, i32 1, !dbg !6846
  %8 = load i32, i32* %i.addr, align 4, !dbg !6847
  %idxprom2 = sext i32 %8 to i64, !dbg !6844
  %arrayidx3 = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap1, i64 0, i64 %idxprom2, !dbg !6844
  %9 = load %struct.regmap*, %struct.regmap** %arrayidx3, align 8, !dbg !6844
  %call4 = call i32 @regmap_update_bits(%struct.regmap* %9, i32 0, i32 48, i32 48) #6, !dbg !6848
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6849
  %drvdata5 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 12, !dbg !6850
  %11 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata5, align 8, !dbg !6850
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %11, i32 0, i32 8, !dbg !6851
  %12 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %set_phy_mode, align 8, !dbg !6851
  %13 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6852
  %14 = load i32, i32* %i.addr, align 4, !dbg !6853
  %15 = load i32, i32* %mode.addr, align 4, !dbg !6854
  %call6 = call i32 %12(%struct.dwc3_meson_g12a* %13, i32 %14, i32 %15) #6, !dbg !6849
  store i32 %call6, i32* %ret, align 4, !dbg !6855
  br label %if.end, !dbg !6856

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6857
  %drvdata7 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %16, i32 0, i32 12, !dbg !6858
  %17 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata7, align 8, !dbg !6858
  %set_phy_mode8 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %17, i32 0, i32 8, !dbg !6859
  %18 = load i32 (%struct.dwc3_meson_g12a*, i32, i32)*, i32 (%struct.dwc3_meson_g12a*, i32, i32)** %set_phy_mode8, align 8, !dbg !6859
  %19 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6860
  %20 = load i32, i32* %i.addr, align 4, !dbg !6861
  %call9 = call i32 %18(%struct.dwc3_meson_g12a* %19, i32 %20, i32 1) #6, !dbg !6857
  store i32 %call9, i32* %ret, align 4, !dbg !6862
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %ret, align 4, !dbg !6863
  %tobool10 = icmp ne i32 %21, 0, !dbg !6863
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6865

if.then11:                                        ; preds = %if.end
  %22 = load i32, i32* %ret, align 4, !dbg !6866
  store i32 %22, i32* %retval, align 4, !dbg !6867
  br label %return, !dbg !6867

if.end12:                                         ; preds = %if.end
  %23 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6868
  %u2p_regmap13 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %23, i32 0, i32 1, !dbg !6869
  %24 = load i32, i32* %i.addr, align 4, !dbg !6870
  %idxprom14 = sext i32 %24 to i64, !dbg !6868
  %arrayidx15 = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap13, i64 0, i64 %idxprom14, !dbg !6868
  %25 = load %struct.regmap*, %struct.regmap** %arrayidx15, align 8, !dbg !6868
  %call16 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 0, i32 8, i32 0) #6, !dbg !6871
  store i32 0, i32* %retval, align 4, !dbg !6872
  br label %return, !dbg !6872

return:                                           ; preds = %if.end12, %if.then11
  %26 = load i32, i32* %retval, align 4, !dbg !6873
  ret i32 %26, !dbg !6873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_set_phy_mode(%struct.dwc3_meson_g12a* %priv, i32 %i, i32 %mode) #2 !dbg !6874 {
entry:
  %priv.addr = alloca %struct.dwc3_meson_g12a*, align 8
  %i.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %priv, %struct.dwc3_meson_g12a** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv.addr, metadata !6875, metadata !DIExpression()), !dbg !6876
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6877, metadata !DIExpression()), !dbg !6878
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  %0 = load i32, i32* %mode.addr, align 4, !dbg !6881
  %cmp = icmp eq i32 %0, 1, !dbg !6883
  br i1 %cmp, label %if.then, label %if.else, !dbg !6884

if.then:                                          ; preds = %entry
  %1 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6885
  %u2p_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %1, i32 0, i32 1, !dbg !6886
  %2 = load i32, i32* %i.addr, align 4, !dbg !6887
  %idxprom = sext i32 %2 to i64, !dbg !6885
  %arrayidx = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap, i64 0, i64 %idxprom, !dbg !6885
  %3 = load %struct.regmap*, %struct.regmap** %arrayidx, align 8, !dbg !6885
  %call = call i32 @regmap_update_bits(%struct.regmap* %3, i32 0, i32 1, i32 1) #6, !dbg !6888
  br label %if.end, !dbg !6888

if.else:                                          ; preds = %entry
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv.addr, align 8, !dbg !6889
  %u2p_regmap1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 1, !dbg !6890
  %5 = load i32, i32* %i.addr, align 4, !dbg !6891
  %idxprom2 = sext i32 %5 to i64, !dbg !6889
  %arrayidx3 = getelementptr [3 x %struct.regmap*], [3 x %struct.regmap*]* %u2p_regmap1, i64 0, i64 %idxprom2, !dbg !6889
  %6 = load %struct.regmap*, %struct.regmap** %arrayidx3, align 8, !dbg !6889
  %call4 = call i32 @regmap_update_bits(%struct.regmap* %6, i32 0, i32 1, i32 0) #6, !dbg !6892
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6893
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kasprintf(%struct.device*, i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_suspend(%struct.device* %dev) #2 !dbg !6894 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6895, metadata !DIExpression()), !dbg !6896
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !6897, metadata !DIExpression()), !dbg !6898
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6899
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !6900
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !6900
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6898
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6901, metadata !DIExpression()), !dbg !6902
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6903, metadata !DIExpression()), !dbg !6904
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6905
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %2, i32 0, i32 9, !dbg !6907
  %3 = load %struct.regulator*, %struct.regulator** %vbus, align 8, !dbg !6907
  %tobool = icmp ne %struct.regulator* %3, null, !dbg !6905
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !6908

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6909
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 6, !dbg !6910
  %5 = load i32, i32* %otg_phy_mode, align 4, !dbg !6910
  %cmp = icmp eq i32 %5, 1, !dbg !6911
  br i1 %cmp, label %if.then, label %if.end5, !dbg !6912

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6913
  %vbus1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %6, i32 0, i32 9, !dbg !6915
  %7 = load %struct.regulator*, %struct.regulator** %vbus1, align 8, !dbg !6915
  %call2 = call i32 @regulator_disable(%struct.regulator* %7) #6, !dbg !6916
  store i32 %call2, i32* %ret, align 4, !dbg !6917
  %8 = load i32, i32* %ret, align 4, !dbg !6918
  %tobool3 = icmp ne i32 %8, 0, !dbg !6918
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6920

if.then4:                                         ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !6921
  store i32 %9, i32* %retval, align 4, !dbg !6922
  br label %return, !dbg !6922

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !6923

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !6924
  br label %for.cond, !dbg !6926

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, i32* %i, align 4, !dbg !6927
  %cmp6 = icmp slt i32 %10, 3, !dbg !6929
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6930

for.body:                                         ; preds = %for.cond
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6931
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 4, !dbg !6933
  %12 = load i32, i32* %i, align 4, !dbg !6934
  %idxprom = sext i32 %12 to i64, !dbg !6931
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !6931
  %13 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !6931
  %call7 = call i32 @phy_power_off(%struct.phy* %13) #6, !dbg !6935
  %14 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6936
  %phys8 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %14, i32 0, i32 4, !dbg !6937
  %15 = load i32, i32* %i, align 4, !dbg !6938
  %idxprom9 = sext i32 %15 to i64, !dbg !6936
  %arrayidx10 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys8, i64 0, i64 %idxprom9, !dbg !6936
  %16 = load %struct.phy*, %struct.phy** %arrayidx10, align 8, !dbg !6936
  %call11 = call i32 @phy_exit(%struct.phy* %16) #6, !dbg !6939
  br label %for.inc, !dbg !6940

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !6941
  %inc = add i32 %17, 1, !dbg !6941
  store i32 %inc, i32* %i, align 4, !dbg !6941
  br label %for.cond, !dbg !6942, !llvm.loop !6943

for.end:                                          ; preds = %for.cond
  %18 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6945
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %18, i32 0, i32 3, !dbg !6946
  %19 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6946
  %call12 = call i32 @reset_control_assert(%struct.reset_control* %19) #6, !dbg !6947
  store i32 0, i32* %retval, align 4, !dbg !6948
  br label %return, !dbg !6948

return:                                           ; preds = %for.end, %if.then4
  %20 = load i32, i32* %retval, align 4, !dbg !6949
  ret i32 %20, !dbg !6949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_resume(%struct.device* %dev) #2 !dbg !6950 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6951, metadata !DIExpression()), !dbg !6952
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !6953, metadata !DIExpression()), !dbg !6954
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6955
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !6956
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !6956
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6954
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6957, metadata !DIExpression()), !dbg !6958
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6959, metadata !DIExpression()), !dbg !6960
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6961
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %2, i32 0, i32 3, !dbg !6962
  %3 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6962
  %call1 = call i32 @reset_control_deassert(%struct.reset_control* %3) #6, !dbg !6963
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6964
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 12, !dbg !6965
  %5 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !6965
  %usb_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %5, i32 0, i32 9, !dbg !6966
  %6 = load i32 (%struct.dwc3_meson_g12a*)*, i32 (%struct.dwc3_meson_g12a*)** %usb_init, align 8, !dbg !6966
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6967
  %call2 = call i32 %6(%struct.dwc3_meson_g12a* %7) #6, !dbg !6964
  store i32 %call2, i32* %ret, align 4, !dbg !6968
  %8 = load i32, i32* %ret, align 4, !dbg !6969
  %tobool = icmp ne i32 %8, 0, !dbg !6969
  br i1 %tobool, label %if.then, label %if.end, !dbg !6971

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ret, align 4, !dbg !6972
  store i32 %9, i32* %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6974
  br label %for.cond, !dbg !6976

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !6977
  %cmp = icmp slt i32 %10, 3, !dbg !6979
  br i1 %cmp, label %for.body, label %for.end, !dbg !6980

for.body:                                         ; preds = %for.cond
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !6981
  %phys = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 4, !dbg !6983
  %12 = load i32, i32* %i, align 4, !dbg !6984
  %idxprom = sext i32 %12 to i64, !dbg !6981
  %arrayidx = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys, i64 0, i64 %idxprom, !dbg !6981
  %13 = load %struct.phy*, %struct.phy** %arrayidx, align 8, !dbg !6981
  %call3 = call i32 @phy_init(%struct.phy* %13) #6, !dbg !6985
  store i32 %call3, i32* %ret, align 4, !dbg !6986
  %14 = load i32, i32* %ret, align 4, !dbg !6987
  %tobool4 = icmp ne i32 %14, 0, !dbg !6987
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6989

if.then5:                                         ; preds = %for.body
  %15 = load i32, i32* %ret, align 4, !dbg !6990
  store i32 %15, i32* %retval, align 4, !dbg !6991
  br label %return, !dbg !6991

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !6992

for.inc:                                          ; preds = %if.end6
  %16 = load i32, i32* %i, align 4, !dbg !6993
  %inc = add i32 %16, 1, !dbg !6993
  store i32 %inc, i32* %i, align 4, !dbg !6993
  br label %for.cond, !dbg !6994, !llvm.loop !6995

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !6997
  br label %for.cond7, !dbg !6999

for.cond7:                                        ; preds = %for.inc17, %for.end
  %17 = load i32, i32* %i, align 4, !dbg !7000
  %cmp8 = icmp slt i32 %17, 3, !dbg !7002
  br i1 %cmp8, label %for.body9, label %for.end19, !dbg !7003

for.body9:                                        ; preds = %for.cond7
  %18 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7004
  %phys10 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %18, i32 0, i32 4, !dbg !7006
  %19 = load i32, i32* %i, align 4, !dbg !7007
  %idxprom11 = sext i32 %19 to i64, !dbg !7004
  %arrayidx12 = getelementptr [3 x %struct.phy*], [3 x %struct.phy*]* %phys10, i64 0, i64 %idxprom11, !dbg !7004
  %20 = load %struct.phy*, %struct.phy** %arrayidx12, align 8, !dbg !7004
  %call13 = call i32 @phy_power_on(%struct.phy* %20) #6, !dbg !7008
  store i32 %call13, i32* %ret, align 4, !dbg !7009
  %21 = load i32, i32* %ret, align 4, !dbg !7010
  %tobool14 = icmp ne i32 %21, 0, !dbg !7010
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !7012

if.then15:                                        ; preds = %for.body9
  %22 = load i32, i32* %ret, align 4, !dbg !7013
  store i32 %22, i32* %retval, align 4, !dbg !7014
  br label %return, !dbg !7014

if.end16:                                         ; preds = %for.body9
  br label %for.inc17, !dbg !7015

for.inc17:                                        ; preds = %if.end16
  %23 = load i32, i32* %i, align 4, !dbg !7016
  %inc18 = add i32 %23, 1, !dbg !7016
  store i32 %inc18, i32* %i, align 4, !dbg !7016
  br label %for.cond7, !dbg !7017, !llvm.loop !7018

for.end19:                                        ; preds = %for.cond7
  %24 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7020
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %24, i32 0, i32 9, !dbg !7022
  %25 = load %struct.regulator*, %struct.regulator** %vbus, align 8, !dbg !7022
  %tobool20 = icmp ne %struct.regulator* %25, null, !dbg !7020
  br i1 %tobool20, label %land.lhs.true, label %if.end28, !dbg !7023

land.lhs.true:                                    ; preds = %for.end19
  %26 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7024
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %26, i32 0, i32 6, !dbg !7025
  %27 = load i32, i32* %otg_phy_mode, align 4, !dbg !7025
  %cmp21 = icmp eq i32 %27, 1, !dbg !7026
  br i1 %cmp21, label %if.then22, label %if.end28, !dbg !7027

if.then22:                                        ; preds = %land.lhs.true
  %28 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7028
  %vbus23 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %28, i32 0, i32 9, !dbg !7030
  %29 = load %struct.regulator*, %struct.regulator** %vbus23, align 8, !dbg !7030
  %call24 = call i32 @regulator_enable(%struct.regulator* %29) #6, !dbg !7031
  store i32 %call24, i32* %ret, align 4, !dbg !7032
  %30 = load i32, i32* %ret, align 4, !dbg !7033
  %tobool25 = icmp ne i32 %30, 0, !dbg !7033
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !7035

if.then26:                                        ; preds = %if.then22
  %31 = load i32, i32* %ret, align 4, !dbg !7036
  store i32 %31, i32* %retval, align 4, !dbg !7037
  br label %return, !dbg !7037

if.end27:                                         ; preds = %if.then22
  br label %if.end28, !dbg !7038

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %for.end19
  store i32 0, i32* %retval, align 4, !dbg !7039
  br label %return, !dbg !7039

return:                                           ; preds = %if.end28, %if.then26, %if.then15, %if.then5, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !7040
  ret i32 %32, !dbg !7040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_runtime_suspend(%struct.device* %dev) #2 !dbg !7041 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7042, metadata !DIExpression()), !dbg !7043
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !7044, metadata !DIExpression()), !dbg !7045
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7046
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !7047
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !7047
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7045
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7048
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %2, i32 0, i32 12, !dbg !7049
  %3 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !7049
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %3, i32 0, i32 3, !dbg !7050
  %4 = load i32, i32* %num_clks, align 8, !dbg !7050
  %5 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7051
  %drvdata1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %5, i32 0, i32 12, !dbg !7052
  %6 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata1, align 8, !dbg !7052
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %6, i32 0, i32 2, !dbg !7053
  %7 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks, align 8, !dbg !7053
  call void @clk_bulk_disable_unprepare(i32 %4, %struct.clk_bulk_data* %7) #6, !dbg !7054
  ret i32 0, !dbg !7055
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_meson_g12a_runtime_resume(%struct.device* %dev) #2 !dbg !7056 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7057, metadata !DIExpression()), !dbg !7058
  call void @llvm.dbg.declare(metadata %struct.dwc3_meson_g12a** %priv, metadata !7059, metadata !DIExpression()), !dbg !7060
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7061
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !7062
  %1 = bitcast i8* %call to %struct.dwc3_meson_g12a*, !dbg !7062
  store %struct.dwc3_meson_g12a* %1, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7060
  %2 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7063
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %2, i32 0, i32 12, !dbg !7064
  %3 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata, align 8, !dbg !7064
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %3, i32 0, i32 3, !dbg !7065
  %4 = load i32, i32* %num_clks, align 8, !dbg !7065
  %5 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %priv, align 8, !dbg !7066
  %drvdata1 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %5, i32 0, i32 12, !dbg !7067
  %6 = load %struct.dwc3_meson_g12a_drvdata*, %struct.dwc3_meson_g12a_drvdata** %drvdata1, align 8, !dbg !7067
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, %struct.dwc3_meson_g12a_drvdata* %6, i32 0, i32 2, !dbg !7068
  %7 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks, align 8, !dbg !7068
  %call2 = call i32 @clk_bulk_prepare_enable(i32 %4, %struct.clk_bulk_data* %7) #6, !dbg !7069
  ret i32 %call2, !dbg !7070
}

; Function Attrs: noredzone
declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

; Function Attrs: noredzone
declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5271, !5272, !5273, !5274}
!llvm.ident = !{!5275}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dwc3_meson_g12a_driver_init330", scope: !2, file: !3, line: 966, type: !195, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !188, globals: !208, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/dwc3/dwc3-meson-g12a.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !31, !43, !50, !55, !61, !66, !72, !79, !85, !94, !102, !108, !114, !121, !128, !151, !158, !164, !169, !175, !182}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !129, line: 24, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!131 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!142 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!143 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!144 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!145 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!146 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!147 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!148 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!149 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!150 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dr_mode", file: !152, line: 116, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "USB_DR_MODE_UNKNOWN", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "USB_DR_MODE_HOST", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_DR_MODE_PERIPHERAL", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_DR_MODE_OTG", value: 3, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_role", file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/usb/role.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "USB_ROLE_NONE", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "USB_ROLE_HOST", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "USB_ROLE_DEVICE", value: 2, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 10, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !170, line: 11, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !176, line: 40, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !176, line: 184, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!188 = !{!189, !192, !194, !195, !196, !197, !198, !201, !202}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !191, line: 76, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 148, baseType: !7)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!196 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!197 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !197)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !205, line: 21, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !207, line: 27, baseType: !7)
!207 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!0, !209, !216, !223, !228, !233, !238, !4972, !4979, !4982, !5152, !5155, !5158, !5250, !5252, !5255, !5257, !5259, !5262, !5264, !5266, !5269}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "__exitcall_dwc3_meson_g12a_driver_exit", scope: !2, file: !3, line: 966, type: !211, isLocal: true, isDefinition: true)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !212, line: 117, baseType: !213)
!212 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file331", scope: !2, file: !3, line: 967, type: !218, isLocal: true, isDefinition: true, align: 8)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 432, elements: !221)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!221 = !{!222}
!222 = !DISubrange(count: 54)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license332", scope: !2, file: !3, line: 967, type: !225, isLocal: true, isDefinition: true, align: 8)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 248, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 31)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description333", scope: !2, file: !3, line: 968, type: !230, isLocal: true, isDefinition: true, align: 8)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 496, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 62)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author334", scope: !2, file: !3, line: 969, type: !235, isLocal: true, isDefinition: true, align: 8)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 512, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "dwc3_meson_g12a_driver", scope: !2, file: !3, line: 956, type: !240, isLocal: true, isDefinition: true)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !241, line: 200, size: 1600, elements: !242)
!241 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !4959, !4960, !4964, !4968, !4969, !4970, !4971}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !240, file: !241, line: 201, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!197, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !241, line: 22, size: 6208, elements: !249)
!249 = !{!250, !252, !253, !256, !4928, !4929, !4930, !4931, !4945, !4953, !4954, !4957}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !241, line: 23, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !248, file: !241, line: 24, baseType: !197, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !248, file: !241, line: 25, baseType: !254, size: 8, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 30, baseType: !255)
!255 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !248, file: !241, line: 26, baseType: !257, size: 5568, offset: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 461, size: 5568, elements: !258)
!258 = !{!259, !4472, !4473, !4476, !4477, !4527, !4618, !4619, !4620, !4621, !4622, !4631, !4725, !4738, !4741, !4742, !4746, !4748, !4749, !4750, !4754, !4760, !4761, !4764, !4879, !4880, !4881, !4882, !4883, !4884, !4916, !4917, !4918, !4921, !4924, !4925, !4926, !4927}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !257, file: !115, line: 462, baseType: !260, size: 512)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !261, line: 64, size: 512, elements: !262)
!261 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!262 = !{!263, !264, !270, !272, !330, !4339, !4466, !4467, !4468, !4469, !4470, !4471}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !261, line: 65, baseType: !251, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !260, file: !261, line: 66, baseType: !265, size: 128, offset: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 178, size: 128, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !193, line: 179, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !193, line: 179, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !261, line: 67, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !260, file: !261, line: 68, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !261, line: 192, size: 704, elements: !275)
!275 = !{!276, !277, !293, !294}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !274, file: !261, line: 193, baseType: !265, size: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !274, file: !261, line: 194, baseType: !278, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !279, line: 83, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !279, line: 71, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !279, line: 72, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 72, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !283, file: !279, line: 73, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !279, line: 20, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !286, file: !279, line: 21, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !290, line: 25, baseType: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 25, elements: !292)
!292 = !{}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !261, line: 195, baseType: !260, size: 512, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !274, file: !261, line: 196, baseType: !295, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !261, line: 156, size: 192, elements: !298)
!298 = !{!299, !304, !309}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !297, file: !261, line: 157, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!197, !273, !271}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !261, line: 158, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!251, !273, !271}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !297, file: !261, line: 159, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!197, !273, !271, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !261, line: 148, size: 20736, elements: !316)
!316 = !{!317, !322, !324, !325, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !315, file: !261, line: 149, baseType: !318, size: 192)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!320 = !{!321}
!321 = !DISubrange(count: 3)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !315, file: !261, line: 150, baseType: !323, size: 4096, offset: 192)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 4096, elements: !236)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !315, file: !261, line: 151, baseType: !197, size: 32, offset: 4288)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !315, file: !261, line: 152, baseType: !326, size: 16384, offset: 4320)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16384, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !315, file: !261, line: 153, baseType: !197, size: 32, offset: 20704)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !260, file: !261, line: 69, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !261, line: 138, size: 448, elements: !333)
!333 = !{!334, !338, !366, !368, !4303, !4331, !4335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !332, file: !261, line: 139, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !271}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !332, file: !261, line: 140, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !342, line: 230, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !359}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !341, file: !342, line: 231, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !271, !352, !319}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 60, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !350, line: 15, baseType: !196)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !342, line: 30, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !342, line: 31, baseType: !251, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !353, file: !342, line: 32, baseType: !357, size: 16, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 19, baseType: !358)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !341, file: !342, line: 232, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!348, !271, !352, !251, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 55, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !194)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !332, file: !261, line: 141, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !332, file: !261, line: 142, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !342, line: 84, size: 320, elements: !373)
!373 = !{!374, !375, !379, !4300, !4301}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !342, line: 85, baseType: !251, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !372, file: !342, line: 86, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!357, !271, !352, !197}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !372, file: !342, line: 88, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!357, !271, !383, !197}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !342, line: 168, size: 448, elements: !385)
!385 = !{!386, !387, !388, !389, !4295, !4296}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !384, file: !342, line: 169, baseType: !353, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !384, file: !342, line: 170, baseType: !363, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !384, file: !342, line: 171, baseType: !195, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !384, file: !342, line: 172, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!348, !393, !271, !383, !319, !566, !363}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !86, line: 916, size: 1856, align: 32, elements: !395)
!395 = !{!396, !414, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4278, !4279, !4288, !4289, !4290, !4291, !4292, !4293, !4294}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !394, file: !86, line: 920, baseType: !397, size: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !86, line: 917, size: 128, elements: !398)
!398 = !{!399, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !397, file: !86, line: 918, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !401, line: 58, size: 64, elements: !402)
!401 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 59, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !397, file: !86, line: 919, baseType: !406, size: 128, align: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 216, size: 128, align: 64, elements: !407)
!407 = !{!408, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !193, line: 217, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !406, file: !193, line: 218, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !409}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !394, file: !86, line: 921, baseType: !415, size: 128, offset: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !416, line: 8, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !415, file: !416, line: 9, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !421, line: 18, flags: DIFlagFwdDecl)
!421 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !415, file: !416, line: 10, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !421, line: 89, size: 1536, elements: !425)
!425 = !{!426, !427, !437, !445, !446, !465, !4228, !4230, !4242, !4243, !4244, !4245, !4246, !4252, !4253, !4254}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !424, file: !421, line: 91, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !424, file: !421, line: 92, baseType: !428, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !429, line: 277, baseType: !430)
!429 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !429, line: 277, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !430, file: !429, line: 277, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !429, line: 70, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !429, line: 65, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !434, file: !429, line: 66, baseType: !7, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !424, file: !421, line: 93, baseType: !438, size: 128, offset: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !439, line: 38, size: 128, elements: !440)
!439 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !439, line: 39, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !438, file: !439, line: 39, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !424, file: !421, line: 94, baseType: !423, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !424, file: !421, line: 95, baseType: !447, size: 128, offset: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !421, line: 47, size: 128, elements: !448)
!448 = !{!449, !461}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !421, line: 48, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !421, line: 48, size: 64, elements: !451)
!451 = !{!452, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !421, line: 49, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !421, line: 49, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !453, file: !421, line: 50, baseType: !204, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !453, file: !421, line: 50, baseType: !204, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !450, file: !421, line: 52, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !205, line: 23, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !207, line: 31, baseType: !460)
!460 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !421, line: 54, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !424, file: !421, line: 96, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !86, line: 610, size: 4224, elements: !468)
!468 = !{!469, !470, !471, !479, !486, !487, !633, !3941, !3942, !3943, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !4204, !4212, !4213, !4214, !4224, !4225, !4226, !4227}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !467, file: !86, line: 611, baseType: !357, size: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !467, file: !86, line: 612, baseType: !358, size: 16, offset: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !467, file: !86, line: 613, baseType: !472, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !473, line: 23, baseType: !474)
!473 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 21, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !473, line: 22, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 32, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !350, line: 49, baseType: !7)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !467, file: !86, line: 614, baseType: !480, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !473, line: 28, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 26, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !481, file: !473, line: 27, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 33, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !350, line: 50, baseType: !7)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !467, file: !86, line: 615, baseType: !7, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !467, file: !86, line: 622, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !86, line: 1864, size: 1536, align: 512, elements: !491)
!491 = !{!492, !496, !509, !513, !519, !523, !527, !531, !535, !539, !543, !544, !550, !554, !580, !609, !613, !619, !624, !628, !629}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !490, file: !86, line: 1865, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!423, !466, !423, !7}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !490, file: !86, line: 1866, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!251, !423, !466, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !502, line: 10, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !501, file: !502, line: 11, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !195}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !501, file: !502, line: 12, baseType: !195, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !490, file: !86, line: 1867, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!197, !466, !197}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !490, file: !86, line: 1868, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !466, !197}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !86, line: 581, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !490, file: !86, line: 1870, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!197, !423, !319, !197}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !490, file: !86, line: 1872, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!197, !466, !423, !357, !254}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !490, file: !86, line: 1873, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!197, !423, !466, !423}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !490, file: !86, line: 1874, baseType: !532, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!197, !466, !423}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !490, file: !86, line: 1875, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!197, !466, !423, !251}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !490, file: !86, line: 1876, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!197, !466, !423, !357}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !490, file: !86, line: 1877, baseType: !532, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !490, file: !86, line: 1878, baseType: !545, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!197, !466, !423, !357, !548}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 16, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 13, baseType: !204)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !490, file: !86, line: 1879, baseType: !551, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!197, !466, !423, !466, !423, !7}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !490, file: !86, line: 1881, baseType: !555, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!197, !423, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !86, line: 219, size: 640, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !569, !577, !578, !579}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !559, file: !86, line: 220, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !559, file: !86, line: 221, baseType: !357, size: 16, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !559, file: !86, line: 222, baseType: !472, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !559, file: !86, line: 223, baseType: !480, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !559, file: !86, line: 224, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 46, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !350, line: 88, baseType: !568)
!568 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !559, file: !86, line: 225, baseType: !570, size: 128, offset: 192)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !571, line: 13, size: 128, elements: !572)
!571 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!572 = !{!573, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !570, file: !571, line: 14, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !571, line: 8, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !207, line: 30, baseType: !568)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !570, file: !571, line: 15, baseType: !196, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !559, file: !86, line: 226, baseType: !570, size: 128, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !559, file: !86, line: 227, baseType: !570, size: 128, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !559, file: !86, line: 234, baseType: !393, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !490, file: !86, line: 1882, baseType: !581, size: 64, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!197, !584, !586, !204, !7}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !588, line: 22, size: 1152, elements: !589)
!588 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !591, !592, !593, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !587, file: !588, line: 23, baseType: !204, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !587, file: !588, line: 24, baseType: !357, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !587, file: !588, line: 25, baseType: !7, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !587, file: !588, line: 26, baseType: !594, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 104, baseType: !204)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !587, file: !588, line: 27, baseType: !458, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !587, file: !588, line: 28, baseType: !458, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !587, file: !588, line: 37, baseType: !458, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !587, file: !588, line: 38, baseType: !548, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !587, file: !588, line: 39, baseType: !548, size: 32, offset: 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !587, file: !588, line: 40, baseType: !472, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !587, file: !588, line: 41, baseType: !480, size: 32, offset: 416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !588, line: 42, baseType: !566, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !587, file: !588, line: 43, baseType: !570, size: 128, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !587, file: !588, line: 44, baseType: !570, size: 128, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !587, file: !588, line: 45, baseType: !570, size: 128, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !587, file: !588, line: 46, baseType: !570, size: 128, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !587, file: !588, line: 47, baseType: !458, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !587, file: !588, line: 48, baseType: !458, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !490, file: !86, line: 1883, baseType: !610, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!348, !423, !319, !363}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !490, file: !86, line: 1884, baseType: !614, size: 64, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!197, !466, !617, !458, !458}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !86, line: 50, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !490, file: !86, line: 1886, baseType: !620, size: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!197, !466, !623, !197}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !490, file: !86, line: 1887, baseType: !625, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!197, !466, !423, !393, !7, !357}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !490, file: !86, line: 1890, baseType: !540, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !490, file: !86, line: 1891, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!197, !466, !517, !197}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !467, file: !86, line: 623, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !86, line: 1416, size: 9472, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !689, !3555, !3637, !3720, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3736, !3740, !3741, !3742, !3743, !3746, !3747, !3748, !3789, !3815, !3816, !3817, !3818, !3819, !3820, !3823, !3824, !3831, !3832, !3833, !3834, !3835, !3894, !3895, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !635, file: !86, line: 1417, baseType: !265, size: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !635, file: !86, line: 1418, baseType: !548, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !635, file: !86, line: 1419, baseType: !464, size: 8, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !635, file: !86, line: 1420, baseType: !194, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !635, file: !86, line: 1421, baseType: !566, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !635, file: !86, line: 1422, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !86, line: 2228, size: 576, elements: !645)
!645 = !{!646, !647, !648, !655, !659, !663, !667, !668, !669, !679, !682, !683, !684, !686, !687, !688}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !86, line: 2229, baseType: !251, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !644, file: !86, line: 2230, baseType: !197, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !644, file: !86, line: 2238, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!197, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !654, line: 28, flags: DIFlagFwdDecl)
!654 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !644, file: !86, line: 2239, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !86, line: 70, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !644, file: !86, line: 2240, baseType: !660, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!423, !643, !197, !251, !195}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !644, file: !86, line: 2242, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !634}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !644, file: !86, line: 2243, baseType: !189, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !86, line: 2244, baseType: !643, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !644, file: !86, line: 2245, baseType: !670, size: 64, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 182, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !670, file: !193, line: 183, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 186, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !193, line: 187, baseType: !673, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !674, file: !193, line: 187, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !644, file: !86, line: 2247, baseType: !680, offset: 576)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !681, line: 187, elements: !292)
!681 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !644, file: !86, line: 2248, baseType: !680, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !644, file: !86, line: 2249, baseType: !680, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !644, file: !86, line: 2250, baseType: !685, offset: 576)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, elements: !320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !644, file: !86, line: 2252, baseType: !680, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !644, file: !86, line: 2253, baseType: !680, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !644, file: !86, line: 2254, baseType: !680, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !635, file: !86, line: 1423, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !86, line: 1935, size: 1472, elements: !693)
!693 = !{!694, !698, !702, !703, !707, !727, !731, !732, !733, !737, !741, !742, !743, !744, !750, !754, !755, !811, !812, !813, !814, !3539, !3554}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !692, file: !86, line: 1936, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!466, !634}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !692, file: !86, line: 1937, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !466}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !692, file: !86, line: 1938, baseType: !699, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !692, file: !86, line: 1940, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !466, !197}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !692, file: !86, line: 1941, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!197, !466, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !712, file: !6, line: 52, baseType: !196, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !712, file: !6, line: 54, baseType: !196, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !712, file: !6, line: 61, baseType: !566, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !712, file: !6, line: 62, baseType: !566, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !712, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !712, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !712, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !712, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !712, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !712, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !712, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !712, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !712, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !692, file: !86, line: 1942, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!197, !466}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !692, file: !86, line: 1943, baseType: !699, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !692, file: !86, line: 1944, baseType: !664, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !692, file: !86, line: 1945, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!197, !634, !197}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !692, file: !86, line: 1946, baseType: !738, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!197, !634}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !692, file: !86, line: 1947, baseType: !738, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !692, file: !86, line: 1948, baseType: !738, size: 64, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !692, file: !86, line: 1949, baseType: !738, size: 64, offset: 768)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !692, file: !86, line: 1950, baseType: !745, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!197, !423, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !86, line: 57, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !692, file: !86, line: 1951, baseType: !751, size: 64, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!197, !634, !201, !319}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !692, file: !86, line: 1952, baseType: !664, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !692, file: !86, line: 1954, baseType: !756, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!197, !759, !423}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !761, line: 16, size: 896, elements: !762)
!761 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !784, !806, !807, !810}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !760, file: !761, line: 17, baseType: !319, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !760, file: !761, line: 18, baseType: !363, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !760, file: !761, line: 19, baseType: !363, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !760, file: !761, line: 20, baseType: !363, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !760, file: !761, line: 21, baseType: !363, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !760, file: !761, line: 22, baseType: !566, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !760, file: !761, line: 23, baseType: !566, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !761, line: 24, baseType: !771, size: 192, offset: 448)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !772, line: 53, size: 192, elements: !773)
!772 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !782, !783}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !771, file: !772, line: 54, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !776, line: 13, baseType: !777)
!776 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 175, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 173, size: 64, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !778, file: !193, line: 174, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !205, line: 22, baseType: !575)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !771, file: !772, line: 55, baseType: !278, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !771, file: !772, line: 59, baseType: !265, size: 128, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !760, file: !761, line: 25, baseType: !785, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !761, line: 31, size: 256, elements: !788)
!788 = !{!789, !794, !798, !802}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !787, file: !761, line: 32, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!195, !759, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !787, file: !761, line: 33, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !759, !195}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !761, line: 34, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!195, !759, !195, !793}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !787, file: !761, line: 35, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!197, !759, !195}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !760, file: !761, line: 26, baseType: !197, size: 32, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !760, file: !761, line: 27, baseType: !808, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !760, file: !761, line: 28, baseType: !195, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !692, file: !86, line: 1955, baseType: !756, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !692, file: !86, line: 1956, baseType: !756, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !692, file: !86, line: 1957, baseType: !756, size: 64, offset: 1216)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !692, file: !86, line: 1963, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!197, !634, !818, !192}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !820, line: 68, size: 512, align: 128, elements: !821)
!820 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !823, !3531, !3538}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !820, line: 69, baseType: !194, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !820, line: 77, baseType: !824, size: 320, offset: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !819, file: !820, line: 77, size: 320, elements: !825)
!825 = !{!826, !1960, !1965, !1991, !1999, !2005, !3482, !3530}
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 78, baseType: !827, size: 320)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 78, size: 320, elements: !828)
!828 = !{!829, !830, !1958, !1959}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !827, file: !820, line: 84, baseType: !265, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !827, file: !820, line: 86, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !86, line: 451, size: 1216, align: 64, elements: !833)
!833 = !{!834, !835, !842, !843, !848, !863, !872, !873, !874, !875, !1951, !1952, !1955, !1956, !1957}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !832, file: !86, line: 452, baseType: !466, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !832, file: !86, line: 453, baseType: !836, size: 128, offset: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !837, line: 292, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !836, file: !837, line: 293, baseType: !278)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !836, file: !837, line: 295, baseType: !192, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !836, file: !837, line: 296, baseType: !195, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !832, file: !86, line: 454, baseType: !192, size: 32, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !832, file: !86, line: 455, baseType: !844, size: 32, offset: 224)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 168, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 166, size: 32, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !845, file: !193, line: 167, baseType: !197, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !832, file: !86, line: 460, baseType: !849, size: 128, offset: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !850, line: 125, size: 128, elements: !851)
!850 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !862}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !849, file: !850, line: 126, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !850, line: 31, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !853, file: !850, line: 32, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !850, line: 24, size: 192, align: 64, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !857, file: !850, line: 25, baseType: !194, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !857, file: !850, line: 26, baseType: !856, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !857, file: !850, line: 27, baseType: !856, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !849, file: !850, line: 127, baseType: !856, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !832, file: !86, line: 461, baseType: !864, size: 256, offset: 384)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !865, line: 35, size: 256, elements: !866)
!865 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!866 = !{!867, !868, !869, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !864, file: !865, line: 36, baseType: !775, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !864, file: !865, line: 42, baseType: !775, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !864, file: !865, line: 46, baseType: !870, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !279, line: 29, baseType: !286)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !864, file: !865, line: 47, baseType: !265, size: 128, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !832, file: !86, line: 462, baseType: !194, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !832, file: !86, line: 463, baseType: !194, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !832, file: !86, line: 464, baseType: !194, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !832, file: !86, line: 465, baseType: !876, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !86, line: 367, size: 1408, elements: !879)
!879 = !{!880, !884, !888, !892, !896, !900, !913, !919, !923, !928, !932, !936, !940, !985, !989, !995, !996, !997, !1001, !1006, !1010, !1947}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !878, file: !86, line: 368, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!197, !818, !711}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !878, file: !86, line: 369, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!197, !393, !818}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !878, file: !86, line: 372, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!197, !831, !711}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !878, file: !86, line: 375, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!197, !818}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !878, file: !86, line: 381, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!197, !393, !831, !268, !7}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !878, file: !86, line: 383, baseType: !901, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !906, line: 795, size: 256, elements: !907)
!906 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !905, file: !906, line: 796, baseType: !393, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !905, file: !906, line: 797, baseType: !831, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !905, file: !906, line: 799, baseType: !194, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !905, file: !906, line: 800, baseType: !7, size: 32, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !905, file: !906, line: 801, baseType: !7, size: 32, offset: 224)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !878, file: !86, line: 385, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!197, !393, !831, !566, !7, !7, !917, !918}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !878, file: !86, line: 388, baseType: !920, size: 64, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!197, !393, !831, !566, !7, !7, !818, !195}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !878, file: !86, line: 393, baseType: !924, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !831, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 125, baseType: !458)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !878, file: !86, line: 394, baseType: !929, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !818, !7, !7}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !878, file: !86, line: 395, baseType: !933, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!197, !818, !192}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !878, file: !86, line: 396, baseType: !937, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !818}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !878, file: !86, line: 397, baseType: !941, size: 64, offset: 768)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!348, !944, !983}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !86, line: 320, size: 384, elements: !946)
!946 = !{!947, !948, !949, !953, !954, !955, !958, !959}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !945, file: !86, line: 321, baseType: !393, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !945, file: !86, line: 326, baseType: !566, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !945, file: !86, line: 327, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !944, !196, !196}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !945, file: !86, line: 328, baseType: !195, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !945, file: !86, line: 329, baseType: !197, size: 32, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !945, file: !86, line: 330, baseType: !956, size: 16, offset: 288)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !205, line: 19, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !207, line: 24, baseType: !358)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !945, file: !86, line: 331, baseType: !956, size: 16, offset: 304)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !86, line: 332, baseType: !960, size: 64, offset: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !86, line: 332, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !960, file: !86, line: 333, baseType: !7, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !960, file: !86, line: 334, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !906, line: 569, size: 448, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !965, file: !906, line: 570, baseType: !818, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !965, file: !906, line: 571, baseType: !197, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !965, file: !906, line: 572, baseType: !970, size: 320, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !971, line: 14, baseType: !972)
!971 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !971, line: 29, size: 320, elements: !973)
!973 = !{!974, !975, !976, !982}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !971, line: 30, baseType: !7, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !972, file: !971, line: 31, baseType: !195, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !972, file: !971, line: 32, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !971, line: 16, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!197, !981, !7, !197, !195}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !972, file: !971, line: 33, baseType: !265, size: 128, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !86, line: 64, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !878, file: !86, line: 402, baseType: !986, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!197, !831, !818, !818, !11}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !878, file: !86, line: 404, baseType: !990, size: 64, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!254, !818, !993}
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !994, line: 305, baseType: !7)
!994 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !878, file: !86, line: 405, baseType: !937, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !878, file: !86, line: 406, baseType: !893, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !878, file: !86, line: 407, baseType: !998, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!197, !818, !194, !194}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !878, file: !86, line: 409, baseType: !1002, size: 64, offset: 1152)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !818, !1005, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !878, file: !86, line: 410, baseType: !1007, size: 64, offset: 1216)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!197, !831, !818}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !878, file: !86, line: 413, baseType: !1011, size: 64, offset: 1280)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!197, !1014, !393, !1946}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1016, line: 240, size: 1600, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1019, !1021, !1028, !1030, !1031, !1033, !1040, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1053, !1059, !1060, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 241, baseType: !194, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1015, file: !1016, line: 242, baseType: !1020, size: 16, offset: 64)
!1020 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1015, file: !1016, line: 243, baseType: !1022, size: 320, offset: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1023, line: 83, size: 320, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1022, file: !1023, line: 84, baseType: !197, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1022, file: !1023, line: 85, baseType: !265, size: 128, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1022, file: !1023, line: 86, baseType: !265, size: 128, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1015, file: !1016, line: 244, baseType: !1029, size: 8, offset: 448)
!1029 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1015, file: !1016, line: 245, baseType: !7, size: 32, offset: 480)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1015, file: !1016, line: 246, baseType: !1032, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1015, file: !1016, line: 247, baseType: !1034, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1016, line: 208, size: 32, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !1016, line: 209, baseType: !278)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1035, file: !1016, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !1016, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1015, file: !1016, line: 248, baseType: !1041, size: 64, offset: 640)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1016, line: 232, size: 64, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1041, file: !1016, line: 233, baseType: !1035, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1041, file: !1016, line: 234, baseType: !1035, size: 32, offset: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1015, file: !1016, line: 249, baseType: !7, size: 32, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1015, file: !1016, line: 250, baseType: !7, size: 32, offset: 736)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1015, file: !1016, line: 251, baseType: !7, size: 32, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1015, file: !1016, line: 252, baseType: !7, size: 32, offset: 800)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1015, file: !1016, line: 253, baseType: !7, size: 32, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1015, file: !1016, line: 254, baseType: !7, size: 32, offset: 864)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1015, file: !1016, line: 255, baseType: !1052, size: 64, offset: 896)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1015, file: !1016, line: 256, baseType: !1054, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1016, line: 227, size: 64, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1055, file: !1016, line: 228, baseType: !1035, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !1016, line: 229, baseType: !7, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1015, file: !1016, line: 257, baseType: !853, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1015, file: !1016, line: 258, baseType: !1061, size: 64, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1063, line: 22, size: 1344, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1079, !1144, !1145, !1146, !1935, !1936, !1937}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1062, file: !1063, line: 23, baseType: !548, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1062, file: !1063, line: 24, baseType: !197, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1062, file: !1063, line: 25, baseType: !466, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1062, file: !1063, line: 26, baseType: !634, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1062, file: !1063, line: 27, baseType: !771, size: 192, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1062, file: !1063, line: 28, baseType: !195, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1062, file: !1063, line: 29, baseType: !195, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1062, file: !1063, line: 30, baseType: !197, size: 32, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1062, file: !1063, line: 31, baseType: !254, size: 8, offset: 544)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1062, file: !1063, line: 33, baseType: !265, size: 128, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1062, file: !1063, line: 35, baseType: !1061, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1062, file: !1063, line: 36, baseType: !1077, size: 8, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !205, line: 17, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !207, line: 21, baseType: !464)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1062, file: !1063, line: 37, baseType: !1080, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1082, line: 53, size: 6592, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1083 = !{!1084, !1085, !1086, !1087, !1090, !1111, !1112, !1113, !1114, !1115, !1125}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1081, file: !1082, line: 54, baseType: !927, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1081, file: !1082, line: 60, baseType: !927, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1081, file: !1082, line: 64, baseType: !194, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1081, file: !1082, line: 65, baseType: !1088, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1082, line: 65, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1081, file: !1082, line: 66, baseType: !1091, size: 128, offset: 256)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1092, line: 105, size: 128, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1091, file: !1092, line: 110, baseType: !194, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1091, file: !1092, line: 118, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1092, line: 95, size: 448, elements: !1098)
!1098 = !{!1099, !1100, !1106, !1107, !1108, !1109, !1110}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1097, file: !1092, line: 96, baseType: !775, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1097, file: !1092, line: 97, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1092, line: 60, baseType: !1103)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1097, file: !1092, line: 98, baseType: !1101, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1097, file: !1092, line: 99, baseType: !254, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1097, file: !1092, line: 100, baseType: !254, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1097, file: !1092, line: 101, baseType: !406, size: 128, align: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1097, file: !1092, line: 102, baseType: !1105, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1081, file: !1082, line: 68, baseType: !257, size: 5568, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1081, file: !1082, line: 69, baseType: !271, size: 64, offset: 5952)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1081, file: !1082, line: 70, baseType: !197, size: 32, offset: 6016)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1081, file: !1082, line: 70, baseType: !197, size: 32, offset: 6048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1081, file: !1082, line: 71, baseType: !1116, size: 64, offset: 6080)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1082, line: 48, size: 808, elements: !1118)
!1118 = !{!1119, !1123}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1117, file: !1082, line: 49, baseType: !1120, size: 296)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 296, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 37)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1117, file: !1082, line: 50, baseType: !1124, size: 512, offset: 296)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 512, elements: !236)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1081, file: !1082, line: 75, baseType: !1126, size: 448, offset: 6144)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1127, line: 124, size: 448, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129, !1140, !1141}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1126, file: !1127, line: 125, baseType: !1130, size: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1127, line: 102, size: 256, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1130, file: !1127, line: 103, baseType: !775, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1130, file: !1127, line: 104, baseType: !265, size: 128, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1130, file: !1127, line: 105, baseType: !1135, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1127, line: 21, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1126, file: !1127, line: 126, baseType: !406, size: 128, align: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1126, file: !1127, line: 129, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1127, line: 18, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1062, file: !1063, line: 39, baseType: !7, size: 32, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1062, file: !1063, line: 41, baseType: !278, offset: 928)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1062, file: !1063, line: 42, baseType: !1147, size: 64, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1082, line: 167, size: 8512, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1157, !1158, !1159, !1170, !1171, !1361, !1916, !1917, !1918, !1919, !1920, !1921, !1924, !1925, !1928, !1929, !1930, !1933}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1148, file: !1082, line: 171, baseType: !197, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1148, file: !1082, line: 172, baseType: !197, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1148, file: !1082, line: 173, baseType: !197, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1148, file: !1082, line: 176, baseType: !1154, size: 256, offset: 96)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1148, file: !1082, line: 178, baseType: !358, size: 16, offset: 352)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1148, file: !1082, line: 179, baseType: !358, size: 16, offset: 368)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1148, file: !1082, line: 186, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1082, line: 149, size: 256, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1161, file: !1082, line: 150, baseType: !406, size: 128, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1161, file: !1082, line: 151, baseType: !197, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1161, file: !1082, line: 152, baseType: !1080, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1161, file: !1082, line: 153, baseType: !1167, offset: 256)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: -1)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1148, file: !1082, line: 187, baseType: !1081, size: 6592, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1148, file: !1082, line: 189, baseType: !1172, size: 64, offset: 7040)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1844, size: 960, elements: !1175)
!1175 = !{!1176, !1283, !1288, !1292, !1296, !1300, !1301, !1305, !1309, !1313, !1319, !1323, !1351, !1356, !1357}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1174, file: !19, line: 1845, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1063, line: 515, baseType: !7)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1063, line: 203, size: 832, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1192, !1193, !1194, !1202, !1207, !1208, !1233, !1234, !1235, !1236, !1237, !1282}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1182, file: !1063, line: 204, baseType: !1181, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1182, file: !1063, line: 205, baseType: !1147, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1182, file: !1063, line: 206, baseType: !7, size: 32, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1182, file: !1063, line: 210, baseType: !358, size: 16, offset: 160)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1182, file: !1063, line: 211, baseType: !358, size: 16, offset: 176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1182, file: !1063, line: 212, baseType: !358, size: 16, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1182, file: !1063, line: 213, baseType: !1191, size: 8, offset: 208)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1063, line: 58, baseType: !1077)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1182, file: !1063, line: 214, baseType: !1077, size: 8, offset: 216)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1182, file: !1063, line: 215, baseType: !844, size: 32, offset: 224)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1182, file: !1063, line: 217, baseType: !1195, size: 192, offset: 256)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1196, line: 37, size: 192, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1195, file: !1196, line: 38, baseType: !927, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1195, file: !1196, line: 40, baseType: !7, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1195, file: !1196, line: 42, baseType: !7, size: 32, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1195, file: !1196, line: 44, baseType: !7, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1182, file: !1063, line: 219, baseType: !1203, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1063, line: 19, baseType: !1205)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1181}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1182, file: !1063, line: 221, baseType: !195, size: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1063, line: 240, baseType: !1209, size: 64, offset: 576)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !1063, line: 240, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1209, file: !1063, line: 242, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1214, line: 313, size: 832, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1231}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1213, file: !1214, line: 314, baseType: !1181, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1213, file: !1214, line: 316, baseType: !1195, size: 192, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1213, file: !1214, line: 318, baseType: !358, size: 16, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1213, file: !1214, line: 319, baseType: !358, size: 16, offset: 272)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1213, file: !1214, line: 320, baseType: !358, size: 16, offset: 288)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1213, file: !1214, line: 321, baseType: !358, size: 16, offset: 304)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1213, file: !1214, line: 323, baseType: !1195, size: 192, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1213, file: !1214, line: 325, baseType: !1130, size: 256, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1213, file: !1214, line: 327, baseType: !1225, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1196, line: 31, size: 128, elements: !1227)
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1226, file: !1196, line: 32, baseType: !818, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1226, file: !1196, line: 33, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1226, file: !1196, line: 34, baseType: !7, size: 32, offset: 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1213, file: !1214, line: 328, baseType: !1232, offset: 832)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, elements: !1168)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1182, file: !1063, line: 246, baseType: !358, size: 16, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1182, file: !1063, line: 252, baseType: !358, size: 16, offset: 656)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1182, file: !1063, line: 254, baseType: !844, size: 32, offset: 672)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1182, file: !1063, line: 256, baseType: !1225, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1182, file: !1063, line: 258, baseType: !1238, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1214, line: 682, size: 2368, elements: !1240)
!1240 = !{!1241, !1244, !1245, !1271, !1272, !1273, !1274, !1275, !1280, !1281}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1239, file: !1214, line: 683, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !820, line: 117, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1239, file: !1214, line: 684, baseType: !7, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1239, file: !1214, line: 686, baseType: !1246, size: 448, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1247, line: 26, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1247, line: 16, size: 448, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1260, !1265}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !1247, line: 17, baseType: !278)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1248, file: !1247, line: 18, baseType: !197, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1248, file: !1247, line: 19, baseType: !197, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1248, file: !1247, line: 20, baseType: !918, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1248, file: !1247, line: 22, baseType: !195, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1248, file: !1247, line: 23, baseType: !1256, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1247, line: 13, baseType: !1258)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!195, !192, !195}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1248, file: !1247, line: 24, baseType: !1261, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1247, line: 14, baseType: !1263)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !195, !195}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1248, file: !1247, line: 25, baseType: !1266, size: 128, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !971, line: 40, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !971, line: 36, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1267, file: !971, line: 37, baseType: !278)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1267, file: !971, line: 38, baseType: !265, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1239, file: !1214, line: 687, baseType: !1246, size: 448, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1239, file: !1214, line: 689, baseType: !1246, size: 448, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1239, file: !1214, line: 690, baseType: !1246, size: 448, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1239, file: !1214, line: 697, baseType: !278, offset: 1920)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1239, file: !1214, line: 698, baseType: !1276, size: 128, offset: 1920)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1214, line: 554, size: 128, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1276, file: !1214, line: 555, baseType: !1181, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1276, file: !1214, line: 556, baseType: !1181, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1239, file: !1214, line: 699, baseType: !1130, size: 256, offset: 2048)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1239, file: !1214, line: 700, baseType: !1142, size: 64, offset: 2304)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1182, file: !1063, line: 265, baseType: !1232, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1174, file: !19, line: 1846, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!197, !1061, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 150, baseType: !7)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1174, file: !19, line: 1847, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1147, !1287}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1174, file: !19, line: 1848, baseType: !1293, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!197, !1061, !927, !818, !7}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1174, file: !19, line: 1849, baseType: !1297, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!197, !1061, !1287, !7, !194}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1174, file: !19, line: 1850, baseType: !1297, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1174, file: !19, line: 1851, baseType: !1302, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!7, !1147, !7}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1174, file: !19, line: 1853, baseType: !1306, size: 64, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1147}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1174, file: !19, line: 1854, baseType: !1310, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!197, !1147}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1174, file: !19, line: 1855, baseType: !1314, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!197, !1061, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !86, line: 51, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1174, file: !19, line: 1857, baseType: !1320, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1061, !194}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1174, file: !19, line: 1858, baseType: !1324, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!197, !1147, !927, !7, !1327, !195}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 354, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!197, !1331, !7, !195}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1333, line: 106, size: 512, elements: !1334)
!1333 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1346, !1347}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1332, file: !1333, line: 107, baseType: !459, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1332, file: !1333, line: 108, baseType: !459, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1332, file: !1333, line: 109, baseType: !459, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1332, file: !1333, line: 110, baseType: !1078, size: 8, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1332, file: !1333, line: 111, baseType: !1078, size: 8, offset: 200)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1332, file: !1333, line: 112, baseType: !1078, size: 8, offset: 208)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1332, file: !1333, line: 113, baseType: !1078, size: 8, offset: 216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1332, file: !1333, line: 114, baseType: !1343, size: 32, offset: 224)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 32, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 4)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1332, file: !1333, line: 115, baseType: !459, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1332, file: !1333, line: 116, baseType: !1348, size: 192, offset: 320)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 192, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 24)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1174, file: !19, line: 1860, baseType: !1352, size: 64, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!319, !1147, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !19, line: 1861, baseType: !189, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1174, file: !19, line: 1862, baseType: !1358, size: 64, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 41, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1148, file: !1082, line: 190, baseType: !1362, size: 64, offset: 7104)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 399, size: 14464, elements: !1364)
!1364 = !{!1365, !1501, !1623, !1624, !1627, !1630, !1634, !1635, !1636, !1638, !1639, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1777, !1788, !1789, !1790, !1791, !1792, !1822, !1823, !1824, !1825, !1826, !1827, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1901, !1902, !1903, !1904, !1907, !1908, !1909, !1910, !1911, !1912}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1363, file: !19, line: 400, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !19, line: 130, size: 2176, elements: !1368)
!1368 = !{!1369, !1370, !1373, !1376, !1377, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1391, !1398, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1464, !1465, !1466, !1499, !1500}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1367, file: !19, line: 131, baseType: !1362, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1367, file: !19, line: 132, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !19, line: 132, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1367, file: !19, line: 133, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !19, line: 133, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1367, file: !19, line: 135, baseType: !7, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1367, file: !19, line: 136, baseType: !1378, size: 32, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !19, line: 66, baseType: !206)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1367, file: !19, line: 138, baseType: !197, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1367, file: !19, line: 139, baseType: !197, size: 32, offset: 288)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1367, file: !19, line: 142, baseType: !7, size: 32, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1367, file: !19, line: 143, baseType: !927, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1367, file: !19, line: 145, baseType: !1181, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1367, file: !19, line: 146, baseType: !1181, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1367, file: !19, line: 148, baseType: !265, size: 128, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !19, line: 157, baseType: !1387, size: 128, offset: 704)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !19, line: 157, size: 128, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1387, file: !19, line: 158, baseType: !674, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1387, file: !19, line: 159, baseType: !265, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !19, line: 167, baseType: !1392, size: 192, offset: 832)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !19, line: 167, size: 192, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1392, file: !19, line: 168, baseType: !857, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1392, file: !19, line: 169, baseType: !1226, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1392, file: !19, line: 170, baseType: !195, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1392, file: !19, line: 171, baseType: !197, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !19, line: 180, baseType: !1399, size: 256, offset: 1024)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !19, line: 180, size: 256, elements: !1400)
!1400 = !{!1401, !1438}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1399, file: !19, line: 184, baseType: !1402, size: 192)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !19, line: 181, size: 192, elements: !1403)
!1403 = !{!1404, !1434}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1402, file: !19, line: 182, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1407, line: 73, size: 448, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410, !1423, !1428, !1433}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1406, file: !1407, line: 74, baseType: !1362, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1406, file: !1407, line: 75, baseType: !1411, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1407, line: 99, size: 704, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1412, file: !1407, line: 100, baseType: !775, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1412, file: !1407, line: 101, baseType: !844, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1412, file: !1407, line: 102, baseType: !844, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1407, line: 105, baseType: !278, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1412, file: !1407, line: 107, baseType: !358, size: 16, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1412, file: !1407, line: 109, baseType: !836, size: 128, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1412, file: !1407, line: 110, baseType: !1405, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1412, file: !1407, line: 111, baseType: !670, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1412, file: !1407, line: 113, baseType: !1130, size: 256, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 83, baseType: !1424, size: 128, offset: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 83, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1424, file: !1407, line: 84, baseType: !265, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1424, file: !1407, line: 85, baseType: !1242, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 87, baseType: !1429, size: 128, offset: 256)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 87, size: 128, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1429, file: !1407, line: 88, baseType: !674, size: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1429, file: !1407, line: 89, baseType: !406, size: 128, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 92, baseType: !7, size: 32, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1402, file: !19, line: 183, baseType: !1435, size: 128, offset: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 2)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1399, file: !19, line: 190, baseType: !1439, size: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !19, line: 186, size: 256, elements: !1440)
!1440 = !{!1441, !1442, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1439, file: !19, line: 187, baseType: !7, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1439, file: !19, line: 188, baseType: !265, size: 128, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1439, file: !19, line: 189, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !19, line: 62, baseType: !1446)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1366, !1191}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1367, file: !19, line: 193, baseType: !1147, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1367, file: !19, line: 194, baseType: !1080, size: 64, offset: 1344)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1367, file: !19, line: 200, baseType: !458, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1367, file: !19, line: 202, baseType: !458, size: 64, offset: 1472)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1367, file: !19, line: 212, baseType: !358, size: 16, offset: 1536)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1367, file: !19, line: 218, baseType: !358, size: 16, offset: 1552)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1367, file: !19, line: 221, baseType: !358, size: 16, offset: 1568)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1367, file: !19, line: 229, baseType: !358, size: 16, offset: 1584)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1367, file: !19, line: 230, baseType: !358, size: 16, offset: 1600)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1367, file: !19, line: 232, baseType: !18, size: 32, offset: 1632)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1367, file: !19, line: 233, baseType: !1459, size: 32, offset: 1664)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1460, line: 113, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1460, line: 111, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1461, file: !1460, line: 112, baseType: !844, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1367, file: !19, line: 235, baseType: !7, size: 32, offset: 1696)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1367, file: !19, line: 236, baseType: !194, size: 64, offset: 1728)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !19, line: 238, baseType: !1467, size: 256, offset: 1792)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !19, line: 238, size: 256, elements: !1468)
!1468 = !{!1469, !1498}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1467, file: !19, line: 239, baseType: !1470, size: 256)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1471, line: 23, size: 256, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1495, !1497}
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1471, line: 24, baseType: !1474, size: 128)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !1471, line: 24, size: 128, elements: !1475)
!1475 = !{!1476, !1488}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1474, file: !1471, line: 25, baseType: !1477, size: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1478, line: 58, size: 128, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481, !1486, !1487}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1477, file: !1478, line: 59, baseType: !400, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 60, baseType: !1482, size: 32, offset: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 60, size: 32, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1482, file: !1478, line: 61, baseType: !7, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1482, file: !1478, line: 62, baseType: !844, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1477, file: !1478, line: 65, baseType: !956, size: 16, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1477, file: !1478, line: 65, baseType: !956, size: 16, offset: 112)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1471, line: 26, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !1471, line: 26, size: 128, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1489, file: !1471, line: 27, baseType: !400, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !1471, line: 28, baseType: !7, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1489, file: !1471, line: 30, baseType: !956, size: 16, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1489, file: !1471, line: 30, baseType: !956, size: 16, offset: 112)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1470, file: !1471, line: 34, baseType: !1496, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1471, line: 17, baseType: !505)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1470, file: !1471, line: 35, baseType: !195, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1467, file: !19, line: 240, baseType: !458, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1367, file: !19, line: 246, baseType: !1444, size: 64, offset: 2048)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1367, file: !19, line: 247, baseType: !195, size: 64, offset: 2112)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1363, file: !19, line: 401, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !25, line: 101, size: 4992, elements: !1504)
!1504 = !{!1505, !1617, !1618, !1619, !1620, !1621}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1503, file: !25, line: 103, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !25, line: 66, size: 2240, elements: !1508)
!1508 = !{!1509, !1510, !1592, !1593, !1594, !1607, !1608, !1609, !1611, !1612, !1616}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1507, file: !25, line: 69, baseType: !1242, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1507, file: !25, line: 72, baseType: !1511, size: 1408, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !25, line: 29, size: 1408, elements: !1512)
!1512 = !{!1513, !1517, !1521, !1525, !1529, !1533, !1537, !1541, !1546, !1550, !1554, !1560, !1564, !1565, !1569, !1573, !1577, !1581, !1582, !1586, !1587, !1591}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1511, file: !25, line: 30, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!197, !1362, !1506}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1511, file: !25, line: 31, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1502}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1511, file: !25, line: 32, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!197, !1374, !7}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1511, file: !25, line: 33, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1374, !7}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1511, file: !25, line: 34, baseType: !1530, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1374}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1511, file: !25, line: 36, baseType: !1534, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!254, !1362, !1366, !1181}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1511, file: !25, line: 37, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!254, !1374, !1181, !7}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1511, file: !25, line: 38, baseType: !1542, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!197, !1362, !1545, !1181}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1511, file: !25, line: 39, baseType: !1547, size: 64, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1362, !1366, !24}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1511, file: !25, line: 40, baseType: !1551, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1362, !1366, !1366}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1511, file: !25, line: 41, baseType: !1555, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !7, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !25, line: 26, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1511, file: !25, line: 42, baseType: !1561, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1366}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1511, file: !25, line: 43, baseType: !1561, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1511, file: !25, line: 44, baseType: !1566, size: 64, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !1374, !268, !254}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1511, file: !25, line: 45, baseType: !1570, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1366, !1374}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1511, file: !25, line: 46, baseType: !1574, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!254, !1374}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1511, file: !25, line: 47, baseType: !1578, size: 64, offset: 1024)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1366, !458}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1511, file: !25, line: 48, baseType: !1561, size: 64, offset: 1088)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1511, file: !25, line: 49, baseType: !1583, size: 64, offset: 1152)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1366, !1362, !1366}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1511, file: !25, line: 50, baseType: !1583, size: 64, offset: 1216)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1511, file: !25, line: 51, baseType: !1588, size: 64, offset: 1280)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1405}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1511, file: !25, line: 52, baseType: !1588, size: 64, offset: 1344)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1507, file: !25, line: 74, baseType: !363, size: 64, offset: 1472)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1507, file: !25, line: 75, baseType: !363, size: 64, offset: 1536)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1507, file: !25, line: 76, baseType: !1595, size: 64, offset: 1600)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !25, line: 57, size: 256, elements: !1597)
!1597 = !{!1598, !1599, !1603}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1596, file: !25, line: 58, baseType: !353, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1596, file: !25, line: 59, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!348, !1502, !319}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1596, file: !25, line: 60, baseType: !1604, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!348, !1502, !251, !363}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1507, file: !25, line: 77, baseType: !251, size: 64, offset: 1664)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1507, file: !25, line: 78, baseType: !251, size: 64, offset: 1728)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1507, file: !25, line: 79, baseType: !1610, size: 32, offset: 1792)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1507, file: !25, line: 80, baseType: !189, size: 64, offset: 1856)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1507, file: !25, line: 87, baseType: !1613, size: 176, offset: 1920)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 176, elements: !1614)
!1614 = !{!1615}
!1615 = !DISubrange(count: 22)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1507, file: !25, line: 88, baseType: !265, size: 128, offset: 2112)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1503, file: !25, line: 104, baseType: !195, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1503, file: !25, line: 105, baseType: !260, size: 512, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1503, file: !25, line: 106, baseType: !771, size: 192, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1503, file: !25, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1503, file: !25, line: 108, baseType: !1622, size: 4096, offset: 896)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 4096, elements: !236)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1363, file: !19, line: 403, baseType: !1091, size: 128, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1363, file: !19, line: 405, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !19, line: 43, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1363, file: !19, line: 406, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 42, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1363, file: !19, line: 408, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !19, line: 408, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1363, file: !19, line: 411, baseType: !1371, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1363, file: !19, line: 413, baseType: !7, size: 32, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1363, file: !19, line: 416, baseType: !1637, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1363, file: !19, line: 417, baseType: !7, size: 32, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1363, file: !19, line: 419, baseType: !1640, size: 64, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !32, line: 165, size: 4672, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1653, !1654, !1655, !1656, !1657, !1658, !1714, !1715, !1716, !1718, !1720, !1721}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1641, file: !32, line: 166, baseType: !458, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1641, file: !32, line: 167, baseType: !857, size: 192, align: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1641, file: !32, line: 168, baseType: !265, size: 128, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1641, file: !32, line: 169, baseType: !194, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1641, file: !32, line: 170, baseType: !194, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1641, file: !32, line: 172, baseType: !1649, size: 32, offset: 512)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1650, line: 19, size: 32, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1649, file: !1650, line: 20, baseType: !1459, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1641, file: !32, line: 173, baseType: !7, size: 32, offset: 544)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1641, file: !32, line: 174, baseType: !7, size: 32, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1641, file: !32, line: 175, baseType: !7, size: 32, offset: 608)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1641, file: !32, line: 175, baseType: !7, size: 32, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1641, file: !32, line: 181, baseType: !775, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1641, file: !32, line: 183, baseType: !1659, size: 2688, offset: 768)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !32, line: 107, size: 2688, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1690, !1691, !1692, !1693, !1694, !1712, !1713}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1659, file: !32, line: 108, baseType: !1640, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1659, file: !32, line: 110, baseType: !194, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1659, file: !32, line: 111, baseType: !194, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1659, file: !32, line: 113, baseType: !265, size: 128, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1659, file: !32, line: 114, baseType: !265, size: 128, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1659, file: !32, line: 115, baseType: !265, size: 128, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1659, file: !32, line: 116, baseType: !265, size: 128, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1659, file: !32, line: 117, baseType: !278, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1659, file: !32, line: 119, baseType: !1670, size: 256, offset: 704)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 256, elements: !1344)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1672, line: 97, size: 64, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1671, file: !1672, line: 98, baseType: !781, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1659, file: !32, line: 121, baseType: !194, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1659, file: !32, line: 123, baseType: !194, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1659, file: !32, line: 124, baseType: !194, size: 64, offset: 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1659, file: !32, line: 125, baseType: !194, size: 64, offset: 1152)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1659, file: !32, line: 126, baseType: !194, size: 64, offset: 1216)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1659, file: !32, line: 127, baseType: !194, size: 64, offset: 1280)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1659, file: !32, line: 135, baseType: !194, size: 64, offset: 1344)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1659, file: !32, line: 136, baseType: !194, size: 64, offset: 1408)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1659, file: !32, line: 138, baseType: !1684, size: 128, offset: 1472)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1685, line: 76, size: 128, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1684, file: !1685, line: 78, baseType: !1671, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1684, file: !1685, line: 80, baseType: !7, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !1685, line: 81, baseType: !870, offset: 96)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1659, file: !32, line: 139, baseType: !197, size: 32, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1659, file: !32, line: 140, baseType: !31, size: 32, offset: 1632)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1659, file: !32, line: 142, baseType: !278, offset: 1664)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1659, file: !32, line: 143, baseType: !265, size: 128, offset: 1664)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1659, file: !32, line: 144, baseType: !1695, size: 704, offset: 1792)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1127, line: 115, size: 704, elements: !1696)
!1696 = !{!1697, !1698, !1710, !1711}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1695, file: !1127, line: 116, baseType: !1130, size: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1695, file: !1127, line: 117, baseType: !1699, size: 320, offset: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1700, line: 11, size: 320, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1703, !1704, !1709}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1699, file: !1700, line: 16, baseType: !674, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1699, file: !1700, line: 17, baseType: !194, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1699, file: !1700, line: 18, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 19, baseType: !204, size: 32, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1695, file: !1127, line: 120, baseType: !1142, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1695, file: !1127, line: 121, baseType: !197, size: 32, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1659, file: !32, line: 146, baseType: !194, size: 64, offset: 2496)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1659, file: !32, line: 148, baseType: !265, size: 128, offset: 2560)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1641, file: !32, line: 184, baseType: !265, size: 128, offset: 3456)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1641, file: !32, line: 190, baseType: !1266, size: 128, offset: 3584)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1641, file: !32, line: 192, baseType: !1717, size: 64, offset: 3712)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1641, file: !32, line: 193, baseType: !1719, size: 512, offset: 3776)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !236)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1641, file: !32, line: 194, baseType: !1717, size: 64, offset: 4288)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1641, file: !32, line: 196, baseType: !1699, size: 320, offset: 4352)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1363, file: !19, line: 425, baseType: !195, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1363, file: !19, line: 430, baseType: !194, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1363, file: !19, line: 436, baseType: !844, size: 32, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1363, file: !19, line: 442, baseType: !197, size: 32, offset: 928)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1363, file: !19, line: 447, baseType: !192, size: 32, offset: 960)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1363, file: !19, line: 449, baseType: !278, offset: 992)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1363, file: !19, line: 454, baseType: !260, size: 512, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1363, file: !19, line: 459, baseType: !271, size: 64, offset: 1536)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1363, file: !19, line: 462, baseType: !1731, size: 128, offset: 1600)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1082, line: 159, size: 128, elements: !1732)
!1732 = !{!1733, !1762, !1763, !1764, !1765}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1731, file: !1082, line: 160, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !19, line: 1664, size: 320, elements: !1737)
!1737 = !{!1738, !1752, !1753, !1756, !1761}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1736, file: !19, line: 1665, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !19, line: 1660, baseType: !1741)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1191, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !19, line: 1651, size: 320, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1744, file: !19, line: 1652, baseType: !195, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1744, file: !19, line: 1653, baseType: !195, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1744, file: !19, line: 1654, baseType: !927, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1744, file: !19, line: 1655, baseType: !7, size: 32, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1744, file: !19, line: 1656, baseType: !358, size: 16, offset: 224)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1744, file: !19, line: 1657, baseType: !251, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1736, file: !19, line: 1666, baseType: !1739, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1736, file: !19, line: 1667, baseType: !1754, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !19, line: 1661, baseType: !1562)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1736, file: !19, line: 1668, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !19, line: 1662, baseType: !1759)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1366, !7}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1736, file: !19, line: 1669, baseType: !251, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1082, line: 161, baseType: !464, size: 8, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1731, file: !1082, line: 162, baseType: !464, size: 8, offset: 72)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1731, file: !1082, line: 163, baseType: !464, size: 8, offset: 80)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1731, file: !1082, line: 164, baseType: !464, size: 8, offset: 88)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1363, file: !19, line: 466, baseType: !1717, size: 64, offset: 1728)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1363, file: !19, line: 467, baseType: !43, size: 32, offset: 1792)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1363, file: !19, line: 468, baseType: !7, size: 32, offset: 1824)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1363, file: !19, line: 474, baseType: !194, size: 64, offset: 1856)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1363, file: !19, line: 476, baseType: !7, size: 32, offset: 1920)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1363, file: !19, line: 477, baseType: !7, size: 32, offset: 1952)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1363, file: !19, line: 484, baseType: !7, size: 32, offset: 1984)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1363, file: !19, line: 485, baseType: !197, size: 32, offset: 2016)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1363, file: !19, line: 487, baseType: !1775, size: 64, offset: 2048)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !19, line: 44, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1363, file: !19, line: 488, baseType: !1778, size: 5120, offset: 2112)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1779, size: 5120, elements: !1786)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1063, line: 540, size: 320, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1779, file: !1063, line: 541, baseType: !458, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1779, file: !1063, line: 542, baseType: !458, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1779, file: !1063, line: 543, baseType: !458, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1779, file: !1063, line: 544, baseType: !204, size: 32, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1779, file: !1063, line: 545, baseType: !458, size: 64, offset: 256)
!1786 = !{!1787}
!1787 = !DISubrange(count: 16)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1363, file: !19, line: 490, baseType: !1699, size: 320, offset: 7232)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1363, file: !19, line: 491, baseType: !1130, size: 256, offset: 7552)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1363, file: !19, line: 493, baseType: !844, size: 32, offset: 7808)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1363, file: !19, line: 495, baseType: !265, size: 128, offset: 7872)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1363, file: !19, line: 502, baseType: !1793, size: 896, offset: 8000)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 321, size: 896, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1793, file: !19, line: 322, baseType: !194, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1793, file: !19, line: 323, baseType: !194, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1793, file: !19, line: 324, baseType: !194, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1793, file: !19, line: 326, baseType: !7, size: 32, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1793, file: !19, line: 327, baseType: !7, size: 32, offset: 224)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1793, file: !19, line: 328, baseType: !7, size: 32, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1793, file: !19, line: 329, baseType: !7, size: 32, offset: 288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1793, file: !19, line: 330, baseType: !7, size: 32, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1793, file: !19, line: 331, baseType: !7, size: 32, offset: 352)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1793, file: !19, line: 332, baseType: !7, size: 32, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1793, file: !19, line: 333, baseType: !7, size: 32, offset: 416)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1793, file: !19, line: 334, baseType: !7, size: 32, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1793, file: !19, line: 335, baseType: !7, size: 32, offset: 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1793, file: !19, line: 336, baseType: !7, size: 32, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1793, file: !19, line: 337, baseType: !7, size: 32, offset: 544)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1793, file: !19, line: 338, baseType: !7, size: 32, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1793, file: !19, line: 339, baseType: !7, size: 32, offset: 608)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1793, file: !19, line: 340, baseType: !7, size: 32, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1793, file: !19, line: 341, baseType: !7, size: 32, offset: 672)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1793, file: !19, line: 342, baseType: !7, size: 32, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1793, file: !19, line: 344, baseType: !358, size: 16, offset: 736)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1793, file: !19, line: 345, baseType: !358, size: 16, offset: 752)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1793, file: !19, line: 346, baseType: !358, size: 16, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1793, file: !19, line: 348, baseType: !464, size: 8, offset: 784)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1793, file: !19, line: 349, baseType: !464, size: 8, offset: 792)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1793, file: !19, line: 350, baseType: !464, size: 8, offset: 800)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1793, file: !19, line: 351, baseType: !50, size: 32, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1363, file: !19, line: 504, baseType: !7, size: 32, offset: 8896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1363, file: !19, line: 534, baseType: !7, size: 32, offset: 8928)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1363, file: !19, line: 535, baseType: !7, size: 32, offset: 8960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1363, file: !19, line: 536, baseType: !197, size: 32, offset: 8992)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1363, file: !19, line: 537, baseType: !771, size: 192, offset: 9024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1363, file: !19, line: 544, baseType: !1828, size: 64, offset: 9216)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !19, line: 40, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1363, file: !19, line: 546, baseType: !265, size: 128, offset: 9280)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1363, file: !19, line: 547, baseType: !278, offset: 9408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1363, file: !19, line: 548, baseType: !1695, size: 704, offset: 9408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1363, file: !19, line: 550, baseType: !771, size: 192, offset: 10112)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1363, file: !19, line: 551, baseType: !771, size: 192, offset: 10304)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1363, file: !19, line: 557, baseType: !265, size: 128, offset: 10496)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1363, file: !19, line: 558, baseType: !278, offset: 10624)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1363, file: !19, line: 560, baseType: !197, size: 32, offset: 10624)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1363, file: !19, line: 563, baseType: !1839, size: 256, offset: 10688)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1840, line: 18, size: 256, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1839, file: !1840, line: 19, baseType: !1717, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1839, file: !1840, line: 20, baseType: !197, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1839, file: !1840, line: 21, baseType: !1362, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1839, file: !1840, line: 22, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1840, line: 10, size: 256, elements: !1849)
!1849 = !{!1850, !1892, !1896, !1900}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1848, file: !1840, line: 11, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!197, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1856, line: 22, size: 1280, elements: !1857)
!1856 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1855, file: !1856, line: 23, baseType: !1859, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !207, line: 26, baseType: !197)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1855, file: !1856, line: 24, baseType: !206, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1855, file: !1856, line: 25, baseType: !206, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1855, file: !1856, line: 28, baseType: !206, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1855, file: !1856, line: 29, baseType: !459, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1855, file: !1856, line: 30, baseType: !459, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1855, file: !1856, line: 31, baseType: !206, size: 32, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1855, file: !1856, line: 32, baseType: !206, size: 32, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1855, file: !1856, line: 33, baseType: !206, size: 32, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1855, file: !1856, line: 34, baseType: !206, size: 32, offset: 352)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1855, file: !1856, line: 35, baseType: !459, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1855, file: !1856, line: 38, baseType: !206, size: 32, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1855, file: !1856, line: 40, baseType: !206, size: 32, offset: 480)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1855, file: !1856, line: 41, baseType: !206, size: 32, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1855, file: !1856, line: 42, baseType: !206, size: 32, offset: 544)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1855, file: !1856, line: 43, baseType: !459, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1855, file: !1856, line: 44, baseType: !459, size: 64, offset: 640)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1855, file: !1856, line: 46, baseType: !206, size: 32, offset: 704)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 47, baseType: !206, size: 32, offset: 736)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1855, file: !1856, line: 48, baseType: !459, size: 64, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1855, file: !1856, line: 49, baseType: !206, size: 32, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1855, file: !1856, line: 51, baseType: !206, size: 32, offset: 864)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1855, file: !1856, line: 52, baseType: !206, size: 32, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1855, file: !1856, line: 53, baseType: !206, size: 32, offset: 928)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1855, file: !1856, line: 54, baseType: !206, size: 32, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1855, file: !1856, line: 55, baseType: !206, size: 32, offset: 992)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1855, file: !1856, line: 56, baseType: !206, size: 32, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1855, file: !1856, line: 57, baseType: !206, size: 32, offset: 1056)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1855, file: !1856, line: 58, baseType: !1859, size: 32, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1855, file: !1856, line: 59, baseType: !1859, size: 32, offset: 1120)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1855, file: !1856, line: 60, baseType: !459, size: 64, offset: 1152)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1855, file: !1856, line: 61, baseType: !206, size: 32, offset: 1216)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1855, file: !1856, line: 63, baseType: !206, size: 32, offset: 1248)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1848, file: !1840, line: 12, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!197, !1366, !1854, !1287}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1848, file: !1840, line: 14, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!197, !1366, !1854}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1848, file: !1840, line: 15, baseType: !1561, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1363, file: !19, line: 570, baseType: !406, size: 128, align: 64, offset: 10944)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1363, file: !19, line: 571, baseType: !1266, size: 128, offset: 11072)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1363, file: !19, line: 576, baseType: !771, size: 192, offset: 11200)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1363, file: !19, line: 578, baseType: !1905, size: 64, offset: 11392)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !19, line: 578, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1363, file: !19, line: 579, baseType: !265, size: 128, offset: 11456)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1363, file: !19, line: 580, baseType: !1239, size: 2368, offset: 11584)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1363, file: !19, line: 582, baseType: !423, size: 64, offset: 13952)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1363, file: !19, line: 589, baseType: !254, size: 8, offset: 14016)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1363, file: !19, line: 591, baseType: !363, size: 64, offset: 14080)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1363, file: !19, line: 594, baseType: !1913, size: 320, offset: 14144)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 320, elements: !1914)
!1914 = !{!1915}
!1915 = !DISubrange(count: 5)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1148, file: !1082, line: 191, baseType: !195, size: 64, offset: 7168)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !1082, line: 193, baseType: !197, size: 32, offset: 7232)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1148, file: !1082, line: 194, baseType: !194, size: 64, offset: 7296)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1148, file: !1082, line: 196, baseType: !864, size: 256, offset: 7360)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1148, file: !1082, line: 197, baseType: !271, size: 64, offset: 7616)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1148, file: !1082, line: 199, baseType: !1922, size: 64, offset: 7680)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1082, line: 199, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1148, file: !1082, line: 200, baseType: !844, size: 32, offset: 7744)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1148, file: !1082, line: 201, baseType: !1926, size: 64, offset: 7808)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1082, line: 156, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1148, file: !1082, line: 203, baseType: !260, size: 512, offset: 7872)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1148, file: !1082, line: 208, baseType: !197, size: 32, offset: 8384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1148, file: !1082, line: 209, baseType: !1931, size: 64, offset: 8448)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1082, line: 157, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1148, file: !1082, line: 210, baseType: !1934, offset: 8512)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !681, line: 192, elements: !292)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1062, file: !1063, line: 43, baseType: !1640, size: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1062, file: !1063, line: 46, baseType: !197, size: 32, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1062, file: !1063, line: 48, baseType: !771, size: 192, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1015, file: !1016, line: 259, baseType: !393, size: 64, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1015, file: !1016, line: 260, baseType: !7, size: 32, offset: 1216)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !1016, line: 265, baseType: !278, offset: 1248)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1015, file: !1016, line: 278, baseType: !278, offset: 1248)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1015, file: !1016, line: 282, baseType: !1130, size: 256, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1015, file: !1016, line: 283, baseType: !1041, size: 64, offset: 1536)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1015, file: !1016, line: 284, baseType: !1945, offset: 1600)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, elements: !1168)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !878, file: !86, line: 415, baseType: !1948, size: 64, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !393}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !86, line: 466, baseType: !194, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !832, file: !86, line: 467, baseType: !1953, size: 32, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1954, line: 8, baseType: !204)
!1954 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !832, file: !86, line: 468, baseType: !278, offset: 992)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !832, file: !86, line: 469, baseType: !265, size: 128, offset: 1024)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !832, file: !86, line: 470, baseType: !195, size: 64, offset: 1152)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !827, file: !820, line: 87, baseType: !194, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !827, file: !820, line: 94, baseType: !194, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 96, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 96, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1961, file: !820, line: 101, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !193, line: 143, baseType: !458)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 103, baseType: !1966, size: 320)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 103, size: 320, elements: !1967)
!1967 = !{!1968, !1978, !1979, !1980}
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !820, line: 104, baseType: !1969, size: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !820, line: 104, size: 128, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1969, file: !820, line: 105, baseType: !265, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !820, line: 106, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !820, line: 106, size: 128, elements: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1973, file: !820, line: 107, baseType: !818, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1973, file: !820, line: 109, baseType: !197, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1973, file: !820, line: 110, baseType: !197, size: 32, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1966, file: !820, line: 117, baseType: !1242, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1966, file: !820, line: 119, baseType: !195, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !820, line: 120, baseType: !1981, size: 64, offset: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !820, line: 120, size: 64, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1981, file: !820, line: 121, baseType: !195, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1981, file: !820, line: 122, baseType: !194, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !820, line: 123, baseType: !1986, size: 32)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !820, line: 123, size: 32, elements: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1986, file: !820, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1986, file: !820, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1986, file: !820, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 130, baseType: !1992, size: 192)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 130, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1998}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1992, file: !820, line: 131, baseType: !194, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1992, file: !820, line: 134, baseType: !464, size: 8, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1992, file: !820, line: 135, baseType: !464, size: 8, offset: 72)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1992, file: !820, line: 136, baseType: !844, size: 32, offset: 96)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1992, file: !820, line: 137, baseType: !7, size: 32, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 139, baseType: !2000, size: 256)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 139, size: 256, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2000, file: !820, line: 140, baseType: !194, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2000, file: !820, line: 141, baseType: !844, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2000, file: !820, line: 143, baseType: !265, size: 128, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 145, baseType: !2006, size: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 145, size: 256, elements: !2007)
!2007 = !{!2008, !2009, !2012, !2013, !3481}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2006, file: !820, line: 146, baseType: !194, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2006, file: !820, line: 147, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2011, line: 509, baseType: !818)
!2011 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2006, file: !820, line: 148, baseType: !194, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !820, line: 149, baseType: !2014, size: 64, offset: 192)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !820, line: 149, size: 64, elements: !2015)
!2015 = !{!2016, !3480}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2014, file: !820, line: 150, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !820, line: 388, size: 7296, elements: !2019)
!2019 = !{!2020, !3478}
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !820, line: 389, baseType: !2021, size: 7296)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !820, line: 389, size: 7296, elements: !2022)
!2022 = !{!2023, !2141, !2142, !2143, !2147, !2148, !2149, !2150, !2151, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2192, !2198, !2201, !2240, !2241, !3462, !3463, !3466, !3467, !3468, !3471, !3472, !3473, !3476, !3477}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2021, file: !820, line: 390, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !820, line: 305, size: 1472, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2041, !2042, !2047, !2048, !2051, !2135, !2136, !2137, !2138, !2139}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2025, file: !820, line: 308, baseType: !194, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2025, file: !820, line: 309, baseType: !194, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2025, file: !820, line: 313, baseType: !2024, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2025, file: !820, line: 313, baseType: !2024, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2025, file: !820, line: 315, baseType: !857, size: 192, align: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2025, file: !820, line: 323, baseType: !194, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2025, file: !820, line: 327, baseType: !2017, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2025, file: !820, line: 333, baseType: !2035, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2011, line: 284, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2011, line: 284, size: 64, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2036, file: !2011, line: 284, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2040, line: 19, baseType: !194)
!2040 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2025, file: !820, line: 334, baseType: !194, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2025, file: !820, line: 343, baseType: !2043, size: 256, offset: 704)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !820, line: 340, size: 256, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2043, file: !820, line: 341, baseType: !857, size: 192, align: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2043, file: !820, line: 342, baseType: !194, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2025, file: !820, line: 351, baseType: !265, size: 128, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2025, file: !820, line: 353, baseType: !2049, size: 64, offset: 1088)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !820, line: 353, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2025, file: !820, line: 356, baseType: !2052, size: 64, offset: 1152)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !56, line: 557, size: 832, elements: !2055)
!2055 = !{!2056, !2060, !2061, !2065, !2069, !2109, !2113, !2117, !2121, !2122, !2123, !2127, !2131}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2054, file: !56, line: 558, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2024}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2054, file: !56, line: 559, baseType: !2057, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2054, file: !56, line: 560, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!197, !2024, !194}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2054, file: !56, line: 561, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!197, !2024}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2054, file: !56, line: 562, baseType: !2070, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !820, line: 682, baseType: !7)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !56, line: 508, size: 768, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2089, !2096, !2102, !2103, !2104, !2106, !2108}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2075, file: !56, line: 509, baseType: !2024, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !56, line: 510, baseType: !7, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2075, file: !56, line: 511, baseType: !192, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2075, file: !56, line: 512, baseType: !194, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2075, file: !56, line: 513, baseType: !194, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2075, file: !56, line: 514, baseType: !2083, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2011, line: 385, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 385, size: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2085, file: !2011, line: 385, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2040, line: 15, baseType: !194)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2075, file: !56, line: 516, baseType: !2090, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2011, line: 359, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 359, size: 64, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2092, file: !2011, line: 359, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2040, line: 16, baseType: !194)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2075, file: !56, line: 519, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2040, line: 21, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2040, line: 21, size: 64, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2098, file: !2040, line: 21, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2040, line: 14, baseType: !194)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2075, file: !56, line: 521, baseType: !818, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2075, file: !56, line: 522, baseType: !818, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2075, file: !56, line: 528, baseType: !2105, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2075, file: !56, line: 532, baseType: !2107, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2075, file: !56, line: 536, baseType: !2010, size: 64, offset: 704)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2054, file: !56, line: 563, baseType: !2110, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2073, !2074, !55}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2054, file: !56, line: 565, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2074, !194, !194}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2054, file: !56, line: 567, baseType: !2118, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!194, !2024}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2054, file: !56, line: 571, baseType: !2070, size: 64, offset: 512)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2054, file: !56, line: 574, baseType: !2070, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2054, file: !56, line: 579, baseType: !2124, size: 64, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!197, !2024, !194, !195, !197, !197}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2054, file: !56, line: 585, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!251, !2024}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2054, file: !56, line: 615, baseType: !2132, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!818, !2024, !194}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2025, file: !820, line: 359, baseType: !194, size: 64, offset: 1216)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2025, file: !820, line: 361, baseType: !393, size: 64, offset: 1280)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2025, file: !820, line: 362, baseType: !195, size: 64, offset: 1344)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2025, file: !820, line: 365, baseType: !775, size: 64, offset: 1408)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2025, file: !820, line: 373, baseType: !2140, offset: 1472)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !820, line: 296, elements: !292)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2021, file: !820, line: 391, baseType: !853, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2021, file: !820, line: 392, baseType: !458, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2021, file: !820, line: 394, baseType: !2144, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!194, !393, !194, !194, !194, !194}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2021, file: !820, line: 398, baseType: !194, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2021, file: !820, line: 399, baseType: !194, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2021, file: !820, line: 405, baseType: !194, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2021, file: !820, line: 406, baseType: !194, size: 64, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2021, file: !820, line: 407, baseType: !2152, size: 64, offset: 512)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2011, line: 286, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 286, size: 64, elements: !2155)
!2155 = !{!2156}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2154, file: !2011, line: 286, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2040, line: 18, baseType: !194)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2021, file: !820, line: 416, baseType: !844, size: 32, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2021, file: !820, line: 428, baseType: !844, size: 32, offset: 608)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2021, file: !820, line: 437, baseType: !844, size: 32, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2021, file: !820, line: 447, baseType: !844, size: 32, offset: 672)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2021, file: !820, line: 450, baseType: !775, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2021, file: !820, line: 452, baseType: !197, size: 32, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2021, file: !820, line: 454, baseType: !278, offset: 800)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2021, file: !820, line: 457, baseType: !864, size: 256, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2021, file: !820, line: 459, baseType: !265, size: 128, offset: 1088)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2021, file: !820, line: 466, baseType: !194, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2021, file: !820, line: 467, baseType: !194, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2021, file: !820, line: 469, baseType: !194, size: 64, offset: 1344)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2021, file: !820, line: 470, baseType: !194, size: 64, offset: 1408)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2021, file: !820, line: 471, baseType: !777, size: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2021, file: !820, line: 472, baseType: !194, size: 64, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2021, file: !820, line: 473, baseType: !194, size: 64, offset: 1600)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2021, file: !820, line: 474, baseType: !194, size: 64, offset: 1664)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2021, file: !820, line: 475, baseType: !194, size: 64, offset: 1728)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2021, file: !820, line: 477, baseType: !278, offset: 1792)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2021, file: !820, line: 478, baseType: !194, size: 64, offset: 1792)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2021, file: !820, line: 478, baseType: !194, size: 64, offset: 1856)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2021, file: !820, line: 478, baseType: !194, size: 64, offset: 1920)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2021, file: !820, line: 478, baseType: !194, size: 64, offset: 1984)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2021, file: !820, line: 479, baseType: !194, size: 64, offset: 2048)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2021, file: !820, line: 479, baseType: !194, size: 64, offset: 2112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2021, file: !820, line: 479, baseType: !194, size: 64, offset: 2176)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2021, file: !820, line: 480, baseType: !194, size: 64, offset: 2240)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2021, file: !820, line: 480, baseType: !194, size: 64, offset: 2304)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2021, file: !820, line: 480, baseType: !194, size: 64, offset: 2368)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2021, file: !820, line: 480, baseType: !194, size: 64, offset: 2432)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2021, file: !820, line: 482, baseType: !2189, size: 2816, offset: 2496)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 2816, elements: !2190)
!2190 = !{!2191}
!2191 = !DISubrange(count: 44)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2021, file: !820, line: 488, baseType: !2193, size: 256, offset: 5312)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2194, line: 60, size: 256, elements: !2195)
!2194 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2193, file: !2194, line: 61, baseType: !2197, size: 256)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 256, elements: !1344)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2021, file: !820, line: 490, baseType: !2199, size: 64, offset: 5568)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !820, line: 490, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2021, file: !820, line: 493, baseType: !2202, size: 896, offset: 5632)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2203, line: 53, baseType: !2204)
!2203 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2203, line: 13, size: 896, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2212, !2213, !2214, !2215, !2235, !2236, !2237}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2204, file: !2203, line: 18, baseType: !458, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2204, file: !2203, line: 28, baseType: !777, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2204, file: !2203, line: 31, baseType: !864, size: 256, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2204, file: !2203, line: 32, baseType: !2210, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2203, line: 32, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2204, file: !2203, line: 37, baseType: !358, size: 16, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !2203, line: 40, baseType: !771, size: 192, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2204, file: !2203, line: 41, baseType: !195, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2204, file: !2203, line: 42, baseType: !2216, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2219, line: 13, size: 896, elements: !2220)
!2219 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2218, file: !2219, line: 14, baseType: !195, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2218, file: !2219, line: 15, baseType: !194, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2218, file: !2219, line: 17, baseType: !194, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2218, file: !2219, line: 17, baseType: !194, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2218, file: !2219, line: 19, baseType: !196, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2218, file: !2219, line: 21, baseType: !196, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2218, file: !2219, line: 22, baseType: !196, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2218, file: !2219, line: 23, baseType: !196, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2218, file: !2219, line: 24, baseType: !196, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2218, file: !2219, line: 25, baseType: !196, size: 64, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2218, file: !2219, line: 26, baseType: !196, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2218, file: !2219, line: 27, baseType: !196, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2218, file: !2219, line: 28, baseType: !196, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2218, file: !2219, line: 29, baseType: !196, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2204, file: !2203, line: 44, baseType: !844, size: 32, offset: 832)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2204, file: !2203, line: 50, baseType: !956, size: 16, offset: 864)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2204, file: !2203, line: 51, baseType: !2238, size: 16, offset: 880)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !205, line: 18, baseType: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !207, line: 23, baseType: !1020)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2021, file: !820, line: 495, baseType: !194, size: 64, offset: 6528)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2021, file: !820, line: 497, baseType: !2242, size: 64, offset: 6592)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !820, line: 381, size: 384, elements: !2244)
!2244 = !{!2245, !2246, !3461}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2243, file: !820, line: 382, baseType: !844, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2243, file: !820, line: 383, baseType: !2247, size: 128, offset: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !820, line: 376, size: 128, elements: !2248)
!2248 = !{!2249, !3459}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2247, file: !820, line: 377, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2252, line: 640, size: 48640, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2275, !2293, !2304, !2387, !2388, !2389, !2400, !2401, !2403, !2404, !2405, !2406, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2484, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2516, !2518, !2519, !2520, !2532, !2533, !2534, !2535, !2536, !2537, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2561, !2566, !2888, !2889, !2890, !2891, !2893, !2896, !2899, !2902, !2905, !2941, !3042, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3086, !3087, !3088, !3089, !3090, !3095, !3096, !3097, !3100, !3101, !3103, !3112, !3117, !3118, !3119, !3122, !3123, !3202, !3203, !3206, !3207, !3210, !3211, !3212, !3216, !3217, !3218, !3231, !3232, !3233, !3243, !3248, !3251, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2251, file: !2252, line: 646, baseType: !2255, size: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2256, line: 56, size: 128, elements: !2257)
!2256 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !2256, line: 57, baseType: !194, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2255, file: !2256, line: 58, baseType: !204, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2251, file: !2252, line: 649, baseType: !2261, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2251, file: !2252, line: 657, baseType: !195, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2251, file: !2252, line: 658, baseType: !1459, size: 32, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2252, line: 660, baseType: !7, size: 32, offset: 288)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2251, file: !2252, line: 661, baseType: !7, size: 32, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2251, file: !2252, line: 684, baseType: !197, size: 32, offset: 352)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2251, file: !2252, line: 686, baseType: !197, size: 32, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2251, file: !2252, line: 687, baseType: !197, size: 32, offset: 416)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2251, file: !2252, line: 688, baseType: !197, size: 32, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2251, file: !2252, line: 689, baseType: !7, size: 32, offset: 480)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2251, file: !2252, line: 691, baseType: !2272, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2252, line: 691, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2251, file: !2252, line: 692, baseType: !2276, size: 832, offset: 576)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2252, line: 451, size: 832, elements: !2277)
!2277 = !{!2278, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2276, file: !2252, line: 453, baseType: !2279, size: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2252, line: 325, size: 128, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2279, file: !2252, line: 326, baseType: !194, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2279, file: !2252, line: 327, baseType: !204, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2276, file: !2252, line: 454, baseType: !857, size: 192, align: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2276, file: !2252, line: 455, baseType: !265, size: 128, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2276, file: !2252, line: 456, baseType: !7, size: 32, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2276, file: !2252, line: 458, baseType: !458, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2276, file: !2252, line: 459, baseType: !458, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2276, file: !2252, line: 460, baseType: !458, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2276, file: !2252, line: 461, baseType: !458, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2276, file: !2252, line: 463, baseType: !458, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2276, file: !2252, line: 465, baseType: !2292, offset: 832)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2252, line: 415, elements: !292)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2251, file: !2252, line: 693, baseType: !2294, size: 384, offset: 1408)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2252, line: 489, size: 384, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2294, file: !2252, line: 490, baseType: !265, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2294, file: !2252, line: 491, baseType: !194, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2294, file: !2252, line: 492, baseType: !194, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2294, file: !2252, line: 493, baseType: !7, size: 32, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2294, file: !2252, line: 494, baseType: !358, size: 16, offset: 288)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2294, file: !2252, line: 495, baseType: !358, size: 16, offset: 304)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2294, file: !2252, line: 497, baseType: !2303, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2251, file: !2252, line: 697, baseType: !2305, size: 1792, offset: 1792)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2252, line: 507, size: 1792, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2384, !2385}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2305, file: !2252, line: 508, baseType: !857, size: 192, align: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2305, file: !2252, line: 515, baseType: !458, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2305, file: !2252, line: 516, baseType: !458, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2305, file: !2252, line: 517, baseType: !458, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2305, file: !2252, line: 518, baseType: !458, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2305, file: !2252, line: 519, baseType: !458, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2305, file: !2252, line: 526, baseType: !781, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2305, file: !2252, line: 527, baseType: !458, size: 64, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !2252, line: 528, baseType: !7, size: 32, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2305, file: !2252, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2305, file: !2252, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2305, file: !2252, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2305, file: !2252, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2305, file: !2252, line: 563, baseType: !2321, size: 512, offset: 704)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2322)
!2322 = !{!2323, !2331, !2332, !2337, !2380, !2381, !2382, !2383}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2321, file: !62, line: 119, baseType: !2324, size: 256)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2325, line: 9, size: 256, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2324, file: !2325, line: 10, baseType: !857, size: 192, align: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2324, file: !2325, line: 11, baseType: !2329, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2330, line: 29, baseType: !781)
!2330 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2321, file: !62, line: 120, baseType: !2329, size: 64, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2321, file: !62, line: 121, baseType: !2333, size: 64, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!61, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2321, file: !62, line: 122, baseType: !2338, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2340)
!2340 = !{!2341, !2361, !2362, !2365, !2370, !2371, !2375, !2379}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2339, file: !62, line: 160, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 214, size: 4608, align: 512, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2343, file: !62, line: 215, baseType: !870)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2343, file: !62, line: 216, baseType: !7, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2343, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2343, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2343, file: !62, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2343, file: !62, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2343, file: !62, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2343, file: !62, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2343, file: !62, line: 233, baseType: !2329, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2343, file: !62, line: 234, baseType: !2336, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2343, file: !62, line: 235, baseType: !2329, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2343, file: !62, line: 236, baseType: !2336, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2343, file: !62, line: 237, baseType: !2358, size: 4096, offset: 512)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2339, size: 4096, elements: !2359)
!2359 = !{!2360}
!2360 = !DISubrange(count: 8)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2339, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2339, file: !62, line: 162, baseType: !2363, size: 32, offset: 96)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 27, baseType: !2364)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !350, line: 96, baseType: !197)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2339, file: !62, line: 163, baseType: !2366, size: 32, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !429, line: 276, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !429, line: 276, size: 32, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2367, file: !429, line: 276, baseType: !433, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2339, file: !62, line: 164, baseType: !2336, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2339, file: !62, line: 165, baseType: !2372, size: 128, offset: 256)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2325, line: 14, size: 128, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2372, file: !2325, line: 15, baseType: !849, size: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2339, file: !62, line: 166, baseType: !2376, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2329}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2339, file: !62, line: 167, baseType: !2329, size: 64, offset: 448)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2321, file: !62, line: 123, baseType: !1077, size: 8, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2321, file: !62, line: 124, baseType: !1077, size: 8, offset: 456)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2321, file: !62, line: 125, baseType: !1077, size: 8, offset: 464)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2321, file: !62, line: 126, baseType: !1077, size: 8, offset: 472)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2305, file: !2252, line: 572, baseType: !2321, size: 512, offset: 1216)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2305, file: !2252, line: 580, baseType: !2386, size: 64, offset: 1728)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2251, file: !2252, line: 721, baseType: !7, size: 32, offset: 3584)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2251, file: !2252, line: 722, baseType: !197, size: 32, offset: 3616)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2251, file: !2252, line: 723, baseType: !2390, size: 64, offset: 3648)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2393, line: 17, baseType: !2394)
!2393 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2393, line: 17, size: 64, elements: !2395)
!2395 = !{!2396}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2394, file: !2393, line: 17, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !2398)
!2398 = !{!2399}
!2399 = !DISubrange(count: 1)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2251, file: !2252, line: 724, baseType: !2392, size: 64, offset: 3712)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2251, file: !2252, line: 749, baseType: !2402, offset: 3776)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2252, line: 290, elements: !292)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2251, file: !2252, line: 751, baseType: !265, size: 128, offset: 3776)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2251, file: !2252, line: 757, baseType: !2017, size: 64, offset: 3904)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2251, file: !2252, line: 758, baseType: !2017, size: 64, offset: 3968)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2251, file: !2252, line: 761, baseType: !2407, size: 320, offset: 4032)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2194, line: 34, size: 320, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2407, file: !2194, line: 35, baseType: !458, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2407, file: !2194, line: 36, baseType: !2411, size: 256, offset: 64)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 256, elements: !1344)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2251, file: !2252, line: 766, baseType: !197, size: 32, offset: 4352)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2251, file: !2252, line: 767, baseType: !197, size: 32, offset: 4384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2251, file: !2252, line: 768, baseType: !197, size: 32, offset: 4416)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2251, file: !2252, line: 770, baseType: !197, size: 32, offset: 4448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2251, file: !2252, line: 772, baseType: !194, size: 64, offset: 4480)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2251, file: !2252, line: 775, baseType: !7, size: 32, offset: 4544)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2251, file: !2252, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2251, file: !2252, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2251, file: !2252, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2251, file: !2252, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2251, file: !2252, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2251, file: !2252, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2251, file: !2252, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2251, file: !2252, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2251, file: !2252, line: 831, baseType: !194, size: 64, offset: 4672)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2251, file: !2252, line: 833, baseType: !2428, size: 384, offset: 4736)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 384, elements: !2429)
!2429 = !{!2430, !2435}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2428, file: !67, line: 26, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!196, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !67, line: 27, baseType: !2436, size: 320, offset: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !67, line: 27, size: 320, elements: !2437)
!2437 = !{!2438, !2448, !2474}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2436, file: !67, line: 36, baseType: !2439, size: 320)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !67, line: 29, size: 320, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2447}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2439, file: !67, line: 30, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2439, file: !67, line: 31, baseType: !204, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2439, file: !67, line: 32, baseType: !204, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2439, file: !67, line: 33, baseType: !204, size: 32, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2439, file: !67, line: 34, baseType: !458, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2439, file: !67, line: 35, baseType: !2442, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2436, file: !67, line: 46, baseType: !2449, size: 192)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !67, line: 38, size: 192, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2473}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2449, file: !67, line: 39, baseType: !2363, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2449, file: !67, line: 40, baseType: !66, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2449, file: !67, line: 41, baseType: !2454, size: 64, offset: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !67, line: 41, size: 64, elements: !2455)
!2455 = !{!2456, !2464}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2454, file: !67, line: 42, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2459, line: 7, size: 128, elements: !2460)
!2459 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2460 = !{!2461, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2458, file: !2459, line: 8, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !350, line: 93, baseType: !568)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2458, file: !2459, line: 9, baseType: !568, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2454, file: !67, line: 43, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2467, line: 7, size: 64, elements: !2468)
!2467 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469, !2472}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2466, file: !2467, line: 8, baseType: !2470, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2467, line: 5, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !205, line: 20, baseType: !1859)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2466, file: !2467, line: 9, baseType: !2471, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2449, file: !67, line: 45, baseType: !458, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2436, file: !67, line: 54, baseType: !2475, size: 256)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !67, line: 48, size: 256, elements: !2476)
!2476 = !{!2477, !2480, !2481, !2482, !2483}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2475, file: !67, line: 49, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2475, file: !67, line: 50, baseType: !197, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2475, file: !67, line: 51, baseType: !197, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2475, file: !67, line: 52, baseType: !194, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2475, file: !67, line: 53, baseType: !194, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2251, file: !2252, line: 835, baseType: !2485, size: 32, offset: 5120)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 22, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !350, line: 28, baseType: !197)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2251, file: !2252, line: 836, baseType: !2485, size: 32, offset: 5152)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2251, file: !2252, line: 840, baseType: !194, size: 64, offset: 5184)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2251, file: !2252, line: 849, baseType: !2250, size: 64, offset: 5248)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2251, file: !2252, line: 852, baseType: !2250, size: 64, offset: 5312)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2251, file: !2252, line: 857, baseType: !265, size: 128, offset: 5376)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2251, file: !2252, line: 858, baseType: !265, size: 128, offset: 5504)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2251, file: !2252, line: 859, baseType: !2250, size: 64, offset: 5632)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2251, file: !2252, line: 867, baseType: !265, size: 128, offset: 5696)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2251, file: !2252, line: 868, baseType: !265, size: 128, offset: 5824)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2251, file: !2252, line: 871, baseType: !2497, size: 64, offset: 5952)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !95, line: 59, size: 768, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2505, !2506, !2507, !2508}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2498, file: !95, line: 61, baseType: !1459, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2498, file: !95, line: 62, baseType: !7, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2498, file: !95, line: 63, baseType: !278, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2498, file: !95, line: 65, baseType: !2504, size: 256, offset: 64)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !1344)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2498, file: !95, line: 66, baseType: !670, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2498, file: !95, line: 68, baseType: !1266, size: 128, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2498, file: !95, line: 69, baseType: !406, size: 128, align: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2498, file: !95, line: 70, baseType: !2509, size: 128, offset: 640)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2510, size: 128, elements: !2398)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !95, line: 54, size: 128, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2510, file: !95, line: 55, baseType: !197, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2510, file: !95, line: 56, baseType: !2514, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !95, line: 56, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2251, file: !2252, line: 872, baseType: !2517, size: 512, offset: 6016)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 512, elements: !1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2251, file: !2252, line: 873, baseType: !265, size: 128, offset: 6528)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2251, file: !2252, line: 874, baseType: !265, size: 128, offset: 6656)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2251, file: !2252, line: 876, baseType: !2521, size: 64, offset: 6784)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2523, line: 26, size: 192, elements: !2524)
!2523 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2522, file: !2523, line: 27, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2522, file: !2523, line: 28, baseType: !2527, size: 128, offset: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2528, line: 43, size: 128, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2527, file: !2528, line: 44, baseType: !870)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2527, file: !2528, line: 45, baseType: !265, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2251, file: !2252, line: 879, baseType: !201, size: 64, offset: 6848)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2251, file: !2252, line: 882, baseType: !201, size: 64, offset: 6912)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2251, file: !2252, line: 884, baseType: !458, size: 64, offset: 6976)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2251, file: !2252, line: 885, baseType: !458, size: 64, offset: 7040)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2251, file: !2252, line: 890, baseType: !458, size: 64, offset: 7104)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2251, file: !2252, line: 891, baseType: !2538, size: 128, offset: 7168)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2252, line: 242, size: 128, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2538, file: !2252, line: 244, baseType: !458, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2538, file: !2252, line: 245, baseType: !458, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2538, file: !2252, line: 246, baseType: !870, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2251, file: !2252, line: 900, baseType: !194, size: 64, offset: 7296)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2251, file: !2252, line: 901, baseType: !194, size: 64, offset: 7360)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2251, file: !2252, line: 904, baseType: !458, size: 64, offset: 7424)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2251, file: !2252, line: 907, baseType: !458, size: 64, offset: 7488)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2251, file: !2252, line: 910, baseType: !194, size: 64, offset: 7552)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2251, file: !2252, line: 911, baseType: !194, size: 64, offset: 7616)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2251, file: !2252, line: 914, baseType: !2550, size: 640, offset: 7680)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2551, line: 123, size: 640, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2552 = !{!2553, !2559, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2550, file: !2551, line: 124, baseType: !2554, size: 576)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2555, size: 576, elements: !320)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2551, line: 108, size: 192, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2555, file: !2551, line: 109, baseType: !458, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2555, file: !2551, line: 110, baseType: !2372, size: 128, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2550, file: !2551, line: 125, baseType: !7, size: 32, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2550, file: !2551, line: 126, baseType: !7, size: 32, offset: 608)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2251, file: !2252, line: 917, baseType: !2562, size: 192, offset: 8320)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2551, line: 134, size: 192, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2562, file: !2551, line: 135, baseType: !406, size: 128, align: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2562, file: !2551, line: 136, baseType: !7, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2251, file: !2252, line: 923, baseType: !2567, size: 64, offset: 8512)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2570, line: 111, size: 1280, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2589, !2590, !2591, !2592, !2593, !2594, !2701, !2702, !2703, !2704, !2730, !2873, !2883}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2569, file: !2570, line: 112, baseType: !844, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2569, file: !2570, line: 120, baseType: !472, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2569, file: !2570, line: 121, baseType: !480, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2569, file: !2570, line: 122, baseType: !472, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2569, file: !2570, line: 123, baseType: !480, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2569, file: !2570, line: 124, baseType: !472, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2569, file: !2570, line: 125, baseType: !480, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2569, file: !2570, line: 126, baseType: !472, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2569, file: !2570, line: 127, baseType: !480, size: 32, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2569, file: !2570, line: 128, baseType: !7, size: 32, offset: 288)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2569, file: !2570, line: 129, baseType: !2583, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2584, line: 26, baseType: !2585)
!2584 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2584, line: 24, size: 64, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2585, file: !2584, line: 25, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1436)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2569, file: !2570, line: 130, baseType: !2583, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2569, file: !2570, line: 131, baseType: !2583, size: 64, offset: 448)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2569, file: !2570, line: 132, baseType: !2583, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2569, file: !2570, line: 133, baseType: !2583, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2569, file: !2570, line: 135, baseType: !464, size: 8, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2569, file: !2570, line: 137, baseType: !2595, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2597, line: 189, size: 1664, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2603, !2608, !2609, !2612, !2613, !2618, !2619, !2620, !2621, !2623, !2624, !2625, !2626, !2627, !2665, !2686}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2596, file: !2597, line: 190, baseType: !1459, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2596, file: !2597, line: 191, baseType: !2601, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2597, line: 28, baseType: !2602)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 98, baseType: !2471)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !2597, line: 192, baseType: !2604, size: 192, offset: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 192, size: 192, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2604, file: !2597, line: 193, baseType: !265, size: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2604, file: !2597, line: 194, baseType: !857, size: 192, align: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2596, file: !2597, line: 199, baseType: !864, size: 256, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2596, file: !2597, line: 200, baseType: !2610, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2597, line: 200, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2596, file: !2597, line: 201, baseType: !195, size: 64, offset: 576)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !2597, line: 202, baseType: !2614, size: 64, offset: 640)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 202, size: 64, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2614, file: !2597, line: 203, baseType: !574, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2614, file: !2597, line: 204, baseType: !574, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2596, file: !2597, line: 206, baseType: !574, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2596, file: !2597, line: 207, baseType: !472, size: 32, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2596, file: !2597, line: 208, baseType: !480, size: 32, offset: 800)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2596, file: !2597, line: 209, baseType: !2622, size: 32, offset: 832)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2597, line: 31, baseType: !594)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2596, file: !2597, line: 210, baseType: !358, size: 16, offset: 864)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2596, file: !2597, line: 211, baseType: !358, size: 16, offset: 880)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2596, file: !2597, line: 215, baseType: !1020, size: 16, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !2597, line: 222, baseType: !194, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !2597, line: 239, baseType: !2628, size: 320, offset: 1024)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 239, size: 320, elements: !2629)
!2629 = !{!2630, !2657}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2628, file: !2597, line: 240, baseType: !2631, size: 320)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2597, line: 108, size: 320, elements: !2632)
!2632 = !{!2633, !2634, !2646, !2649, !2656}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2631, file: !2597, line: 110, baseType: !194, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2631, file: !2597, line: 111, baseType: !2635, size: 64, offset: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2631, file: !2597, line: 111, size: 64, elements: !2636)
!2636 = !{!2637, !2645}
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !2597, line: 112, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2635, file: !2597, line: 112, size: 64, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2638, file: !2597, line: 114, baseType: !956, size: 16)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2638, file: !2597, line: 115, baseType: !2642, size: 48, offset: 16)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 48, elements: !2643)
!2643 = !{!2644}
!2644 = !DISubrange(count: 6)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2635, file: !2597, line: 121, baseType: !194, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2631, file: !2597, line: 123, baseType: !2647, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2597, line: 96, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2631, file: !2597, line: 124, baseType: !2650, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2597, line: 102, size: 192, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2651, file: !2597, line: 103, baseType: !406, size: 128, align: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2651, file: !2597, line: 104, baseType: !1459, size: 32, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2651, file: !2597, line: 105, baseType: !254, size: 8, offset: 160)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2631, file: !2597, line: 125, baseType: !251, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2628, file: !2597, line: 241, baseType: !2658, size: 320)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2628, file: !2597, line: 241, size: 320, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2658, file: !2597, line: 242, baseType: !194, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2658, file: !2597, line: 243, baseType: !194, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2658, file: !2597, line: 244, baseType: !2647, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2658, file: !2597, line: 245, baseType: !2650, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2658, file: !2597, line: 246, baseType: !319, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !2597, line: 254, baseType: !2666, size: 256, offset: 1344)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 254, size: 256, elements: !2667)
!2667 = !{!2668, !2674}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2666, file: !2597, line: 255, baseType: !2669, size: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2597, line: 128, size: 256, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2669, file: !2597, line: 129, baseType: !195, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2669, file: !2597, line: 130, baseType: !2673, size: 256)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !1344)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2597, line: 256, baseType: !2675, size: 256)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2597, line: 256, size: 256, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2675, file: !2597, line: 258, baseType: !265, size: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2675, file: !2597, line: 259, baseType: !2679, size: 128, offset: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2680, line: 22, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682, !2685}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2679, file: !2680, line: 23, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2680, line: 23, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2679, file: !2680, line: 24, baseType: !194, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2596, file: !2597, line: 274, baseType: !2687, size: 64, offset: 1600)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2597, line: 170, size: 192, elements: !2689)
!2689 = !{!2690, !2699, !2700}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2688, file: !2597, line: 171, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2597, line: 165, baseType: !2692)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!197, !2595, !2695, !2697, !2595}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2688, file: !2597, line: 172, baseType: !2595, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2688, file: !2597, line: 173, baseType: !2647, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2569, file: !2570, line: 138, baseType: !2595, size: 64, offset: 768)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2569, file: !2570, line: 139, baseType: !2595, size: 64, offset: 832)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2569, file: !2570, line: 140, baseType: !2595, size: 64, offset: 896)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2569, file: !2570, line: 145, baseType: !2705, size: 64, offset: 960)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2707, line: 13, size: 896, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2706, file: !2707, line: 14, baseType: !1459, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2706, file: !2707, line: 15, baseType: !844, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2706, file: !2707, line: 16, baseType: !844, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2706, file: !2707, line: 21, baseType: !775, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2706, file: !2707, line: 27, baseType: !194, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2706, file: !2707, line: 28, baseType: !194, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2706, file: !2707, line: 29, baseType: !775, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2706, file: !2707, line: 32, baseType: !674, size: 128, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2706, file: !2707, line: 33, baseType: !472, size: 32, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2706, file: !2707, line: 37, baseType: !775, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2706, file: !2707, line: 44, baseType: !2720, size: 256, offset: 640)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2721, line: 15, size: 256, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2728, !2729}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2720, file: !2721, line: 16, baseType: !870)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2720, file: !2721, line: 18, baseType: !197, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2720, file: !2721, line: 19, baseType: !197, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2720, file: !2721, line: 20, baseType: !197, size: 32, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2720, file: !2721, line: 21, baseType: !197, size: 32, offset: 96)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2720, file: !2721, line: 22, baseType: !194, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2720, file: !2721, line: 23, baseType: !194, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2569, file: !2570, line: 146, baseType: !2731, size: 64, offset: 1024)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2733, line: 56, size: 4160, elements: !2734)
!2733 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2734 = !{!2735, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2772, !2773, !2774, !2775, !2776, !2777, !2858, !2859, !2871}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2732, file: !2733, line: 57, baseType: !2736, size: 576)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2733, line: 23, size: 576, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2736, file: !2733, line: 24, baseType: !204, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !2733, line: 25, baseType: !2740, size: 512, offset: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !2733, line: 25, size: 512, elements: !2741)
!2741 = !{!2742, !2749}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2740, file: !2733, line: 26, baseType: !2743, size: 480)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2744, size: 480, elements: !1914)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2733, line: 17, size: 96, elements: !2745)
!2745 = !{!2746, !2747, !2748}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2744, file: !2733, line: 18, baseType: !204, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2744, file: !2733, line: 19, baseType: !204, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2744, file: !2733, line: 20, baseType: !204, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !2733, line: 27, baseType: !2750, size: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2733, line: 27, size: 128, elements: !2751)
!2751 = !{!2752, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2750, file: !2733, line: 28, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2750, file: !2733, line: 29, baseType: !2753, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2732, file: !2733, line: 58, baseType: !2736, size: 576, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2732, file: !2733, line: 59, baseType: !2736, size: 576, offset: 1152)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2732, file: !2733, line: 60, baseType: !844, size: 32, offset: 1728)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2732, file: !2733, line: 61, baseType: !2731, size: 64, offset: 1792)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2732, file: !2733, line: 62, baseType: !197, size: 32, offset: 1856)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2732, file: !2733, line: 63, baseType: !472, size: 32, offset: 1888)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2732, file: !2733, line: 64, baseType: !480, size: 32, offset: 1920)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2732, file: !2733, line: 65, baseType: !2763, size: 192, offset: 1984)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2764, line: 7, size: 192, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2767, !2771}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2763, file: !2764, line: 8, baseType: !775, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2763, file: !2764, line: 9, baseType: !2768, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2770)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2764, line: 5, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2763, file: !2764, line: 10, baseType: !7, size: 32, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2732, file: !2733, line: 66, baseType: !194, size: 64, offset: 2176)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2732, file: !2733, line: 74, baseType: !265, size: 128, offset: 2240)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2732, file: !2733, line: 75, baseType: !2595, size: 64, offset: 2368)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2732, file: !2733, line: 76, baseType: !864, size: 256, offset: 2432)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2732, file: !2733, line: 83, baseType: !1130, size: 256, offset: 2688)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2732, file: !2733, line: 85, baseType: !2778, size: 768, offset: 2944)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2779, line: 156, size: 768, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !{!2781, !2786}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2778, file: !2779, line: 157, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!197, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2778, file: !2779, line: 158, baseType: !2787, size: 704, offset: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2779, line: 150, size: 704, elements: !2788)
!2788 = !{!2789, !2857}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2787, file: !2779, line: 152, baseType: !2790, size: 640)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2779, line: 131, size: 640, elements: !2791)
!2791 = !{!2792, !2825, !2826, !2827, !2847, !2848, !2850, !2856}
!2792 = !DIDerivedType(tag: DW_TAG_member, scope: !2790, file: !2779, line: 132, baseType: !2793, size: 192)
!2793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !2779, line: 132, size: 192, elements: !2794)
!2794 = !{!2795, !2824}
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2793, file: !2779, line: 133, baseType: !2796, size: 192)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2779, line: 133, size: 192, elements: !2797)
!2797 = !{!2798, !2821, !2822, !2823}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2796, file: !2779, line: 134, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2779, line: 112, size: 512, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807, !2813, !2819, !2820}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2800, file: !2779, line: 113, baseType: !251, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2800, file: !2779, line: 114, baseType: !195, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2800, file: !2779, line: 115, baseType: !197, size: 32, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2800, file: !2779, line: 116, baseType: !357, size: 16, offset: 160)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2800, file: !2779, line: 117, baseType: !2799, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2800, file: !2779, line: 118, baseType: !2808, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2779, line: 47, baseType: !2810)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!197, !2799, !197, !195, !2812, !793}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2800, file: !2779, line: 119, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2779, line: 94, size: 192, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2815, file: !2779, line: 95, baseType: !844, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2815, file: !2779, line: 96, baseType: !1266, size: 128, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2800, file: !2779, line: 120, baseType: !195, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2800, file: !2779, line: 121, baseType: !195, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2796, file: !2779, line: 135, baseType: !197, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2796, file: !2779, line: 136, baseType: !197, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2796, file: !2779, line: 137, baseType: !197, size: 32, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2793, file: !2779, line: 139, baseType: !406, size: 128, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2790, file: !2779, line: 141, baseType: !2521, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2790, file: !2779, line: 142, baseType: !2799, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2790, file: !2779, line: 143, baseType: !2828, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2779, line: 161, size: 960, elements: !2830)
!2830 = !{!2831, !2832, !2836, !2843}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2829, file: !2779, line: 162, baseType: !2778, size: 768)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2829, file: !2779, line: 163, baseType: !2833, size: 64, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!2785, !2828}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2829, file: !2779, line: 164, baseType: !2837, size: 64, offset: 832)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !2840, !2799, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2829, file: !2779, line: 167, baseType: !2844, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!197, !2840, !2799}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2790, file: !2779, line: 144, baseType: !2785, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2790, file: !2779, line: 145, baseType: !2849, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2790, file: !2779, line: 146, baseType: !2851, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2779, line: 124, size: 256, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2852, file: !2779, line: 125, baseType: !857, size: 192, align: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2852, file: !2779, line: 126, baseType: !2840, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2790, file: !2779, line: 147, baseType: !670, size: 64, offset: 576)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2787, file: !2779, line: 153, baseType: !853, size: 64, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2732, file: !2733, line: 86, baseType: !2840, size: 64, offset: 3712)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2732, file: !2733, line: 88, baseType: !2860, size: 64, offset: 3776)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2733, line: 92, size: 576, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2861, file: !2733, line: 93, baseType: !674, size: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2861, file: !2733, line: 94, baseType: !2731, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2861, file: !2733, line: 95, baseType: !472, size: 32, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2861, file: !2733, line: 96, baseType: !197, size: 32, offset: 224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2861, file: !2733, line: 97, baseType: !2868, size: 320, offset: 256)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 320, elements: !2869)
!2869 = !{!2870}
!2870 = !DISubrange(count: 10)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2732, file: !2733, line: 89, baseType: !2872, size: 320, offset: 3840)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 320, elements: !2869)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2569, file: !2570, line: 147, baseType: !2874, size: 64, offset: 1088)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2570, line: 25, size: 64, elements: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2875, file: !2570, line: 26, baseType: !844, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2875, file: !2570, line: 27, baseType: !197, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2875, file: !2570, line: 28, baseType: !2880, offset: 64)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, elements: !2881)
!2881 = !{!2882}
!2882 = !DISubrange(count: 0)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2569, file: !2570, line: 149, baseType: !2884, size: 128, offset: 1152)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2569, file: !2570, line: 149, size: 128, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2884, file: !2570, line: 150, baseType: !197, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2884, file: !2570, line: 151, baseType: !406, size: 128, align: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2251, file: !2252, line: 926, baseType: !2567, size: 64, offset: 8576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2251, file: !2252, line: 929, baseType: !2567, size: 64, offset: 8640)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2251, file: !2252, line: 933, baseType: !2595, size: 64, offset: 8704)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2251, file: !2252, line: 943, baseType: !2892, size: 128, offset: 8768)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !1786)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2251, file: !2252, line: 945, baseType: !2894, size: 64, offset: 8896)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2252, line: 49, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2251, file: !2252, line: 956, baseType: !2897, size: 64, offset: 8960)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2252, line: 45, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2251, file: !2252, line: 959, baseType: !2900, size: 64, offset: 9024)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2252, line: 959, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2251, file: !2252, line: 962, baseType: !2903, size: 64, offset: 9088)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2252, line: 66, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2251, file: !2252, line: 966, baseType: !2906, size: 64, offset: 9152)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2908, line: 31, size: 576, elements: !2909)
!2908 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2909 = !{!2910, !2911, !2914, !2917, !2920, !2921, !2924, !2927, !2928}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2907, file: !2908, line: 32, baseType: !844, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2907, file: !2908, line: 33, baseType: !2912, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2908, line: 9, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2907, file: !2908, line: 34, baseType: !2915, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2908, line: 10, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2907, file: !2908, line: 35, baseType: !2918, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2908, line: 8, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2907, file: !2908, line: 36, baseType: !2514, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2907, file: !2908, line: 37, baseType: !2922, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2597, line: 34, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2907, file: !2908, line: 38, baseType: !2925, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2908, line: 38, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2907, file: !2908, line: 39, baseType: !2925, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2907, file: !2908, line: 40, baseType: !2929, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2931, line: 856, size: 448, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2932 = !{!2933, !2934, !2935, !2936, !2937}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2930, file: !2931, line: 857, baseType: !1459, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2930, file: !2931, line: 858, baseType: !2763, size: 192, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2930, file: !2931, line: 859, baseType: !2731, size: 64, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2930, file: !2931, line: 860, baseType: !2860, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2930, file: !2931, line: 861, baseType: !2938, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2940, line: 16, flags: DIFlagFwdDecl)
!2940 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2251, file: !2252, line: 969, baseType: !2942, size: 64, offset: 9216)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2944, line: 82, size: 7296, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2981, !2990, !2991, !2993, !2994, !2995, !2998, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3028, !3029, !3036, !3037, !3038, !3039, !3040, !3041}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2943, file: !2944, line: 83, baseType: !1459, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2943, file: !2944, line: 84, baseType: !844, size: 32, offset: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2943, file: !2944, line: 85, baseType: !197, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2943, file: !2944, line: 86, baseType: !265, size: 128, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2943, file: !2944, line: 88, baseType: !1266, size: 128, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2943, file: !2944, line: 91, baseType: !2250, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2943, file: !2944, line: 94, baseType: !2953, size: 192, offset: 448)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2954, line: 30, size: 192, elements: !2955)
!2954 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2953, file: !2954, line: 31, baseType: !265, size: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2953, file: !2954, line: 32, baseType: !2958, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2959, line: 25, baseType: !2960)
!2959 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2959, line: 23, size: 64, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2960, file: !2959, line: 24, baseType: !2397, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2943, file: !2944, line: 97, baseType: !670, size: 64, offset: 640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2943, file: !2944, line: 100, baseType: !197, size: 32, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2943, file: !2944, line: 106, baseType: !197, size: 32, offset: 736)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2943, file: !2944, line: 107, baseType: !2250, size: 64, offset: 768)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2943, file: !2944, line: 110, baseType: !197, size: 32, offset: 832)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2943, file: !2944, line: 111, baseType: !7, size: 32, offset: 864)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2943, file: !2944, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2943, file: !2944, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2943, file: !2944, line: 128, baseType: !197, size: 32, offset: 928)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2943, file: !2944, line: 129, baseType: !265, size: 128, offset: 960)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2943, file: !2944, line: 132, baseType: !2321, size: 512, offset: 1088)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2943, file: !2944, line: 133, baseType: !2329, size: 64, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2943, file: !2944, line: 140, baseType: !2976, size: 256, offset: 1664)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2977, size: 256, elements: !1436)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2944, line: 38, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2977, file: !2944, line: 39, baseType: !458, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2977, file: !2944, line: 40, baseType: !458, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2943, file: !2944, line: 146, baseType: !2982, size: 192, offset: 1920)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2944, line: 66, size: 192, elements: !2983)
!2983 = !{!2984}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2982, file: !2944, line: 67, baseType: !2985, size: 192)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2944, line: 47, size: 192, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2985, file: !2944, line: 48, baseType: !777, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2985, file: !2944, line: 49, baseType: !777, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2985, file: !2944, line: 50, baseType: !777, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2943, file: !2944, line: 150, baseType: !2550, size: 640, offset: 2112)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2943, file: !2944, line: 153, baseType: !2992, size: 256, offset: 2752)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2497, size: 256, elements: !1344)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2943, file: !2944, line: 159, baseType: !2497, size: 64, offset: 3008)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2943, file: !2944, line: 162, baseType: !197, size: 32, offset: 3072)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2943, file: !2944, line: 164, baseType: !2996, size: 64, offset: 3136)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2944, line: 164, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2943, file: !2944, line: 175, baseType: !2999, size: 32, offset: 3200)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !429, line: 805, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 798, size: 32, elements: !3001)
!3001 = !{!3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3000, file: !429, line: 803, baseType: !428, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3000, file: !429, line: 804, baseType: !278, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2943, file: !2944, line: 176, baseType: !458, size: 64, offset: 3264)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2943, file: !2944, line: 176, baseType: !458, size: 64, offset: 3328)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2943, file: !2944, line: 176, baseType: !458, size: 64, offset: 3392)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2943, file: !2944, line: 176, baseType: !458, size: 64, offset: 3456)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2943, file: !2944, line: 177, baseType: !458, size: 64, offset: 3520)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2943, file: !2944, line: 178, baseType: !458, size: 64, offset: 3584)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2943, file: !2944, line: 179, baseType: !2538, size: 128, offset: 3648)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2943, file: !2944, line: 180, baseType: !194, size: 64, offset: 3776)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2943, file: !2944, line: 180, baseType: !194, size: 64, offset: 3840)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2943, file: !2944, line: 180, baseType: !194, size: 64, offset: 3904)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2943, file: !2944, line: 180, baseType: !194, size: 64, offset: 3968)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2943, file: !2944, line: 181, baseType: !194, size: 64, offset: 4032)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2943, file: !2944, line: 181, baseType: !194, size: 64, offset: 4096)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2943, file: !2944, line: 181, baseType: !194, size: 64, offset: 4160)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2943, file: !2944, line: 181, baseType: !194, size: 64, offset: 4224)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2943, file: !2944, line: 182, baseType: !194, size: 64, offset: 4288)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2943, file: !2944, line: 182, baseType: !194, size: 64, offset: 4352)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2943, file: !2944, line: 182, baseType: !194, size: 64, offset: 4416)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2943, file: !2944, line: 182, baseType: !194, size: 64, offset: 4480)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2943, file: !2944, line: 183, baseType: !194, size: 64, offset: 4544)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2943, file: !2944, line: 183, baseType: !194, size: 64, offset: 4608)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2943, file: !2944, line: 184, baseType: !3026, offset: 4672)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3027, line: 12, elements: !292)
!3027 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2943, file: !2944, line: 192, baseType: !460, size: 64, offset: 4672)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2943, file: !2944, line: 203, baseType: !3030, size: 2048, offset: 4736)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3031, size: 2048, elements: !1786)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3032, line: 43, size: 128, elements: !3033)
!3032 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3031, file: !3032, line: 44, baseType: !365, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3031, file: !3032, line: 45, baseType: !365, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2943, file: !2944, line: 220, baseType: !254, size: 8, offset: 6784)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2943, file: !2944, line: 221, baseType: !1020, size: 16, offset: 6800)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2943, file: !2944, line: 222, baseType: !1020, size: 16, offset: 6816)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2943, file: !2944, line: 224, baseType: !2017, size: 64, offset: 6848)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2943, file: !2944, line: 227, baseType: !771, size: 192, offset: 6912)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2943, file: !2944, line: 233, baseType: !771, size: 192, offset: 7104)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2251, file: !2252, line: 970, baseType: !3043, size: 64, offset: 9280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2944, line: 20, size: 16576, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3044, file: !2944, line: 21, baseType: !278)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3044, file: !2944, line: 22, baseType: !1459, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3044, file: !2944, line: 23, baseType: !1266, size: 128, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3044, file: !2944, line: 24, baseType: !3050, size: 16384, offset: 192)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3051, size: 16384, elements: !236)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2954, line: 49, size: 256, elements: !3052)
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3051, file: !2954, line: 50, baseType: !3054, size: 256)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2954, line: 35, size: 256, elements: !3055)
!3055 = !{!3056, !3063, !3064, !3068}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3054, file: !2954, line: 37, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3058, line: 19, baseType: !3059)
!3058 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3058, line: 18, baseType: !3061)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !197}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3054, file: !2954, line: 38, baseType: !194, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3054, file: !2954, line: 44, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3058, line: 22, baseType: !3066)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3058, line: 21, baseType: !214)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3054, file: !2954, line: 46, baseType: !2958, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2251, file: !2252, line: 971, baseType: !2958, size: 64, offset: 9344)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2251, file: !2252, line: 972, baseType: !2958, size: 64, offset: 9408)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2251, file: !2252, line: 974, baseType: !2958, size: 64, offset: 9472)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2251, file: !2252, line: 975, baseType: !2953, size: 192, offset: 9536)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2251, file: !2252, line: 976, baseType: !194, size: 64, offset: 9728)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2251, file: !2252, line: 977, baseType: !363, size: 64, offset: 9792)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2251, file: !2252, line: 978, baseType: !7, size: 32, offset: 9856)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2251, file: !2252, line: 980, baseType: !409, size: 64, offset: 9920)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2251, file: !2252, line: 989, baseType: !3078, size: 128, offset: 9984)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3079, line: 35, size: 128, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3078, file: !3079, line: 36, baseType: !197, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3078, file: !3079, line: 37, baseType: !844, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3078, file: !3079, line: 38, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3079, line: 23, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2251, file: !2252, line: 992, baseType: !458, size: 64, offset: 10112)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2251, file: !2252, line: 993, baseType: !458, size: 64, offset: 10176)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2251, file: !2252, line: 996, baseType: !278, offset: 10240)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2251, file: !2252, line: 999, baseType: !870, offset: 10240)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2251, file: !2252, line: 1001, baseType: !3091, size: 64, offset: 10240)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2252, line: 636, size: 64, elements: !3092)
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3091, file: !2252, line: 637, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2251, file: !2252, line: 1005, baseType: !849, size: 128, offset: 10304)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2251, file: !2252, line: 1007, baseType: !2250, size: 64, offset: 10432)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2251, file: !2252, line: 1009, baseType: !3098, size: 64, offset: 10496)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2252, line: 1009, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2251, file: !2252, line: 1043, baseType: !195, size: 64, offset: 10560)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2251, file: !2252, line: 1046, baseType: !3102, size: 64, offset: 10624)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2251, file: !2252, line: 1050, baseType: !3104, size: 64, offset: 10688)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 1236, size: 320, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3105, file: !19, line: 1237, baseType: !265, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3105, file: !19, line: 1238, baseType: !265, size: 128, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3105, file: !19, line: 1239, baseType: !358, size: 16, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3105, file: !19, line: 1240, baseType: !254, size: 8, offset: 272)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3105, file: !19, line: 1241, baseType: !254, size: 8, offset: 280)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2251, file: !2252, line: 1054, baseType: !3113, size: 64, offset: 10752)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1016, line: 131, size: 64, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3114, file: !1016, line: 132, baseType: !194, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2251, file: !2252, line: 1056, baseType: !1640, size: 64, offset: 10816)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2251, file: !2252, line: 1058, baseType: !1411, size: 64, offset: 10880)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2251, file: !2252, line: 1061, baseType: !3120, size: 64, offset: 10944)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2252, line: 43, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2251, file: !2252, line: 1064, baseType: !194, size: 64, offset: 11008)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2251, file: !2252, line: 1065, baseType: !3124, size: 64, offset: 11072)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2954, line: 14, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2954, line: 12, size: 384, elements: !3127)
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !2954, line: 13, baseType: !3129, size: 384)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3126, file: !2954, line: 13, size: 384, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3129, file: !2954, line: 13, baseType: !197, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3129, file: !2954, line: 13, baseType: !197, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3129, file: !2954, line: 13, baseType: !197, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3129, file: !2954, line: 13, baseType: !3135, size: 256, offset: 128)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3136, line: 32, size: 256, elements: !3137)
!3136 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138, !3143, !3156, !3162, !3171, !3191, !3196}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3135, file: !3136, line: 37, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 34, size: 64, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3139, file: !3136, line: 35, baseType: !2486, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3139, file: !3136, line: 36, baseType: !478, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3135, file: !3136, line: 45, baseType: !3144, size: 192)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 40, size: 192, elements: !3145)
!3145 = !{!3146, !3148, !3149, !3155}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3144, file: !3136, line: 41, baseType: !3147, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !350, line: 95, baseType: !197)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3144, file: !3136, line: 42, baseType: !197, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3144, file: !3136, line: 43, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3136, line: 11, baseType: !3151)
!3151 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3136, line: 8, size: 64, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3151, file: !3136, line: 9, baseType: !197, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3151, file: !3136, line: 10, baseType: !195, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3144, file: !3136, line: 44, baseType: !197, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3135, file: !3136, line: 52, baseType: !3157, size: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 48, size: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3157, file: !3136, line: 49, baseType: !2486, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3157, file: !3136, line: 50, baseType: !478, size: 32, offset: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3157, file: !3136, line: 51, baseType: !3150, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3135, file: !3136, line: 61, baseType: !3163, size: 256)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 55, size: 256, elements: !3164)
!3164 = !{!3165, !3166, !3167, !3168, !3170}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3163, file: !3136, line: 56, baseType: !2486, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3163, file: !3136, line: 57, baseType: !478, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3163, file: !3136, line: 58, baseType: !197, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3163, file: !3136, line: 59, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !350, line: 94, baseType: !351)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3163, file: !3136, line: 60, baseType: !3169, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3135, file: !3136, line: 95, baseType: !3172, size: 256)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 64, size: 256, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3172, file: !3136, line: 65, baseType: !195, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3136, line: 77, baseType: !3176, size: 192, offset: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3136, line: 77, size: 192, elements: !3177)
!3177 = !{!3178, !3179, !3186}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3176, file: !3136, line: 82, baseType: !1020, size: 16)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3176, file: !3136, line: 88, baseType: !3180, size: 192)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3176, file: !3136, line: 84, size: 192, elements: !3181)
!3181 = !{!3182, !3184, !3185}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3180, file: !3136, line: 85, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !2359)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3180, file: !3136, line: 86, baseType: !195, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3180, file: !3136, line: 87, baseType: !195, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3176, file: !3136, line: 93, baseType: !3187, size: 96)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3176, file: !3136, line: 90, size: 96, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3187, file: !3136, line: 91, baseType: !3183, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3187, file: !3136, line: 92, baseType: !206, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3135, file: !3136, line: 101, baseType: !3192, size: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 98, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3192, file: !3136, line: 99, baseType: !196, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3192, file: !3136, line: 100, baseType: !197, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3135, file: !3136, line: 108, baseType: !3197, size: 128)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 104, size: 128, elements: !3198)
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3197, file: !3136, line: 105, baseType: !195, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3197, file: !3136, line: 106, baseType: !197, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3197, file: !3136, line: 107, baseType: !7, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2251, file: !2252, line: 1067, baseType: !3026, offset: 11136)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2251, file: !2252, line: 1099, baseType: !3204, size: 64, offset: 11136)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2252, line: 56, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2251, file: !2252, line: 1103, baseType: !265, size: 128, offset: 11200)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2251, file: !2252, line: 1104, baseType: !3208, size: 64, offset: 11328)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2252, line: 46, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2251, file: !2252, line: 1105, baseType: !771, size: 192, offset: 11392)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2251, file: !2252, line: 1106, baseType: !7, size: 32, offset: 11584)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2251, file: !2252, line: 1109, baseType: !3213, size: 128, offset: 11648)
!3213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3214, size: 128, elements: !1436)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2252, line: 51, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2251, file: !2252, line: 1110, baseType: !771, size: 192, offset: 11776)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2251, file: !2252, line: 1111, baseType: !265, size: 128, offset: 11968)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2251, file: !2252, line: 1173, baseType: !3219, size: 64, offset: 12096)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3221, line: 62, size: 256, align: 256, elements: !3222)
!3221 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225, !3230}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3220, file: !3221, line: 75, baseType: !206, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3220, file: !3221, line: 90, baseType: !206, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3220, file: !3221, line: 124, baseType: !3226, size: 64, offset: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3220, file: !3221, line: 109, size: 64, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3226, file: !3221, line: 110, baseType: !459, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3226, file: !3221, line: 112, baseType: !459, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !3221, line: 144, baseType: !206, size: 32, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2251, file: !2252, line: 1174, baseType: !204, size: 32, offset: 12160)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2251, file: !2252, line: 1179, baseType: !194, size: 64, offset: 12224)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2251, file: !2252, line: 1182, baseType: !3234, size: 128, offset: 12288)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2194, line: 76, size: 128, elements: !3235)
!3235 = !{!3236, !3241, !3242}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3234, file: !2194, line: 85, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3238, line: 7, size: 64, elements: !3239)
!3238 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3237, file: !3238, line: 12, baseType: !2394, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3234, file: !2194, line: 88, baseType: !254, size: 8, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3234, file: !2194, line: 95, baseType: !254, size: 8, offset: 72)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2252, line: 1184, baseType: !3244, size: 128, offset: 12416)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !2252, line: 1184, size: 128, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3244, file: !2252, line: 1185, baseType: !1459, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3244, file: !2252, line: 1186, baseType: !406, size: 128, align: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2251, file: !2252, line: 1190, baseType: !3249, size: 64, offset: 12544)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2252, line: 53, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2251, file: !2252, line: 1192, baseType: !3252, size: 128, offset: 12608)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2194, line: 64, size: 128, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3252, file: !2194, line: 65, baseType: !818, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3252, file: !2194, line: 67, baseType: !206, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3252, file: !2194, line: 68, baseType: !206, size: 32, offset: 96)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2251, file: !2252, line: 1206, baseType: !197, size: 32, offset: 12736)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2251, file: !2252, line: 1207, baseType: !197, size: 32, offset: 12768)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2251, file: !2252, line: 1209, baseType: !194, size: 64, offset: 12800)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2251, file: !2252, line: 1219, baseType: !458, size: 64, offset: 12864)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2251, file: !2252, line: 1220, baseType: !458, size: 64, offset: 12928)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2251, file: !2252, line: 1317, baseType: !197, size: 32, offset: 12992)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2251, file: !2252, line: 1319, baseType: !2250, size: 64, offset: 13056)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2251, file: !2252, line: 1322, baseType: !3265, size: 64, offset: 13120)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3267, line: 56, size: 512, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3277}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3266, file: !3267, line: 57, baseType: !3265, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3266, file: !3267, line: 58, baseType: !195, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3266, file: !3267, line: 59, baseType: !194, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3266, file: !3267, line: 60, baseType: !194, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3266, file: !3267, line: 61, baseType: !917, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3266, file: !3267, line: 62, baseType: !7, size: 32, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3266, file: !3267, line: 63, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 153, baseType: !458)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3266, file: !3267, line: 64, baseType: !3278, size: 64, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2251, file: !2252, line: 1326, baseType: !1459, size: 32, offset: 13184)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2251, file: !2252, line: 1342, baseType: !195, size: 64, offset: 13248)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2251, file: !2252, line: 1343, baseType: !459, size: 64, offset: 13312)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2251, file: !2252, line: 1344, baseType: !458, size: 64, offset: 13376)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2251, file: !2252, line: 1345, baseType: !459, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2251, file: !2252, line: 1346, baseType: !459, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2251, file: !2252, line: 1347, baseType: !459, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2251, file: !2252, line: 1348, baseType: !406, size: 128, align: 64, offset: 13504)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2251, file: !2252, line: 1358, baseType: !3289, size: 34816, offset: 13824)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3290, line: 485, size: 34816, elements: !3291)
!3290 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3291 = !{!3292, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3321, !3322, !3323, !3324, !3325, !3326, !3329, !3330, !3331}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3289, file: !3290, line: 487, baseType: !3293, size: 192)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 192, elements: !320)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3295, line: 16, size: 64, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3294, file: !3295, line: 17, baseType: !956, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3294, file: !3295, line: 18, baseType: !956, size: 16, offset: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3294, file: !3295, line: 19, baseType: !956, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !3295, line: 19, baseType: !956, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3294, file: !3295, line: 19, baseType: !956, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3294, file: !3295, line: 19, baseType: !956, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3294, file: !3295, line: 19, baseType: !956, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3294, file: !3295, line: 20, baseType: !956, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3294, file: !3295, line: 20, baseType: !956, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3294, file: !3295, line: 20, baseType: !956, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3294, file: !3295, line: 20, baseType: !956, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3294, file: !3295, line: 20, baseType: !956, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3294, file: !3295, line: 20, baseType: !956, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3289, file: !3290, line: 491, baseType: !194, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3289, file: !3290, line: 495, baseType: !358, size: 16, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3289, file: !3290, line: 496, baseType: !358, size: 16, offset: 272)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3289, file: !3290, line: 497, baseType: !358, size: 16, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3289, file: !3290, line: 498, baseType: !358, size: 16, offset: 304)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3289, file: !3290, line: 502, baseType: !194, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3289, file: !3290, line: 503, baseType: !194, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3289, file: !3290, line: 514, baseType: !3318, size: 256, offset: 448)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 256, elements: !1344)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3290, line: 483, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3289, file: !3290, line: 516, baseType: !194, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3289, file: !3290, line: 518, baseType: !194, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3289, file: !3290, line: 520, baseType: !194, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3289, file: !3290, line: 521, baseType: !194, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3289, file: !3290, line: 522, baseType: !194, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3289, file: !3290, line: 528, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3290, line: 10, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3289, file: !3290, line: 535, baseType: !194, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3289, file: !3290, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3289, file: !3290, line: 540, baseType: !3332, size: 33280, offset: 1536)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3333, line: 317, size: 33280, elements: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3334 = !{!3335, !3336, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3332, file: !3333, line: 330, baseType: !7, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3332, file: !3333, line: 337, baseType: !194, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3332, file: !3333, line: 348, baseType: !3338, size: 32768, offset: 512)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3333, line: 304, size: 32768, elements: !3339)
!3339 = !{!3340, !3355, !3392, !3442, !3455}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3338, file: !3333, line: 305, baseType: !3341, size: 896)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3333, line: 12, size: 896, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3354}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3341, file: !3333, line: 13, baseType: !204, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3341, file: !3333, line: 14, baseType: !204, size: 32, offset: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3341, file: !3333, line: 15, baseType: !204, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3341, file: !3333, line: 16, baseType: !204, size: 32, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3341, file: !3333, line: 17, baseType: !204, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3341, file: !3333, line: 18, baseType: !204, size: 32, offset: 160)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3341, file: !3333, line: 19, baseType: !204, size: 32, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3341, file: !3333, line: 22, baseType: !3351, size: 640, offset: 224)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 640, elements: !3352)
!3352 = !{!3353}
!3353 = !DISubrange(count: 20)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3341, file: !3333, line: 25, baseType: !204, size: 32, offset: 864)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3338, file: !3333, line: 306, baseType: !3356, size: 4096, align: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3333, line: 34, size: 4096, align: 128, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3377, !3378, !3379, !3381, !3383, !3387}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3356, file: !3333, line: 35, baseType: !956, size: 16)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3356, file: !3333, line: 36, baseType: !956, size: 16, offset: 16)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3356, file: !3333, line: 37, baseType: !956, size: 16, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3356, file: !3333, line: 38, baseType: !956, size: 16, offset: 48)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !3333, line: 39, baseType: !3363, size: 128, offset: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !3333, line: 39, size: 128, elements: !3364)
!3364 = !{!3365, !3370}
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3363, file: !3333, line: 40, baseType: !3366, size: 128)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3333, line: 40, size: 128, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3366, file: !3333, line: 41, baseType: !458, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3366, file: !3333, line: 42, baseType: !458, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3363, file: !3333, line: 44, baseType: !3371, size: 128)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !3333, line: 44, size: 128, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3371, file: !3333, line: 45, baseType: !204, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3371, file: !3333, line: 46, baseType: !204, size: 32, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3371, file: !3333, line: 47, baseType: !204, size: 32, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3371, file: !3333, line: 48, baseType: !204, size: 32, offset: 96)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3356, file: !3333, line: 51, baseType: !204, size: 32, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3356, file: !3333, line: 52, baseType: !204, size: 32, offset: 224)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3356, file: !3333, line: 55, baseType: !3380, size: 1024, offset: 256)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !1155)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3356, file: !3333, line: 58, baseType: !3382, size: 2048, offset: 1280)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !236)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3356, file: !3333, line: 60, baseType: !3384, size: 384, offset: 3328)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !3385)
!3385 = !{!3386}
!3386 = !DISubrange(count: 12)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !3333, line: 62, baseType: !3388, size: 384, offset: 3712)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !3333, line: 62, size: 384, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3388, file: !3333, line: 63, baseType: !3384, size: 384)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3388, file: !3333, line: 64, baseType: !3384, size: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3338, file: !3333, line: 307, baseType: !3393, size: 1088)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3333, line: 79, size: 1088, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3441}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3393, file: !3333, line: 80, baseType: !204, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3393, file: !3333, line: 81, baseType: !204, size: 32, offset: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3393, file: !3333, line: 82, baseType: !204, size: 32, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3393, file: !3333, line: 83, baseType: !204, size: 32, offset: 96)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3393, file: !3333, line: 84, baseType: !204, size: 32, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3393, file: !3333, line: 85, baseType: !204, size: 32, offset: 160)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3393, file: !3333, line: 86, baseType: !204, size: 32, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3393, file: !3333, line: 88, baseType: !3351, size: 640, offset: 224)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3393, file: !3333, line: 89, baseType: !1077, size: 8, offset: 864)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3393, file: !3333, line: 90, baseType: !1077, size: 8, offset: 872)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3393, file: !3333, line: 91, baseType: !1077, size: 8, offset: 880)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3393, file: !3333, line: 92, baseType: !1077, size: 8, offset: 888)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3393, file: !3333, line: 93, baseType: !1077, size: 8, offset: 896)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3393, file: !3333, line: 94, baseType: !1077, size: 8, offset: 904)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3393, file: !3333, line: 95, baseType: !3410, size: 64, offset: 960)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3412, line: 11, size: 128, elements: !3413)
!3412 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3411, file: !3412, line: 12, baseType: !196, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3411, file: !3412, line: 13, baseType: !3416, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3418, line: 56, size: 1344, elements: !3419)
!3418 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3417, file: !3418, line: 61, baseType: !194, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3417, file: !3418, line: 62, baseType: !194, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3417, file: !3418, line: 63, baseType: !194, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3417, file: !3418, line: 64, baseType: !194, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3417, file: !3418, line: 65, baseType: !194, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3417, file: !3418, line: 66, baseType: !194, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3417, file: !3418, line: 68, baseType: !194, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3417, file: !3418, line: 69, baseType: !194, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3417, file: !3418, line: 70, baseType: !194, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3417, file: !3418, line: 71, baseType: !194, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3417, file: !3418, line: 72, baseType: !194, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3417, file: !3418, line: 73, baseType: !194, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3417, file: !3418, line: 74, baseType: !194, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3417, file: !3418, line: 75, baseType: !194, size: 64, offset: 832)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3417, file: !3418, line: 76, baseType: !194, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3417, file: !3418, line: 81, baseType: !194, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3417, file: !3418, line: 83, baseType: !194, size: 64, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3417, file: !3418, line: 84, baseType: !194, size: 64, offset: 1088)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3417, file: !3418, line: 85, baseType: !194, size: 64, offset: 1152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3417, file: !3418, line: 86, baseType: !194, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3417, file: !3418, line: 87, baseType: !194, size: 64, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3393, file: !3333, line: 96, baseType: !204, size: 32, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3338, file: !3333, line: 308, baseType: !3443, size: 4608, align: 512)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3333, line: 289, size: 4608, align: 512, elements: !3444)
!3444 = !{!3445, !3446, !3453}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3443, file: !3333, line: 290, baseType: !3356, size: 4096, align: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3443, file: !3333, line: 291, baseType: !3447, size: 512, offset: 4096)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3333, line: 268, size: 512, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3447, file: !3333, line: 269, baseType: !458, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3447, file: !3333, line: 270, baseType: !458, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3447, file: !3333, line: 271, baseType: !3452, size: 384, offset: 128)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !2643)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3443, file: !3333, line: 292, baseType: !3454, offset: 4608)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, elements: !2881)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3338, file: !3333, line: 309, baseType: !3456, size: 32768)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 32768, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 4096)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2247, file: !820, line: 378, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2243, file: !820, line: 384, baseType: !2522, size: 192, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2021, file: !820, line: 500, baseType: !278, offset: 6656)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2021, file: !820, line: 501, baseType: !3464, size: 64, offset: 6656)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !820, line: 387, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2021, file: !820, line: 516, baseType: !2731, size: 64, offset: 6720)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2021, file: !820, line: 519, baseType: !393, size: 64, offset: 6784)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2021, file: !820, line: 521, baseType: !3469, size: 64, offset: 6848)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !820, line: 521, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2021, file: !820, line: 545, baseType: !844, size: 32, offset: 6912)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2021, file: !820, line: 548, baseType: !254, size: 8, offset: 6944)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2021, file: !820, line: 550, baseType: !3474, offset: 6952)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3475, line: 142, elements: !292)
!3475 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2021, file: !820, line: 554, baseType: !1130, size: 256, offset: 6976)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2021, file: !820, line: 557, baseType: !204, size: 32, offset: 7232)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2018, file: !820, line: 565, baseType: !3479, offset: 7296)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !1168)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2014, file: !820, line: 151, baseType: !844, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2006, file: !820, line: 156, baseType: !278, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !820, line: 159, baseType: !3483, size: 128)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !820, line: 159, size: 128, elements: !3484)
!3484 = !{!3485, !3529}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3483, file: !820, line: 161, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 110, size: 1152, elements: !3488)
!3488 = !{!3489, !3499, !3500, !3501, !3502, !3503, !3504, !3516, !3517, !3518}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3487, file: !73, line: 111, baseType: !3490, size: 384)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 19, size: 384, elements: !3491)
!3491 = !{!3492, !3494, !3495, !3496, !3497, !3498}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3490, file: !73, line: 20, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3490, file: !73, line: 21, baseType: !3493, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3490, file: !73, line: 22, baseType: !3493, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3490, file: !73, line: 23, baseType: !194, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3490, file: !73, line: 24, baseType: !194, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3490, file: !73, line: 25, baseType: !194, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3487, file: !73, line: 112, baseType: !1105, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3487, file: !73, line: 113, baseType: !1091, size: 128, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3487, file: !73, line: 114, baseType: !2522, size: 192, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3487, file: !73, line: 115, baseType: !72, size: 32, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !73, line: 116, baseType: !7, size: 32, offset: 800)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3487, file: !73, line: 117, baseType: !3505, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 67, size: 256, elements: !3508)
!3508 = !{!3509, !3510, !3514, !3515}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3507, file: !73, line: 73, baseType: !937, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3507, file: !73, line: 78, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !3486}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3507, file: !73, line: 83, baseType: !3511, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3507, file: !73, line: 89, baseType: !2070, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3487, file: !73, line: 118, baseType: !195, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3487, file: !73, line: 119, baseType: !197, size: 32, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !73, line: 120, baseType: !3519, size: 128, offset: 1024)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !73, line: 120, size: 128, elements: !3520)
!3520 = !{!3521, !3527}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3519, file: !73, line: 121, baseType: !3522, size: 128)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3523, line: 6, size: 128, elements: !3524)
!3523 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3522, file: !3523, line: 7, baseType: !458, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3522, file: !3523, line: 8, baseType: !458, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3519, file: !73, line: 122, baseType: !3528)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3522, elements: !2881)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3483, file: !820, line: 162, baseType: !195, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !824, file: !820, line: 176, baseType: !406, size: 128, align: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !820, line: 179, baseType: !3532, size: 32, offset: 384)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !819, file: !820, line: 179, size: 32, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3532, file: !820, line: 184, baseType: !844, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3532, file: !820, line: 192, baseType: !7, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3532, file: !820, line: 194, baseType: !7, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3532, file: !820, line: 195, baseType: !197, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !819, file: !820, line: 199, baseType: !844, size: 32, offset: 416)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !692, file: !86, line: 1964, baseType: !3540, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!196, !634, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3545, line: 12, size: 256, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3546 = !{!3547, !3548, !3549, !3550, !3551}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3544, file: !3545, line: 13, baseType: !192, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3544, file: !3545, line: 16, baseType: !197, size: 32, offset: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3544, file: !3545, line: 23, baseType: !194, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3544, file: !3545, line: 30, baseType: !194, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3544, file: !3545, line: 33, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !820, line: 27, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !692, file: !86, line: 1966, baseType: !3540, size: 64, offset: 1408)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !635, file: !86, line: 1424, baseType: !3556, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 322, size: 704, elements: !3559)
!3559 = !{!3560, !3606, !3610, !3614, !3615, !3616, !3617, !3618, !3623, !3628, !3632}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3558, file: !80, line: 323, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!197, !3564}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 294, size: 1600, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3591, !3592, !3593}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3565, file: !80, line: 295, baseType: !674, size: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3565, file: !80, line: 296, baseType: !265, size: 128, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3565, file: !80, line: 297, baseType: !265, size: 128, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3565, file: !80, line: 298, baseType: !265, size: 128, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3565, file: !80, line: 299, baseType: !771, size: 192, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3565, file: !80, line: 300, baseType: !278, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3565, file: !80, line: 301, baseType: !844, size: 32, offset: 704)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3565, file: !80, line: 302, baseType: !634, size: 64, offset: 768)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3565, file: !80, line: 303, baseType: !3576, size: 64, offset: 832)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !3577)
!3577 = !{!3578, !3590}
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !80, line: 69, baseType: !3579, size: 32)
!3579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3576, file: !80, line: 69, size: 32, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3579, file: !80, line: 70, baseType: !472, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3579, file: !80, line: 71, baseType: !480, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3579, file: !80, line: 72, baseType: !3584, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3585, line: 24, baseType: !3586)
!3585 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3585, line: 22, size: 32, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3586, file: !3585, line: 23, baseType: !3589, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3585, line: 20, baseType: !478)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3576, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3565, file: !80, line: 304, baseType: !566, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3565, file: !80, line: 305, baseType: !194, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3565, file: !80, line: 306, baseType: !3594, size: 576, offset: 1024)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !3595)
!3595 = !{!3596, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3594, file: !80, line: 206, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !568)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3594, file: !80, line: 207, baseType: !3597, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3594, file: !80, line: 208, baseType: !3597, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3594, file: !80, line: 209, baseType: !3597, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3594, file: !80, line: 210, baseType: !3597, size: 64, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3594, file: !80, line: 211, baseType: !3597, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3594, file: !80, line: 212, baseType: !3597, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3594, file: !80, line: 213, baseType: !574, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3594, file: !80, line: 214, baseType: !574, size: 64, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3558, file: !80, line: 324, baseType: !3607, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!3564, !634, !197}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3558, file: !80, line: 325, baseType: !3611, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3564}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3558, file: !80, line: 326, baseType: !3561, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3558, file: !80, line: 327, baseType: !3561, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3558, file: !80, line: 328, baseType: !3561, size: 64, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3558, file: !80, line: 329, baseType: !734, size: 64, offset: 384)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3558, file: !80, line: 332, baseType: !3619, size: 64, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!3622, !466}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3558, file: !80, line: 333, baseType: !3624, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!197, !466, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3558, file: !80, line: 335, baseType: !3629, size: 64, offset: 576)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!197, !466, !3622}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3558, file: !80, line: 337, baseType: !3633, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!197, !634, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !635, file: !86, line: 1425, baseType: !3638, size: 64, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 428, size: 704, elements: !3641)
!3641 = !{!3642, !3646, !3647, !3651, !3652, !3653, !3668, !3691, !3695, !3696, !3719}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3640, file: !80, line: 429, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!197, !634, !197, !197, !584}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3640, file: !80, line: 430, baseType: !734, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3640, file: !80, line: 431, baseType: !3648, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!197, !634, !7}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3640, file: !80, line: 432, baseType: !3648, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3640, file: !80, line: 433, baseType: !734, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3640, file: !80, line: 434, baseType: !3654, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!197, !634, !197, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 415, size: 256, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3658, file: !80, line: 416, baseType: !197, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3658, file: !80, line: 417, baseType: !7, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3658, file: !80, line: 418, baseType: !7, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3658, file: !80, line: 420, baseType: !7, size: 32, offset: 96)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3658, file: !80, line: 421, baseType: !7, size: 32, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3658, file: !80, line: 422, baseType: !7, size: 32, offset: 160)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3658, file: !80, line: 423, baseType: !7, size: 32, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3658, file: !80, line: 424, baseType: !7, size: 32, offset: 224)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3640, file: !80, line: 435, baseType: !3669, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!197, !634, !3576, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 343, size: 960, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3673, file: !80, line: 344, baseType: !197, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3673, file: !80, line: 345, baseType: !458, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3673, file: !80, line: 346, baseType: !458, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3673, file: !80, line: 347, baseType: !458, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3673, file: !80, line: 348, baseType: !458, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3673, file: !80, line: 349, baseType: !458, size: 64, offset: 320)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3673, file: !80, line: 350, baseType: !458, size: 64, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3673, file: !80, line: 351, baseType: !781, size: 64, offset: 448)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3673, file: !80, line: 353, baseType: !781, size: 64, offset: 512)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3673, file: !80, line: 354, baseType: !197, size: 32, offset: 576)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3673, file: !80, line: 355, baseType: !197, size: 32, offset: 608)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3673, file: !80, line: 356, baseType: !458, size: 64, offset: 640)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3673, file: !80, line: 357, baseType: !458, size: 64, offset: 704)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3673, file: !80, line: 358, baseType: !458, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3673, file: !80, line: 359, baseType: !781, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3673, file: !80, line: 360, baseType: !197, size: 32, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3640, file: !80, line: 436, baseType: !3692, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!197, !634, !3636, !3672}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3640, file: !80, line: 438, baseType: !3669, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3640, file: !80, line: 439, baseType: !3697, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!197, !634, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 409, size: 1408, elements: !3702)
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3701, file: !80, line: 410, baseType: !7, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3701, file: !80, line: 411, baseType: !3705, size: 1344, offset: 64)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3706, size: 1344, elements: !320)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 395, size: 448, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3718}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3706, file: !80, line: 396, baseType: !7, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3706, file: !80, line: 397, baseType: !7, size: 32, offset: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3706, file: !80, line: 399, baseType: !7, size: 32, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3706, file: !80, line: 400, baseType: !7, size: 32, offset: 96)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3706, file: !80, line: 401, baseType: !7, size: 32, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3706, file: !80, line: 402, baseType: !7, size: 32, offset: 160)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3706, file: !80, line: 403, baseType: !7, size: 32, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3706, file: !80, line: 404, baseType: !460, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3706, file: !80, line: 405, baseType: !3717, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 126, baseType: !458)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3706, file: !80, line: 406, baseType: !3717, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3640, file: !80, line: 440, baseType: !3648, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !635, file: !86, line: 1426, baseType: !3721, size: 64, offset: 576)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3723)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !86, line: 49, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !635, file: !86, line: 1427, baseType: !194, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !635, file: !86, line: 1428, baseType: !194, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !635, file: !86, line: 1429, baseType: !194, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !635, file: !86, line: 1430, baseType: !423, size: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !635, file: !86, line: 1431, baseType: !864, size: 256, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !635, file: !86, line: 1432, baseType: !197, size: 32, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !635, file: !86, line: 1433, baseType: !844, size: 32, offset: 1184)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !635, file: !86, line: 1437, baseType: !3732, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3735)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !86, line: 1437, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !635, file: !86, line: 1449, baseType: !3737, size: 64, offset: 1280)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !439, line: 34, size: 64, elements: !3738)
!3738 = !{!3739}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3737, file: !439, line: 35, baseType: !442, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !635, file: !86, line: 1450, baseType: !265, size: 128, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !635, file: !86, line: 1451, baseType: !1061, size: 64, offset: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !635, file: !86, line: 1452, baseType: !1640, size: 64, offset: 1536)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !635, file: !86, line: 1453, baseType: !3744, size: 64, offset: 1600)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !86, line: 1453, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !635, file: !86, line: 1454, baseType: !674, size: 128, offset: 1664)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !635, file: !86, line: 1455, baseType: !7, size: 32, offset: 1792)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !635, file: !86, line: 1456, baseType: !3749, size: 2432, offset: 1856)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 518, size: 2432, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3755, !3787}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3749, file: !80, line: 519, baseType: !7, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3749, file: !80, line: 520, baseType: !864, size: 256, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3749, file: !80, line: 521, baseType: !3754, size: 192, offset: 320)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 192, elements: !320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3749, file: !80, line: 522, baseType: !3756, size: 1728, offset: 512)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3757, size: 1728, elements: !320)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !3758)
!3758 = !{!3759, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3757, file: !80, line: 223, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 443, size: 256, elements: !3762)
!3762 = !{!3763, !3764, !3777, !3778}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3761, file: !80, line: 444, baseType: !197, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3761, file: !80, line: 445, baseType: !3765, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3767)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 310, size: 512, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3767, file: !80, line: 311, baseType: !734, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3767, file: !80, line: 312, baseType: !734, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3767, file: !80, line: 313, baseType: !734, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3767, file: !80, line: 314, baseType: !734, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3767, file: !80, line: 315, baseType: !3561, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3767, file: !80, line: 316, baseType: !3561, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3767, file: !80, line: 317, baseType: !3561, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3767, file: !80, line: 318, baseType: !3633, size: 64, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3761, file: !80, line: 446, baseType: !189, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3761, file: !80, line: 447, baseType: !3760, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3757, file: !80, line: 224, baseType: !197, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3757, file: !80, line: 226, baseType: !265, size: 128, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3757, file: !80, line: 227, baseType: !194, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3757, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3757, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3757, file: !80, line: 230, baseType: !3597, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3757, file: !80, line: 231, baseType: !3597, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3757, file: !80, line: 232, baseType: !195, size: 64, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3749, file: !80, line: 523, baseType: !3788, size: 192, offset: 2240)
!3788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3765, size: 192, elements: !320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !635, file: !86, line: 1458, baseType: !3790, size: 2112, offset: 4288)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !86, line: 1410, size: 2112, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3790, file: !86, line: 1411, baseType: !197, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3790, file: !86, line: 1412, baseType: !1266, size: 128, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3790, file: !86, line: 1413, baseType: !3795, size: 1920, offset: 192)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3796, size: 1920, elements: !320)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3797, line: 12, size: 640, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3798 = !{!3799, !3807, !3808, !3813, !3814}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3796, file: !3797, line: 13, baseType: !3800, size: 320)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3801, line: 17, size: 320, elements: !3802)
!3801 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3800, file: !3801, line: 18, baseType: !197, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3800, file: !3801, line: 19, baseType: !197, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3800, file: !3801, line: 20, baseType: !1266, size: 128, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3800, file: !3801, line: 22, baseType: !406, size: 128, align: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3796, file: !3797, line: 14, baseType: !1052, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3796, file: !3797, line: 15, baseType: !3809, size: 64, offset: 384)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3810, line: 16, size: 64, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3811 = !{!3812}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3809, file: !3810, line: 17, baseType: !2250, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3796, file: !3797, line: 16, baseType: !1266, size: 128, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3796, file: !3797, line: 17, baseType: !844, size: 32, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !635, file: !86, line: 1465, baseType: !195, size: 64, offset: 6400)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !635, file: !86, line: 1468, baseType: !204, size: 32, offset: 6464)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !635, file: !86, line: 1470, baseType: !574, size: 64, offset: 6528)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !635, file: !86, line: 1471, baseType: !574, size: 64, offset: 6592)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !635, file: !86, line: 1473, baseType: !206, size: 32, offset: 6656)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !635, file: !86, line: 1474, baseType: !3821, size: 64, offset: 6720)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !86, line: 603, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !635, file: !86, line: 1477, baseType: !1154, size: 256, offset: 6784)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !635, file: !86, line: 1478, baseType: !3825, size: 128, offset: 7040)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3826, line: 18, baseType: !3827)
!3826 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3826, line: 16, size: 128, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3827, file: !3826, line: 17, baseType: !3830, size: 128)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 128, elements: !1786)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !635, file: !86, line: 1480, baseType: !7, size: 32, offset: 7168)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !635, file: !86, line: 1481, baseType: !1287, size: 32, offset: 7200)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !635, file: !86, line: 1487, baseType: !771, size: 192, offset: 7232)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !635, file: !86, line: 1493, baseType: !251, size: 64, offset: 7424)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !635, file: !86, line: 1495, baseType: !3836, size: 64, offset: 7488)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !421, line: 135, size: 1024, align: 512, elements: !3839)
!3839 = !{!3840, !3844, !3845, !3852, !3858, !3862, !3866, !3870, !3871, !3875, !3879, !3884, !3888}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3838, file: !421, line: 136, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!197, !423, !7}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3838, file: !421, line: 137, baseType: !3841, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3838, file: !421, line: 138, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!197, !3849, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3838, file: !421, line: 139, baseType: !3853, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!197, !3849, !7, !251, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3838, file: !421, line: 141, baseType: !3859, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!197, !3849}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3838, file: !421, line: 142, baseType: !3863, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!197, !423}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3838, file: !421, line: 143, baseType: !3867, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !423}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3838, file: !421, line: 144, baseType: !3867, size: 64, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3838, file: !421, line: 145, baseType: !3872, size: 64, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !423, !466}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3838, file: !421, line: 146, baseType: !3876, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!319, !423, !319, !197}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3838, file: !421, line: 147, baseType: !3880, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!419, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3838, file: !421, line: 148, baseType: !3885, size: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!197, !584, !254}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3838, file: !421, line: 149, baseType: !3889, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!423, !423, !3892}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !635, file: !86, line: 1500, baseType: !197, size: 32, offset: 7552)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !635, file: !86, line: 1502, baseType: !3896, size: 448, offset: 7616)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3545, line: 60, size: 448, elements: !3897)
!3897 = !{!3898, !3903, !3904, !3905, !3906, !3907, !3908}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3896, file: !3545, line: 61, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!194, !3902, !3543}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3896, file: !3545, line: 63, baseType: !3899, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3896, file: !3545, line: 66, baseType: !196, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3896, file: !3545, line: 67, baseType: !197, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3896, file: !3545, line: 68, baseType: !7, size: 32, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3896, file: !3545, line: 71, baseType: !265, size: 128, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3896, file: !3545, line: 77, baseType: !3909, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !635, file: !86, line: 1505, baseType: !775, size: 64, offset: 8064)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !635, file: !86, line: 1508, baseType: !775, size: 64, offset: 8128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !635, file: !86, line: 1511, baseType: !197, size: 32, offset: 8192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !635, file: !86, line: 1514, baseType: !1953, size: 32, offset: 8224)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !635, file: !86, line: 1517, baseType: !1142, size: 64, offset: 8256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !635, file: !86, line: 1518, baseType: !670, size: 64, offset: 8320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !635, file: !86, line: 1525, baseType: !2731, size: 64, offset: 8384)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !635, file: !86, line: 1532, baseType: !3918, size: 64, offset: 8448)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3919, line: 52, size: 64, elements: !3920)
!3919 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3920 = !{!3921}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3918, file: !3919, line: 53, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3919, line: 40, size: 256, elements: !3924)
!3924 = !{!3925, !3926, !3931}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3923, file: !3919, line: 42, baseType: !278)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3923, file: !3919, line: 44, baseType: !3927, size: 192)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3919, line: 28, size: 192, elements: !3928)
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3927, file: !3919, line: 29, baseType: !265, size: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3927, file: !3919, line: 31, baseType: !196, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3923, file: !3919, line: 49, baseType: !196, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !635, file: !86, line: 1533, baseType: !3918, size: 64, offset: 8512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !635, file: !86, line: 1534, baseType: !406, size: 128, align: 64, offset: 8576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !635, file: !86, line: 1535, baseType: !1130, size: 256, offset: 8704)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !635, file: !86, line: 1537, baseType: !771, size: 192, offset: 8960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !635, file: !86, line: 1542, baseType: !197, size: 32, offset: 9152)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !635, file: !86, line: 1545, baseType: !278, offset: 9184)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !635, file: !86, line: 1546, baseType: !265, size: 128, offset: 9216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !635, file: !86, line: 1548, baseType: !278, offset: 9344)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !635, file: !86, line: 1549, baseType: !265, size: 128, offset: 9344)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !467, file: !86, line: 624, baseType: !831, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !467, file: !86, line: 631, baseType: !194, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !86, line: 639, baseType: !3944, size: 32, offset: 384)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !86, line: 639, size: 32, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3944, file: !86, line: 640, baseType: !1610, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3944, file: !86, line: 641, baseType: !7, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !467, file: !86, line: 643, baseType: !548, size: 32, offset: 416)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !467, file: !86, line: 644, baseType: !566, size: 64, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !467, file: !86, line: 645, baseType: !570, size: 128, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !467, file: !86, line: 646, baseType: !570, size: 128, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !467, file: !86, line: 647, baseType: !570, size: 128, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !467, file: !86, line: 648, baseType: !278, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !467, file: !86, line: 649, baseType: !358, size: 16, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !467, file: !86, line: 650, baseType: !1077, size: 8, offset: 912)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !467, file: !86, line: 651, baseType: !1077, size: 8, offset: 920)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !467, file: !86, line: 652, baseType: !3717, size: 64, offset: 960)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !467, file: !86, line: 659, baseType: !194, size: 64, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !467, file: !86, line: 660, baseType: !864, size: 256, offset: 1088)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !467, file: !86, line: 662, baseType: !194, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !467, file: !86, line: 663, baseType: !194, size: 64, offset: 1408)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !467, file: !86, line: 665, baseType: !674, size: 128, offset: 1472)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !467, file: !86, line: 666, baseType: !265, size: 128, offset: 1600)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !467, file: !86, line: 675, baseType: !265, size: 128, offset: 1728)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !467, file: !86, line: 676, baseType: !265, size: 128, offset: 1856)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !467, file: !86, line: 677, baseType: !265, size: 128, offset: 1984)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !86, line: 678, baseType: !3968, size: 128, offset: 2112)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !86, line: 678, size: 128, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3968, file: !86, line: 679, baseType: !670, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3968, file: !86, line: 680, baseType: !406, size: 128, align: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !467, file: !86, line: 682, baseType: !777, size: 64, offset: 2240)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !467, file: !86, line: 683, baseType: !777, size: 64, offset: 2304)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !467, file: !86, line: 684, baseType: !844, size: 32, offset: 2368)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !467, file: !86, line: 685, baseType: !844, size: 32, offset: 2400)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !467, file: !86, line: 686, baseType: !844, size: 32, offset: 2432)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !467, file: !86, line: 688, baseType: !844, size: 32, offset: 2464)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !86, line: 690, baseType: !3979, size: 64, offset: 2496)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !86, line: 690, size: 64, elements: !3980)
!3980 = !{!3981, !4203}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3979, file: !86, line: 691, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !86, line: 1822, size: 2048, elements: !3985)
!3985 = !{!3986, !3987, !3991, !3995, !3999, !4000, !4001, !4005, !4018, !4019, !4027, !4031, !4032, !4036, !4037, !4041, !4046, !4047, !4051, !4055, !4163, !4167, !4168, !4172, !4173, !4177, !4181, !4186, !4190, !4194, !4198, !4202}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3984, file: !86, line: 1823, baseType: !189, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3984, file: !86, line: 1824, baseType: !3988, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!566, !393, !566, !197}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3984, file: !86, line: 1825, baseType: !3992, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!348, !393, !319, !363, !793}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3984, file: !86, line: 1826, baseType: !3996, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!348, !393, !251, !363, !793}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3984, file: !86, line: 1827, baseType: !941, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3984, file: !86, line: 1828, baseType: !941, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3984, file: !86, line: 1829, baseType: !4002, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!197, !944, !254}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3984, file: !86, line: 1830, baseType: !4006, size: 64, offset: 448)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!197, !393, !4009}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !86, line: 1776, size: 128, elements: !4011)
!4011 = !{!4012, !4017}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4010, file: !86, line: 1777, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !86, line: 1773, baseType: !4014)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!197, !4009, !251, !197, !566, !458, !7}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4010, file: !86, line: 1778, baseType: !566, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3984, file: !86, line: 1831, baseType: !4006, size: 64, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3984, file: !86, line: 1832, baseType: !4020, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!4023, !393, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4024, line: 52, baseType: !7)
!4024 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !654, line: 27, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3984, file: !86, line: 1833, baseType: !4028, size: 64, offset: 640)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!196, !393, !7, !194}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3984, file: !86, line: 1834, baseType: !4028, size: 64, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3984, file: !86, line: 1835, baseType: !4033, size: 64, offset: 768)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!197, !393, !2024}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3984, file: !86, line: 1836, baseType: !194, size: 64, offset: 832)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3984, file: !86, line: 1837, baseType: !4038, size: 64, offset: 896)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!197, !466, !393}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3984, file: !86, line: 1838, baseType: !4042, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!197, !393, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !86, line: 1007, baseType: !195)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3984, file: !86, line: 1839, baseType: !4038, size: 64, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3984, file: !86, line: 1840, baseType: !4048, size: 64, offset: 1088)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!197, !393, !566, !566, !197}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3984, file: !86, line: 1841, baseType: !4052, size: 64, offset: 1152)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!197, !197, !393, !197}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3984, file: !86, line: 1842, baseType: !4056, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!197, !393, !197, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !86, line: 1062, size: 1664, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4093, !4094, !4095, !4108, !4139}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4060, file: !86, line: 1063, baseType: !4059, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4060, file: !86, line: 1064, baseType: !265, size: 128, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4060, file: !86, line: 1065, baseType: !674, size: 128, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4060, file: !86, line: 1066, baseType: !265, size: 128, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4060, file: !86, line: 1069, baseType: !265, size: 128, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4060, file: !86, line: 1072, baseType: !4045, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4060, file: !86, line: 1073, baseType: !7, size: 32, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4060, file: !86, line: 1074, baseType: !464, size: 8, offset: 672)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4060, file: !86, line: 1075, baseType: !7, size: 32, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4060, file: !86, line: 1076, baseType: !197, size: 32, offset: 736)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4060, file: !86, line: 1077, baseType: !1266, size: 128, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4060, file: !86, line: 1078, baseType: !393, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4060, file: !86, line: 1079, baseType: !566, size: 64, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4060, file: !86, line: 1080, baseType: !566, size: 64, offset: 1024)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4060, file: !86, line: 1082, baseType: !4077, size: 64, offset: 1088)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !86, line: 1314, size: 320, elements: !4079)
!4079 = !{!4080, !4088, !4089, !4090, !4091, !4092}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4078, file: !86, line: 1315, baseType: !4081)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4082, line: 20, baseType: !4083)
!4082 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4082, line: 11, elements: !4084)
!4084 = !{!4085}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4083, file: !4082, line: 12, baseType: !4086)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !290, line: 33, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 31, elements: !292)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4078, file: !86, line: 1316, baseType: !197, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4078, file: !86, line: 1317, baseType: !197, size: 32, offset: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4078, file: !86, line: 1318, baseType: !4077, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4078, file: !86, line: 1319, baseType: !393, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4078, file: !86, line: 1320, baseType: !406, size: 128, align: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4060, file: !86, line: 1084, baseType: !194, size: 64, offset: 1152)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4060, file: !86, line: 1085, baseType: !194, size: 64, offset: 1216)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4060, file: !86, line: 1087, baseType: !4096, size: 64, offset: 1280)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !86, line: 1011, size: 128, elements: !4099)
!4099 = !{!4100, !4104}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4098, file: !86, line: 1012, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !4059, !4059}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4098, file: !86, line: 1013, baseType: !4105, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !4059}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4060, file: !86, line: 1088, baseType: !4109, size: 64, offset: 1344)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4111)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !86, line: 1016, size: 512, elements: !4112)
!4112 = !{!4113, !4117, !4121, !4122, !4126, !4130, !4134, !4138}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4111, file: !86, line: 1017, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!4045, !4045}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4111, file: !86, line: 1018, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4045}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4111, file: !86, line: 1019, baseType: !4105, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4111, file: !86, line: 1020, baseType: !4123, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!197, !4059, !197}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4111, file: !86, line: 1021, baseType: !4127, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!254, !4059}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4111, file: !86, line: 1022, baseType: !4131, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!197, !4059, !197, !268}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4111, file: !86, line: 1023, baseType: !4135, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !4059, !918}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4111, file: !86, line: 1024, baseType: !4127, size: 64, offset: 448)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4060, file: !86, line: 1097, baseType: !4140, size: 256, offset: 1408)
!4140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !86, line: 1089, size: 256, elements: !4141)
!4141 = !{!4142, !4151, !4157}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4140, file: !86, line: 1090, baseType: !4143, size: 256)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4144, line: 10, size: 256, elements: !4145)
!4144 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4145 = !{!4146, !4147, !4150}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4143, file: !4144, line: 11, baseType: !204, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4143, file: !4144, line: 12, baseType: !4148, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4144, line: 5, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4143, file: !4144, line: 13, baseType: !265, size: 128, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4140, file: !86, line: 1091, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4144, line: 17, size: 64, elements: !4153)
!4153 = !{!4154}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4152, file: !4144, line: 18, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4144, line: 16, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4140, file: !86, line: 1096, baseType: !4158, size: 192)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !86, line: 1092, size: 192, elements: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4158, file: !86, line: 1093, baseType: !265, size: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4158, file: !86, line: 1094, baseType: !197, size: 32, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4158, file: !86, line: 1095, baseType: !7, size: 32, offset: 160)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3984, file: !86, line: 1843, baseType: !4164, size: 64, offset: 1280)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!348, !393, !818, !197, !363, !793, !197}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3984, file: !86, line: 1844, baseType: !2144, size: 64, offset: 1344)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3984, file: !86, line: 1845, baseType: !4169, size: 64, offset: 1408)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!197, !197}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3984, file: !86, line: 1846, baseType: !4056, size: 64, offset: 1472)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3984, file: !86, line: 1847, baseType: !4174, size: 64, offset: 1536)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!348, !3249, !393, !793, !363, !7}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3984, file: !86, line: 1848, baseType: !4178, size: 64, offset: 1600)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!348, !393, !793, !3249, !363, !7}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3984, file: !86, line: 1849, baseType: !4182, size: 64, offset: 1664)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!197, !393, !196, !4185, !918}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3984, file: !86, line: 1850, baseType: !4187, size: 64, offset: 1728)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!196, !393, !197, !566, !566}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3984, file: !86, line: 1852, baseType: !4191, size: 64, offset: 1792)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !759, !393}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3984, file: !86, line: 1856, baseType: !4195, size: 64, offset: 1856)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!348, !393, !566, !393, !566, !363, !7}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3984, file: !86, line: 1858, baseType: !4199, size: 64, offset: 1920)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!566, !393, !566, !393, !566, !566, !7}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3984, file: !86, line: 1861, baseType: !4048, size: 64, offset: 1984)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3979, file: !86, line: 692, baseType: !699, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !467, file: !86, line: 694, baseType: !4205, size: 64, offset: 2560)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !86, line: 1100, size: 384, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4206, file: !86, line: 1101, baseType: !278)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4206, file: !86, line: 1102, baseType: !265, size: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4206, file: !86, line: 1103, baseType: !265, size: 128, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4206, file: !86, line: 1104, baseType: !265, size: 128, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !467, file: !86, line: 695, baseType: !832, size: 1216, align: 64, offset: 2624)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !467, file: !86, line: 696, baseType: !265, size: 128, offset: 3840)
!4214 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !86, line: 697, baseType: !4215, size: 64, offset: 3968)
!4215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !86, line: 697, size: 64, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4222, !4223}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4215, file: !86, line: 698, baseType: !3249, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4215, file: !86, line: 699, baseType: !1061, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4215, file: !86, line: 700, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !86, line: 700, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4215, file: !86, line: 701, baseType: !319, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4215, file: !86, line: 702, baseType: !7, size: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !467, file: !86, line: 705, baseType: !206, size: 32, offset: 4032)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !467, file: !86, line: 708, baseType: !206, size: 32, offset: 4064)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !467, file: !86, line: 709, baseType: !3821, size: 64, offset: 4096)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !467, file: !86, line: 720, baseType: !195, size: 64, offset: 4160)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !424, file: !421, line: 98, baseType: !4229, size: 256, offset: 448)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 256, elements: !1155)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !424, file: !421, line: 101, baseType: !4231, size: 32, offset: 704)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4232, line: 25, size: 32, elements: !4233)
!4232 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, scope: !4231, file: !4232, line: 26, baseType: !4235, size: 32)
!4235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4231, file: !4232, line: 26, size: 32, elements: !4236)
!4236 = !{!4237}
!4237 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !4232, line: 30, baseType: !4238, size: 32)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4235, file: !4232, line: 30, size: 32, elements: !4239)
!4239 = !{!4240, !4241}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4238, file: !4232, line: 31, baseType: !278)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4238, file: !4232, line: 32, baseType: !197, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !424, file: !421, line: 102, baseType: !3836, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !424, file: !421, line: 103, baseType: !634, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !424, file: !421, line: 104, baseType: !194, size: 64, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !424, file: !421, line: 105, baseType: !195, size: 64, offset: 960)
!4246 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !421, line: 107, baseType: !4247, size: 128, offset: 1024)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !421, line: 107, size: 128, elements: !4248)
!4248 = !{!4249, !4250}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4247, file: !421, line: 108, baseType: !265, size: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4247, file: !421, line: 109, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !424, file: !421, line: 111, baseType: !265, size: 128, offset: 1152)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !424, file: !421, line: 112, baseType: !265, size: 128, offset: 1280)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !424, file: !421, line: 120, baseType: !4255, size: 128, offset: 1408)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !421, line: 116, size: 128, elements: !4256)
!4256 = !{!4257, !4258, !4259}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4255, file: !421, line: 117, baseType: !674, size: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4255, file: !421, line: 118, baseType: !438, size: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4255, file: !421, line: 119, baseType: !406, size: 128, align: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !394, file: !86, line: 922, baseType: !466, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !394, file: !86, line: 923, baseType: !3982, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !394, file: !86, line: 929, baseType: !278, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !394, file: !86, line: 930, baseType: !85, size: 32, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !394, file: !86, line: 931, baseType: !775, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !394, file: !86, line: 932, baseType: !7, size: 32, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !394, file: !86, line: 933, baseType: !1287, size: 32, offset: 544)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !394, file: !86, line: 934, baseType: !771, size: 192, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !394, file: !86, line: 935, baseType: !566, size: 64, offset: 768)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !394, file: !86, line: 936, baseType: !4270, size: 192, offset: 832)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !86, line: 885, size: 192, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4270, file: !86, line: 886, baseType: !4081)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4270, file: !86, line: 887, baseType: !2497, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4270, file: !86, line: 888, baseType: !94, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4270, file: !86, line: 889, baseType: !472, size: 32, offset: 96)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4270, file: !86, line: 889, baseType: !472, size: 32, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4270, file: !86, line: 890, baseType: !197, size: 32, offset: 160)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !394, file: !86, line: 937, baseType: !2567, size: 64, offset: 1024)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !394, file: !86, line: 938, baseType: !4280, size: 256, offset: 1088)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !86, line: 896, size: 256, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4280, file: !86, line: 897, baseType: !194, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4280, file: !86, line: 898, baseType: !7, size: 32, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4280, file: !86, line: 899, baseType: !7, size: 32, offset: 96)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4280, file: !86, line: 902, baseType: !7, size: 32, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4280, file: !86, line: 903, baseType: !7, size: 32, offset: 160)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4280, file: !86, line: 904, baseType: !566, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !394, file: !86, line: 940, baseType: !458, size: 64, offset: 1344)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !394, file: !86, line: 945, baseType: !195, size: 64, offset: 1408)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !394, file: !86, line: 949, baseType: !265, size: 128, offset: 1472)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !394, file: !86, line: 950, baseType: !265, size: 128, offset: 1600)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !394, file: !86, line: 952, baseType: !831, size: 64, offset: 1728)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !394, file: !86, line: 953, baseType: !1953, size: 32, offset: 1792)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !394, file: !86, line: 954, baseType: !1953, size: 32, offset: 1824)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !384, file: !342, line: 174, baseType: !390, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !384, file: !342, line: 176, baseType: !4297, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!197, !393, !271, !383, !2024}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !372, file: !342, line: 90, baseType: !367, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !372, file: !342, line: 91, baseType: !4302, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !332, file: !261, line: 143, baseType: !4304, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!4307, !271}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !4310)
!4310 = !{!4311, !4312, !4316, !4320, !4326, !4330}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4309, file: !103, line: 40, baseType: !102, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4309, file: !103, line: 41, baseType: !4313, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!254}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4309, file: !103, line: 42, baseType: !4317, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!195}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4309, file: !103, line: 43, baseType: !4321, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!3278, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4309, file: !103, line: 44, baseType: !4327, size: 64, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!3278}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4309, file: !103, line: 45, baseType: !505, size: 64, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !332, file: !261, line: 144, baseType: !4332, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!3278, !271}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !332, file: !261, line: 145, baseType: !4336, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !271, !2841, !2842}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !260, file: !261, line: 70, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !654, line: 123, size: 1024, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4459, !4460, !4461, !4462, !4463}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4341, file: !654, line: 124, baseType: !844, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4341, file: !654, line: 125, baseType: !844, size: 32, offset: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4341, file: !654, line: 135, baseType: !4340, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !654, line: 136, baseType: !251, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4341, file: !654, line: 138, baseType: !857, size: 192, align: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4341, file: !654, line: 140, baseType: !3278, size: 64, offset: 384)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4341, file: !654, line: 141, baseType: !7, size: 32, offset: 448)
!4350 = !DIDerivedType(tag: DW_TAG_member, scope: !4341, file: !654, line: 142, baseType: !4351, size: 256, offset: 512)
!4351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4341, file: !654, line: 142, size: 256, elements: !4352)
!4352 = !{!4353, !4399, !4403}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4351, file: !654, line: 143, baseType: !4354, size: 192)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !654, line: 91, size: 192, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4354, file: !654, line: 92, baseType: !194, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4354, file: !654, line: 94, baseType: !853, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4354, file: !654, line: 100, baseType: !4359, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !654, line: 180, size: 704, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4371, !4372, !4373, !4397, !4398}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4360, file: !654, line: 182, baseType: !4340, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4360, file: !654, line: 183, baseType: !7, size: 32, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4360, file: !654, line: 186, baseType: !4365, size: 192, offset: 128)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4366, line: 19, size: 192, elements: !4367)
!4366 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4365, file: !4366, line: 20, baseType: !836, size: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4365, file: !4366, line: 21, baseType: !7, size: 32, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4365, file: !4366, line: 22, baseType: !7, size: 32, offset: 160)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4360, file: !654, line: 187, baseType: !204, size: 32, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4360, file: !654, line: 188, baseType: !204, size: 32, offset: 352)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4360, file: !654, line: 189, baseType: !4374, size: 64, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !654, line: 168, size: 320, elements: !4376)
!4376 = !{!4377, !4381, !4385, !4389, !4393}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4375, file: !654, line: 169, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!197, !759, !4359}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4375, file: !654, line: 171, baseType: !4382, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!197, !4340, !251, !357}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4375, file: !654, line: 173, baseType: !4386, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!197, !4340}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4375, file: !654, line: 174, baseType: !4390, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!197, !4340, !4340, !251}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4375, file: !654, line: 176, baseType: !4394, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!197, !759, !4340, !4359}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4360, file: !654, line: 192, baseType: !265, size: 128, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4360, file: !654, line: 194, baseType: !1266, size: 128, offset: 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4351, file: !654, line: 144, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !654, line: 103, size: 64, elements: !4401)
!4401 = !{!4402}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4400, file: !654, line: 104, baseType: !4340, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4351, file: !654, line: 145, baseType: !4404, size: 256)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !654, line: 107, size: 256, elements: !4405)
!4405 = !{!4406, !4454, !4457, !4458}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4404, file: !654, line: 108, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4409)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !654, line: 217, size: 768, elements: !4410)
!4410 = !{!4411, !4431, !4435, !4436, !4437, !4438, !4439, !4443, !4444, !4445, !4446, !4450}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4409, file: !654, line: 222, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!197, !4415}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !654, line: 197, size: 1088, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4416, file: !654, line: 199, baseType: !4340, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4416, file: !654, line: 200, baseType: !393, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4416, file: !654, line: 201, baseType: !759, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4416, file: !654, line: 202, baseType: !195, size: 64, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4416, file: !654, line: 205, baseType: !771, size: 192, offset: 256)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4416, file: !654, line: 206, baseType: !771, size: 192, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4416, file: !654, line: 207, baseType: !197, size: 32, offset: 640)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4416, file: !654, line: 208, baseType: !265, size: 128, offset: 704)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4416, file: !654, line: 209, baseType: !319, size: 64, offset: 832)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4416, file: !654, line: 211, baseType: !363, size: 64, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4416, file: !654, line: 212, baseType: !254, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4416, file: !654, line: 213, baseType: !254, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4416, file: !654, line: 214, baseType: !2052, size: 64, offset: 1024)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4409, file: !654, line: 223, baseType: !4432, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !4415}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4409, file: !654, line: 236, baseType: !803, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4409, file: !654, line: 238, baseType: !790, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4409, file: !654, line: 239, baseType: !799, size: 64, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4409, file: !654, line: 240, baseType: !795, size: 64, offset: 320)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4409, file: !654, line: 242, baseType: !4440, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!348, !4415, !319, !363, !566}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4409, file: !654, line: 252, baseType: !363, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4409, file: !654, line: 259, baseType: !254, size: 8, offset: 512)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4409, file: !654, line: 260, baseType: !4440, size: 64, offset: 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4409, file: !654, line: 263, baseType: !4447, size: 64, offset: 640)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!4023, !4415, !4025}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4409, file: !654, line: 266, baseType: !4451, size: 64, offset: 704)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!197, !4415, !2024}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4404, file: !654, line: 109, baseType: !4455, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !654, line: 31, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4404, file: !654, line: 110, baseType: !566, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4404, file: !654, line: 111, baseType: !4340, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4341, file: !654, line: 148, baseType: !195, size: 64, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4341, file: !654, line: 154, baseType: !458, size: 64, offset: 832)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !654, line: 156, baseType: !358, size: 16, offset: 896)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4341, file: !654, line: 157, baseType: !357, size: 16, offset: 912)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4341, file: !654, line: 158, baseType: !4464, size: 64, offset: 960)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !654, line: 32, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !260, file: !261, line: 71, baseType: !1649, size: 32, offset: 448)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !260, file: !261, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !260, file: !261, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !260, file: !261, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !260, file: !261, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !260, file: !261, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !115, line: 463, baseType: !1717, size: 64, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !257, file: !115, line: 465, baseType: !4474, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 36, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !257, file: !115, line: 467, baseType: !251, size: 64, offset: 640)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !257, file: !115, line: 468, baseType: !4478, size: 64, offset: 704)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 87, size: 384, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4488, !4492, !4496}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4480, file: !115, line: 88, baseType: !251, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4480, file: !115, line: 89, baseType: !369, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4480, file: !115, line: 90, baseType: !4485, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!197, !1717, !314}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4480, file: !115, line: 91, baseType: !4489, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!319, !1717, !1355, !2841, !2842}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4480, file: !115, line: 93, baseType: !4493, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !1717}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4480, file: !115, line: 95, baseType: !4497, size: 64, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !4500)
!4500 = !{!4501, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4499, file: !44, line: 279, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!197, !1717}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4499, file: !44, line: 280, baseType: !4493, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4499, file: !44, line: 281, baseType: !4502, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4499, file: !44, line: 282, baseType: !4502, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4499, file: !44, line: 283, baseType: !4502, size: 64, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4499, file: !44, line: 284, baseType: !4502, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4499, file: !44, line: 285, baseType: !4502, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4499, file: !44, line: 286, baseType: !4502, size: 64, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4499, file: !44, line: 287, baseType: !4502, size: 64, offset: 512)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4499, file: !44, line: 288, baseType: !4502, size: 64, offset: 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4499, file: !44, line: 289, baseType: !4502, size: 64, offset: 640)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4499, file: !44, line: 290, baseType: !4502, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4499, file: !44, line: 291, baseType: !4502, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4499, file: !44, line: 292, baseType: !4502, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4499, file: !44, line: 293, baseType: !4502, size: 64, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4499, file: !44, line: 294, baseType: !4502, size: 64, offset: 960)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4499, file: !44, line: 295, baseType: !4502, size: 64, offset: 1024)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4499, file: !44, line: 296, baseType: !4502, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4499, file: !44, line: 297, baseType: !4502, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4499, file: !44, line: 298, baseType: !4502, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4499, file: !44, line: 299, baseType: !4502, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4499, file: !44, line: 300, baseType: !4502, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4499, file: !44, line: 301, baseType: !4502, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !257, file: !115, line: 470, baseType: !4528, size: 64, offset: 768)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4530, line: 82, size: 1408, elements: !4531)
!4530 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537, !4538, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4613, !4616, !4617}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4529, file: !4530, line: 83, baseType: !251, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4529, file: !4530, line: 84, baseType: !251, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4529, file: !4530, line: 85, baseType: !1717, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4529, file: !4530, line: 86, baseType: !369, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4529, file: !4530, line: 87, baseType: !369, size: 64, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4529, file: !4530, line: 88, baseType: !369, size: 64, offset: 320)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4529, file: !4530, line: 90, baseType: !4539, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!197, !1717, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 95, size: 1152, elements: !4544)
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550, !4551, !4564, !4577, !4578, !4579, !4580, !4581, !4589, !4590, !4591, !4592, !4593, !4594}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4543, file: !109, line: 96, baseType: !251, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4543, file: !109, line: 97, baseType: !4528, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4543, file: !109, line: 99, baseType: !189, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4543, file: !109, line: 100, baseType: !251, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4543, file: !109, line: 102, baseType: !254, size: 8, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4543, file: !109, line: 103, baseType: !108, size: 32, offset: 288)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4543, file: !109, line: 105, baseType: !4552, size: 64, offset: 320)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4554)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4555, line: 262, size: 1600, elements: !4556)
!4555 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4556 = !{!4557, !4558, !4559, !4563}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4554, file: !4555, line: 263, baseType: !1154, size: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4554, file: !4555, line: 264, baseType: !1154, size: 256, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4554, file: !4555, line: 265, baseType: !4560, size: 1024, offset: 512)
!4560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !4561)
!4561 = !{!4562}
!4562 = !DISubrange(count: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4554, file: !4555, line: 266, baseType: !3278, size: 64, offset: 1536)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4543, file: !109, line: 106, baseType: !4565, size: 64, offset: 384)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4567)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4555, line: 210, size: 256, elements: !4568)
!4568 = !{!4569, !4573, !4575, !4576}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4567, file: !4555, line: 211, baseType: !4570, size: 72)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 72, elements: !4571)
!4571 = !{!4572}
!4572 = !DISubrange(count: 9)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4567, file: !4555, line: 212, baseType: !4574, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4555, line: 14, baseType: !194)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4567, file: !4555, line: 213, baseType: !206, size: 32, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4567, file: !4555, line: 214, baseType: !206, size: 32, offset: 224)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4543, file: !109, line: 108, baseType: !4502, size: 64, offset: 448)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4543, file: !109, line: 109, baseType: !4493, size: 64, offset: 512)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4543, file: !109, line: 110, baseType: !4502, size: 64, offset: 576)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4543, file: !109, line: 111, baseType: !4493, size: 64, offset: 640)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4543, file: !109, line: 112, baseType: !4582, size: 64, offset: 704)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!197, !1717, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !4587)
!4587 = !{!4588}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4586, file: !44, line: 51, baseType: !197, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4543, file: !109, line: 113, baseType: !4502, size: 64, offset: 768)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4543, file: !109, line: 114, baseType: !369, size: 64, offset: 832)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4543, file: !109, line: 115, baseType: !369, size: 64, offset: 896)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4543, file: !109, line: 117, baseType: !4497, size: 64, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4543, file: !109, line: 118, baseType: !4493, size: 64, offset: 1024)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4543, file: !109, line: 120, baseType: !4595, size: 64, offset: 1088)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 120, flags: DIFlagFwdDecl)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4529, file: !4530, line: 91, baseType: !4485, size: 64, offset: 448)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4529, file: !4530, line: 92, baseType: !4502, size: 64, offset: 512)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4529, file: !4530, line: 93, baseType: !4493, size: 64, offset: 576)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4529, file: !4530, line: 94, baseType: !4502, size: 64, offset: 640)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4529, file: !4530, line: 95, baseType: !4493, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4529, file: !4530, line: 97, baseType: !4502, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4529, file: !4530, line: 98, baseType: !4502, size: 64, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4529, file: !4530, line: 100, baseType: !4582, size: 64, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4529, file: !4530, line: 101, baseType: !4502, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4529, file: !4530, line: 103, baseType: !4502, size: 64, offset: 1024)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4529, file: !4530, line: 105, baseType: !4502, size: 64, offset: 1088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4529, file: !4530, line: 107, baseType: !4497, size: 64, offset: 1152)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4529, file: !4530, line: 109, baseType: !4610, size: 64, offset: 1216)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4612)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4530, line: 109, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4529, file: !4530, line: 111, baseType: !4614, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4530, line: 111, flags: DIFlagFwdDecl)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4529, file: !4530, line: 112, baseType: !680, offset: 1344)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4529, file: !4530, line: 114, baseType: !254, size: 8, offset: 1344)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !257, file: !115, line: 471, baseType: !4542, size: 64, offset: 832)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !257, file: !115, line: 473, baseType: !195, size: 64, offset: 896)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !257, file: !115, line: 475, baseType: !195, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !257, file: !115, line: 480, baseType: !771, size: 192, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !257, file: !115, line: 484, baseType: !4623, size: 576, offset: 1216)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 361, size: 576, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4623, file: !115, line: 362, baseType: !265, size: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4623, file: !115, line: 363, baseType: !265, size: 128, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4623, file: !115, line: 364, baseType: !265, size: 128, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4623, file: !115, line: 365, baseType: !265, size: 128, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4623, file: !115, line: 366, baseType: !254, size: 8, offset: 512)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4623, file: !115, line: 367, baseType: !114, size: 32, offset: 544)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !257, file: !115, line: 485, baseType: !4632, size: 2304, offset: 1792)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4718, !4722}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4632, file: !44, line: 566, baseType: !4585, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4632, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4632, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4632, file: !44, line: 569, baseType: !254, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4632, file: !44, line: 570, baseType: !254, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4632, file: !44, line: 571, baseType: !254, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4632, file: !44, line: 572, baseType: !254, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4632, file: !44, line: 573, baseType: !254, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4632, file: !44, line: 574, baseType: !254, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4632, file: !44, line: 575, baseType: !254, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4632, file: !44, line: 576, baseType: !254, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4632, file: !44, line: 577, baseType: !204, size: 32, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4632, file: !44, line: 578, baseType: !278, offset: 96)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4632, file: !44, line: 580, baseType: !265, size: 128, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4632, file: !44, line: 581, baseType: !2522, size: 192, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4632, file: !44, line: 582, baseType: !4650, size: 64, offset: 448)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4652, line: 43, size: 1472, elements: !4653)
!4652 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4653 = !{!4654, !4655, !4656, !4657, !4658, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4651, file: !4652, line: 44, baseType: !251, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4651, file: !4652, line: 45, baseType: !197, size: 32, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4651, file: !4652, line: 46, baseType: !265, size: 128, offset: 128)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4651, file: !4652, line: 47, baseType: !278, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4651, file: !4652, line: 48, baseType: !4659, size: 64, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4651, file: !4652, line: 49, baseType: !1699, size: 320, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4651, file: !4652, line: 50, baseType: !194, size: 64, offset: 640)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4651, file: !4652, line: 51, baseType: !2329, size: 64, offset: 704)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4651, file: !4652, line: 52, baseType: !2329, size: 64, offset: 768)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4651, file: !4652, line: 53, baseType: !2329, size: 64, offset: 832)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4651, file: !4652, line: 54, baseType: !2329, size: 64, offset: 896)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4651, file: !4652, line: 55, baseType: !2329, size: 64, offset: 960)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4651, file: !4652, line: 56, baseType: !194, size: 64, offset: 1024)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4651, file: !4652, line: 57, baseType: !194, size: 64, offset: 1088)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4651, file: !4652, line: 58, baseType: !194, size: 64, offset: 1152)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4651, file: !4652, line: 59, baseType: !194, size: 64, offset: 1216)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4651, file: !4652, line: 60, baseType: !194, size: 64, offset: 1280)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4651, file: !4652, line: 61, baseType: !1717, size: 64, offset: 1344)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4651, file: !4652, line: 62, baseType: !254, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4651, file: !4652, line: 63, baseType: !254, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4632, file: !44, line: 583, baseType: !254, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4632, file: !44, line: 584, baseType: !254, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4632, file: !44, line: 585, baseType: !254, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4632, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4632, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4632, file: !44, line: 592, baseType: !2321, size: 512, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4632, file: !44, line: 593, baseType: !458, size: 64, offset: 1088)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4632, file: !44, line: 594, baseType: !1130, size: 256, offset: 1152)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4632, file: !44, line: 595, baseType: !1266, size: 128, offset: 1408)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4632, file: !44, line: 596, baseType: !4659, size: 64, offset: 1536)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4632, file: !44, line: 597, baseType: !844, size: 32, offset: 1600)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4632, file: !44, line: 598, baseType: !844, size: 32, offset: 1632)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4632, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4632, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4632, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4632, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4632, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4632, file: !44, line: 604, baseType: !254, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4632, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4632, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4632, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4632, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4632, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4632, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4632, file: !44, line: 611, baseType: !121, size: 32, offset: 1728)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4632, file: !44, line: 612, baseType: !43, size: 32, offset: 1760)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4632, file: !44, line: 613, baseType: !197, size: 32, offset: 1792)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4632, file: !44, line: 614, baseType: !197, size: 32, offset: 1824)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4632, file: !44, line: 615, baseType: !458, size: 64, offset: 1856)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4632, file: !44, line: 616, baseType: !458, size: 64, offset: 1920)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4632, file: !44, line: 617, baseType: !458, size: 64, offset: 1984)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4632, file: !44, line: 618, baseType: !458, size: 64, offset: 2048)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4632, file: !44, line: 620, baseType: !4709, size: 64, offset: 2112)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !4711)
!4711 = !{!4712, !4713, !4714, !4715}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4710, file: !44, line: 537, baseType: !278)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4710, file: !44, line: 538, baseType: !7, size: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4710, file: !44, line: 540, baseType: !265, size: 128, offset: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4710, file: !44, line: 543, baseType: !4716, size: 64, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4632, file: !44, line: 621, baseType: !4719, size: 64, offset: 2176)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{null, !1717, !2471}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4632, file: !44, line: 622, baseType: !4723, size: 64, offset: 2240)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !257, file: !115, line: 486, baseType: !4726, size: 64, offset: 4096)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4735, !4736, !4737}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4727, file: !44, line: 643, baseType: !4499, size: 1472)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4727, file: !44, line: 644, baseType: !4502, size: 64, offset: 1472)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4727, file: !44, line: 645, baseType: !4732, size: 64, offset: 1536)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{null, !1717, !254}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4727, file: !44, line: 646, baseType: !4502, size: 64, offset: 1600)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4727, file: !44, line: 647, baseType: !4493, size: 64, offset: 1664)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4727, file: !44, line: 648, baseType: !4493, size: 64, offset: 1728)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !257, file: !115, line: 493, baseType: !4739, size: 64, offset: 4160)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !115, line: 493, flags: DIFlagFwdDecl)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !257, file: !115, line: 499, baseType: !265, size: 128, offset: 4224)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !257, file: !115, line: 502, baseType: !4743, size: 64, offset: 4352)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4745)
!4745 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 502, flags: DIFlagFwdDecl)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !257, file: !115, line: 504, baseType: !4747, size: 64, offset: 4416)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !257, file: !115, line: 505, baseType: !458, size: 64, offset: 4480)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !257, file: !115, line: 510, baseType: !458, size: 64, offset: 4544)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !257, file: !115, line: 511, baseType: !4751, size: 64, offset: 4608)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 511, flags: DIFlagFwdDecl)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !257, file: !115, line: 513, baseType: !4755, size: 64, offset: 4672)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 288, size: 128, elements: !4757)
!4757 = !{!4758, !4759}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4756, file: !115, line: 293, baseType: !7, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4756, file: !115, line: 294, baseType: !194, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !257, file: !115, line: 515, baseType: !265, size: 128, offset: 4736)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !257, file: !115, line: 526, baseType: !4762, offset: 4864)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4763, line: 5, elements: !292)
!4763 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !257, file: !115, line: 528, baseType: !4765, size: 64, offset: 4864)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4767, line: 51, size: 1344, elements: !4768)
!4767 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4768 = !{!4769, !4770, !4772, !4773, !4863, !4872, !4873, !4874, !4875, !4876, !4877, !4878}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4766, file: !4767, line: 52, baseType: !251, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4766, file: !4767, line: 53, baseType: !4771, size: 32, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4767, line: 28, baseType: !204)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4766, file: !4767, line: 54, baseType: !251, size: 64, offset: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4766, file: !4767, line: 55, baseType: !4774, size: 192, offset: 192)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4775, line: 17, size: 192, elements: !4776)
!4775 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4776 = !{!4777, !4779, !4862}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4774, file: !4775, line: 18, baseType: !4778, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4774, file: !4775, line: 19, baseType: !4780, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4782)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4775, line: 110, size: 1152, elements: !4783)
!4783 = !{!4784, !4788, !4792, !4798, !4804, !4808, !4812, !4817, !4821, !4822, !4826, !4830, !4834, !4845, !4846, !4847, !4848, !4858}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4782, file: !4775, line: 111, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!4778, !4778}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4782, file: !4775, line: 112, baseType: !4789, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !4778}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4782, file: !4775, line: 113, baseType: !4793, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!254, !4796}
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4782, file: !4775, line: 114, baseType: !4799, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!3278, !4796, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4782, file: !4775, line: 116, baseType: !4805, size: 64, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!254, !4796, !251}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4782, file: !4775, line: 118, baseType: !4809, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!197, !4796, !251, !7, !195, !363}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4782, file: !4775, line: 123, baseType: !4813, size: 64, offset: 384)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!197, !4796, !251, !4816, !363}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4782, file: !4775, line: 126, baseType: !4818, size: 64, offset: 448)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!251, !4796}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4782, file: !4775, line: 127, baseType: !4818, size: 64, offset: 512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4782, file: !4775, line: 128, baseType: !4823, size: 64, offset: 576)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!4778, !4796}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4782, file: !4775, line: 130, baseType: !4827, size: 64, offset: 640)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!4778, !4796, !4778}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4782, file: !4775, line: 133, baseType: !4831, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!4778, !4796, !251}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4782, file: !4775, line: 135, baseType: !4835, size: 64, offset: 768)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!197, !4796, !251, !251, !7, !7, !4838}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4775, line: 43, size: 640, elements: !4840)
!4840 = !{!4841, !4842, !4843}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4839, file: !4775, line: 44, baseType: !4778, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4839, file: !4775, line: 45, baseType: !7, size: 32, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4839, file: !4775, line: 46, baseType: !4844, size: 512, offset: 128)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 512, elements: !2359)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4782, file: !4775, line: 140, baseType: !4827, size: 64, offset: 832)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4782, file: !4775, line: 143, baseType: !4823, size: 64, offset: 896)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4782, file: !4775, line: 145, baseType: !4785, size: 64, offset: 960)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4782, file: !4775, line: 146, baseType: !4849, size: 64, offset: 1024)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!197, !4796, !4852}
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4775, line: 29, size: 128, elements: !4854)
!4854 = !{!4855, !4856, !4857}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4853, file: !4775, line: 30, baseType: !7, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4853, file: !4775, line: 31, baseType: !7, size: 32, offset: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4853, file: !4775, line: 32, baseType: !4796, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4782, file: !4775, line: 148, baseType: !4859, size: 64, offset: 1088)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!197, !4796, !1717}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4774, file: !4775, line: 20, baseType: !1717, size: 64, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4766, file: !4767, line: 57, baseType: !4864, size: 64, offset: 384)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4767, line: 31, size: 704, elements: !4866)
!4866 = !{!4867, !4868, !4869, !4870, !4871}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4865, file: !4767, line: 32, baseType: !319, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4865, file: !4767, line: 33, baseType: !197, size: 32, offset: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4865, file: !4767, line: 34, baseType: !195, size: 64, offset: 128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4865, file: !4767, line: 35, baseType: !4864, size: 64, offset: 192)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4865, file: !4767, line: 43, baseType: !384, size: 448, offset: 256)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4766, file: !4767, line: 58, baseType: !4864, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4766, file: !4767, line: 59, baseType: !4765, size: 64, offset: 512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4766, file: !4767, line: 60, baseType: !4765, size: 64, offset: 576)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4766, file: !4767, line: 61, baseType: !4765, size: 64, offset: 640)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4766, file: !4767, line: 63, baseType: !260, size: 512, offset: 704)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4766, file: !4767, line: 65, baseType: !194, size: 64, offset: 1216)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4766, file: !4767, line: 66, baseType: !195, size: 64, offset: 1280)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !257, file: !115, line: 529, baseType: !4778, size: 64, offset: 4928)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !257, file: !115, line: 534, baseType: !548, size: 32, offset: 4992)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !257, file: !115, line: 535, baseType: !204, size: 32, offset: 5024)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !257, file: !115, line: 537, baseType: !278, offset: 5056)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !257, file: !115, line: 538, baseType: !265, size: 128, offset: 5056)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !257, file: !115, line: 540, baseType: !4885, size: 64, offset: 5184)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4887, line: 54, size: 960, elements: !4888)
!4887 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4895, !4899, !4903, !4904, !4905, !4906, !4910, !4914, !4915}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4886, file: !4887, line: 55, baseType: !251, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4886, file: !4887, line: 56, baseType: !189, size: 64, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4886, file: !4887, line: 58, baseType: !369, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4886, file: !4887, line: 59, baseType: !369, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4886, file: !4887, line: 60, baseType: !271, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4886, file: !4887, line: 62, baseType: !4485, size: 64, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4886, file: !4887, line: 63, baseType: !4896, size: 64, offset: 384)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!319, !1717, !1355}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4886, file: !4887, line: 65, baseType: !4900, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !4885}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4886, file: !4887, line: 66, baseType: !4493, size: 64, offset: 512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4886, file: !4887, line: 68, baseType: !4502, size: 64, offset: 576)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4886, file: !4887, line: 70, baseType: !4307, size: 64, offset: 640)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4886, file: !4887, line: 71, baseType: !4907, size: 64, offset: 704)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!3278, !1717}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4886, file: !4887, line: 73, baseType: !4911, size: 64, offset: 768)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{null, !1717, !2841, !2842}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4886, file: !4887, line: 75, baseType: !4497, size: 64, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4886, file: !4887, line: 77, baseType: !4614, size: 64, offset: 896)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !257, file: !115, line: 541, baseType: !369, size: 64, offset: 5248)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !257, file: !115, line: 543, baseType: !4493, size: 64, offset: 5312)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !257, file: !115, line: 544, baseType: !4919, size: 64, offset: 5376)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 45, flags: DIFlagFwdDecl)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !257, file: !115, line: 545, baseType: !4922, size: 64, offset: 5440)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 47, flags: DIFlagFwdDecl)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !257, file: !115, line: 547, baseType: !254, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !257, file: !115, line: 548, baseType: !254, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !257, file: !115, line: 549, baseType: !254, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !257, file: !115, line: 550, baseType: !254, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !248, file: !241, line: 27, baseType: !458, size: 64, offset: 5696)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !248, file: !241, line: 28, baseType: !4756, size: 128, offset: 5760)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !248, file: !241, line: 29, baseType: !204, size: 32, offset: 5888)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !248, file: !241, line: 30, baseType: !4932, size: 64, offset: 5952)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4934, line: 20, size: 512, elements: !4935)
!4934 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4935 = !{!4936, !4938, !4939, !4940, !4941, !4942, !4943, !4944}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4933, file: !4934, line: 21, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !193, line: 158, baseType: !3276)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4933, file: !4934, line: 22, baseType: !4937, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4933, file: !4934, line: 23, baseType: !251, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4933, file: !4934, line: 24, baseType: !194, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4933, file: !4934, line: 25, baseType: !194, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4933, file: !4934, line: 26, baseType: !4932, size: 64, offset: 320)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4933, file: !4934, line: 26, baseType: !4932, size: 64, offset: 384)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4933, file: !4934, line: 26, baseType: !4932, size: 64, offset: 448)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !248, file: !241, line: 32, baseType: !4946, size: 64, offset: 6016)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4948)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4555, line: 586, size: 256, elements: !4949)
!4949 = !{!4950, !4952}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4948, file: !4555, line: 587, baseType: !4951, size: 160)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 160, elements: !3352)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4948, file: !4555, line: 588, baseType: !4574, size: 64, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !248, file: !241, line: 33, baseType: !319, size: 64, offset: 6080)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !248, file: !241, line: 36, baseType: !4955, size: 64, offset: 6144)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !241, line: 18, flags: DIFlagFwdDecl)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !248, file: !241, line: 39, baseType: !4958, offset: 6208)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !4763, line: 8, elements: !292)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !240, file: !241, line: 202, baseType: !244, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !240, file: !241, line: 203, baseType: !4961, size: 64, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !247}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !240, file: !241, line: 204, baseType: !4965, size: 64, offset: 192)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!197, !247, !4585}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !240, file: !241, line: 205, baseType: !244, size: 64, offset: 256)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !240, file: !241, line: 206, baseType: !4543, size: 1152, offset: 320)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !240, file: !241, line: 207, baseType: !4946, size: 64, offset: 1472)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !240, file: !241, line: 208, baseType: !254, size: 8, offset: 1536)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(name: "__print_once", scope: !4974, file: !3, line: 537, type: !254, isLocal: true, isDefinition: true)
!4974 = distinct !DISubprogram(name: "dwc3_meson_g12a_role_set", scope: !3, file: !3, line: 521, type: !4975, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!197, !4977, !158}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch", file: !159, line: 8, flags: DIFlagFwdDecl)
!4979 = !DIGlobalVariableExpression(var: !4980, expr: !DIExpression())
!4980 = distinct !DIGlobalVariable(name: "dwc3_meson_g12a_match", scope: !2, file: !3, line: 931, type: !4981, isLocal: true, isDefinition: true)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4553, size: 9600, elements: !2643)
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(name: "gxl_drvdata", scope: !2, file: !3, line: 191, type: !4984, isLocal: true, isDefinition: true)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_meson_g12a_drvdata", file: !3, line: 142, size: 640, elements: !4985)
!4985 = !{!4986, !4987, !4988, !4997, !4998, !5001, !5002, !5142, !5146, !5147, !5151}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "otg_switch_supported", scope: !4984, file: !3, line: 143, baseType: !254, size: 8)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "otg_phy_host_port_disable", scope: !4984, file: !3, line: 144, baseType: !254, size: 8, offset: 8)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "clks", scope: !4984, file: !3, line: 145, baseType: !4989, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_bulk_data", file: !4991, line: 87, size: 128, elements: !4992)
!4991 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!4992 = !{!4993, !4994}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4990, file: !4991, line: 88, baseType: !251, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !4990, file: !4991, line: 89, baseType: !4995, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !4991, line: 17, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "num_clks", scope: !4984, file: !3, line: 146, baseType: !197, size: 32, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "phy_names", scope: !4984, file: !3, line: 147, baseType: !4999, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "num_phys", scope: !4984, file: !3, line: 148, baseType: !197, size: 32, offset: 256)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "setup_regmaps", scope: !4984, file: !3, line: 149, baseType: !5003, size: 64, offset: 320)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!197, !5006, !195}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_meson_g12a", file: !3, line: 256, size: 1472, elements: !5008)
!5008 = !{!5009, !5010, !5014, !5015, !5019, !5115, !5116, !5117, !5118, !5119, !5120, !5138, !5139}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5007, file: !3, line: 257, baseType: !1717, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "u2p_regmap", scope: !5007, file: !3, line: 258, baseType: !5011, size: 192, offset: 64)
!5011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5012, size: 192, elements: !320)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !176, line: 33, flags: DIFlagFwdDecl)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "usb_glue_regmap", scope: !5007, file: !3, line: 259, baseType: !5012, size: 64, offset: 256)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5007, file: !3, line: 260, baseType: !5016, size: 64, offset: 320)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !5018, line: 11, flags: DIFlagFwdDecl)
!5018 = !DIFile(filename: "./include/linux/reset.h", directory: "/home/lizy2001/genbc/linux")
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5007, file: !3, line: 261, baseType: !5020, size: 192, offset: 384)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5021, size: 192, elements: !320)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !129, line: 138, size: 6144, elements: !5023)
!5023 = !{!5024, !5025, !5026, !5102, !5103, !5104, !5105, !5111}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5022, file: !129, line: 139, baseType: !257, size: 5568)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5022, file: !129, line: 140, baseType: !197, size: 32, offset: 5568)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5022, file: !129, line: 141, baseType: !5027, size: 64, offset: 5632)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5029)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !129, line: 72, size: 704, elements: !5030)
!5030 = !{!5031, !5035, !5036, !5037, !5038, !5042, !5091, !5095, !5096, !5097, !5101}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5029, file: !129, line: 73, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!197, !5021}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5029, file: !129, line: 74, baseType: !5032, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5029, file: !129, line: 75, baseType: !5032, size: 64, offset: 128)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5029, file: !129, line: 76, baseType: !5032, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5029, file: !129, line: 77, baseType: !5039, size: 64, offset: 256)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!197, !5021, !128, !197}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5029, file: !129, line: 89, baseType: !5043, size: 64, offset: 320)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!197, !5021, !5046}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !129, line: 55, size: 896, elements: !5048)
!5048 = !{!5049, !5078}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5047, file: !129, line: 56, baseType: !5050, size: 896)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5051, line: 15, size: 896, elements: !5052)
!5051 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5052 = !{!5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5050, file: !5051, line: 24, baseType: !7, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5050, file: !5051, line: 36, baseType: !7, size: 32, offset: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5050, file: !5051, line: 47, baseType: !7, size: 32, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5050, file: !5051, line: 59, baseType: !7, size: 32, offset: 96)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5050, file: !5051, line: 71, baseType: !7, size: 32, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5050, file: !5051, line: 81, baseType: !7, size: 32, offset: 160)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5050, file: !5051, line: 92, baseType: !7, size: 32, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5050, file: !5051, line: 100, baseType: !7, size: 32, offset: 224)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5050, file: !5051, line: 110, baseType: !7, size: 32, offset: 256)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5050, file: !5051, line: 121, baseType: !7, size: 32, offset: 288)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5050, file: !5051, line: 131, baseType: !7, size: 32, offset: 320)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5050, file: !5051, line: 143, baseType: !7, size: 32, offset: 352)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5050, file: !5051, line: 155, baseType: !7, size: 32, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5050, file: !5051, line: 168, baseType: !7, size: 32, offset: 416)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5050, file: !5051, line: 180, baseType: !7, size: 32, offset: 448)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5050, file: !5051, line: 188, baseType: !7, size: 32, offset: 480)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5050, file: !5051, line: 198, baseType: !7, size: 32, offset: 512)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5050, file: !5051, line: 208, baseType: !7, size: 32, offset: 544)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5050, file: !5051, line: 219, baseType: !7, size: 32, offset: 576)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5050, file: !5051, line: 230, baseType: !7, size: 32, offset: 608)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5050, file: !5051, line: 242, baseType: !7, size: 32, offset: 640)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5050, file: !5051, line: 253, baseType: !7, size: 32, offset: 672)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5050, file: !5051, line: 260, baseType: !194, size: 64, offset: 704)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5050, file: !5051, line: 267, baseType: !194, size: 64, offset: 768)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5050, file: !5051, line: 275, baseType: !464, size: 8, offset: 832)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5047, file: !129, line: 57, baseType: !5079, size: 352)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5080, line: 17, size: 352, elements: !5081)
!5080 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5081 = !{!5082, !5083, !5084, !5086, !5087, !5088, !5089, !5090}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5079, file: !5080, line: 25, baseType: !7, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5079, file: !5080, line: 35, baseType: !7, size: 32, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5079, file: !5080, line: 46, baseType: !5085, size: 128, offset: 64)
!5085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1344)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5079, file: !5080, line: 56, baseType: !5085, size: 128, offset: 192)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5079, file: !5080, line: 64, baseType: !1077, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5079, file: !5080, line: 73, baseType: !1077, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5079, file: !5080, line: 82, baseType: !1077, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5079, file: !5080, line: 92, baseType: !1077, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5029, file: !129, line: 107, baseType: !5092, size: 64, offset: 384)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!197, !5021, !128, !197, !5046}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5029, file: !129, line: 109, baseType: !5032, size: 64, offset: 448)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5029, file: !129, line: 110, baseType: !5032, size: 64, offset: 512)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5029, file: !129, line: 111, baseType: !5098, size: 64, offset: 576)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5021}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5029, file: !129, line: 112, baseType: !189, size: 64, offset: 640)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5022, file: !129, line: 142, baseType: !771, size: 192, offset: 5696)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5022, file: !129, line: 143, baseType: !197, size: 32, offset: 5888)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5022, file: !129, line: 144, baseType: !197, size: 32, offset: 5920)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5022, file: !129, line: 145, baseType: !5106, size: 96, offset: 5952)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !129, line: 121, size: 96, elements: !5107)
!5107 = !{!5108, !5109, !5110}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5106, file: !129, line: 122, baseType: !204, size: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5106, file: !129, line: 123, baseType: !204, size: 32, offset: 32)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5106, file: !129, line: 124, baseType: !128, size: 32, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5022, file: !129, line: 146, baseType: !5112, size: 64, offset: 6080)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5114, line: 155, flags: DIFlagFwdDecl)
!5114 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "otg_mode", scope: !5007, file: !3, line: 262, baseType: !151, size: 32, offset: 576)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "otg_phy_mode", scope: !5007, file: !3, line: 263, baseType: !128, size: 32, offset: 608)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_ports", scope: !5007, file: !3, line: 264, baseType: !7, size: 32, offset: 640)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_ports", scope: !5007, file: !3, line: 265, baseType: !7, size: 32, offset: 672)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "vbus", scope: !5007, file: !3, line: 266, baseType: !5112, size: 64, offset: 704)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "switch_desc", scope: !5007, file: !3, line: 267, baseType: !5121, size: 576, offset: 768)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch_desc", file: !159, line: 38, size: 576, elements: !5122)
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5130, !5135, !5136, !5137}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5121, file: !159, line: 39, baseType: !4778, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_port", scope: !5121, file: !159, line: 40, baseType: !1717, size: 64, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_port", scope: !5121, file: !159, line: 41, baseType: !1717, size: 64, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !5121, file: !159, line: 42, baseType: !1717, size: 64, offset: 192)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5121, file: !159, line: 43, baseType: !5128, size: 64, offset: 256)
!5128 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_set_t", file: !159, line: 16, baseType: !5129)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5121, file: !159, line: 44, baseType: !5131, size: 64, offset: 320)
!5131 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_get_t", file: !159, line: 18, baseType: !5132)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!158, !4977}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "allow_userspace_control", scope: !5121, file: !159, line: 45, baseType: !254, size: 8, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5121, file: !159, line: 46, baseType: !195, size: 64, offset: 448)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5121, file: !159, line: 47, baseType: !251, size: 64, offset: 512)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "role_switch", scope: !5007, file: !3, line: 268, baseType: !4977, size: 64, offset: 1344)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "drvdata", scope: !5007, file: !3, line: 269, baseType: !5140, size: 64, offset: 1408)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4984)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_init_phy", scope: !4984, file: !3, line: 150, baseType: !5143, size: 64, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!197, !5006, !197, !128}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "set_phy_mode", scope: !4984, file: !3, line: 152, baseType: !5143, size: 64, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "usb_init", scope: !4984, file: !3, line: 154, baseType: !5148, size: 64, offset: 512)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!197, !5006}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "usb_post_init", scope: !4984, file: !3, line: 155, baseType: !5148, size: 64, offset: 576)
!5152 = !DIGlobalVariableExpression(var: !5153, expr: !DIExpression())
!5153 = distinct !DIGlobalVariable(name: "meson_gxl_clocks", scope: !2, file: !3, line: 104, type: !5154, isLocal: true, isDefinition: true)
!5154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4990, size: 256, elements: !1436)
!5155 = !DIGlobalVariableExpression(var: !5156, expr: !DIExpression())
!5156 = distinct !DIGlobalVariable(name: "meson_a1_phy_names", scope: !2, file: !3, line: 136, type: !5157, isLocal: true, isDefinition: true)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5000, size: 128, elements: !1436)
!5158 = !DIGlobalVariableExpression(var: !5159, expr: !DIExpression())
!5159 = distinct !DIGlobalVariable(name: "phy_meson_g12a_usb_glue_regmap_conf", scope: !2, file: !3, line: 442, type: !5160, isLocal: true, isDefinition: true)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5161)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !176, line: 347, size: 2176, elements: !5162)
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5180, !5182, !5183, !5187, !5191, !5192, !5193, !5208, !5209, !5210, !5211, !5212, !5213, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5245, !5246, !5247, !5248, !5249}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5161, file: !176, line: 348, baseType: !251, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !5161, file: !176, line: 350, baseType: !197, size: 32, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !5161, file: !176, line: 351, baseType: !197, size: 32, offset: 96)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !5161, file: !176, line: 352, baseType: !197, size: 32, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !5161, file: !176, line: 353, baseType: !197, size: 32, offset: 160)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !5161, file: !176, line: 355, baseType: !5169, size: 64, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!254, !1717, !7}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !5161, file: !176, line: 356, baseType: !5169, size: 64, offset: 256)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !5161, file: !176, line: 357, baseType: !5169, size: 64, offset: 320)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !5161, file: !176, line: 358, baseType: !5169, size: 64, offset: 384)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !5161, file: !176, line: 359, baseType: !5169, size: 64, offset: 448)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !5161, file: !176, line: 360, baseType: !5169, size: 64, offset: 512)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !5161, file: !176, line: 362, baseType: !254, size: 8, offset: 576)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5161, file: !176, line: 363, baseType: !5179, size: 64, offset: 640)
!5179 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !176, line: 226, baseType: !505)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !5161, file: !176, line: 364, baseType: !5181, size: 64, offset: 704)
!5181 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !176, line: 227, baseType: !505)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !5161, file: !176, line: 365, baseType: !195, size: 64, offset: 768)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !5161, file: !176, line: 367, baseType: !5184, size: 64, offset: 832)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!197, !195, !7, !1052}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !5161, file: !176, line: 368, baseType: !5188, size: 64, offset: 896)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!197, !195, !7, !7}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !5161, file: !176, line: 370, baseType: !254, size: 8, offset: 960)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !5161, file: !176, line: 372, baseType: !7, size: 32, offset: 992)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !5161, file: !176, line: 373, baseType: !5194, size: 64, offset: 1024)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5196)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !176, line: 219, size: 256, elements: !5197)
!5197 = !{!5198, !5205, !5206, !5207}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !5196, file: !176, line: 220, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5201)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !176, line: 199, size: 64, elements: !5202)
!5202 = !{!5203, !5204}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !5201, file: !176, line: 200, baseType: !7, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !5201, file: !176, line: 201, baseType: !7, size: 32, offset: 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !5196, file: !176, line: 221, baseType: !7, size: 32, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !5196, file: !176, line: 222, baseType: !5199, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !5196, file: !176, line: 223, baseType: !7, size: 32, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !5161, file: !176, line: 374, baseType: !5194, size: 64, offset: 1088)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !5161, file: !176, line: 375, baseType: !5194, size: 64, offset: 1152)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !5161, file: !176, line: 376, baseType: !5194, size: 64, offset: 1216)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !5161, file: !176, line: 377, baseType: !5194, size: 64, offset: 1280)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !5161, file: !176, line: 378, baseType: !5194, size: 64, offset: 1344)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !5161, file: !176, line: 379, baseType: !5214, size: 64, offset: 1408)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5216)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !176, line: 56, size: 64, elements: !5217)
!5217 = !{!5218, !5219}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5216, file: !176, line: 57, baseType: !7, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !5216, file: !176, line: 58, baseType: !7, size: 32, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !5161, file: !176, line: 380, baseType: !7, size: 32, offset: 1472)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !5161, file: !176, line: 381, baseType: !175, size: 32, offset: 1504)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !5161, file: !176, line: 382, baseType: !3278, size: 64, offset: 1536)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !5161, file: !176, line: 383, baseType: !7, size: 32, offset: 1600)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !5161, file: !176, line: 385, baseType: !194, size: 64, offset: 1664)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !5161, file: !176, line: 386, baseType: !194, size: 64, offset: 1728)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !5161, file: !176, line: 387, baseType: !254, size: 8, offset: 1792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !5161, file: !176, line: 389, baseType: !254, size: 8, offset: 1800)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !5161, file: !176, line: 390, baseType: !254, size: 8, offset: 1808)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !5161, file: !176, line: 391, baseType: !254, size: 8, offset: 1816)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !5161, file: !176, line: 393, baseType: !182, size: 32, offset: 1824)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !5161, file: !176, line: 394, baseType: !182, size: 32, offset: 1856)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5161, file: !176, line: 396, baseType: !5233, size: 64, offset: 1920)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5235)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !176, line: 426, size: 320, elements: !5236)
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5235, file: !176, line: 427, baseType: !251, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !5235, file: !176, line: 430, baseType: !7, size: 32, offset: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !5235, file: !176, line: 431, baseType: !7, size: 32, offset: 96)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !5235, file: !176, line: 434, baseType: !7, size: 32, offset: 128)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !5235, file: !176, line: 435, baseType: !7, size: 32, offset: 160)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !5235, file: !176, line: 436, baseType: !197, size: 32, offset: 192)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !5235, file: !176, line: 439, baseType: !7, size: 32, offset: 224)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !5235, file: !176, line: 440, baseType: !7, size: 32, offset: 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !5161, file: !176, line: 397, baseType: !7, size: 32, offset: 1984)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !5161, file: !176, line: 399, baseType: !254, size: 8, offset: 2016)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !5161, file: !176, line: 400, baseType: !7, size: 32, offset: 2048)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !5161, file: !176, line: 401, baseType: !7, size: 32, offset: 2080)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !5161, file: !176, line: 403, baseType: !254, size: 8, offset: 2112)
!5250 = !DIGlobalVariableExpression(var: !5251, expr: !DIExpression())
!5251 = distinct !DIGlobalVariable(name: "gxm_drvdata", scope: !2, file: !3, line: 205, type: !4984, isLocal: true, isDefinition: true)
!5252 = !DIGlobalVariableExpression(var: !5253, expr: !DIExpression())
!5253 = distinct !DIGlobalVariable(name: "meson_gxm_phy_names", scope: !2, file: !3, line: 119, type: !5254, isLocal: true, isDefinition: true)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5000, size: 192, elements: !320)
!5255 = !DIGlobalVariableExpression(var: !5256, expr: !DIExpression())
!5256 = distinct !DIGlobalVariable(name: "axg_drvdata", scope: !2, file: !3, line: 219, type: !4984, isLocal: true, isDefinition: true)
!5257 = !DIGlobalVariableExpression(var: !5258, expr: !DIExpression())
!5258 = distinct !DIGlobalVariable(name: "g12a_drvdata", scope: !2, file: !3, line: 232, type: !4984, isLocal: true, isDefinition: true)
!5259 = !DIGlobalVariableExpression(var: !5260, expr: !DIExpression())
!5260 = distinct !DIGlobalVariable(name: "meson_g12a_clocks", scope: !2, file: !3, line: 109, type: !5261, isLocal: true, isDefinition: true)
!5261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4990, size: 128, elements: !2398)
!5262 = !DIGlobalVariableExpression(var: !5263, expr: !DIExpression())
!5263 = distinct !DIGlobalVariable(name: "meson_g12a_phy_names", scope: !2, file: !3, line: 123, type: !5254, isLocal: true, isDefinition: true)
!5264 = !DIGlobalVariableExpression(var: !5265, expr: !DIExpression())
!5265 = distinct !DIGlobalVariable(name: "a1_drvdata", scope: !2, file: !3, line: 244, type: !4984, isLocal: true, isDefinition: true)
!5266 = !DIGlobalVariableExpression(var: !5267, expr: !DIExpression())
!5267 = distinct !DIGlobalVariable(name: "meson_a1_clocks", scope: !2, file: !3, line: 113, type: !5268, isLocal: true, isDefinition: true)
!5268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4990, size: 384, elements: !320)
!5269 = !DIGlobalVariableExpression(var: !5270, expr: !DIExpression())
!5270 = distinct !DIGlobalVariable(name: "dwc3_meson_g12a_dev_pm_ops", scope: !2, file: !3, line: 925, type: !4498, isLocal: true, isDefinition: true)
!5271 = !{i32 7, !"Dwarf Version", i32 4}
!5272 = !{i32 2, !"Debug Info Version", i32 3}
!5273 = !{i32 1, !"wchar_size", i32 2}
!5274 = !{i32 1, !"Code Model", i32 2}
!5275 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5276 = distinct !DISubprogram(name: "dwc3_meson_g12a_driver_init", scope: !3, file: !3, line: 966, type: !5277, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!197}
!5279 = !DILocation(line: 966, column: 1, scope: !5276)
!5280 = distinct !DISubprogram(name: "dwc3_meson_g12a_driver_exit", scope: !3, file: !3, line: 966, type: !214, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5281 = !DILocation(line: 966, column: 1, scope: !5280)
!5282 = distinct !DISubprogram(name: "dwc3_meson_g12a_probe", scope: !3, file: !3, line: 701, type: !245, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5283 = !DILocalVariable(name: "pdev", arg: 1, scope: !5282, file: !3, line: 701, type: !247)
!5284 = !DILocation(line: 701, column: 58, scope: !5282)
!5285 = !DILocalVariable(name: "priv", scope: !5282, file: !3, line: 703, type: !5006)
!5286 = !DILocation(line: 703, column: 26, scope: !5282)
!5287 = !DILocalVariable(name: "dev", scope: !5282, file: !3, line: 704, type: !1717)
!5288 = !DILocation(line: 704, column: 18, scope: !5282)
!5289 = !DILocation(line: 704, column: 25, scope: !5282)
!5290 = !DILocation(line: 704, column: 31, scope: !5282)
!5291 = !DILocalVariable(name: "np", scope: !5282, file: !3, line: 705, type: !4765)
!5292 = !DILocation(line: 705, column: 22, scope: !5282)
!5293 = !DILocation(line: 705, column: 27, scope: !5282)
!5294 = !DILocation(line: 705, column: 32, scope: !5282)
!5295 = !DILocalVariable(name: "base", scope: !5282, file: !3, line: 706, type: !195)
!5296 = !DILocation(line: 706, column: 16, scope: !5282)
!5297 = !DILocalVariable(name: "ret", scope: !5282, file: !3, line: 707, type: !197)
!5298 = !DILocation(line: 707, column: 6, scope: !5282)
!5299 = !DILocalVariable(name: "i", scope: !5282, file: !3, line: 707, type: !197)
!5300 = !DILocation(line: 707, column: 11, scope: !5282)
!5301 = !DILocation(line: 709, column: 22, scope: !5282)
!5302 = !DILocation(line: 709, column: 9, scope: !5282)
!5303 = !DILocation(line: 709, column: 7, scope: !5282)
!5304 = !DILocation(line: 710, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 710, column: 6)
!5306 = !DILocation(line: 710, column: 6, scope: !5282)
!5307 = !DILocation(line: 711, column: 3, scope: !5305)
!5308 = !DILocation(line: 713, column: 40, scope: !5282)
!5309 = !DILocation(line: 713, column: 9, scope: !5282)
!5310 = !DILocation(line: 713, column: 7, scope: !5282)
!5311 = !DILocation(line: 714, column: 13, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 714, column: 6)
!5313 = !DILocation(line: 714, column: 6, scope: !5312)
!5314 = !DILocation(line: 714, column: 6, scope: !5282)
!5315 = !DILocation(line: 715, column: 18, scope: !5312)
!5316 = !DILocation(line: 715, column: 10, scope: !5312)
!5317 = !DILocation(line: 715, column: 3, scope: !5312)
!5318 = !DILocation(line: 717, column: 44, scope: !5282)
!5319 = !DILocation(line: 717, column: 50, scope: !5282)
!5320 = !DILocation(line: 717, column: 18, scope: !5282)
!5321 = !DILocation(line: 717, column: 2, scope: !5282)
!5322 = !DILocation(line: 717, column: 8, scope: !5282)
!5323 = !DILocation(line: 717, column: 16, scope: !5282)
!5324 = !DILocation(line: 718, column: 14, scope: !5282)
!5325 = !DILocation(line: 718, column: 2, scope: !5282)
!5326 = !DILocation(line: 718, column: 8, scope: !5282)
!5327 = !DILocation(line: 718, column: 12, scope: !5282)
!5328 = !DILocation(line: 720, column: 43, scope: !5282)
!5329 = !DILocation(line: 720, column: 15, scope: !5282)
!5330 = !DILocation(line: 720, column: 2, scope: !5282)
!5331 = !DILocation(line: 720, column: 8, scope: !5282)
!5332 = !DILocation(line: 720, column: 13, scope: !5282)
!5333 = !DILocation(line: 721, column: 13, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 721, column: 6)
!5335 = !DILocation(line: 721, column: 19, scope: !5334)
!5336 = !DILocation(line: 721, column: 6, scope: !5334)
!5337 = !DILocation(line: 721, column: 6, scope: !5282)
!5338 = !DILocation(line: 722, column: 15, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 722, column: 7)
!5340 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 721, column: 26)
!5341 = !DILocation(line: 722, column: 21, scope: !5339)
!5342 = !DILocation(line: 722, column: 7, scope: !5339)
!5343 = !DILocation(line: 722, column: 27, scope: !5339)
!5344 = !DILocation(line: 722, column: 7, scope: !5340)
!5345 = !DILocation(line: 723, column: 19, scope: !5339)
!5346 = !DILocation(line: 723, column: 25, scope: !5339)
!5347 = !DILocation(line: 723, column: 11, scope: !5339)
!5348 = !DILocation(line: 723, column: 4, scope: !5339)
!5349 = !DILocation(line: 724, column: 3, scope: !5340)
!5350 = !DILocation(line: 724, column: 9, scope: !5340)
!5351 = !DILocation(line: 724, column: 14, scope: !5340)
!5352 = !DILocation(line: 725, column: 2, scope: !5340)
!5353 = !DILocation(line: 727, column: 26, scope: !5282)
!5354 = !DILocation(line: 728, column: 5, scope: !5282)
!5355 = !DILocation(line: 728, column: 11, scope: !5282)
!5356 = !DILocation(line: 728, column: 20, scope: !5282)
!5357 = !DILocation(line: 729, column: 5, scope: !5282)
!5358 = !DILocation(line: 729, column: 11, scope: !5282)
!5359 = !DILocation(line: 729, column: 20, scope: !5282)
!5360 = !DILocation(line: 727, column: 8, scope: !5282)
!5361 = !DILocation(line: 727, column: 6, scope: !5282)
!5362 = !DILocation(line: 730, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 730, column: 6)
!5364 = !DILocation(line: 730, column: 6, scope: !5282)
!5365 = !DILocation(line: 731, column: 10, scope: !5363)
!5366 = !DILocation(line: 731, column: 3, scope: !5363)
!5367 = !DILocation(line: 733, column: 32, scope: !5282)
!5368 = !DILocation(line: 733, column: 38, scope: !5282)
!5369 = !DILocation(line: 733, column: 47, scope: !5282)
!5370 = !DILocation(line: 734, column: 11, scope: !5282)
!5371 = !DILocation(line: 734, column: 17, scope: !5282)
!5372 = !DILocation(line: 734, column: 26, scope: !5282)
!5373 = !DILocation(line: 733, column: 8, scope: !5282)
!5374 = !DILocation(line: 733, column: 6, scope: !5282)
!5375 = !DILocation(line: 735, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 735, column: 6)
!5377 = !DILocation(line: 735, column: 6, scope: !5282)
!5378 = !DILocation(line: 736, column: 10, scope: !5376)
!5379 = !DILocation(line: 736, column: 3, scope: !5376)
!5380 = !DILocation(line: 738, column: 23, scope: !5282)
!5381 = !DILocation(line: 738, column: 29, scope: !5282)
!5382 = !DILocation(line: 738, column: 2, scope: !5282)
!5383 = !DILocation(line: 740, column: 46, scope: !5282)
!5384 = !DILocation(line: 740, column: 16, scope: !5282)
!5385 = !DILocation(line: 740, column: 2, scope: !5282)
!5386 = !DILocation(line: 740, column: 8, scope: !5282)
!5387 = !DILocation(line: 740, column: 14, scope: !5282)
!5388 = !DILocation(line: 741, column: 13, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 741, column: 6)
!5390 = !DILocation(line: 741, column: 19, scope: !5389)
!5391 = !DILocation(line: 741, column: 6, scope: !5389)
!5392 = !DILocation(line: 741, column: 6, scope: !5282)
!5393 = !DILocation(line: 742, column: 17, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 741, column: 27)
!5395 = !DILocation(line: 742, column: 23, scope: !5394)
!5396 = !DILocation(line: 742, column: 9, scope: !5394)
!5397 = !DILocation(line: 742, column: 7, scope: !5394)
!5398 = !DILocation(line: 743, column: 3, scope: !5394)
!5399 = !DILocation(line: 744, column: 3, scope: !5394)
!5400 = !DILocation(line: 747, column: 28, scope: !5282)
!5401 = !DILocation(line: 747, column: 34, scope: !5282)
!5402 = !DILocation(line: 747, column: 8, scope: !5282)
!5403 = !DILocation(line: 747, column: 6, scope: !5282)
!5404 = !DILocation(line: 748, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 748, column: 6)
!5406 = !DILocation(line: 748, column: 6, scope: !5282)
!5407 = !DILocation(line: 749, column: 3, scope: !5405)
!5408 = !DILocation(line: 751, column: 33, scope: !5282)
!5409 = !DILocation(line: 751, column: 8, scope: !5282)
!5410 = !DILocation(line: 751, column: 6, scope: !5282)
!5411 = !DILocation(line: 752, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 752, column: 6)
!5413 = !DILocation(line: 752, column: 6, scope: !5282)
!5414 = !DILocation(line: 753, column: 3, scope: !5412)
!5415 = !DILocation(line: 755, column: 8, scope: !5282)
!5416 = !DILocation(line: 755, column: 14, scope: !5282)
!5417 = !DILocation(line: 755, column: 23, scope: !5282)
!5418 = !DILocation(line: 755, column: 37, scope: !5282)
!5419 = !DILocation(line: 755, column: 43, scope: !5282)
!5420 = !DILocation(line: 755, column: 6, scope: !5282)
!5421 = !DILocation(line: 756, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 756, column: 6)
!5423 = !DILocation(line: 756, column: 6, scope: !5282)
!5424 = !DILocation(line: 757, column: 10, scope: !5422)
!5425 = !DILocation(line: 757, column: 3, scope: !5422)
!5426 = !DILocation(line: 759, column: 6, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 759, column: 6)
!5428 = !DILocation(line: 759, column: 12, scope: !5427)
!5429 = !DILocation(line: 759, column: 6, scope: !5282)
!5430 = !DILocation(line: 760, column: 26, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 759, column: 18)
!5432 = !DILocation(line: 760, column: 32, scope: !5431)
!5433 = !DILocation(line: 760, column: 9, scope: !5431)
!5434 = !DILocation(line: 760, column: 7, scope: !5431)
!5435 = !DILocation(line: 761, column: 7, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 761, column: 7)
!5437 = !DILocation(line: 761, column: 7, scope: !5431)
!5438 = !DILocation(line: 762, column: 4, scope: !5436)
!5439 = !DILocation(line: 763, column: 2, scope: !5431)
!5440 = !DILocation(line: 766, column: 35, scope: !5282)
!5441 = !DILocation(line: 766, column: 19, scope: !5282)
!5442 = !DILocation(line: 766, column: 2, scope: !5282)
!5443 = !DILocation(line: 766, column: 8, scope: !5282)
!5444 = !DILocation(line: 766, column: 17, scope: !5282)
!5445 = !DILocation(line: 768, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 768, column: 6)
!5447 = !DILocation(line: 768, column: 12, scope: !5446)
!5448 = !DILocation(line: 768, column: 21, scope: !5446)
!5449 = !DILocation(line: 768, column: 6, scope: !5282)
!5450 = !DILocation(line: 769, column: 3, scope: !5446)
!5451 = !DILocation(line: 769, column: 9, scope: !5446)
!5452 = !DILocation(line: 769, column: 22, scope: !5446)
!5453 = !DILocation(line: 771, column: 3, scope: !5446)
!5454 = !DILocation(line: 771, column: 9, scope: !5446)
!5455 = !DILocation(line: 771, column: 22, scope: !5446)
!5456 = !DILocation(line: 773, column: 8, scope: !5282)
!5457 = !DILocation(line: 773, column: 14, scope: !5282)
!5458 = !DILocation(line: 773, column: 23, scope: !5282)
!5459 = !DILocation(line: 773, column: 32, scope: !5282)
!5460 = !DILocation(line: 773, column: 6, scope: !5282)
!5461 = !DILocation(line: 774, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 774, column: 6)
!5463 = !DILocation(line: 774, column: 6, scope: !5282)
!5464 = !DILocation(line: 775, column: 3, scope: !5462)
!5465 = !DILocation(line: 778, column: 9, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 778, column: 2)
!5467 = !DILocation(line: 778, column: 7, scope: !5466)
!5468 = !DILocation(line: 778, column: 15, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 778, column: 2)
!5470 = !DILocation(line: 778, column: 17, scope: !5469)
!5471 = !DILocation(line: 778, column: 2, scope: !5466)
!5472 = !DILocation(line: 779, column: 18, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 778, column: 36)
!5474 = !DILocation(line: 779, column: 24, scope: !5473)
!5475 = !DILocation(line: 779, column: 29, scope: !5473)
!5476 = !DILocation(line: 779, column: 9, scope: !5473)
!5477 = !DILocation(line: 779, column: 7, scope: !5473)
!5478 = !DILocation(line: 780, column: 7, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 780, column: 7)
!5480 = !DILocation(line: 780, column: 7, scope: !5473)
!5481 = !DILocation(line: 781, column: 4, scope: !5479)
!5482 = !DILocation(line: 782, column: 2, scope: !5473)
!5483 = !DILocation(line: 778, column: 31, scope: !5469)
!5484 = !DILocation(line: 778, column: 2, scope: !5469)
!5485 = distinct !{!5485, !5471, !5486}
!5486 = !DILocation(line: 782, column: 2, scope: !5466)
!5487 = !DILocation(line: 785, column: 9, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 785, column: 2)
!5489 = !DILocation(line: 785, column: 7, scope: !5488)
!5490 = !DILocation(line: 785, column: 15, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 785, column: 2)
!5492 = !DILocation(line: 785, column: 17, scope: !5491)
!5493 = !DILocation(line: 785, column: 2, scope: !5488)
!5494 = !DILocation(line: 786, column: 22, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 785, column: 36)
!5496 = !DILocation(line: 786, column: 28, scope: !5495)
!5497 = !DILocation(line: 786, column: 33, scope: !5495)
!5498 = !DILocation(line: 786, column: 9, scope: !5495)
!5499 = !DILocation(line: 786, column: 7, scope: !5495)
!5500 = !DILocation(line: 787, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 787, column: 7)
!5502 = !DILocation(line: 787, column: 7, scope: !5495)
!5503 = !DILocation(line: 788, column: 4, scope: !5501)
!5504 = !DILocation(line: 789, column: 2, scope: !5495)
!5505 = !DILocation(line: 785, column: 31, scope: !5491)
!5506 = !DILocation(line: 785, column: 2, scope: !5491)
!5507 = distinct !{!5507, !5493, !5508}
!5508 = !DILocation(line: 789, column: 2, scope: !5488)
!5509 = !DILocation(line: 791, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 791, column: 6)
!5511 = !DILocation(line: 791, column: 12, scope: !5510)
!5512 = !DILocation(line: 791, column: 21, scope: !5510)
!5513 = !DILocation(line: 791, column: 6, scope: !5282)
!5514 = !DILocation(line: 792, column: 9, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 791, column: 36)
!5516 = !DILocation(line: 792, column: 15, scope: !5515)
!5517 = !DILocation(line: 792, column: 24, scope: !5515)
!5518 = !DILocation(line: 792, column: 38, scope: !5515)
!5519 = !DILocation(line: 792, column: 7, scope: !5515)
!5520 = !DILocation(line: 793, column: 7, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 793, column: 7)
!5522 = !DILocation(line: 793, column: 7, scope: !5515)
!5523 = !DILocation(line: 794, column: 4, scope: !5521)
!5524 = !DILocation(line: 795, column: 2, scope: !5515)
!5525 = !DILocation(line: 797, column: 29, scope: !5282)
!5526 = !DILocation(line: 797, column: 45, scope: !5282)
!5527 = !DILocation(line: 797, column: 8, scope: !5282)
!5528 = !DILocation(line: 797, column: 6, scope: !5282)
!5529 = !DILocation(line: 798, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 798, column: 6)
!5531 = !DILocation(line: 798, column: 6, scope: !5282)
!5532 = !DILocation(line: 799, column: 3, scope: !5530)
!5533 = !DILocation(line: 801, column: 33, scope: !5282)
!5534 = !DILocation(line: 801, column: 39, scope: !5282)
!5535 = !DILocation(line: 801, column: 8, scope: !5282)
!5536 = !DILocation(line: 801, column: 6, scope: !5282)
!5537 = !DILocation(line: 802, column: 6, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 802, column: 6)
!5539 = !DILocation(line: 802, column: 6, scope: !5282)
!5540 = !DILocation(line: 803, column: 3, scope: !5538)
!5541 = !DILocation(line: 805, column: 24, scope: !5282)
!5542 = !DILocation(line: 805, column: 2, scope: !5282)
!5543 = !DILocation(line: 806, column: 20, scope: !5282)
!5544 = !DILocation(line: 806, column: 2, scope: !5282)
!5545 = !DILocation(line: 807, column: 22, scope: !5282)
!5546 = !DILocation(line: 807, column: 2, scope: !5282)
!5547 = !DILocation(line: 809, column: 2, scope: !5282)
!5548 = !DILabel(scope: !5282, name: "err_phys_power", file: !3, line: 811)
!5549 = !DILocation(line: 811, column: 1, scope: !5282)
!5550 = !DILocation(line: 812, column: 9, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 812, column: 2)
!5552 = !DILocation(line: 812, column: 7, scope: !5551)
!5553 = !DILocation(line: 812, column: 15, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 812, column: 2)
!5555 = !DILocation(line: 812, column: 17, scope: !5554)
!5556 = !DILocation(line: 812, column: 2, scope: !5551)
!5557 = !DILocation(line: 813, column: 17, scope: !5554)
!5558 = !DILocation(line: 813, column: 23, scope: !5554)
!5559 = !DILocation(line: 813, column: 28, scope: !5554)
!5560 = !DILocation(line: 813, column: 3, scope: !5554)
!5561 = !DILocation(line: 812, column: 31, scope: !5554)
!5562 = !DILocation(line: 812, column: 2, scope: !5554)
!5563 = distinct !{!5563, !5556, !5564}
!5564 = !DILocation(line: 813, column: 30, scope: !5551)
!5565 = !DILabel(scope: !5282, name: "err_phys_exit", file: !3, line: 815)
!5566 = !DILocation(line: 815, column: 1, scope: !5282)
!5567 = !DILocation(line: 816, column: 9, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 816, column: 2)
!5569 = !DILocation(line: 816, column: 7, scope: !5568)
!5570 = !DILocation(line: 816, column: 15, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 816, column: 2)
!5572 = !DILocation(line: 816, column: 17, scope: !5571)
!5573 = !DILocation(line: 816, column: 2, scope: !5568)
!5574 = !DILocation(line: 817, column: 12, scope: !5571)
!5575 = !DILocation(line: 817, column: 18, scope: !5571)
!5576 = !DILocation(line: 817, column: 23, scope: !5571)
!5577 = !DILocation(line: 817, column: 3, scope: !5571)
!5578 = !DILocation(line: 816, column: 31, scope: !5571)
!5579 = !DILocation(line: 816, column: 2, scope: !5571)
!5580 = distinct !{!5580, !5573, !5581}
!5581 = !DILocation(line: 817, column: 25, scope: !5568)
!5582 = !DILabel(scope: !5282, name: "err_disable_clks", file: !3, line: 819)
!5583 = !DILocation(line: 819, column: 1, scope: !5282)
!5584 = !DILocation(line: 820, column: 29, scope: !5282)
!5585 = !DILocation(line: 820, column: 35, scope: !5282)
!5586 = !DILocation(line: 820, column: 44, scope: !5282)
!5587 = !DILocation(line: 821, column: 8, scope: !5282)
!5588 = !DILocation(line: 821, column: 14, scope: !5282)
!5589 = !DILocation(line: 821, column: 23, scope: !5282)
!5590 = !DILocation(line: 820, column: 2, scope: !5282)
!5591 = !DILocation(line: 823, column: 9, scope: !5282)
!5592 = !DILocation(line: 823, column: 2, scope: !5282)
!5593 = !DILocation(line: 824, column: 1, scope: !5282)
!5594 = distinct !DISubprogram(name: "dwc3_meson_g12a_remove", scope: !3, file: !3, line: 826, type: !245, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5595 = !DILocalVariable(name: "pdev", arg: 1, scope: !5594, file: !3, line: 826, type: !247)
!5596 = !DILocation(line: 826, column: 59, scope: !5594)
!5597 = !DILocalVariable(name: "priv", scope: !5594, file: !3, line: 828, type: !5006)
!5598 = !DILocation(line: 828, column: 26, scope: !5594)
!5599 = !DILocation(line: 828, column: 54, scope: !5594)
!5600 = !DILocation(line: 828, column: 33, scope: !5594)
!5601 = !DILocalVariable(name: "dev", scope: !5594, file: !3, line: 829, type: !1717)
!5602 = !DILocation(line: 829, column: 17, scope: !5594)
!5603 = !DILocation(line: 829, column: 24, scope: !5594)
!5604 = !DILocation(line: 829, column: 30, scope: !5594)
!5605 = !DILocalVariable(name: "i", scope: !5594, file: !3, line: 830, type: !197)
!5606 = !DILocation(line: 830, column: 6, scope: !5594)
!5607 = !DILocation(line: 832, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 832, column: 6)
!5609 = !DILocation(line: 832, column: 12, scope: !5608)
!5610 = !DILocation(line: 832, column: 21, scope: !5608)
!5611 = !DILocation(line: 832, column: 6, scope: !5594)
!5612 = !DILocation(line: 833, column: 30, scope: !5608)
!5613 = !DILocation(line: 833, column: 36, scope: !5608)
!5614 = !DILocation(line: 833, column: 3, scope: !5608)
!5615 = !DILocation(line: 835, column: 25, scope: !5594)
!5616 = !DILocation(line: 835, column: 2, scope: !5594)
!5617 = !DILocation(line: 837, column: 9, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 837, column: 2)
!5619 = !DILocation(line: 837, column: 7, scope: !5618)
!5620 = !DILocation(line: 837, column: 15, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 837, column: 2)
!5622 = !DILocation(line: 837, column: 17, scope: !5621)
!5623 = !DILocation(line: 837, column: 2, scope: !5618)
!5624 = !DILocation(line: 838, column: 17, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 837, column: 36)
!5626 = !DILocation(line: 838, column: 23, scope: !5625)
!5627 = !DILocation(line: 838, column: 28, scope: !5625)
!5628 = !DILocation(line: 838, column: 3, scope: !5625)
!5629 = !DILocation(line: 839, column: 12, scope: !5625)
!5630 = !DILocation(line: 839, column: 18, scope: !5625)
!5631 = !DILocation(line: 839, column: 23, scope: !5625)
!5632 = !DILocation(line: 839, column: 3, scope: !5625)
!5633 = !DILocation(line: 840, column: 2, scope: !5625)
!5634 = !DILocation(line: 837, column: 31, scope: !5621)
!5635 = !DILocation(line: 837, column: 2, scope: !5621)
!5636 = distinct !{!5636, !5623, !5637}
!5637 = !DILocation(line: 840, column: 2, scope: !5618)
!5638 = !DILocation(line: 842, column: 21, scope: !5594)
!5639 = !DILocation(line: 842, column: 2, scope: !5594)
!5640 = !DILocation(line: 843, column: 24, scope: !5594)
!5641 = !DILocation(line: 843, column: 2, scope: !5594)
!5642 = !DILocation(line: 844, column: 27, scope: !5594)
!5643 = !DILocation(line: 844, column: 2, scope: !5594)
!5644 = !DILocation(line: 846, column: 29, scope: !5594)
!5645 = !DILocation(line: 846, column: 35, scope: !5594)
!5646 = !DILocation(line: 846, column: 44, scope: !5594)
!5647 = !DILocation(line: 847, column: 8, scope: !5594)
!5648 = !DILocation(line: 847, column: 14, scope: !5594)
!5649 = !DILocation(line: 847, column: 23, scope: !5594)
!5650 = !DILocation(line: 846, column: 2, scope: !5594)
!5651 = !DILocation(line: 849, column: 2, scope: !5594)
!5652 = distinct !DISubprogram(name: "devm_kzalloc", scope: !115, file: !115, line: 215, type: !5653, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!195, !1717, !363, !192}
!5655 = !DILocalVariable(name: "dev", arg: 1, scope: !5652, file: !115, line: 215, type: !1717)
!5656 = !DILocation(line: 215, column: 49, scope: !5652)
!5657 = !DILocalVariable(name: "size", arg: 2, scope: !5652, file: !115, line: 215, type: !363)
!5658 = !DILocation(line: 215, column: 61, scope: !5652)
!5659 = !DILocalVariable(name: "gfp", arg: 3, scope: !5652, file: !115, line: 215, type: !192)
!5660 = !DILocation(line: 215, column: 73, scope: !5652)
!5661 = !DILocation(line: 217, column: 22, scope: !5652)
!5662 = !DILocation(line: 217, column: 27, scope: !5652)
!5663 = !DILocation(line: 217, column: 33, scope: !5652)
!5664 = !DILocation(line: 217, column: 37, scope: !5652)
!5665 = !DILocation(line: 217, column: 9, scope: !5652)
!5666 = !DILocation(line: 217, column: 2, scope: !5652)
!5667 = distinct !DISubprogram(name: "IS_ERR", scope: !5668, file: !5668, line: 34, type: !5669, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5668 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!254, !3278}
!5671 = !DILocalVariable(name: "ptr", arg: 1, scope: !5667, file: !5668, line: 34, type: !3278)
!5672 = !DILocation(line: 34, column: 60, scope: !5667)
!5673 = !DILocation(line: 36, column: 9, scope: !5667)
!5674 = !DILocation(line: 36, column: 2, scope: !5667)
!5675 = distinct !DISubprogram(name: "PTR_ERR", scope: !5668, file: !5668, line: 29, type: !5676, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!196, !3278}
!5678 = !DILocalVariable(name: "ptr", arg: 1, scope: !5675, file: !5668, line: 29, type: !3278)
!5679 = !DILocation(line: 29, column: 61, scope: !5675)
!5680 = !DILocation(line: 31, column: 16, scope: !5675)
!5681 = !DILocation(line: 31, column: 9, scope: !5675)
!5682 = !DILocation(line: 31, column: 2, scope: !5675)
!5683 = distinct !DISubprogram(name: "devm_regulator_get_optional", scope: !5114, file: !5114, line: 342, type: !5684, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!5112, !1717, !251}
!5686 = !DILocalVariable(name: "dev", arg: 1, scope: !5683, file: !5114, line: 342, type: !1717)
!5687 = !DILocation(line: 342, column: 44, scope: !5683)
!5688 = !DILocalVariable(name: "id", arg: 2, scope: !5683, file: !5114, line: 342, type: !251)
!5689 = !DILocation(line: 342, column: 61, scope: !5683)
!5690 = !DILocation(line: 344, column: 9, scope: !5683)
!5691 = !DILocation(line: 344, column: 2, scope: !5683)
!5692 = distinct !DISubprogram(name: "clk_bulk_prepare_enable", scope: !4991, file: !4991, line: 928, type: !5693, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!197, !197, !5695}
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4990)
!5697 = !DILocalVariable(name: "num_clks", arg: 1, scope: !5692, file: !4991, line: 928, type: !197)
!5698 = !DILocation(line: 928, column: 29, scope: !5692)
!5699 = !DILocalVariable(name: "clks", arg: 2, scope: !5692, file: !4991, line: 928, type: !5695)
!5700 = !DILocation(line: 928, column: 67, scope: !5692)
!5701 = !DILocalVariable(name: "ret", scope: !5692, file: !4991, line: 930, type: !197)
!5702 = !DILocation(line: 930, column: 6, scope: !5692)
!5703 = !DILocation(line: 932, column: 25, scope: !5692)
!5704 = !DILocation(line: 932, column: 35, scope: !5692)
!5705 = !DILocation(line: 932, column: 8, scope: !5692)
!5706 = !DILocation(line: 932, column: 6, scope: !5692)
!5707 = !DILocation(line: 933, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5692, file: !4991, line: 933, column: 6)
!5709 = !DILocation(line: 933, column: 6, scope: !5692)
!5710 = !DILocation(line: 934, column: 10, scope: !5708)
!5711 = !DILocation(line: 934, column: 3, scope: !5708)
!5712 = !DILocation(line: 935, column: 24, scope: !5692)
!5713 = !DILocation(line: 935, column: 34, scope: !5692)
!5714 = !DILocation(line: 935, column: 8, scope: !5692)
!5715 = !DILocation(line: 935, column: 6, scope: !5692)
!5716 = !DILocation(line: 936, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5692, file: !4991, line: 936, column: 6)
!5718 = !DILocation(line: 936, column: 6, scope: !5692)
!5719 = !DILocation(line: 937, column: 22, scope: !5717)
!5720 = !DILocation(line: 937, column: 32, scope: !5717)
!5721 = !DILocation(line: 937, column: 3, scope: !5717)
!5722 = !DILocation(line: 939, column: 9, scope: !5692)
!5723 = !DILocation(line: 939, column: 2, scope: !5692)
!5724 = !DILocation(line: 940, column: 1, scope: !5692)
!5725 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !241, file: !241, line: 236, type: !5726, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{null, !247, !195}
!5728 = !DILocalVariable(name: "pdev", arg: 1, scope: !5725, file: !241, line: 236, type: !247)
!5729 = !DILocation(line: 236, column: 65, scope: !5725)
!5730 = !DILocalVariable(name: "data", arg: 2, scope: !5725, file: !241, line: 237, type: !195)
!5731 = !DILocation(line: 237, column: 12, scope: !5725)
!5732 = !DILocation(line: 239, column: 19, scope: !5725)
!5733 = !DILocation(line: 239, column: 25, scope: !5725)
!5734 = !DILocation(line: 239, column: 30, scope: !5725)
!5735 = !DILocation(line: 239, column: 2, scope: !5725)
!5736 = !DILocation(line: 240, column: 1, scope: !5725)
!5737 = distinct !DISubprogram(name: "devm_reset_control_get_shared", scope: !5018, file: !5018, line: 373, type: !5738, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!5016, !1717, !251}
!5740 = !DILocalVariable(name: "dev", arg: 1, scope: !5737, file: !5018, line: 374, type: !1717)
!5741 = !DILocation(line: 374, column: 21, scope: !5737)
!5742 = !DILocalVariable(name: "id", arg: 2, scope: !5737, file: !5018, line: 374, type: !251)
!5743 = !DILocation(line: 374, column: 38, scope: !5737)
!5744 = !DILocation(line: 376, column: 34, scope: !5737)
!5745 = !DILocation(line: 376, column: 39, scope: !5737)
!5746 = !DILocation(line: 376, column: 9, scope: !5737)
!5747 = !DILocation(line: 376, column: 2, scope: !5737)
!5748 = distinct !DISubprogram(name: "dwc3_meson_g12a_get_phys", scope: !3, file: !3, line: 450, type: !5149, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5749 = !DILocalVariable(name: "priv", arg: 1, scope: !5748, file: !3, line: 450, type: !5006)
!5750 = !DILocation(line: 450, column: 61, scope: !5748)
!5751 = !DILocalVariable(name: "phy_name", scope: !5748, file: !3, line: 452, type: !251)
!5752 = !DILocation(line: 452, column: 14, scope: !5748)
!5753 = !DILocalVariable(name: "i", scope: !5748, file: !3, line: 453, type: !197)
!5754 = !DILocation(line: 453, column: 6, scope: !5748)
!5755 = !DILocation(line: 455, column: 9, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 455, column: 2)
!5757 = !DILocation(line: 455, column: 7, scope: !5756)
!5758 = !DILocation(line: 455, column: 15, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 455, column: 2)
!5760 = !DILocation(line: 455, column: 19, scope: !5759)
!5761 = !DILocation(line: 455, column: 25, scope: !5759)
!5762 = !DILocation(line: 455, column: 34, scope: !5759)
!5763 = !DILocation(line: 455, column: 17, scope: !5759)
!5764 = !DILocation(line: 455, column: 2, scope: !5756)
!5765 = !DILocation(line: 456, column: 14, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 455, column: 50)
!5767 = !DILocation(line: 456, column: 20, scope: !5766)
!5768 = !DILocation(line: 456, column: 29, scope: !5766)
!5769 = !DILocation(line: 456, column: 39, scope: !5766)
!5770 = !DILocation(line: 456, column: 12, scope: !5766)
!5771 = !DILocation(line: 457, column: 41, scope: !5766)
!5772 = !DILocation(line: 457, column: 47, scope: !5766)
!5773 = !DILocation(line: 457, column: 52, scope: !5766)
!5774 = !DILocation(line: 457, column: 19, scope: !5766)
!5775 = !DILocation(line: 457, column: 3, scope: !5766)
!5776 = !DILocation(line: 457, column: 9, scope: !5766)
!5777 = !DILocation(line: 457, column: 14, scope: !5766)
!5778 = !DILocation(line: 457, column: 17, scope: !5766)
!5779 = !DILocation(line: 458, column: 8, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 458, column: 7)
!5781 = !DILocation(line: 458, column: 14, scope: !5780)
!5782 = !DILocation(line: 458, column: 19, scope: !5780)
!5783 = !DILocation(line: 458, column: 7, scope: !5766)
!5784 = !DILocation(line: 459, column: 4, scope: !5780)
!5785 = !DILocation(line: 461, column: 14, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 461, column: 7)
!5787 = !DILocation(line: 461, column: 20, scope: !5786)
!5788 = !DILocation(line: 461, column: 25, scope: !5786)
!5789 = !DILocation(line: 461, column: 7, scope: !5786)
!5790 = !DILocation(line: 461, column: 7, scope: !5766)
!5791 = !DILocation(line: 462, column: 19, scope: !5786)
!5792 = !DILocation(line: 462, column: 25, scope: !5786)
!5793 = !DILocation(line: 462, column: 30, scope: !5786)
!5794 = !DILocation(line: 462, column: 11, scope: !5786)
!5795 = !DILocation(line: 462, column: 4, scope: !5786)
!5796 = !DILocation(line: 464, column: 14, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 464, column: 7)
!5798 = !DILocation(line: 464, column: 7, scope: !5797)
!5799 = !DILocation(line: 464, column: 7, scope: !5766)
!5800 = !DILocation(line: 465, column: 4, scope: !5797)
!5801 = !DILocation(line: 465, column: 10, scope: !5797)
!5802 = !DILocation(line: 465, column: 20, scope: !5797)
!5803 = !DILocation(line: 467, column: 4, scope: !5797)
!5804 = !DILocation(line: 467, column: 10, scope: !5797)
!5805 = !DILocation(line: 467, column: 20, scope: !5797)
!5806 = !DILocation(line: 468, column: 2, scope: !5766)
!5807 = !DILocation(line: 455, column: 45, scope: !5759)
!5808 = !DILocation(line: 455, column: 2, scope: !5759)
!5809 = distinct !{!5809, !5764, !5810}
!5810 = !DILocation(line: 468, column: 2, scope: !5756)
!5811 = !DILocation(line: 470, column: 2, scope: !5748)
!5812 = !DILocation(line: 471, column: 2, scope: !5748)
!5813 = !DILocation(line: 473, column: 2, scope: !5748)
!5814 = !DILocation(line: 474, column: 1, scope: !5748)
!5815 = distinct !DISubprogram(name: "regulator_enable", scope: !5114, file: !5114, line: 410, type: !5816, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!197, !5112}
!5818 = !DILocalVariable(name: "regulator", arg: 1, scope: !5815, file: !5114, line: 410, type: !5112)
!5819 = !DILocation(line: 410, column: 54, scope: !5815)
!5820 = !DILocation(line: 412, column: 2, scope: !5815)
!5821 = distinct !DISubprogram(name: "dwc3_meson_g12a_otg_init", scope: !3, file: !3, line: 585, type: !5822, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!197, !247, !5006}
!5824 = !DILocalVariable(name: "pdev", arg: 1, scope: !5821, file: !3, line: 585, type: !247)
!5825 = !DILocation(line: 585, column: 61, scope: !5821)
!5826 = !DILocalVariable(name: "priv", arg: 2, scope: !5821, file: !3, line: 586, type: !5006)
!5827 = !DILocation(line: 586, column: 33, scope: !5821)
!5828 = !DILocalVariable(name: "otg_id", scope: !5821, file: !3, line: 588, type: !128)
!5829 = !DILocation(line: 588, column: 16, scope: !5821)
!5830 = !DILocalVariable(name: "ret", scope: !5821, file: !3, line: 589, type: !197)
!5831 = !DILocation(line: 589, column: 6, scope: !5821)
!5832 = !DILocalVariable(name: "irq", scope: !5821, file: !3, line: 589, type: !197)
!5833 = !DILocation(line: 589, column: 11, scope: !5821)
!5834 = !DILocalVariable(name: "dev", scope: !5821, file: !3, line: 590, type: !1717)
!5835 = !DILocation(line: 590, column: 17, scope: !5821)
!5836 = !DILocation(line: 590, column: 24, scope: !5821)
!5837 = !DILocation(line: 590, column: 30, scope: !5821)
!5838 = !DILocation(line: 592, column: 7, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 592, column: 6)
!5840 = !DILocation(line: 592, column: 13, scope: !5839)
!5841 = !DILocation(line: 592, column: 22, scope: !5839)
!5842 = !DILocation(line: 592, column: 6, scope: !5821)
!5843 = !DILocation(line: 593, column: 3, scope: !5839)
!5844 = !DILocation(line: 595, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 595, column: 6)
!5846 = !DILocation(line: 595, column: 12, scope: !5845)
!5847 = !DILocation(line: 595, column: 21, scope: !5845)
!5848 = !DILocation(line: 595, column: 6, scope: !5821)
!5849 = !DILocation(line: 597, column: 22, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 595, column: 41)
!5851 = !DILocation(line: 597, column: 28, scope: !5850)
!5852 = !DILocation(line: 597, column: 3, scope: !5850)
!5853 = !DILocation(line: 600, column: 26, scope: !5850)
!5854 = !DILocation(line: 600, column: 9, scope: !5850)
!5855 = !DILocation(line: 600, column: 7, scope: !5850)
!5856 = !DILocation(line: 601, column: 36, scope: !5850)
!5857 = !DILocation(line: 601, column: 42, scope: !5850)
!5858 = !DILocation(line: 601, column: 47, scope: !5850)
!5859 = !DILocation(line: 603, column: 21, scope: !5850)
!5860 = !DILocation(line: 603, column: 27, scope: !5850)
!5861 = !DILocation(line: 603, column: 33, scope: !5850)
!5862 = !DILocation(line: 601, column: 9, scope: !5850)
!5863 = !DILocation(line: 601, column: 7, scope: !5850)
!5864 = !DILocation(line: 604, column: 7, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 604, column: 7)
!5866 = !DILocation(line: 604, column: 7, scope: !5850)
!5867 = !DILocation(line: 605, column: 11, scope: !5865)
!5868 = !DILocation(line: 605, column: 4, scope: !5865)
!5869 = !DILocation(line: 606, column: 2, scope: !5850)
!5870 = !DILocation(line: 609, column: 6, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 609, column: 6)
!5872 = !DILocation(line: 609, column: 12, scope: !5871)
!5873 = !DILocation(line: 609, column: 21, scope: !5871)
!5874 = !DILocation(line: 609, column: 6, scope: !5821)
!5875 = !DILocation(line: 610, column: 35, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 609, column: 41)
!5877 = !DILocation(line: 610, column: 12, scope: !5876)
!5878 = !DILocation(line: 610, column: 10, scope: !5876)
!5879 = !DILocation(line: 611, column: 7, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 611, column: 7)
!5881 = !DILocation(line: 611, column: 17, scope: !5880)
!5882 = !DILocation(line: 611, column: 23, scope: !5880)
!5883 = !DILocation(line: 611, column: 14, scope: !5880)
!5884 = !DILocation(line: 611, column: 7, scope: !5876)
!5885 = !DILocation(line: 612, column: 37, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 612, column: 8)
!5887 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 611, column: 37)
!5888 = !DILocation(line: 612, column: 43, scope: !5886)
!5889 = !DILocation(line: 612, column: 8, scope: !5886)
!5890 = !DILocation(line: 612, column: 8, scope: !5887)
!5891 = !DILocation(line: 613, column: 5, scope: !5886)
!5892 = !DILocation(line: 614, column: 3, scope: !5887)
!5893 = !DILocation(line: 615, column: 2, scope: !5876)
!5894 = !DILocation(line: 618, column: 58, scope: !5821)
!5895 = !DILocation(line: 618, column: 32, scope: !5821)
!5896 = !DILocation(line: 618, column: 2, scope: !5821)
!5897 = !DILocation(line: 618, column: 8, scope: !5821)
!5898 = !DILocation(line: 618, column: 20, scope: !5821)
!5899 = !DILocation(line: 618, column: 30, scope: !5821)
!5900 = !DILocation(line: 620, column: 52, scope: !5821)
!5901 = !DILocation(line: 620, column: 26, scope: !5821)
!5902 = !DILocation(line: 620, column: 2, scope: !5821)
!5903 = !DILocation(line: 620, column: 8, scope: !5821)
!5904 = !DILocation(line: 620, column: 20, scope: !5821)
!5905 = !DILocation(line: 620, column: 24, scope: !5821)
!5906 = !DILocation(line: 621, column: 2, scope: !5821)
!5907 = !DILocation(line: 621, column: 8, scope: !5821)
!5908 = !DILocation(line: 621, column: 20, scope: !5821)
!5909 = !DILocation(line: 621, column: 44, scope: !5821)
!5910 = !DILocation(line: 622, column: 2, scope: !5821)
!5911 = !DILocation(line: 622, column: 8, scope: !5821)
!5912 = !DILocation(line: 622, column: 20, scope: !5821)
!5913 = !DILocation(line: 622, column: 24, scope: !5821)
!5914 = !DILocation(line: 623, column: 2, scope: !5821)
!5915 = !DILocation(line: 623, column: 8, scope: !5821)
!5916 = !DILocation(line: 623, column: 20, scope: !5821)
!5917 = !DILocation(line: 623, column: 24, scope: !5821)
!5918 = !DILocation(line: 624, column: 34, scope: !5821)
!5919 = !DILocation(line: 624, column: 2, scope: !5821)
!5920 = !DILocation(line: 624, column: 8, scope: !5821)
!5921 = !DILocation(line: 624, column: 20, scope: !5821)
!5922 = !DILocation(line: 624, column: 32, scope: !5821)
!5923 = !DILocation(line: 626, column: 47, scope: !5821)
!5924 = !DILocation(line: 626, column: 53, scope: !5821)
!5925 = !DILocation(line: 626, column: 59, scope: !5821)
!5926 = !DILocation(line: 626, column: 22, scope: !5821)
!5927 = !DILocation(line: 626, column: 2, scope: !5821)
!5928 = !DILocation(line: 626, column: 8, scope: !5821)
!5929 = !DILocation(line: 626, column: 20, scope: !5821)
!5930 = !DILocation(line: 627, column: 13, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 627, column: 6)
!5932 = !DILocation(line: 627, column: 19, scope: !5931)
!5933 = !DILocation(line: 627, column: 6, scope: !5931)
!5934 = !DILocation(line: 627, column: 6, scope: !5821)
!5935 = !DILocation(line: 628, column: 3, scope: !5931)
!5936 = !DILocation(line: 630, column: 2, scope: !5821)
!5937 = !DILocation(line: 631, column: 1, scope: !5821)
!5938 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !5939, file: !5939, line: 495, type: !4503, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5939 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5940 = !DILocalVariable(name: "dev", arg: 1, scope: !5938, file: !5939, line: 495, type: !1717)
!5941 = !DILocation(line: 495, column: 56, scope: !5938)
!5942 = !DILocation(line: 497, column: 33, scope: !5938)
!5943 = !DILocation(line: 497, column: 9, scope: !5938)
!5944 = !DILocation(line: 497, column: 2, scope: !5938)
!5945 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !5939, file: !5939, line: 384, type: !4503, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5946 = !DILocalVariable(name: "dev", arg: 1, scope: !5945, file: !5939, line: 384, type: !1717)
!5947 = !DILocation(line: 384, column: 54, scope: !5945)
!5948 = !DILocation(line: 386, column: 29, scope: !5945)
!5949 = !DILocation(line: 386, column: 9, scope: !5945)
!5950 = !DILocation(line: 386, column: 2, scope: !5945)
!5951 = distinct !DISubprogram(name: "clk_bulk_disable_unprepare", scope: !4991, file: !4991, line: 942, type: !5952, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5952 = !DISubroutineType(types: !5953)
!5953 = !{null, !197, !5695}
!5954 = !DILocalVariable(name: "num_clks", arg: 1, scope: !5951, file: !4991, line: 942, type: !197)
!5955 = !DILocation(line: 942, column: 51, scope: !5951)
!5956 = !DILocalVariable(name: "clks", arg: 2, scope: !5951, file: !4991, line: 943, type: !5695)
!5957 = !DILocation(line: 943, column: 40, scope: !5951)
!5958 = !DILocation(line: 945, column: 19, scope: !5951)
!5959 = !DILocation(line: 945, column: 29, scope: !5951)
!5960 = !DILocation(line: 945, column: 2, scope: !5951)
!5961 = !DILocation(line: 946, column: 21, scope: !5951)
!5962 = !DILocation(line: 946, column: 31, scope: !5951)
!5963 = !DILocation(line: 946, column: 2, scope: !5951)
!5964 = !DILocation(line: 947, column: 1, scope: !5951)
!5965 = distinct !DISubprogram(name: "ERR_PTR", scope: !5668, file: !5668, line: 24, type: !5966, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!195, !196}
!5968 = !DILocalVariable(name: "error", arg: 1, scope: !5965, file: !5668, line: 24, type: !196)
!5969 = !DILocation(line: 24, column: 48, scope: !5965)
!5970 = !DILocation(line: 26, column: 18, scope: !5965)
!5971 = !DILocation(line: 26, column: 9, scope: !5965)
!5972 = !DILocation(line: 26, column: 2, scope: !5965)
!5973 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !115, file: !115, line: 660, type: !5974, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{null, !1717, !195}
!5976 = !DILocalVariable(name: "dev", arg: 1, scope: !5973, file: !115, line: 660, type: !1717)
!5977 = !DILocation(line: 660, column: 51, scope: !5973)
!5978 = !DILocalVariable(name: "data", arg: 2, scope: !5973, file: !115, line: 660, type: !195)
!5979 = !DILocation(line: 660, column: 62, scope: !5973)
!5980 = !DILocation(line: 662, column: 21, scope: !5973)
!5981 = !DILocation(line: 662, column: 2, scope: !5973)
!5982 = !DILocation(line: 662, column: 7, scope: !5973)
!5983 = !DILocation(line: 662, column: 19, scope: !5973)
!5984 = !DILocation(line: 663, column: 1, scope: !5973)
!5985 = distinct !DISubprogram(name: "regmap_update_bits", scope: !176, file: !176, line: 1068, type: !5986, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!197, !5012, !7, !7, !7}
!5988 = !DILocalVariable(name: "map", arg: 1, scope: !5985, file: !176, line: 1068, type: !5012)
!5989 = !DILocation(line: 1068, column: 53, scope: !5985)
!5990 = !DILocalVariable(name: "reg", arg: 2, scope: !5985, file: !176, line: 1068, type: !7)
!5991 = !DILocation(line: 1068, column: 71, scope: !5985)
!5992 = !DILocalVariable(name: "mask", arg: 3, scope: !5985, file: !176, line: 1069, type: !7)
!5993 = !DILocation(line: 1069, column: 23, scope: !5985)
!5994 = !DILocalVariable(name: "val", arg: 4, scope: !5985, file: !176, line: 1069, type: !7)
!5995 = !DILocation(line: 1069, column: 42, scope: !5985)
!5996 = !DILocation(line: 1071, column: 33, scope: !5985)
!5997 = !DILocation(line: 1071, column: 38, scope: !5985)
!5998 = !DILocation(line: 1071, column: 43, scope: !5985)
!5999 = !DILocation(line: 1071, column: 49, scope: !5985)
!6000 = !DILocation(line: 1071, column: 9, scope: !5985)
!6001 = !DILocation(line: 1071, column: 2, scope: !5985)
!6002 = distinct !DISubprogram(name: "dwc3_meson_g12a_irq_thread", scope: !3, file: !3, line: 550, type: !6003, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!6005, !197, !195}
!6005 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !170, line: 17, baseType: !169)
!6006 = !DILocalVariable(name: "irq", arg: 1, scope: !6002, file: !3, line: 550, type: !197)
!6007 = !DILocation(line: 550, column: 51, scope: !6002)
!6008 = !DILocalVariable(name: "data", arg: 2, scope: !6002, file: !3, line: 550, type: !195)
!6009 = !DILocation(line: 550, column: 62, scope: !6002)
!6010 = !DILocalVariable(name: "priv", scope: !6002, file: !3, line: 552, type: !5006)
!6011 = !DILocation(line: 552, column: 26, scope: !6002)
!6012 = !DILocation(line: 552, column: 33, scope: !6002)
!6013 = !DILocalVariable(name: "otg_id", scope: !6002, file: !3, line: 553, type: !128)
!6014 = !DILocation(line: 553, column: 16, scope: !6002)
!6015 = !DILocation(line: 555, column: 34, scope: !6002)
!6016 = !DILocation(line: 555, column: 11, scope: !6002)
!6017 = !DILocation(line: 555, column: 9, scope: !6002)
!6018 = !DILocation(line: 556, column: 6, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 556, column: 6)
!6020 = !DILocation(line: 556, column: 16, scope: !6019)
!6021 = !DILocation(line: 556, column: 22, scope: !6019)
!6022 = !DILocation(line: 556, column: 13, scope: !6019)
!6023 = !DILocation(line: 556, column: 6, scope: !6002)
!6024 = !DILocation(line: 557, column: 36, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 557, column: 7)
!6026 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 556, column: 36)
!6027 = !DILocation(line: 557, column: 42, scope: !6025)
!6028 = !DILocation(line: 557, column: 7, scope: !6025)
!6029 = !DILocation(line: 557, column: 7, scope: !6026)
!6030 = !DILocation(line: 558, column: 4, scope: !6025)
!6031 = !DILocation(line: 559, column: 2, scope: !6026)
!6032 = !DILocation(line: 561, column: 21, scope: !6002)
!6033 = !DILocation(line: 561, column: 27, scope: !6002)
!6034 = !DILocation(line: 561, column: 2, scope: !6002)
!6035 = !DILocation(line: 564, column: 2, scope: !6002)
!6036 = distinct !DISubprogram(name: "dwc3_meson_g12a_get_id", scope: !3, file: !3, line: 476, type: !6037, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!128, !5006}
!6039 = !DILocalVariable(name: "priv", arg: 1, scope: !6036, file: !3, line: 476, type: !5006)
!6040 = !DILocation(line: 476, column: 69, scope: !6036)
!6041 = !DILocalVariable(name: "reg", scope: !6036, file: !3, line: 478, type: !204)
!6042 = !DILocation(line: 478, column: 6, scope: !6036)
!6043 = !DILocation(line: 480, column: 14, scope: !6036)
!6044 = !DILocation(line: 480, column: 20, scope: !6036)
!6045 = !DILocation(line: 480, column: 2, scope: !6036)
!6046 = !DILocation(line: 482, column: 6, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 482, column: 6)
!6048 = !DILocation(line: 482, column: 10, scope: !6047)
!6049 = !DILocation(line: 482, column: 6, scope: !6036)
!6050 = !DILocation(line: 483, column: 3, scope: !6047)
!6051 = !DILocation(line: 485, column: 2, scope: !6036)
!6052 = !DILocation(line: 486, column: 1, scope: !6036)
!6053 = distinct !DISubprogram(name: "dwc3_meson_g12a_otg_mode_set", scope: !3, file: !3, line: 488, type: !6054, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!197, !5006, !128}
!6056 = !DILocalVariable(name: "priv", arg: 1, scope: !6053, file: !3, line: 488, type: !5006)
!6057 = !DILocation(line: 488, column: 65, scope: !6053)
!6058 = !DILocalVariable(name: "mode", arg: 2, scope: !6053, file: !3, line: 489, type: !128)
!6059 = !DILocation(line: 489, column: 20, scope: !6053)
!6060 = !DILocalVariable(name: "ret", scope: !6053, file: !3, line: 491, type: !197)
!6061 = !DILocation(line: 491, column: 6, scope: !6053)
!6062 = !DILocation(line: 493, column: 7, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 493, column: 6)
!6064 = !DILocation(line: 493, column: 13, scope: !6063)
!6065 = !DILocation(line: 493, column: 22, scope: !6063)
!6066 = !DILocation(line: 493, column: 43, scope: !6063)
!6067 = !DILocation(line: 493, column: 47, scope: !6063)
!6068 = !DILocation(line: 493, column: 53, scope: !6063)
!6069 = !DILocation(line: 493, column: 6, scope: !6053)
!6070 = !DILocation(line: 494, column: 3, scope: !6063)
!6071 = !DILocation(line: 496, column: 6, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 496, column: 6)
!6073 = !DILocation(line: 496, column: 11, scope: !6072)
!6074 = !DILocation(line: 496, column: 6, scope: !6053)
!6075 = !DILocation(line: 497, column: 3, scope: !6072)
!6076 = !DILocation(line: 499, column: 3, scope: !6072)
!6077 = !DILocation(line: 501, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 501, column: 6)
!6079 = !DILocation(line: 501, column: 12, scope: !6078)
!6080 = !DILocation(line: 501, column: 6, scope: !6053)
!6081 = !DILocation(line: 502, column: 7, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 502, column: 7)
!6083 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 501, column: 18)
!6084 = !DILocation(line: 502, column: 12, scope: !6082)
!6085 = !DILocation(line: 502, column: 7, scope: !6083)
!6086 = !DILocation(line: 503, column: 28, scope: !6082)
!6087 = !DILocation(line: 503, column: 34, scope: !6082)
!6088 = !DILocation(line: 503, column: 10, scope: !6082)
!6089 = !DILocation(line: 503, column: 8, scope: !6082)
!6090 = !DILocation(line: 503, column: 4, scope: !6082)
!6091 = !DILocation(line: 505, column: 27, scope: !6082)
!6092 = !DILocation(line: 505, column: 33, scope: !6082)
!6093 = !DILocation(line: 505, column: 10, scope: !6082)
!6094 = !DILocation(line: 505, column: 8, scope: !6082)
!6095 = !DILocation(line: 506, column: 7, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 506, column: 7)
!6097 = !DILocation(line: 506, column: 7, scope: !6083)
!6098 = !DILocation(line: 507, column: 11, scope: !6096)
!6099 = !DILocation(line: 507, column: 4, scope: !6096)
!6100 = !DILocation(line: 508, column: 2, scope: !6083)
!6101 = !DILocation(line: 510, column: 23, scope: !6053)
!6102 = !DILocation(line: 510, column: 2, scope: !6053)
!6103 = !DILocation(line: 510, column: 8, scope: !6053)
!6104 = !DILocation(line: 510, column: 21, scope: !6053)
!6105 = !DILocation(line: 512, column: 8, scope: !6053)
!6106 = !DILocation(line: 512, column: 14, scope: !6053)
!6107 = !DILocation(line: 512, column: 23, scope: !6053)
!6108 = !DILocation(line: 512, column: 36, scope: !6053)
!6109 = !DILocation(line: 512, column: 56, scope: !6053)
!6110 = !DILocation(line: 512, column: 6, scope: !6053)
!6111 = !DILocation(line: 513, column: 6, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 513, column: 6)
!6113 = !DILocation(line: 513, column: 6, scope: !6053)
!6114 = !DILocation(line: 514, column: 10, scope: !6112)
!6115 = !DILocation(line: 514, column: 3, scope: !6112)
!6116 = !DILocation(line: 516, column: 37, scope: !6053)
!6117 = !DILocation(line: 516, column: 43, scope: !6053)
!6118 = !DILocation(line: 516, column: 2, scope: !6053)
!6119 = !DILocation(line: 518, column: 2, scope: !6053)
!6120 = !DILocation(line: 519, column: 1, scope: !6053)
!6121 = distinct !DISubprogram(name: "dwc3_meson_g12_find_child", scope: !3, file: !3, line: 567, type: !6122, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6122 = !DISubroutineType(types: !6123)
!6123 = !{!1717, !1717, !251}
!6124 = !DILocalVariable(name: "dev", arg: 1, scope: !6121, file: !3, line: 567, type: !1717)
!6125 = !DILocation(line: 567, column: 64, scope: !6121)
!6126 = !DILocalVariable(name: "compatible", arg: 2, scope: !6121, file: !3, line: 568, type: !251)
!6127 = !DILocation(line: 568, column: 19, scope: !6121)
!6128 = !DILocalVariable(name: "pdev", scope: !6121, file: !3, line: 570, type: !247)
!6129 = !DILocation(line: 570, column: 26, scope: !6121)
!6130 = !DILocalVariable(name: "np", scope: !6121, file: !3, line: 571, type: !4765)
!6131 = !DILocation(line: 571, column: 22, scope: !6121)
!6132 = !DILocation(line: 573, column: 31, scope: !6121)
!6133 = !DILocation(line: 573, column: 36, scope: !6121)
!6134 = !DILocation(line: 573, column: 45, scope: !6121)
!6135 = !DILocation(line: 573, column: 7, scope: !6121)
!6136 = !DILocation(line: 573, column: 5, scope: !6121)
!6137 = !DILocation(line: 574, column: 7, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 574, column: 6)
!6139 = !DILocation(line: 574, column: 6, scope: !6121)
!6140 = !DILocation(line: 575, column: 3, scope: !6138)
!6141 = !DILocation(line: 577, column: 32, scope: !6121)
!6142 = !DILocation(line: 577, column: 9, scope: !6121)
!6143 = !DILocation(line: 577, column: 7, scope: !6121)
!6144 = !DILocation(line: 578, column: 14, scope: !6121)
!6145 = !DILocation(line: 578, column: 2, scope: !6121)
!6146 = !DILocation(line: 579, column: 7, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 579, column: 6)
!6148 = !DILocation(line: 579, column: 6, scope: !6121)
!6149 = !DILocation(line: 580, column: 3, scope: !6147)
!6150 = !DILocation(line: 582, column: 10, scope: !6121)
!6151 = !DILocation(line: 582, column: 16, scope: !6121)
!6152 = !DILocation(line: 582, column: 2, scope: !6121)
!6153 = !DILocation(line: 583, column: 1, scope: !6121)
!6154 = !DILocalVariable(name: "sw", arg: 1, scope: !4974, file: !3, line: 521, type: !4977)
!6155 = !DILocation(line: 521, column: 61, scope: !4974)
!6156 = !DILocalVariable(name: "role", arg: 2, scope: !4974, file: !3, line: 522, type: !158)
!6157 = !DILocation(line: 522, column: 23, scope: !4974)
!6158 = !DILocalVariable(name: "priv", scope: !4974, file: !3, line: 524, type: !5006)
!6159 = !DILocation(line: 524, column: 26, scope: !4974)
!6160 = !DILocation(line: 524, column: 61, scope: !4974)
!6161 = !DILocation(line: 524, column: 33, scope: !4974)
!6162 = !DILocalVariable(name: "mode", scope: !4974, file: !3, line: 525, type: !128)
!6163 = !DILocation(line: 525, column: 16, scope: !4974)
!6164 = !DILocation(line: 527, column: 6, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 527, column: 6)
!6166 = !DILocation(line: 527, column: 11, scope: !6165)
!6167 = !DILocation(line: 527, column: 6, scope: !4974)
!6168 = !DILocation(line: 528, column: 3, scope: !6165)
!6169 = !DILocation(line: 530, column: 10, scope: !4974)
!6170 = !DILocation(line: 530, column: 15, scope: !4974)
!6171 = !DILocation(line: 530, column: 9, scope: !4974)
!6172 = !DILocation(line: 530, column: 7, scope: !4974)
!6173 = !DILocation(line: 533, column: 6, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 533, column: 6)
!6175 = !DILocation(line: 533, column: 14, scope: !6174)
!6176 = !DILocation(line: 533, column: 20, scope: !6174)
!6177 = !DILocation(line: 533, column: 11, scope: !6174)
!6178 = !DILocation(line: 533, column: 6, scope: !4974)
!6179 = !DILocation(line: 534, column: 3, scope: !6174)
!6180 = !DILocation(line: 536, column: 6, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 536, column: 6)
!6182 = !DILocation(line: 536, column: 12, scope: !6181)
!6183 = !DILocation(line: 536, column: 21, scope: !6181)
!6184 = !DILocation(line: 536, column: 6, scope: !4974)
!6185 = !DILocation(line: 537, column: 3, scope: !6181)
!6186 = !DILocation(line: 537, column: 3, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 537, column: 3)
!6188 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 537, column: 3)
!6189 = !DILocation(line: 537, column: 3, scope: !6188)
!6190 = !DILocation(line: 537, column: 3, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 537, column: 3)
!6192 = !DILocation(line: 539, column: 38, scope: !4974)
!6193 = !DILocation(line: 539, column: 44, scope: !4974)
!6194 = !DILocation(line: 539, column: 9, scope: !4974)
!6195 = !DILocation(line: 539, column: 2, scope: !4974)
!6196 = !DILocation(line: 540, column: 1, scope: !4974)
!6197 = distinct !DISubprogram(name: "dwc3_meson_g12a_role_get", scope: !3, file: !3, line: 542, type: !5133, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6198 = !DILocalVariable(name: "sw", arg: 1, scope: !6197, file: !3, line: 542, type: !4977)
!6199 = !DILocation(line: 542, column: 71, scope: !6197)
!6200 = !DILocalVariable(name: "priv", scope: !6197, file: !3, line: 544, type: !5006)
!6201 = !DILocation(line: 544, column: 26, scope: !6197)
!6202 = !DILocation(line: 544, column: 61, scope: !6197)
!6203 = !DILocation(line: 544, column: 33, scope: !6197)
!6204 = !DILocation(line: 546, column: 9, scope: !6197)
!6205 = !DILocation(line: 546, column: 15, scope: !6197)
!6206 = !DILocation(line: 546, column: 28, scope: !6197)
!6207 = !DILocation(line: 546, column: 2, scope: !6197)
!6208 = distinct !DISubprogram(name: "regulator_disable", scope: !5114, file: !5114, line: 415, type: !5816, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6209 = !DILocalVariable(name: "regulator", arg: 1, scope: !6208, file: !5114, line: 415, type: !5112)
!6210 = !DILocation(line: 415, column: 55, scope: !6208)
!6211 = !DILocation(line: 417, column: 2, scope: !6208)
!6212 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb_otg_apply_mode", scope: !3, file: !3, line: 378, type: !6213, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{null, !5006, !128}
!6215 = !DILocalVariable(name: "priv", arg: 1, scope: !6212, file: !3, line: 378, type: !5006)
!6216 = !DILocation(line: 378, column: 72, scope: !6212)
!6217 = !DILocalVariable(name: "mode", arg: 2, scope: !6212, file: !3, line: 379, type: !128)
!6218 = !DILocation(line: 379, column: 27, scope: !6212)
!6219 = !DILocation(line: 381, column: 6, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 381, column: 6)
!6221 = !DILocation(line: 381, column: 11, scope: !6220)
!6222 = !DILocation(line: 381, column: 6, scope: !6212)
!6223 = !DILocation(line: 382, column: 7, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 382, column: 7)
!6225 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 381, column: 35)
!6226 = !DILocation(line: 382, column: 13, scope: !6224)
!6227 = !DILocation(line: 382, column: 22, scope: !6224)
!6228 = !DILocation(line: 382, column: 41, scope: !6224)
!6229 = !DILocation(line: 383, column: 7, scope: !6224)
!6230 = !DILocation(line: 383, column: 13, scope: !6224)
!6231 = !DILocation(line: 383, column: 22, scope: !6224)
!6232 = !DILocation(line: 382, column: 7, scope: !6225)
!6233 = !DILocation(line: 385, column: 23, scope: !6224)
!6234 = !DILocation(line: 385, column: 29, scope: !6224)
!6235 = !DILocation(line: 387, column: 5, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 387, column: 5)
!6237 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 387, column: 5)
!6238 = !DILocation(line: 387, column: 5, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 387, column: 5)
!6240 = !DILocation(line: 387, column: 5, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 387, column: 5)
!6242 = !DILocation(line: 387, column: 5, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 387, column: 5)
!6244 = !DILocation(line: 387, column: 5, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 387, column: 5)
!6246 = !DILocation(line: 387, column: 5, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 387, column: 5)
!6248 = !DILocation(line: 387, column: 5, scope: !6237)
!6249 = !DILocation(line: 387, column: 5, scope: !6224)
!6250 = !DILocation(line: 385, column: 4, scope: !6224)
!6251 = !DILocation(line: 390, column: 22, scope: !6225)
!6252 = !DILocation(line: 390, column: 28, scope: !6225)
!6253 = !DILocation(line: 390, column: 3, scope: !6225)
!6254 = !DILocation(line: 392, column: 22, scope: !6225)
!6255 = !DILocation(line: 392, column: 28, scope: !6225)
!6256 = !DILocation(line: 392, column: 3, scope: !6225)
!6257 = !DILocation(line: 394, column: 22, scope: !6225)
!6258 = !DILocation(line: 394, column: 28, scope: !6225)
!6259 = !DILocation(line: 394, column: 3, scope: !6225)
!6260 = !DILocation(line: 396, column: 2, scope: !6225)
!6261 = !DILocation(line: 397, column: 7, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 397, column: 7)
!6263 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 396, column: 9)
!6264 = !DILocation(line: 397, column: 13, scope: !6262)
!6265 = !DILocation(line: 397, column: 22, scope: !6262)
!6266 = !DILocation(line: 397, column: 41, scope: !6262)
!6267 = !DILocation(line: 398, column: 7, scope: !6262)
!6268 = !DILocation(line: 398, column: 13, scope: !6262)
!6269 = !DILocation(line: 398, column: 22, scope: !6262)
!6270 = !DILocation(line: 397, column: 7, scope: !6263)
!6271 = !DILocation(line: 399, column: 23, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 398, column: 49)
!6273 = !DILocation(line: 399, column: 29, scope: !6272)
!6274 = !DILocation(line: 399, column: 4, scope: !6272)
!6275 = !DILocation(line: 401, column: 4, scope: !6272)
!6276 = !DILocation(line: 402, column: 3, scope: !6272)
!6277 = !DILocation(line: 403, column: 22, scope: !6263)
!6278 = !DILocation(line: 403, column: 28, scope: !6263)
!6279 = !DILocation(line: 403, column: 3, scope: !6263)
!6280 = !DILocation(line: 405, column: 22, scope: !6263)
!6281 = !DILocation(line: 405, column: 28, scope: !6263)
!6282 = !DILocation(line: 405, column: 3, scope: !6263)
!6283 = !DILocation(line: 408, column: 1, scope: !6212)
!6284 = distinct !DISubprogram(name: "of_node_put", scope: !4767, file: !4767, line: 129, type: !6285, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{null, !4765}
!6287 = !DILocalVariable(name: "node", arg: 1, scope: !6284, file: !4767, line: 129, type: !4765)
!6288 = !DILocation(line: 129, column: 52, scope: !6284)
!6289 = !DILocation(line: 129, column: 60, scope: !6284)
!6290 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !241, file: !241, line: 231, type: !6291, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{!195, !6293}
!6293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6294, size: 64)
!6294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!6295 = !DILocalVariable(name: "pdev", arg: 1, scope: !6290, file: !241, line: 231, type: !6293)
!6296 = !DILocation(line: 231, column: 72, scope: !6290)
!6297 = !DILocation(line: 233, column: 26, scope: !6290)
!6298 = !DILocation(line: 233, column: 32, scope: !6290)
!6299 = !DILocation(line: 233, column: 9, scope: !6290)
!6300 = !DILocation(line: 233, column: 2, scope: !6290)
!6301 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !5939, file: !5939, line: 524, type: !4494, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6302 = !DILocalVariable(name: "dev", arg: 1, scope: !6301, file: !5939, line: 524, type: !1717)
!6303 = !DILocation(line: 524, column: 54, scope: !6301)
!6304 = !DILocation(line: 526, column: 23, scope: !6301)
!6305 = !DILocation(line: 526, column: 2, scope: !6301)
!6306 = !DILocation(line: 527, column: 1, scope: !6301)
!6307 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !5939, file: !5939, line: 103, type: !4494, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6308 = !DILocalVariable(name: "v", arg: 1, scope: !6309, file: !6310, line: 200, type: !6313)
!6309 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6310, file: !6310, line: 200, type: !6311, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6310 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6311 = !DISubroutineType(types: !6312)
!6312 = !{!254, !6313, !201, !197}
!6313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!6314 = !DILocation(line: 200, column: 63, scope: !6309, inlinedAt: !6315)
!6315 = distinct !DILocation(line: 1093, column: 12, scope: !6316, inlinedAt: !6320)
!6316 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !6317, file: !6317, line: 1086, type: !6318, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6317 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!197, !6313, !197, !197}
!6320 = distinct !DILocation(line: 1113, column: 9, scope: !6321, inlinedAt: !6324)
!6321 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !6317, file: !6317, line: 1111, type: !6322, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!254, !6313, !197, !197}
!6324 = distinct !DILocation(line: 789, column: 9, scope: !6325, inlinedAt: !6327)
!6325 = distinct !DISubprogram(name: "atomic_add_unless", scope: !6326, file: !6326, line: 786, type: !6322, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6326 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6327 = distinct !DILocation(line: 105, column: 2, scope: !6307)
!6328 = !DILocalVariable(name: "old", arg: 2, scope: !6309, file: !6310, line: 200, type: !201)
!6329 = !DILocation(line: 200, column: 71, scope: !6309, inlinedAt: !6315)
!6330 = !DILocalVariable(name: "new", arg: 3, scope: !6309, file: !6310, line: 200, type: !197)
!6331 = !DILocation(line: 200, column: 80, scope: !6309, inlinedAt: !6315)
!6332 = !DILocalVariable(name: "success", scope: !6333, file: !6310, line: 202, type: !254)
!6333 = distinct !DILexicalBlock(scope: !6309, file: !6310, line: 202, column: 9)
!6334 = !DILocation(line: 202, column: 9, scope: !6333, inlinedAt: !6315)
!6335 = !DILocalVariable(name: "_old", scope: !6333, file: !6310, line: 202, type: !201)
!6336 = !DILocalVariable(name: "__old", scope: !6333, file: !6310, line: 202, type: !197)
!6337 = !DILocalVariable(name: "__new", scope: !6333, file: !6310, line: 202, type: !197)
!6338 = !DILocalVariable(name: "__ptr", scope: !6333, file: !6310, line: 202, type: !202)
!6339 = !DILocalVariable(name: "v", arg: 1, scope: !6340, file: !6310, line: 23, type: !6343)
!6340 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6310, file: !6310, line: 23, type: !6341, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!197, !6343}
!6343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6344, size: 64)
!6344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!6345 = !DILocation(line: 23, column: 61, scope: !6340, inlinedAt: !6346)
!6346 = distinct !DILocation(line: 1088, column: 10, scope: !6316, inlinedAt: !6320)
!6347 = !DILocalVariable(name: "v", arg: 1, scope: !6316, file: !6317, line: 1086, type: !6313)
!6348 = !DILocation(line: 1086, column: 40, scope: !6316, inlinedAt: !6320)
!6349 = !DILocalVariable(name: "a", arg: 2, scope: !6316, file: !6317, line: 1086, type: !197)
!6350 = !DILocation(line: 1086, column: 47, scope: !6316, inlinedAt: !6320)
!6351 = !DILocalVariable(name: "u", arg: 3, scope: !6316, file: !6317, line: 1086, type: !197)
!6352 = !DILocation(line: 1086, column: 54, scope: !6316, inlinedAt: !6320)
!6353 = !DILocalVariable(name: "c", scope: !6316, file: !6317, line: 1088, type: !197)
!6354 = !DILocation(line: 1088, column: 6, scope: !6316, inlinedAt: !6320)
!6355 = !DILocalVariable(name: "v", arg: 1, scope: !6321, file: !6317, line: 1111, type: !6313)
!6356 = !DILocation(line: 1111, column: 34, scope: !6321, inlinedAt: !6324)
!6357 = !DILocalVariable(name: "a", arg: 2, scope: !6321, file: !6317, line: 1111, type: !197)
!6358 = !DILocation(line: 1111, column: 41, scope: !6321, inlinedAt: !6324)
!6359 = !DILocalVariable(name: "u", arg: 3, scope: !6321, file: !6317, line: 1111, type: !197)
!6360 = !DILocation(line: 1111, column: 48, scope: !6321, inlinedAt: !6324)
!6361 = !DILocalVariable(name: "v", arg: 1, scope: !6362, file: !6363, line: 99, type: !6366)
!6362 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6363, file: !6363, line: 99, type: !6364, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6363 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6364 = !DISubroutineType(types: !6365)
!6365 = !{null, !6366, !363}
!6366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6367, size: 64)
!6367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6368)
!6368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6369 = !DILocation(line: 99, column: 79, scope: !6362, inlinedAt: !6370)
!6370 = distinct !DILocation(line: 788, column: 2, scope: !6325, inlinedAt: !6327)
!6371 = !DILocalVariable(name: "size", arg: 2, scope: !6362, file: !6363, line: 99, type: !363)
!6372 = !DILocation(line: 99, column: 89, scope: !6362, inlinedAt: !6370)
!6373 = !DILocalVariable(name: "v", arg: 1, scope: !6325, file: !6326, line: 786, type: !6313)
!6374 = !DILocation(line: 786, column: 29, scope: !6325, inlinedAt: !6327)
!6375 = !DILocalVariable(name: "a", arg: 2, scope: !6325, file: !6326, line: 786, type: !197)
!6376 = !DILocation(line: 786, column: 36, scope: !6325, inlinedAt: !6327)
!6377 = !DILocalVariable(name: "u", arg: 3, scope: !6325, file: !6326, line: 786, type: !197)
!6378 = !DILocation(line: 786, column: 43, scope: !6325, inlinedAt: !6327)
!6379 = !DILocalVariable(name: "dev", arg: 1, scope: !6307, file: !5939, line: 103, type: !1717)
!6380 = !DILocation(line: 103, column: 57, scope: !6307)
!6381 = !DILocation(line: 105, column: 21, scope: !6307)
!6382 = !DILocation(line: 105, column: 26, scope: !6307)
!6383 = !DILocation(line: 105, column: 32, scope: !6307)
!6384 = !DILocation(line: 788, column: 31, scope: !6325, inlinedAt: !6327)
!6385 = !DILocation(line: 101, column: 20, scope: !6362, inlinedAt: !6370)
!6386 = !DILocation(line: 101, column: 23, scope: !6362, inlinedAt: !6370)
!6387 = !DILocation(line: 101, column: 2, scope: !6362, inlinedAt: !6370)
!6388 = !DILocation(line: 102, column: 2, scope: !6362, inlinedAt: !6370)
!6389 = !DILocation(line: 789, column: 32, scope: !6325, inlinedAt: !6327)
!6390 = !DILocation(line: 789, column: 35, scope: !6325, inlinedAt: !6327)
!6391 = !DILocation(line: 789, column: 38, scope: !6325, inlinedAt: !6327)
!6392 = !DILocation(line: 1113, column: 38, scope: !6321, inlinedAt: !6324)
!6393 = !DILocation(line: 1113, column: 41, scope: !6321, inlinedAt: !6324)
!6394 = !DILocation(line: 1113, column: 44, scope: !6321, inlinedAt: !6324)
!6395 = !DILocation(line: 1088, column: 27, scope: !6316, inlinedAt: !6320)
!6396 = !DILocation(line: 29, column: 9, scope: !6340, inlinedAt: !6346)
!6397 = !DILocation(line: 1090, column: 2, scope: !6316, inlinedAt: !6320)
!6398 = !DILocation(line: 1091, column: 7, scope: !6399, inlinedAt: !6320)
!6399 = distinct !DILexicalBlock(scope: !6400, file: !6317, line: 1091, column: 7)
!6400 = distinct !DILexicalBlock(scope: !6316, file: !6317, line: 1090, column: 5)
!6401 = !DILocation(line: 1091, column: 7, scope: !6400, inlinedAt: !6320)
!6402 = !DILocation(line: 1092, column: 4, scope: !6399, inlinedAt: !6320)
!6403 = !DILocation(line: 1093, column: 36, scope: !6316, inlinedAt: !6320)
!6404 = !DILocation(line: 1093, column: 43, scope: !6316, inlinedAt: !6320)
!6405 = !DILocation(line: 1093, column: 47, scope: !6316, inlinedAt: !6320)
!6406 = !DILocation(line: 1093, column: 45, scope: !6316, inlinedAt: !6320)
!6407 = !{i32 -2146593868, i32 -2146593713}
!6408 = !DILocation(line: 202, column: 9, scope: !6409, inlinedAt: !6315)
!6409 = distinct !DILexicalBlock(scope: !6333, file: !6310, line: 202, column: 9)
!6410 = !DILocation(line: 202, column: 9, scope: !6309, inlinedAt: !6315)
!6411 = !DILocation(line: 1093, column: 11, scope: !6316, inlinedAt: !6320)
!6412 = !DILocation(line: 1093, column: 2, scope: !6400, inlinedAt: !6320)
!6413 = distinct !{!6413, !6397, !6414}
!6414 = !DILocation(line: 1093, column: 49, scope: !6316, inlinedAt: !6320)
!6415 = !DILocation(line: 1095, column: 9, scope: !6316, inlinedAt: !6320)
!6416 = !DILocation(line: 1113, column: 50, scope: !6321, inlinedAt: !6324)
!6417 = !DILocation(line: 1113, column: 47, scope: !6321, inlinedAt: !6324)
!6418 = !DILocation(line: 106, column: 1, scope: !6307)
!6419 = distinct !DISubprogram(name: "pm_runtime_set_suspended", scope: !5939, file: !5939, line: 509, type: !4503, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6420 = !DILocalVariable(name: "dev", arg: 1, scope: !6419, file: !5939, line: 509, type: !1717)
!6421 = !DILocation(line: 509, column: 59, scope: !6419)
!6422 = !DILocation(line: 511, column: 33, scope: !6419)
!6423 = !DILocation(line: 511, column: 9, scope: !6419)
!6424 = !DILocation(line: 511, column: 2, scope: !6419)
!6425 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !115, file: !115, line: 655, type: !6426, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{!195, !4802}
!6428 = !DILocalVariable(name: "dev", arg: 1, scope: !6425, file: !115, line: 655, type: !4802)
!6429 = !DILocation(line: 655, column: 58, scope: !6425)
!6430 = !DILocation(line: 657, column: 9, scope: !6425)
!6431 = !DILocation(line: 657, column: 14, scope: !6425)
!6432 = !DILocation(line: 657, column: 2, scope: !6425)
!6433 = distinct !DISubprogram(name: "kasan_check_write", scope: !6434, file: !6434, line: 38, type: !6435, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6434 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!254, !6366, !7}
!6437 = !DILocalVariable(name: "p", arg: 1, scope: !6433, file: !6434, line: 38, type: !6366)
!6438 = !DILocation(line: 38, column: 59, scope: !6433)
!6439 = !DILocalVariable(name: "size", arg: 2, scope: !6433, file: !6434, line: 38, type: !7)
!6440 = !DILocation(line: 38, column: 75, scope: !6433)
!6441 = !DILocation(line: 40, column: 2, scope: !6433)
!6442 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6443, file: !6443, line: 178, type: !6444, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6443 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6444 = !DISubroutineType(types: !6445)
!6445 = !{null, !6366, !363, !197}
!6446 = !DILocalVariable(name: "ptr", arg: 1, scope: !6442, file: !6443, line: 178, type: !6366)
!6447 = !DILocation(line: 178, column: 60, scope: !6442)
!6448 = !DILocalVariable(name: "size", arg: 2, scope: !6442, file: !6443, line: 178, type: !363)
!6449 = !DILocation(line: 178, column: 72, scope: !6442)
!6450 = !DILocalVariable(name: "type", arg: 3, scope: !6442, file: !6443, line: 179, type: !197)
!6451 = !DILocation(line: 179, column: 15, scope: !6442)
!6452 = !DILocation(line: 179, column: 23, scope: !6442)
!6453 = distinct !DISubprogram(name: "dwc3_meson_gxl_setup_regmaps", scope: !3, file: !3, line: 633, type: !5004, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6454 = !DILocalVariable(name: "priv", arg: 1, scope: !6453, file: !3, line: 633, type: !5006)
!6455 = !DILocation(line: 633, column: 65, scope: !6453)
!6456 = !DILocalVariable(name: "base", arg: 2, scope: !6453, file: !3, line: 634, type: !195)
!6457 = !DILocation(line: 634, column: 20, scope: !6453)
!6458 = !DILocation(line: 637, column: 26, scope: !6453)
!6459 = !DILocation(line: 637, column: 2, scope: !6453)
!6460 = !DILocation(line: 637, column: 8, scope: !6453)
!6461 = !DILocation(line: 637, column: 24, scope: !6453)
!6462 = !DILocation(line: 639, column: 25, scope: !6453)
!6463 = !DILocation(line: 639, column: 31, scope: !6453)
!6464 = !DILocation(line: 639, column: 9, scope: !6453)
!6465 = !DILocation(line: 639, column: 2, scope: !6453)
!6466 = distinct !DISubprogram(name: "dwc3_meson_gxl_usb2_init_phy", scope: !3, file: !3, line: 278, type: !5144, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6467 = !DILocalVariable(name: "priv", arg: 1, scope: !6466, file: !3, line: 278, type: !5006)
!6468 = !DILocation(line: 278, column: 65, scope: !6466)
!6469 = !DILocalVariable(name: "i", arg: 2, scope: !6466, file: !3, line: 278, type: !197)
!6470 = !DILocation(line: 278, column: 75, scope: !6466)
!6471 = !DILocalVariable(name: "mode", arg: 3, scope: !6466, file: !3, line: 279, type: !128)
!6472 = !DILocation(line: 279, column: 20, scope: !6466)
!6473 = !DILocation(line: 282, column: 9, scope: !6466)
!6474 = !DILocation(line: 282, column: 15, scope: !6466)
!6475 = !DILocation(line: 282, column: 24, scope: !6466)
!6476 = !DILocation(line: 282, column: 37, scope: !6466)
!6477 = !DILocation(line: 282, column: 43, scope: !6466)
!6478 = !DILocation(line: 283, column: 6, scope: !6466)
!6479 = !DILocation(line: 283, column: 8, scope: !6466)
!6480 = !DILocation(line: 283, column: 5, scope: !6466)
!6481 = !DILocation(line: 282, column: 2, scope: !6466)
!6482 = distinct !DISubprogram(name: "dwc3_meson_gxl_set_phy_mode", scope: !3, file: !3, line: 272, type: !5144, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6483 = !DILocalVariable(name: "priv", arg: 1, scope: !6482, file: !3, line: 272, type: !5006)
!6484 = !DILocation(line: 272, column: 64, scope: !6482)
!6485 = !DILocalVariable(name: "i", arg: 2, scope: !6482, file: !3, line: 273, type: !197)
!6486 = !DILocation(line: 273, column: 11, scope: !6482)
!6487 = !DILocalVariable(name: "mode", arg: 3, scope: !6482, file: !3, line: 273, type: !128)
!6488 = !DILocation(line: 273, column: 28, scope: !6482)
!6489 = !DILocation(line: 275, column: 9, scope: !6482)
!6490 = !DILocation(line: 275, column: 2, scope: !6482)
!6491 = distinct !DISubprogram(name: "dwc3_meson_gxl_usb_init", scope: !3, file: !3, line: 682, type: !5149, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6492 = !DILocalVariable(name: "priv", arg: 1, scope: !6491, file: !3, line: 682, type: !5006)
!6493 = !DILocation(line: 682, column: 60, scope: !6491)
!6494 = !DILocation(line: 684, column: 39, scope: !6491)
!6495 = !DILocation(line: 684, column: 9, scope: !6491)
!6496 = !DILocation(line: 684, column: 2, scope: !6491)
!6497 = distinct !DISubprogram(name: "dwc3_meson_gxl_usb_post_init", scope: !3, file: !3, line: 687, type: !5149, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6498 = !DILocalVariable(name: "priv", arg: 1, scope: !6497, file: !3, line: 687, type: !5006)
!6499 = !DILocation(line: 687, column: 65, scope: !6497)
!6500 = !DILocalVariable(name: "ret", scope: !6497, file: !3, line: 689, type: !197)
!6501 = !DILocation(line: 689, column: 6, scope: !6497)
!6502 = !DILocation(line: 691, column: 8, scope: !6497)
!6503 = !DILocation(line: 691, column: 14, scope: !6497)
!6504 = !DILocation(line: 691, column: 23, scope: !6497)
!6505 = !DILocation(line: 691, column: 36, scope: !6497)
!6506 = !DILocation(line: 692, column: 8, scope: !6497)
!6507 = !DILocation(line: 692, column: 14, scope: !6497)
!6508 = !DILocation(line: 691, column: 6, scope: !6497)
!6509 = !DILocation(line: 693, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 693, column: 6)
!6511 = !DILocation(line: 693, column: 6, scope: !6497)
!6512 = !DILocation(line: 694, column: 10, scope: !6510)
!6513 = !DILocation(line: 694, column: 3, scope: !6510)
!6514 = !DILocation(line: 696, column: 37, scope: !6497)
!6515 = !DILocation(line: 696, column: 43, scope: !6497)
!6516 = !DILocation(line: 696, column: 49, scope: !6497)
!6517 = !DILocation(line: 696, column: 2, scope: !6497)
!6518 = !DILocation(line: 698, column: 2, scope: !6497)
!6519 = !DILocation(line: 699, column: 1, scope: !6497)
!6520 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !5668, file: !5668, line: 57, type: !6521, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6521 = !DISubroutineType(types: !6522)
!6522 = !{!197, !3278}
!6523 = !DILocalVariable(name: "ptr", arg: 1, scope: !6520, file: !5668, line: 57, type: !3278)
!6524 = !DILocation(line: 57, column: 68, scope: !6520)
!6525 = !DILocation(line: 59, column: 13, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6520, file: !5668, line: 59, column: 6)
!6527 = !DILocation(line: 59, column: 6, scope: !6526)
!6528 = !DILocation(line: 59, column: 6, scope: !6520)
!6529 = !DILocation(line: 60, column: 18, scope: !6526)
!6530 = !DILocation(line: 60, column: 10, scope: !6526)
!6531 = !DILocation(line: 60, column: 3, scope: !6526)
!6532 = !DILocation(line: 62, column: 3, scope: !6526)
!6533 = !DILocation(line: 63, column: 1, scope: !6520)
!6534 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb_init_glue", scope: !3, file: !3, line: 410, type: !6054, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6535 = !DILocalVariable(name: "priv", arg: 1, scope: !6534, file: !3, line: 410, type: !5006)
!6536 = !DILocation(line: 410, column: 66, scope: !6534)
!6537 = !DILocalVariable(name: "mode", arg: 2, scope: !6534, file: !3, line: 411, type: !128)
!6538 = !DILocation(line: 411, column: 21, scope: !6534)
!6539 = !DILocalVariable(name: "ret", scope: !6534, file: !3, line: 413, type: !197)
!6540 = !DILocation(line: 413, column: 6, scope: !6534)
!6541 = !DILocation(line: 415, column: 34, scope: !6534)
!6542 = !DILocation(line: 415, column: 40, scope: !6534)
!6543 = !DILocation(line: 415, column: 8, scope: !6534)
!6544 = !DILocation(line: 415, column: 6, scope: !6534)
!6545 = !DILocation(line: 416, column: 6, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 416, column: 6)
!6547 = !DILocation(line: 416, column: 6, scope: !6534)
!6548 = !DILocation(line: 417, column: 10, scope: !6546)
!6549 = !DILocation(line: 417, column: 3, scope: !6546)
!6550 = !DILocation(line: 419, column: 21, scope: !6534)
!6551 = !DILocation(line: 419, column: 27, scope: !6534)
!6552 = !DILocation(line: 421, column: 4, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 421, column: 4)
!6554 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 421, column: 4)
!6555 = !DILocation(line: 421, column: 4, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 421, column: 4)
!6557 = !DILocation(line: 421, column: 4, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 421, column: 4)
!6559 = !DILocation(line: 421, column: 4, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 421, column: 4)
!6561 = !DILocation(line: 421, column: 4, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 421, column: 4)
!6563 = !DILocation(line: 421, column: 4, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 421, column: 4)
!6565 = !DILocation(line: 421, column: 4, scope: !6554)
!6566 = !DILocation(line: 421, column: 4, scope: !6534)
!6567 = !DILocation(line: 419, column: 2, scope: !6534)
!6568 = !DILocation(line: 423, column: 21, scope: !6534)
!6569 = !DILocation(line: 423, column: 27, scope: !6534)
!6570 = !DILocation(line: 423, column: 2, scope: !6534)
!6571 = !DILocation(line: 426, column: 21, scope: !6534)
!6572 = !DILocation(line: 426, column: 27, scope: !6534)
!6573 = !DILocation(line: 426, column: 2, scope: !6534)
!6574 = !DILocation(line: 429, column: 21, scope: !6534)
!6575 = !DILocation(line: 429, column: 27, scope: !6534)
!6576 = !DILocation(line: 431, column: 4, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 431, column: 4)
!6578 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 431, column: 4)
!6579 = !DILocation(line: 431, column: 4, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 431, column: 4)
!6581 = !DILocation(line: 431, column: 4, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 431, column: 4)
!6583 = !DILocation(line: 431, column: 4, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 431, column: 4)
!6585 = !DILocation(line: 431, column: 4, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 431, column: 4)
!6587 = !DILocation(line: 431, column: 4, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 431, column: 4)
!6589 = !DILocation(line: 431, column: 4, scope: !6578)
!6590 = !DILocation(line: 431, column: 4, scope: !6534)
!6591 = !DILocation(line: 429, column: 2, scope: !6534)
!6592 = !DILocation(line: 434, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 434, column: 6)
!6594 = !DILocation(line: 434, column: 12, scope: !6593)
!6595 = !DILocation(line: 434, column: 6, scope: !6534)
!6596 = !DILocation(line: 435, column: 29, scope: !6593)
!6597 = !DILocation(line: 435, column: 3, scope: !6593)
!6598 = !DILocation(line: 437, column: 37, scope: !6534)
!6599 = !DILocation(line: 437, column: 43, scope: !6534)
!6600 = !DILocation(line: 437, column: 2, scope: !6534)
!6601 = !DILocation(line: 439, column: 2, scope: !6534)
!6602 = !DILocation(line: 440, column: 1, scope: !6534)
!6603 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb2_init", scope: !3, file: !3, line: 329, type: !6054, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6604 = !DILocalVariable(name: "priv", arg: 1, scope: !6603, file: !3, line: 329, type: !5006)
!6605 = !DILocation(line: 329, column: 62, scope: !6603)
!6606 = !DILocalVariable(name: "mode", arg: 2, scope: !6603, file: !3, line: 330, type: !128)
!6607 = !DILocation(line: 330, column: 24, scope: !6603)
!6608 = !DILocalVariable(name: "i", scope: !6603, file: !3, line: 332, type: !197)
!6609 = !DILocation(line: 332, column: 6, scope: !6603)
!6610 = !DILocalVariable(name: "ret", scope: !6603, file: !3, line: 332, type: !197)
!6611 = !DILocation(line: 332, column: 9, scope: !6603)
!6612 = !DILocation(line: 334, column: 9, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6603, file: !3, line: 334, column: 2)
!6614 = !DILocation(line: 334, column: 7, scope: !6613)
!6615 = !DILocation(line: 334, column: 14, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 334, column: 2)
!6617 = !DILocation(line: 334, column: 18, scope: !6616)
!6618 = !DILocation(line: 334, column: 24, scope: !6616)
!6619 = !DILocation(line: 334, column: 33, scope: !6616)
!6620 = !DILocation(line: 334, column: 16, scope: !6616)
!6621 = !DILocation(line: 334, column: 2, scope: !6613)
!6622 = !DILocation(line: 335, column: 8, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6624, file: !3, line: 335, column: 7)
!6624 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 334, column: 48)
!6625 = !DILocation(line: 335, column: 14, scope: !6623)
!6626 = !DILocation(line: 335, column: 19, scope: !6623)
!6627 = !DILocation(line: 335, column: 7, scope: !6624)
!6628 = !DILocation(line: 336, column: 4, scope: !6623)
!6629 = !DILocation(line: 338, column: 15, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6624, file: !3, line: 338, column: 7)
!6631 = !DILocation(line: 338, column: 21, scope: !6630)
!6632 = !DILocation(line: 338, column: 30, scope: !6630)
!6633 = !DILocation(line: 338, column: 40, scope: !6630)
!6634 = !DILocation(line: 338, column: 8, scope: !6630)
!6635 = !DILocation(line: 338, column: 7, scope: !6624)
!6636 = !DILocation(line: 339, column: 4, scope: !6630)
!6637 = !DILocation(line: 341, column: 9, scope: !6624)
!6638 = !DILocation(line: 341, column: 15, scope: !6624)
!6639 = !DILocation(line: 341, column: 24, scope: !6624)
!6640 = !DILocation(line: 341, column: 38, scope: !6624)
!6641 = !DILocation(line: 341, column: 44, scope: !6624)
!6642 = !DILocation(line: 341, column: 47, scope: !6624)
!6643 = !DILocation(line: 341, column: 7, scope: !6624)
!6644 = !DILocation(line: 342, column: 7, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6624, file: !3, line: 342, column: 7)
!6646 = !DILocation(line: 342, column: 7, scope: !6624)
!6647 = !DILocation(line: 343, column: 11, scope: !6645)
!6648 = !DILocation(line: 343, column: 4, scope: !6645)
!6649 = !DILocation(line: 344, column: 2, scope: !6624)
!6650 = !DILocation(line: 334, column: 43, scope: !6616)
!6651 = !DILocation(line: 334, column: 2, scope: !6616)
!6652 = distinct !{!6652, !6621, !6653}
!6653 = !DILocation(line: 344, column: 2, scope: !6613)
!6654 = !DILocation(line: 346, column: 2, scope: !6603)
!6655 = !DILocation(line: 347, column: 1, scope: !6603)
!6656 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb3_init", scope: !3, file: !3, line: 349, type: !6657, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{null, !5006}
!6659 = !DILocalVariable(name: "priv", arg: 1, scope: !6656, file: !3, line: 349, type: !5006)
!6660 = !DILocation(line: 349, column: 63, scope: !6656)
!6661 = !DILocation(line: 351, column: 21, scope: !6656)
!6662 = !DILocation(line: 351, column: 27, scope: !6656)
!6663 = !DILocation(line: 355, column: 4, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6665, file: !3, line: 355, column: 4)
!6665 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 355, column: 4)
!6666 = !DILocation(line: 355, column: 4, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 355, column: 4)
!6668 = !DILocation(line: 355, column: 4, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 355, column: 4)
!6670 = !DILocation(line: 355, column: 4, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 355, column: 4)
!6672 = !DILocation(line: 355, column: 4, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 355, column: 4)
!6674 = !DILocation(line: 355, column: 4, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 355, column: 4)
!6676 = !DILocation(line: 355, column: 4, scope: !6665)
!6677 = !DILocation(line: 354, column: 26, scope: !6656)
!6678 = !DILocation(line: 355, column: 45, scope: !6656)
!6679 = !DILocation(line: 354, column: 4, scope: !6656)
!6680 = !DILocation(line: 351, column: 2, scope: !6656)
!6681 = !DILocation(line: 357, column: 2, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 357, column: 2)
!6683 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 357, column: 2)
!6684 = distinct !DILexicalBlock(scope: !6685, file: !3, line: 357, column: 2)
!6685 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 357, column: 2)
!6686 = !DILocation(line: 359, column: 21, scope: !6656)
!6687 = !DILocation(line: 359, column: 27, scope: !6656)
!6688 = !DILocation(line: 361, column: 4, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 361, column: 4)
!6690 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 361, column: 4)
!6691 = !DILocation(line: 361, column: 4, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 361, column: 4)
!6693 = !DILocation(line: 361, column: 4, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 361, column: 4)
!6695 = !DILocation(line: 361, column: 4, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 361, column: 4)
!6697 = !DILocation(line: 361, column: 4, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 361, column: 4)
!6699 = !DILocation(line: 361, column: 4, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 361, column: 4)
!6701 = !DILocation(line: 361, column: 4, scope: !6690)
!6702 = !DILocation(line: 361, column: 4, scope: !6656)
!6703 = !DILocation(line: 359, column: 2, scope: !6656)
!6704 = !DILocation(line: 363, column: 21, scope: !6656)
!6705 = !DILocation(line: 363, column: 27, scope: !6656)
!6706 = !DILocation(line: 365, column: 4, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6708, file: !3, line: 365, column: 4)
!6708 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 365, column: 4)
!6709 = !DILocation(line: 365, column: 4, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 365, column: 4)
!6711 = !DILocation(line: 365, column: 4, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 365, column: 4)
!6713 = !DILocation(line: 365, column: 4, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 365, column: 4)
!6715 = !DILocation(line: 365, column: 4, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 365, column: 4)
!6717 = !DILocation(line: 365, column: 4, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 365, column: 4)
!6719 = !DILocation(line: 365, column: 4, scope: !6708)
!6720 = !DILocation(line: 365, column: 4, scope: !6656)
!6721 = !DILocation(line: 363, column: 2, scope: !6656)
!6722 = !DILocation(line: 367, column: 2, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 367, column: 2)
!6724 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 367, column: 2)
!6725 = distinct !DILexicalBlock(scope: !6726, file: !3, line: 367, column: 2)
!6726 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 367, column: 2)
!6727 = !DILocation(line: 369, column: 21, scope: !6656)
!6728 = !DILocation(line: 369, column: 27, scope: !6656)
!6729 = !DILocation(line: 369, column: 2, scope: !6656)
!6730 = !DILocation(line: 373, column: 21, scope: !6656)
!6731 = !DILocation(line: 373, column: 27, scope: !6656)
!6732 = !DILocation(line: 375, column: 4, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 375, column: 4)
!6734 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 375, column: 4)
!6735 = !DILocation(line: 375, column: 4, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 375, column: 4)
!6737 = !DILocation(line: 375, column: 4, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 375, column: 4)
!6739 = !DILocation(line: 375, column: 4, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 375, column: 4)
!6741 = !DILocation(line: 375, column: 4, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 375, column: 4)
!6743 = !DILocation(line: 375, column: 4, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 375, column: 4)
!6745 = !DILocation(line: 375, column: 4, scope: !6734)
!6746 = !DILocation(line: 375, column: 4, scope: !6656)
!6747 = !DILocation(line: 373, column: 2, scope: !6656)
!6748 = !DILocation(line: 376, column: 1, scope: !6656)
!6749 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb_init", scope: !3, file: !3, line: 677, type: !5149, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6750 = !DILocalVariable(name: "priv", arg: 1, scope: !6749, file: !3, line: 677, type: !5006)
!6751 = !DILocation(line: 677, column: 61, scope: !6749)
!6752 = !DILocation(line: 679, column: 39, scope: !6749)
!6753 = !DILocation(line: 679, column: 45, scope: !6749)
!6754 = !DILocation(line: 679, column: 51, scope: !6749)
!6755 = !DILocation(line: 679, column: 9, scope: !6749)
!6756 = !DILocation(line: 679, column: 2, scope: !6749)
!6757 = distinct !DISubprogram(name: "dwc3_meson_g12a_setup_regmaps", scope: !3, file: !3, line: 642, type: !5004, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6758 = !DILocalVariable(name: "priv", arg: 1, scope: !6757, file: !3, line: 642, type: !5006)
!6759 = !DILocation(line: 642, column: 66, scope: !6757)
!6760 = !DILocalVariable(name: "base", arg: 2, scope: !6757, file: !3, line: 643, type: !195)
!6761 = !DILocation(line: 643, column: 21, scope: !6757)
!6762 = !DILocalVariable(name: "i", scope: !6757, file: !3, line: 645, type: !197)
!6763 = !DILocation(line: 645, column: 6, scope: !6757)
!6764 = !DILocation(line: 647, column: 26, scope: !6757)
!6765 = !DILocation(line: 647, column: 2, scope: !6757)
!6766 = !DILocation(line: 647, column: 8, scope: !6757)
!6767 = !DILocation(line: 647, column: 24, scope: !6757)
!6768 = !DILocation(line: 650, column: 13, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6757, file: !3, line: 650, column: 6)
!6770 = !DILocation(line: 650, column: 19, scope: !6769)
!6771 = !DILocation(line: 650, column: 6, scope: !6769)
!6772 = !DILocation(line: 650, column: 6, scope: !6757)
!6773 = !DILocation(line: 651, column: 18, scope: !6769)
!6774 = !DILocation(line: 651, column: 24, scope: !6769)
!6775 = !DILocation(line: 651, column: 10, scope: !6769)
!6776 = !DILocation(line: 651, column: 3, scope: !6769)
!6777 = !DILocation(line: 654, column: 9, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6757, file: !3, line: 654, column: 2)
!6779 = !DILocation(line: 654, column: 7, scope: !6778)
!6780 = !DILocation(line: 654, column: 14, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 654, column: 2)
!6782 = !DILocation(line: 654, column: 18, scope: !6781)
!6783 = !DILocation(line: 654, column: 24, scope: !6781)
!6784 = !DILocation(line: 654, column: 16, scope: !6781)
!6785 = !DILocation(line: 654, column: 2, scope: !6778)
!6786 = !DILocalVariable(name: "u2p_regmap_config", scope: !6787, file: !3, line: 655, type: !5161)
!6787 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 654, column: 41)
!6788 = !DILocation(line: 655, column: 24, scope: !6787)
!6789 = !DILocation(line: 662, column: 43, scope: !6787)
!6790 = !DILocation(line: 662, column: 49, scope: !6787)
!6791 = !DILocation(line: 663, column: 18, scope: !6787)
!6792 = !DILocation(line: 662, column: 28, scope: !6787)
!6793 = !DILocation(line: 662, column: 21, scope: !6787)
!6794 = !DILocation(line: 662, column: 26, scope: !6787)
!6795 = !DILocation(line: 664, column: 26, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 664, column: 7)
!6797 = !DILocation(line: 664, column: 8, scope: !6796)
!6798 = !DILocation(line: 664, column: 7, scope: !6787)
!6799 = !DILocation(line: 665, column: 4, scope: !6796)
!6800 = !DILocation(line: 667, column: 25, scope: !6787)
!6801 = !DILocation(line: 667, column: 3, scope: !6787)
!6802 = !DILocation(line: 667, column: 9, scope: !6787)
!6803 = !DILocation(line: 667, column: 20, scope: !6787)
!6804 = !DILocation(line: 667, column: 23, scope: !6787)
!6805 = !DILocation(line: 670, column: 14, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 670, column: 7)
!6807 = !DILocation(line: 670, column: 20, scope: !6806)
!6808 = !DILocation(line: 670, column: 31, scope: !6806)
!6809 = !DILocation(line: 670, column: 7, scope: !6806)
!6810 = !DILocation(line: 670, column: 7, scope: !6787)
!6811 = !DILocation(line: 671, column: 19, scope: !6806)
!6812 = !DILocation(line: 671, column: 25, scope: !6806)
!6813 = !DILocation(line: 671, column: 36, scope: !6806)
!6814 = !DILocation(line: 671, column: 11, scope: !6806)
!6815 = !DILocation(line: 671, column: 4, scope: !6806)
!6816 = !DILocation(line: 672, column: 2, scope: !6787)
!6817 = !DILocation(line: 654, column: 37, scope: !6781)
!6818 = !DILocation(line: 654, column: 2, scope: !6781)
!6819 = distinct !{!6819, !6785, !6820}
!6820 = !DILocation(line: 672, column: 2, scope: !6778)
!6821 = !DILocation(line: 674, column: 2, scope: !6757)
!6822 = !DILocation(line: 675, column: 1, scope: !6757)
!6823 = distinct !DISubprogram(name: "dwc3_meson_g12a_usb2_init_phy", scope: !3, file: !3, line: 301, type: !5144, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6824 = !DILocalVariable(name: "priv", arg: 1, scope: !6823, file: !3, line: 301, type: !5006)
!6825 = !DILocation(line: 301, column: 66, scope: !6823)
!6826 = !DILocalVariable(name: "i", arg: 2, scope: !6823, file: !3, line: 301, type: !197)
!6827 = !DILocation(line: 301, column: 76, scope: !6823)
!6828 = !DILocalVariable(name: "mode", arg: 3, scope: !6823, file: !3, line: 302, type: !128)
!6829 = !DILocation(line: 302, column: 21, scope: !6823)
!6830 = !DILocalVariable(name: "ret", scope: !6823, file: !3, line: 304, type: !197)
!6831 = !DILocation(line: 304, column: 6, scope: !6823)
!6832 = !DILocation(line: 306, column: 21, scope: !6823)
!6833 = !DILocation(line: 306, column: 27, scope: !6823)
!6834 = !DILocation(line: 306, column: 38, scope: !6823)
!6835 = !DILocation(line: 306, column: 2, scope: !6823)
!6836 = !DILocation(line: 310, column: 6, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 310, column: 6)
!6838 = !DILocation(line: 310, column: 12, scope: !6837)
!6839 = !DILocation(line: 310, column: 21, scope: !6837)
!6840 = !DILocation(line: 310, column: 42, scope: !6837)
!6841 = !DILocation(line: 310, column: 45, scope: !6837)
!6842 = !DILocation(line: 310, column: 47, scope: !6837)
!6843 = !DILocation(line: 310, column: 6, scope: !6823)
!6844 = !DILocation(line: 311, column: 22, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 310, column: 64)
!6846 = !DILocation(line: 311, column: 28, scope: !6845)
!6847 = !DILocation(line: 311, column: 39, scope: !6845)
!6848 = !DILocation(line: 311, column: 3, scope: !6845)
!6849 = !DILocation(line: 315, column: 9, scope: !6845)
!6850 = !DILocation(line: 315, column: 15, scope: !6845)
!6851 = !DILocation(line: 315, column: 24, scope: !6845)
!6852 = !DILocation(line: 315, column: 37, scope: !6845)
!6853 = !DILocation(line: 315, column: 43, scope: !6845)
!6854 = !DILocation(line: 315, column: 46, scope: !6845)
!6855 = !DILocation(line: 315, column: 7, scope: !6845)
!6856 = !DILocation(line: 316, column: 2, scope: !6845)
!6857 = !DILocation(line: 317, column: 9, scope: !6837)
!6858 = !DILocation(line: 317, column: 15, scope: !6837)
!6859 = !DILocation(line: 317, column: 24, scope: !6837)
!6860 = !DILocation(line: 317, column: 37, scope: !6837)
!6861 = !DILocation(line: 317, column: 43, scope: !6837)
!6862 = !DILocation(line: 317, column: 7, scope: !6837)
!6863 = !DILocation(line: 320, column: 6, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 320, column: 6)
!6865 = !DILocation(line: 320, column: 6, scope: !6823)
!6866 = !DILocation(line: 321, column: 10, scope: !6864)
!6867 = !DILocation(line: 321, column: 3, scope: !6864)
!6868 = !DILocation(line: 323, column: 21, scope: !6823)
!6869 = !DILocation(line: 323, column: 27, scope: !6823)
!6870 = !DILocation(line: 323, column: 38, scope: !6823)
!6871 = !DILocation(line: 323, column: 2, scope: !6823)
!6872 = !DILocation(line: 326, column: 2, scope: !6823)
!6873 = !DILocation(line: 327, column: 1, scope: !6823)
!6874 = distinct !DISubprogram(name: "dwc3_meson_g12a_set_phy_mode", scope: !3, file: !3, line: 287, type: !5144, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6875 = !DILocalVariable(name: "priv", arg: 1, scope: !6874, file: !3, line: 287, type: !5006)
!6876 = !DILocation(line: 287, column: 65, scope: !6874)
!6877 = !DILocalVariable(name: "i", arg: 2, scope: !6874, file: !3, line: 288, type: !197)
!6878 = !DILocation(line: 288, column: 11, scope: !6874)
!6879 = !DILocalVariable(name: "mode", arg: 3, scope: !6874, file: !3, line: 288, type: !128)
!6880 = !DILocation(line: 288, column: 28, scope: !6874)
!6881 = !DILocation(line: 290, column: 6, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 290, column: 6)
!6883 = !DILocation(line: 290, column: 11, scope: !6882)
!6884 = !DILocation(line: 290, column: 6, scope: !6874)
!6885 = !DILocation(line: 291, column: 22, scope: !6882)
!6886 = !DILocation(line: 291, column: 28, scope: !6882)
!6887 = !DILocation(line: 291, column: 39, scope: !6882)
!6888 = !DILocation(line: 291, column: 3, scope: !6882)
!6889 = !DILocation(line: 295, column: 22, scope: !6882)
!6890 = !DILocation(line: 295, column: 28, scope: !6882)
!6891 = !DILocation(line: 295, column: 39, scope: !6882)
!6892 = !DILocation(line: 295, column: 3, scope: !6882)
!6893 = !DILocation(line: 298, column: 2, scope: !6874)
!6894 = distinct !DISubprogram(name: "dwc3_meson_g12a_suspend", scope: !3, file: !3, line: 870, type: !4503, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6895 = !DILocalVariable(name: "dev", arg: 1, scope: !6894, file: !3, line: 870, type: !1717)
!6896 = !DILocation(line: 870, column: 66, scope: !6894)
!6897 = !DILocalVariable(name: "priv", scope: !6894, file: !3, line: 872, type: !5006)
!6898 = !DILocation(line: 872, column: 26, scope: !6894)
!6899 = !DILocation(line: 872, column: 49, scope: !6894)
!6900 = !DILocation(line: 872, column: 33, scope: !6894)
!6901 = !DILocalVariable(name: "i", scope: !6894, file: !3, line: 873, type: !197)
!6902 = !DILocation(line: 873, column: 6, scope: !6894)
!6903 = !DILocalVariable(name: "ret", scope: !6894, file: !3, line: 873, type: !197)
!6904 = !DILocation(line: 873, column: 9, scope: !6894)
!6905 = !DILocation(line: 875, column: 6, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 875, column: 6)
!6907 = !DILocation(line: 875, column: 12, scope: !6906)
!6908 = !DILocation(line: 875, column: 17, scope: !6906)
!6909 = !DILocation(line: 875, column: 20, scope: !6906)
!6910 = !DILocation(line: 875, column: 26, scope: !6906)
!6911 = !DILocation(line: 875, column: 39, scope: !6906)
!6912 = !DILocation(line: 875, column: 6, scope: !6894)
!6913 = !DILocation(line: 876, column: 27, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6906, file: !3, line: 875, column: 61)
!6915 = !DILocation(line: 876, column: 33, scope: !6914)
!6916 = !DILocation(line: 876, column: 9, scope: !6914)
!6917 = !DILocation(line: 876, column: 7, scope: !6914)
!6918 = !DILocation(line: 877, column: 7, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 877, column: 7)
!6920 = !DILocation(line: 877, column: 7, scope: !6914)
!6921 = !DILocation(line: 878, column: 11, scope: !6919)
!6922 = !DILocation(line: 878, column: 4, scope: !6919)
!6923 = !DILocation(line: 879, column: 2, scope: !6914)
!6924 = !DILocation(line: 881, column: 9, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 881, column: 2)
!6926 = !DILocation(line: 881, column: 7, scope: !6925)
!6927 = !DILocation(line: 881, column: 15, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 881, column: 2)
!6929 = !DILocation(line: 881, column: 17, scope: !6928)
!6930 = !DILocation(line: 881, column: 2, scope: !6925)
!6931 = !DILocation(line: 882, column: 17, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 881, column: 36)
!6933 = !DILocation(line: 882, column: 23, scope: !6932)
!6934 = !DILocation(line: 882, column: 28, scope: !6932)
!6935 = !DILocation(line: 882, column: 3, scope: !6932)
!6936 = !DILocation(line: 883, column: 12, scope: !6932)
!6937 = !DILocation(line: 883, column: 18, scope: !6932)
!6938 = !DILocation(line: 883, column: 23, scope: !6932)
!6939 = !DILocation(line: 883, column: 3, scope: !6932)
!6940 = !DILocation(line: 884, column: 2, scope: !6932)
!6941 = !DILocation(line: 881, column: 31, scope: !6928)
!6942 = !DILocation(line: 881, column: 2, scope: !6928)
!6943 = distinct !{!6943, !6930, !6944}
!6944 = !DILocation(line: 884, column: 2, scope: !6925)
!6945 = !DILocation(line: 886, column: 23, scope: !6894)
!6946 = !DILocation(line: 886, column: 29, scope: !6894)
!6947 = !DILocation(line: 886, column: 2, scope: !6894)
!6948 = !DILocation(line: 888, column: 2, scope: !6894)
!6949 = !DILocation(line: 889, column: 1, scope: !6894)
!6950 = distinct !DISubprogram(name: "dwc3_meson_g12a_resume", scope: !3, file: !3, line: 891, type: !4503, scopeLine: 892, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!6951 = !DILocalVariable(name: "dev", arg: 1, scope: !6950, file: !3, line: 891, type: !1717)
!6952 = !DILocation(line: 891, column: 65, scope: !6950)
!6953 = !DILocalVariable(name: "priv", scope: !6950, file: !3, line: 893, type: !5006)
!6954 = !DILocation(line: 893, column: 26, scope: !6950)
!6955 = !DILocation(line: 893, column: 49, scope: !6950)
!6956 = !DILocation(line: 893, column: 33, scope: !6950)
!6957 = !DILocalVariable(name: "i", scope: !6950, file: !3, line: 894, type: !197)
!6958 = !DILocation(line: 894, column: 6, scope: !6950)
!6959 = !DILocalVariable(name: "ret", scope: !6950, file: !3, line: 894, type: !197)
!6960 = !DILocation(line: 894, column: 9, scope: !6950)
!6961 = !DILocation(line: 896, column: 25, scope: !6950)
!6962 = !DILocation(line: 896, column: 31, scope: !6950)
!6963 = !DILocation(line: 896, column: 2, scope: !6950)
!6964 = !DILocation(line: 898, column: 8, scope: !6950)
!6965 = !DILocation(line: 898, column: 14, scope: !6950)
!6966 = !DILocation(line: 898, column: 23, scope: !6950)
!6967 = !DILocation(line: 898, column: 32, scope: !6950)
!6968 = !DILocation(line: 898, column: 6, scope: !6950)
!6969 = !DILocation(line: 899, column: 6, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6950, file: !3, line: 899, column: 6)
!6971 = !DILocation(line: 899, column: 6, scope: !6950)
!6972 = !DILocation(line: 900, column: 10, scope: !6970)
!6973 = !DILocation(line: 900, column: 3, scope: !6970)
!6974 = !DILocation(line: 903, column: 9, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6950, file: !3, line: 903, column: 2)
!6976 = !DILocation(line: 903, column: 7, scope: !6975)
!6977 = !DILocation(line: 903, column: 15, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6975, file: !3, line: 903, column: 2)
!6979 = !DILocation(line: 903, column: 17, scope: !6978)
!6980 = !DILocation(line: 903, column: 2, scope: !6975)
!6981 = !DILocation(line: 904, column: 18, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 903, column: 36)
!6983 = !DILocation(line: 904, column: 24, scope: !6982)
!6984 = !DILocation(line: 904, column: 29, scope: !6982)
!6985 = !DILocation(line: 904, column: 9, scope: !6982)
!6986 = !DILocation(line: 904, column: 7, scope: !6982)
!6987 = !DILocation(line: 905, column: 7, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6982, file: !3, line: 905, column: 7)
!6989 = !DILocation(line: 905, column: 7, scope: !6982)
!6990 = !DILocation(line: 906, column: 11, scope: !6988)
!6991 = !DILocation(line: 906, column: 4, scope: !6988)
!6992 = !DILocation(line: 907, column: 2, scope: !6982)
!6993 = !DILocation(line: 903, column: 31, scope: !6978)
!6994 = !DILocation(line: 903, column: 2, scope: !6978)
!6995 = distinct !{!6995, !6980, !6996}
!6996 = !DILocation(line: 907, column: 2, scope: !6975)
!6997 = !DILocation(line: 910, column: 9, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6950, file: !3, line: 910, column: 2)
!6999 = !DILocation(line: 910, column: 7, scope: !6998)
!7000 = !DILocation(line: 910, column: 15, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6998, file: !3, line: 910, column: 2)
!7002 = !DILocation(line: 910, column: 17, scope: !7001)
!7003 = !DILocation(line: 910, column: 2, scope: !6998)
!7004 = !DILocation(line: 911, column: 22, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7001, file: !3, line: 910, column: 36)
!7006 = !DILocation(line: 911, column: 28, scope: !7005)
!7007 = !DILocation(line: 911, column: 33, scope: !7005)
!7008 = !DILocation(line: 911, column: 9, scope: !7005)
!7009 = !DILocation(line: 911, column: 7, scope: !7005)
!7010 = !DILocation(line: 912, column: 7, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !7005, file: !3, line: 912, column: 7)
!7012 = !DILocation(line: 912, column: 7, scope: !7005)
!7013 = !DILocation(line: 913, column: 11, scope: !7011)
!7014 = !DILocation(line: 913, column: 4, scope: !7011)
!7015 = !DILocation(line: 914, column: 2, scope: !7005)
!7016 = !DILocation(line: 910, column: 31, scope: !7001)
!7017 = !DILocation(line: 910, column: 2, scope: !7001)
!7018 = distinct !{!7018, !7003, !7019}
!7019 = !DILocation(line: 914, column: 2, scope: !6998)
!7020 = !DILocation(line: 916, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6950, file: !3, line: 916, column: 6)
!7022 = !DILocation(line: 916, column: 12, scope: !7021)
!7023 = !DILocation(line: 916, column: 17, scope: !7021)
!7024 = !DILocation(line: 916, column: 20, scope: !7021)
!7025 = !DILocation(line: 916, column: 26, scope: !7021)
!7026 = !DILocation(line: 916, column: 39, scope: !7021)
!7027 = !DILocation(line: 916, column: 6, scope: !6950)
!7028 = !DILocation(line: 917, column: 26, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 916, column: 61)
!7030 = !DILocation(line: 917, column: 32, scope: !7029)
!7031 = !DILocation(line: 917, column: 9, scope: !7029)
!7032 = !DILocation(line: 917, column: 7, scope: !7029)
!7033 = !DILocation(line: 918, column: 7, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7029, file: !3, line: 918, column: 7)
!7035 = !DILocation(line: 918, column: 7, scope: !7029)
!7036 = !DILocation(line: 919, column: 11, scope: !7034)
!7037 = !DILocation(line: 919, column: 4, scope: !7034)
!7038 = !DILocation(line: 920, column: 2, scope: !7029)
!7039 = !DILocation(line: 922, column: 2, scope: !6950)
!7040 = !DILocation(line: 923, column: 1, scope: !6950)
!7041 = distinct !DISubprogram(name: "dwc3_meson_g12a_runtime_suspend", scope: !3, file: !3, line: 852, type: !4503, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!7042 = !DILocalVariable(name: "dev", arg: 1, scope: !7041, file: !3, line: 852, type: !1717)
!7043 = !DILocation(line: 852, column: 74, scope: !7041)
!7044 = !DILocalVariable(name: "priv", scope: !7041, file: !3, line: 854, type: !5006)
!7045 = !DILocation(line: 854, column: 26, scope: !7041)
!7046 = !DILocation(line: 854, column: 49, scope: !7041)
!7047 = !DILocation(line: 854, column: 33, scope: !7041)
!7048 = !DILocation(line: 856, column: 29, scope: !7041)
!7049 = !DILocation(line: 856, column: 35, scope: !7041)
!7050 = !DILocation(line: 856, column: 44, scope: !7041)
!7051 = !DILocation(line: 857, column: 8, scope: !7041)
!7052 = !DILocation(line: 857, column: 14, scope: !7041)
!7053 = !DILocation(line: 857, column: 23, scope: !7041)
!7054 = !DILocation(line: 856, column: 2, scope: !7041)
!7055 = !DILocation(line: 859, column: 2, scope: !7041)
!7056 = distinct !DISubprogram(name: "dwc3_meson_g12a_runtime_resume", scope: !3, file: !3, line: 862, type: !4503, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!7057 = !DILocalVariable(name: "dev", arg: 1, scope: !7056, file: !3, line: 862, type: !1717)
!7058 = !DILocation(line: 862, column: 73, scope: !7056)
!7059 = !DILocalVariable(name: "priv", scope: !7056, file: !3, line: 864, type: !5006)
!7060 = !DILocation(line: 864, column: 26, scope: !7056)
!7061 = !DILocation(line: 864, column: 49, scope: !7056)
!7062 = !DILocation(line: 864, column: 33, scope: !7056)
!7063 = !DILocation(line: 866, column: 33, scope: !7056)
!7064 = !DILocation(line: 866, column: 39, scope: !7056)
!7065 = !DILocation(line: 866, column: 48, scope: !7056)
!7066 = !DILocation(line: 867, column: 12, scope: !7056)
!7067 = !DILocation(line: 867, column: 18, scope: !7056)
!7068 = !DILocation(line: 867, column: 27, scope: !7056)
!7069 = !DILocation(line: 866, column: 9, scope: !7056)
!7070 = !DILocation(line: 866, column: 2, scope: !7056)
