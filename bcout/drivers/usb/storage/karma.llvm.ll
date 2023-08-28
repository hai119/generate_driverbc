; ModuleID = '../bcout/drivers/usb/storage/karma.llvm.bc'
source_filename = "drivers/usb/storage/karma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_karma_driver_init6:\09\09\09"
module asm ".long\09karma_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.usb_driver = type { i8*, i32 (%struct.usb_interface*, %struct.usb_device_id*)*, void (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, %struct.usb_device_id*, %struct.attribute_group**, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
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
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.31, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.31 = type { %struct.bio_integrity_payload* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.67, %union.anon.68, %union.anon.69, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.72, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.66, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct] }
%struct.anon.66 = type { %struct.spinlock, %struct.list_head, i64 }
%struct.cpumask = type { [1 x i64] }
%struct.sbitmap = type { i32, i32, i32, %struct.sbitmap_word* }
%struct.sbitmap_word = type { i64, i64, i64, %struct.spinlock }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type opaque
%struct.srcu_struct = type { [2 x i16], i16, i8, i8, %struct.swait_queue_head, %struct.callback_head*, %struct.callback_head**, %struct.work_struct }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%union.anon.68 = type { %struct.rb_node }
%union.anon.69 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.72 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.73, void (i8*)*, i8* }
%union.anon.73 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.74, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.74 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*)*, void (%struct.request_queue*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
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
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32*, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i8, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
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
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.scsi_host_template = type { %struct.module*, i8*, i8* (%struct.Scsi_Host*)*, i32 (%struct.scsi_device*, i32, i8*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, void (%struct.Scsi_Host*, i16)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)*, void (%struct.scsi_device*)*, i32 (%struct.scsi_target*)*, void (%struct.scsi_target*)*, i32 (%struct.Scsi_Host*, i64)*, void (%struct.Scsi_Host*)*, i32 (%struct.scsi_device*, i32)*, i32 (%struct.Scsi_Host*)*, i1 (%struct.request*)*, i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)*, void (%struct.scsi_device*)*, i32 (%struct.seq_file*, %struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*, i8*, i32)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, i32)*, i8*, %struct.proc_dir_entry*, i32, i32, i16, i16, i32, i32, i64, i64, i16, i8, i32, i8, i32, %struct.device_attribute**, %struct.device_attribute**, %struct.attribute_group**, i64, i32, %struct.scsi_host_cmd_pool*, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock*, %struct.mutex, %struct.list_head, %struct.task_struct*, %struct.completion*, %struct.wait_queue_head, %struct.scsi_host_template*, %struct.scsi_transport_template*, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i64, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i64, i64, i32, i16, [20 x i8], %struct.workqueue_struct*, %struct.workqueue_struct*, i32, i32, i8, i64, i64, i8, i8, i32, i32, %struct.device, %struct.device, i8*, %struct.device*, [0 x i64] }
%struct.scsi_transport_template = type opaque
%struct.scsi_device = type { %struct.Scsi_Host*, %struct.request_queue*, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i32, i32, i64, i32, i32, i8*, i8, i8, i8, %struct.mutex, i8, i8*, i8*, i8*, i8*, %struct.scsi_vpd*, %struct.scsi_vpd*, %struct.scsi_vpd*, %struct.scsi_vpd*, i8, %struct.scsi_target*, i64, i32, [6 x i8], i8, %struct.atomic_t, [1 x i64], [1 x i64], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, %struct.scsi_device_handler*, i8*, i64, i8*, i8, %struct.mutex, i32, %struct.task_struct*, [0 x i64] }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_target = type { %struct.scsi_device*, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, i8*, [0 x i64] }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_device_handler = type opaque
%struct.scsi_cmnd = type { %struct.scsi_request, %struct.scsi_device*, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i64, i32, i32, i8, i8, i8, i16, i32, i8*, %struct.scsi_data_buffer, %struct.scsi_data_buffer*, i32, i32, %struct.request*, i8*, void (%struct.scsi_cmnd*)*, %struct.scsi_pointer, i8*, i32, i32, i64, i8, i32 }
%struct.scsi_request = type { [16 x i8], i8*, i16, i32, i32, i32, i32, i8* }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.scsi_pointer = type { i8*, i32, %struct.scatterlist*, i32, i64, i32, i32, i32, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.scsi_host_cmd_pool = type opaque
%struct.us_unusual_dev = type { i8*, i8*, i8, i8, i32 (%struct.us_data*)* }
%struct.us_data = type { %struct.mutex, %struct.usb_device*, %struct.usb_interface*, %struct.us_unusual_dev*, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i8, i8, i8, i8, i8, i32 (%struct.scsi_cmnd*, %struct.us_data*)*, i32 (%struct.us_data*)*, void (%struct.scsi_cmnd*, %struct.us_data*)*, %struct.scsi_cmnd*, i32, [32 x i8], %struct.urb*, %struct.usb_ctrlrequest*, %struct.usb_sg_request, i8*, i64, %struct.task_struct*, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, i8*, void (i8*)*, void (%struct.us_data*, i32)*, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
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
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_sg_request = type { i32, i64, %struct.spinlock, %struct.usb_device*, i32, i32, %struct.urb**, i32, %struct.completion }
%struct.karma_data = type { i32, i8* }

@__UNIQUE_ID_description302 = internal constant [43 x i8] c"ums_karma.description=Driver for Rio Karma\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author303 = internal constant [91 x i8] c"ums_karma.author=Bob Copeland <me@bobcopeland.com>, Keith Bennett <keith@mcs.st-and.ac.uk>\00", section ".modinfo", align 1, !dbg !220
@__UNIQUE_ID_file304 = internal constant [45 x i8] c"ums_karma.file=drivers/usb/storage/ums-karma\00", section ".modinfo", align 1, !dbg !226
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"ums_karma.license=GPL\00", section ".modinfo", align 1, !dbg !231
@__UNIQUE_ID_import_ns306 = internal constant [32 x i8] c"ums_karma.import_ns=USB_STORAGE\00", section ".modinfo", align 1, !dbg !236
@__UNIQUE_ID___addressable_karma_driver_init307 = internal global i8* bitcast (i32 ()* @karma_driver_init to i8*), section ".discard.addressable", align 8, !dbg !241
@karma_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @karma_probe, void (%struct.usb_interface*)* @usb_stor_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @usb_stor_suspend, i32 (%struct.usb_interface*)* @usb_stor_resume, i32 (%struct.usb_interface*)* @usb_stor_reset_resume, i32 (%struct.usb_interface*)* @usb_stor_pre_reset, i32 (%struct.usb_interface*)* @usb_stor_post_reset, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @karma_usb_ids, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 9 }, align 8, !dbg !5271
@__exitcall_karma_driver_exit = internal global void ()* @karma_driver_exit, section ".exitcall.exit", align 8, !dbg !243
@karma_host_template = internal global %struct.scsi_host_template zeroinitializer, align 8, !dbg !250
@.str = private unnamed_addr constant [10 x i8] c"ums-karma\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ums_karma\00", align 1
@karma_usb_ids = internal global [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1114, i16 21008, i16 257, i16 257, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !5785
@karma_unusual_dev_list = internal global [2 x %struct.us_unusual_dev] [%struct.us_unusual_dev { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 6, i8 -11, i32 (%struct.us_data*)* @rio_karma_init }, %struct.us_unusual_dev zeroinitializer], align 16, !dbg !5422
@.str.2 = private unnamed_addr constant [15 x i8] c"Rio Karma/Bulk\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Rio\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Rio Karma\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@rio_karma_send_command.seq = internal global i8 1, align 1, !dbg !5780
@.str.6 = private unnamed_addr constant [6 x i8] c"RIOP\00\00", align 1
@jiffies = external dso_local global i64, align 8
@llvm.used = appending global [8 x i8*] [i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description302, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @__UNIQUE_ID_author303, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file304, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license305, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_import_ns306, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_karma_driver_init307 to i8*), i8* bitcast (void ()* @karma_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_karma_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @karma_driver_init() #0 section ".init.text" !dbg !5796 {
entry:
  call void @usb_stor_host_template_init(%struct.scsi_host_template* @karma_host_template, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.module* null) #8, !dbg !5799
  %call = call i32 @usb_register_driver(%struct.usb_driver* @karma_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !5799
  ret i32 %call, !dbg !5799
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @karma_driver_exit() #0 section ".exit.text" !dbg !5800 {
entry:
  call void @usb_deregister(%struct.usb_driver* @karma_driver) #8, !dbg !5801
  ret void, !dbg !5801
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local void @usb_stor_host_template_init(%struct.scsi_host_template*, i8*, %struct.module*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @karma_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !5802 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %us = alloca %struct.us_data*, align 8
  %result = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !5805, metadata !DIExpression()), !dbg !5806
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !5807, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5809, metadata !DIExpression()), !dbg !5810
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5811
  %1 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5812
  %2 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5813
  %sub.ptr.lhs.cast = ptrtoint %struct.usb_device_id* %2 to i64, !dbg !5814
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([2 x %struct.usb_device_id]* @karma_usb_ids to i64), !dbg !5814
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32, !dbg !5814
  %add.ptr = getelementptr %struct.us_unusual_dev, %struct.us_unusual_dev* getelementptr inbounds ([2 x %struct.us_unusual_dev], [2 x %struct.us_unusual_dev]* @karma_unusual_dev_list, i64 0, i64 0), i64 %sub.ptr.div, !dbg !5815
  %call = call i32 @usb_stor_probe1(%struct.us_data** %us, %struct.usb_interface* %0, %struct.usb_device_id* %1, %struct.us_unusual_dev* %add.ptr, %struct.scsi_host_template* @karma_host_template) #8, !dbg !5816
  store i32 %call, i32* %result, align 4, !dbg !5817
  %3 = load i32, i32* %result, align 4, !dbg !5818
  %tobool = icmp ne i32 %3, 0, !dbg !5818
  br i1 %tobool, label %if.then, label %if.end, !dbg !5820

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %result, align 4, !dbg !5821
  store i32 %4, i32* %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end:                                           ; preds = %entry
  %5 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !5823
  %transport_name = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 11, !dbg !5824
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %transport_name, align 8, !dbg !5825
  %6 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !5826
  %transport = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 19, !dbg !5827
  store i32 (%struct.scsi_cmnd*, %struct.us_data*)* @rio_karma_transport, i32 (%struct.scsi_cmnd*, %struct.us_data*)** %transport, align 8, !dbg !5828
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !5829
  %transport_reset = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 20, !dbg !5830
  store i32 (%struct.us_data*)* @usb_stor_Bulk_reset, i32 (%struct.us_data*)** %transport_reset, align 8, !dbg !5831
  %8 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !5832
  %call1 = call i32 @usb_stor_probe2(%struct.us_data* %8) #8, !dbg !5833
  store i32 %call1, i32* %result, align 4, !dbg !5834
  %9 = load i32, i32* %result, align 4, !dbg !5835
  store i32 %9, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5837
  ret i32 %10, !dbg !5837
}

; Function Attrs: noredzone
declare dso_local void @usb_stor_disconnect(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_suspend(%struct.usb_interface*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_resume(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_reset_resume(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_pre_reset(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_post_reset(%struct.usb_interface*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, %struct.us_unusual_dev*, %struct.scsi_host_template*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rio_karma_transport(%struct.scsi_cmnd* %srb, %struct.us_data* %us) #2 !dbg !5838 {
entry:
  %retval = alloca i32, align 4
  %srb.addr = alloca %struct.scsi_cmnd*, align 8
  %us.addr = alloca %struct.us_data*, align 8
  %ret = alloca i32, align 4
  %data = alloca %struct.karma_data*, align 8
  store %struct.scsi_cmnd* %srb, %struct.scsi_cmnd** %srb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %srb.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5843, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata %struct.karma_data** %data, metadata !5845, metadata !DIExpression()), !dbg !5846
  %0 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5847
  %extra = getelementptr inbounds %struct.us_data, %struct.us_data* %0, i32 0, i32 35, !dbg !5848
  %1 = load i8*, i8** %extra, align 8, !dbg !5848
  %2 = bitcast i8* %1 to %struct.karma_data*, !dbg !5849
  store %struct.karma_data* %2, %struct.karma_data** %data, align 8, !dbg !5846
  %3 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !5850
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %3, i32 0, i32 14, !dbg !5852
  %4 = load i8*, i8** %cmnd, align 8, !dbg !5852
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !5850
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5850
  %conv = zext i8 %5 to i32, !dbg !5850
  %cmp = icmp eq i32 %conv, 40, !dbg !5853
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5854

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !5855
  %in_storage = getelementptr inbounds %struct.karma_data, %struct.karma_data* %6, i32 0, i32 0, !dbg !5856
  %7 = load i32, i32* %in_storage, align 8, !dbg !5856
  %tobool = icmp ne i32 %7, 0, !dbg !5855
  br i1 %tobool, label %if.else, label %if.then, !dbg !5857

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5858
  %call = call i32 @rio_karma_send_command(i8 signext 1, %struct.us_data* %8) #8, !dbg !5860
  store i32 %call, i32* %ret, align 4, !dbg !5861
  %9 = load i32, i32* %ret, align 4, !dbg !5862
  %tobool2 = icmp ne i32 %9, 0, !dbg !5862
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5864

if.then3:                                         ; preds = %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !5865
  store i32 %10, i32* %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end:                                           ; preds = %if.then
  %11 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !5867
  %in_storage4 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %11, i32 0, i32 0, !dbg !5868
  store i32 1, i32* %in_storage4, align 8, !dbg !5869
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !5870
  %13 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5871
  %call5 = call i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd* %12, %struct.us_data* %13) #8, !dbg !5872
  store i32 %call5, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !5874
  %cmnd6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 14, !dbg !5876
  %15 = load i8*, i8** %cmnd6, align 8, !dbg !5876
  %arrayidx7 = getelementptr i8, i8* %15, i64 0, !dbg !5874
  %16 = load i8, i8* %arrayidx7, align 1, !dbg !5874
  %conv8 = zext i8 %16 to i32, !dbg !5874
  %cmp9 = icmp eq i32 %conv8, 27, !dbg !5877
  br i1 %cmp9, label %if.then11, label %if.end18, !dbg !5878

if.then11:                                        ; preds = %if.else
  %17 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5879
  %call12 = call i32 @rio_karma_send_command(i8 signext 2, %struct.us_data* %17) #8, !dbg !5881
  store i32 %call12, i32* %ret, align 4, !dbg !5882
  %18 = load i32, i32* %ret, align 4, !dbg !5883
  %tobool13 = icmp ne i32 %18, 0, !dbg !5883
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5885

if.then14:                                        ; preds = %if.then11
  %19 = load i32, i32* %ret, align 4, !dbg !5886
  store i32 %19, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end15:                                         ; preds = %if.then11
  %20 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !5888
  %in_storage16 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %20, i32 0, i32 0, !dbg !5889
  store i32 0, i32* %in_storage16, align 8, !dbg !5890
  %21 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5891
  %call17 = call i32 @rio_karma_send_command(i8 signext 12, %struct.us_data* %21) #8, !dbg !5892
  store i32 %call17, i32* %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !5894
  %23 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5895
  %call20 = call i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd* %22, %struct.us_data* %23) #8, !dbg !5896
  store i32 %call20, i32* %retval, align 4, !dbg !5897
  br label %return, !dbg !5897

return:                                           ; preds = %if.end19, %if.end15, %if.then14, %if.end, %if.then3
  %24 = load i32, i32* %retval, align 4, !dbg !5898
  ret i32 %24, !dbg !5898
}

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_Bulk_reset(%struct.us_data*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rio_karma_init(%struct.us_data* %us) #2 !dbg !5899 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5900, metadata !DIExpression()), !dbg !5904
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5912, metadata !DIExpression()), !dbg !5913
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5914, metadata !DIExpression()), !dbg !5915
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5916, metadata !DIExpression()), !dbg !5917
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5918, metadata !DIExpression()), !dbg !5922
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5924, metadata !DIExpression()), !dbg !5928
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5930, metadata !DIExpression()), !dbg !5934
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5939, metadata !DIExpression()), !dbg !5940
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5941, metadata !DIExpression()), !dbg !5942
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5943, metadata !DIExpression()), !dbg !5944
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5945, metadata !DIExpression()), !dbg !5946
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5947, metadata !DIExpression()), !dbg !5948
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5949, metadata !DIExpression()), !dbg !5950
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5951, metadata !DIExpression()), !dbg !5952
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5953, metadata !DIExpression()), !dbg !5954
  %us.addr = alloca %struct.us_data*, align 8
  %ret = alloca i32, align 4
  %data = alloca %struct.karma_data*, align 8
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5957, metadata !DIExpression()), !dbg !5958
  store i32 0, i32* %ret, align 4, !dbg !5958
  call void @llvm.dbg.declare(metadata %struct.karma_data** %data, metadata !5959, metadata !DIExpression()), !dbg !5960
  %call = call i8* @kzalloc(i64 16, i32 3072) #8, !dbg !5961
  %0 = bitcast i8* %call to %struct.karma_data*, !dbg !5961
  store %struct.karma_data* %0, %struct.karma_data** %data, align 8, !dbg !5960
  %1 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !5962
  %tobool = icmp ne %struct.karma_data* %1, null, !dbg !5962
  br i1 %tobool, label %if.end, label %if.then, !dbg !5964

if.then:                                          ; preds = %entry
  br label %out, !dbg !5965

if.end:                                           ; preds = %entry
  store i64 512, i64* %size.addr.i, align 8
  store i32 3072, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5966
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5967
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5968

if.then.i:                                        ; preds = %if.end
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5969
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5970
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5971

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5972
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5973
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5974
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !5975
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5948
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5976
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5977
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5978
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5979
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5980
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5981
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5982
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5982
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5982
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5982
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5982
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5983
  br label %kmalloc.exit, !dbg !5983

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5984
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5985
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5985
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5987

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5988
  br label %kmalloc_index.exit.i, !dbg !5988

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5989
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5991
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5992

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5993
  br label %kmalloc_index.exit.i, !dbg !5993

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5994
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5996
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5997

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5998
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5999
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6000

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6001
  br label %kmalloc_index.exit.i, !dbg !6001

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6002
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6004
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6005

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6006
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6007
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6008

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6009
  br label %kmalloc_index.exit.i, !dbg !6009

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6010
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6012
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6013

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6014
  br label %kmalloc_index.exit.i, !dbg !6014

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6015
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6017
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6018

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6019
  br label %kmalloc_index.exit.i, !dbg !6019

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6020
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6022
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6023

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6024
  br label %kmalloc_index.exit.i, !dbg !6024

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6025
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6027
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6028

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6029
  br label %kmalloc_index.exit.i, !dbg !6029

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6030
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6032
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6033

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6034
  br label %kmalloc_index.exit.i, !dbg !6034

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6035
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6037
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6038

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6039
  br label %kmalloc_index.exit.i, !dbg !6039

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6040
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6042
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6043

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6044
  br label %kmalloc_index.exit.i, !dbg !6044

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6045
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6047
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6048

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6049
  br label %kmalloc_index.exit.i, !dbg !6049

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6050
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6052
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6053

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6054
  br label %kmalloc_index.exit.i, !dbg !6054

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6055
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6057
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6058

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6059
  br label %kmalloc_index.exit.i, !dbg !6059

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6060
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6062
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6063

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6064
  br label %kmalloc_index.exit.i, !dbg !6064

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6065
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6067
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6068

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6069
  br label %kmalloc_index.exit.i, !dbg !6069

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6070
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6072
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6073

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6074
  br label %kmalloc_index.exit.i, !dbg !6074

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6075
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6077
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6078

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6079
  br label %kmalloc_index.exit.i, !dbg !6079

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6080
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6082
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6083

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6084
  br label %kmalloc_index.exit.i, !dbg !6084

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6085
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6087
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6088

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6089
  br label %kmalloc_index.exit.i, !dbg !6089

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6090
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6092
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6093

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6094
  br label %kmalloc_index.exit.i, !dbg !6094

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6095
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6097
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6098

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6099
  br label %kmalloc_index.exit.i, !dbg !6099

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6100
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6102
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6103

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6104
  br label %kmalloc_index.exit.i, !dbg !6104

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6105
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6107
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6108

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6109
  br label %kmalloc_index.exit.i, !dbg !6109

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6110
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6112
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6113

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6114
  br label %kmalloc_index.exit.i, !dbg !6114

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6115
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6117
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6118

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6119
  br label %kmalloc_index.exit.i, !dbg !6119

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6120
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6122
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6123

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6124
  br label %kmalloc_index.exit.i, !dbg !6124

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6125
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6127
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6128

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6129
  br label %kmalloc_index.exit.i, !dbg !6129

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !6130, !srcloc !6133
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !6134, !srcloc !6137
  unreachable, !dbg !6138

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6139
  store i32 %45, i32* %index.i, align 4, !dbg !6140
  %46 = load i32, i32* %index.i, align 4, !dbg !6141
  %tobool.i = icmp ne i32 %46, 0, !dbg !6141
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6143

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6144
  br label %kmalloc.exit, !dbg !6144

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6145
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6146
  %and.i.i = and i32 %48, 17, !dbg !6146
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6146
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6146
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6146
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6146
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6148

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6149
  br label %kmalloc_type.exit.i, !dbg !6149

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6150
  %and2.i.i = and i32 %49, 1, !dbg !6151
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6150
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6150
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6150
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6152
  br label %kmalloc_type.exit.i, !dbg !6152

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6153
  %idxprom.i = zext i32 %51 to i64, !dbg !6154
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6154
  %52 = load i32, i32* %index.i, align 4, !dbg !6155
  %idxprom6.i = zext i32 %52 to i64, !dbg !6154
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6154
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6154
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6156
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6157
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6158
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6159
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6160
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6160
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6160
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6160
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6160
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5917
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6161
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6162
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6163
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6164
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6165
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6166
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6167
  store i8* %62, i8** %retval.i, align 8, !dbg !6168
  br label %kmalloc.exit, !dbg !6168

if.end9.i:                                        ; preds = %if.end
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6169
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6170
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6171
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6171
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6171
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6171
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6171
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6172
  br label %kmalloc.exit, !dbg !6172

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6173
  %66 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6174
  %recv = getelementptr inbounds %struct.karma_data, %struct.karma_data* %66, i32 0, i32 1, !dbg !6175
  store i8* %65, i8** %recv, align 8, !dbg !6176
  %67 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6177
  %recv2 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %67, i32 0, i32 1, !dbg !6179
  %68 = load i8*, i8** %recv2, align 8, !dbg !6179
  %tobool3 = icmp ne i8* %68, null, !dbg !6177
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6180

if.then4:                                         ; preds = %kmalloc.exit
  %69 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6181
  %70 = bitcast %struct.karma_data* %69 to i8*, !dbg !6181
  call void @kfree(i8* %70) #8, !dbg !6183
  br label %out, !dbg !6184

if.end5:                                          ; preds = %kmalloc.exit
  %71 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6185
  %72 = bitcast %struct.karma_data* %71 to i8*, !dbg !6185
  %73 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6186
  %extra = getelementptr inbounds %struct.us_data, %struct.us_data* %73, i32 0, i32 35, !dbg !6187
  store i8* %72, i8** %extra, align 8, !dbg !6188
  %74 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6189
  %extra_destructor = getelementptr inbounds %struct.us_data, %struct.us_data* %74, i32 0, i32 36, !dbg !6190
  store void (i8*)* @rio_karma_destructor, void (i8*)** %extra_destructor, align 8, !dbg !6191
  %75 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6192
  %call6 = call i32 @rio_karma_send_command(i8 signext 1, %struct.us_data* %75) #8, !dbg !6193
  store i32 %call6, i32* %ret, align 4, !dbg !6194
  %76 = load i32, i32* %ret, align 4, !dbg !6195
  %cmp = icmp eq i32 %76, 0, !dbg !6196
  %conv = zext i1 %cmp to i32, !dbg !6196
  %77 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6197
  %in_storage = getelementptr inbounds %struct.karma_data, %struct.karma_data* %77, i32 0, i32 0, !dbg !6198
  store i32 %conv, i32* %in_storage, align 8, !dbg !6199
  br label %out, !dbg !6197

out:                                              ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !6200), !dbg !6201
  %78 = load i32, i32* %ret, align 4, !dbg !6202
  ret i32 %78, !dbg !6203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !6204 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5900, metadata !DIExpression()), !dbg !6205
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5912, metadata !DIExpression()), !dbg !6208
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5914, metadata !DIExpression()), !dbg !6209
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5916, metadata !DIExpression()), !dbg !6210
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5918, metadata !DIExpression()), !dbg !6211
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5924, metadata !DIExpression()), !dbg !6213
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5930, metadata !DIExpression()), !dbg !6215
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5939, metadata !DIExpression()), !dbg !6218
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5941, metadata !DIExpression()), !dbg !6219
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5943, metadata !DIExpression()), !dbg !6220
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5945, metadata !DIExpression()), !dbg !6221
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5947, metadata !DIExpression()), !dbg !6222
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5949, metadata !DIExpression()), !dbg !6223
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5951, metadata !DIExpression()), !dbg !6224
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5953, metadata !DIExpression()), !dbg !6225
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  %0 = load i64, i64* %size.addr, align 8, !dbg !6230
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6231
  %or = or i32 %1, 256, !dbg !6232
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6233
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !6234
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6235

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6236
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6237
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6238

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6239
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6240
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6241
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !6242
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6222
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6243
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6244
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6245
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6246
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6247
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6248
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !6249
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6249
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6249
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6249
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !6249
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6250
  br label %kmalloc.exit, !dbg !6250

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6251
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6252
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6252
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6253

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6254
  br label %kmalloc_index.exit.i, !dbg !6254

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6255
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6256
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6257

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6258
  br label %kmalloc_index.exit.i, !dbg !6258

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6259
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6260
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6261

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6262
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6263
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6264

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6265
  br label %kmalloc_index.exit.i, !dbg !6265

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6266
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6267
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6268

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6269
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6270
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6271

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6272
  br label %kmalloc_index.exit.i, !dbg !6272

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6273
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6274
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6275

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6276
  br label %kmalloc_index.exit.i, !dbg !6276

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6277
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6278
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6279

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6280
  br label %kmalloc_index.exit.i, !dbg !6280

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6281
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6282
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6283

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6284
  br label %kmalloc_index.exit.i, !dbg !6284

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6285
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6286
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6287

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6288
  br label %kmalloc_index.exit.i, !dbg !6288

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6289
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6290
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6291

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6292
  br label %kmalloc_index.exit.i, !dbg !6292

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6293
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6294
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6295

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6296
  br label %kmalloc_index.exit.i, !dbg !6296

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6297
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6298
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6299

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6300
  br label %kmalloc_index.exit.i, !dbg !6300

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6301
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6302
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6303

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6304
  br label %kmalloc_index.exit.i, !dbg !6304

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6305
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6306
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6307

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6308
  br label %kmalloc_index.exit.i, !dbg !6308

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6309
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6310
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6311

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6312
  br label %kmalloc_index.exit.i, !dbg !6312

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6313
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6314
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6315

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6316
  br label %kmalloc_index.exit.i, !dbg !6316

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6317
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6318
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6319

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6320
  br label %kmalloc_index.exit.i, !dbg !6320

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6321
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6322
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6323

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6324
  br label %kmalloc_index.exit.i, !dbg !6324

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6325
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6326
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6327

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6328
  br label %kmalloc_index.exit.i, !dbg !6328

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6329
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6330
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6331

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6332
  br label %kmalloc_index.exit.i, !dbg !6332

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6333
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6334
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6335

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6336
  br label %kmalloc_index.exit.i, !dbg !6336

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6337
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6338
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6339

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6340
  br label %kmalloc_index.exit.i, !dbg !6340

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6341
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6342
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6343

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6344
  br label %kmalloc_index.exit.i, !dbg !6344

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6345
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6346
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6347

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6348
  br label %kmalloc_index.exit.i, !dbg !6348

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6349
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6350
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6351

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6352
  br label %kmalloc_index.exit.i, !dbg !6352

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6353
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6354
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6355

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6356
  br label %kmalloc_index.exit.i, !dbg !6356

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6357
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6358
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6359

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6360
  br label %kmalloc_index.exit.i, !dbg !6360

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6361
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6362
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6363

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6364
  br label %kmalloc_index.exit.i, !dbg !6364

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6365
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6366
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6367

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6368
  br label %kmalloc_index.exit.i, !dbg !6368

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !6369, !srcloc !6133
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !6370, !srcloc !6137
  unreachable, !dbg !6371

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6372
  store i32 %45, i32* %index.i, align 4, !dbg !6373
  %46 = load i32, i32* %index.i, align 4, !dbg !6374
  %tobool.i = icmp ne i32 %46, 0, !dbg !6374
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6375

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6376
  br label %kmalloc.exit, !dbg !6376

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6377
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6378
  %and.i.i = and i32 %48, 17, !dbg !6378
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6378
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6378
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6378
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6378
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6379

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6380
  br label %kmalloc_type.exit.i, !dbg !6380

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6381
  %and2.i.i = and i32 %49, 1, !dbg !6382
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6381
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6381
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6381
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6383
  br label %kmalloc_type.exit.i, !dbg !6383

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6384
  %idxprom.i = zext i32 %51 to i64, !dbg !6385
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6385
  %52 = load i32, i32* %index.i, align 4, !dbg !6386
  %idxprom6.i = zext i32 %52 to i64, !dbg !6385
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6385
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6385
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6387
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6388
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6389
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6390
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6391
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6391
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6391
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6391
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6391
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6210
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6392
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6393
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6394
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6395
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6396
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6397
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6398
  store i8* %62, i8** %retval.i, align 8, !dbg !6399
  br label %kmalloc.exit, !dbg !6399

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6400
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6401
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6402
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6402
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6402
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6402
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6402
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6403
  br label %kmalloc.exit, !dbg !6403

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6404
  ret i8* %65, !dbg !6405
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rio_karma_destructor(i8* %extra) #2 !dbg !6406 {
entry:
  %extra.addr = alloca i8*, align 8
  %data = alloca %struct.karma_data*, align 8
  store i8* %extra, i8** %extra.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %extra.addr, metadata !6407, metadata !DIExpression()), !dbg !6408
  call void @llvm.dbg.declare(metadata %struct.karma_data** %data, metadata !6409, metadata !DIExpression()), !dbg !6410
  %0 = load i8*, i8** %extra.addr, align 8, !dbg !6411
  %1 = bitcast i8* %0 to %struct.karma_data*, !dbg !6412
  store %struct.karma_data* %1, %struct.karma_data** %data, align 8, !dbg !6410
  %2 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6413
  %recv = getelementptr inbounds %struct.karma_data, %struct.karma_data* %2, i32 0, i32 1, !dbg !6414
  %3 = load i8*, i8** %recv, align 8, !dbg !6414
  call void @kfree(i8* %3) #8, !dbg !6415
  ret void, !dbg !6416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rio_karma_send_command(i8 signext %cmd, %struct.us_data* %us) #2 !dbg !5782 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6417, metadata !DIExpression()), !dbg !6422
  %retval = alloca i32, align 4
  %cmd.addr = alloca i8, align 1
  %us.addr = alloca %struct.us_data*, align 8
  %result = alloca i32, align 4
  %timeout = alloca i64, align 8
  %data = alloca %struct.karma_data*, align 8
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !6426, metadata !DIExpression()), !dbg !6427
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6428, metadata !DIExpression()), !dbg !6429
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6430, metadata !DIExpression()), !dbg !6431
  call void @llvm.dbg.declare(metadata %struct.karma_data** %data, metadata !6432, metadata !DIExpression()), !dbg !6433
  %0 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6434
  %extra = getelementptr inbounds %struct.us_data, %struct.us_data* %0, i32 0, i32 35, !dbg !6435
  %1 = load i8*, i8** %extra, align 8, !dbg !6435
  %2 = bitcast i8* %1 to %struct.karma_data*, !dbg !6436
  store %struct.karma_data* %2, %struct.karma_data** %data, align 8, !dbg !6433
  br label %do.body, !dbg !6437

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6438

do.end:                                           ; preds = %do.body
  %3 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6440
  %iobuf = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 28, !dbg !6441
  %4 = load i8*, i8** %iobuf, align 8, !dbg !6441
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 40, i1 false), !dbg !6442
  %5 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6443
  %iobuf1 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 28, !dbg !6444
  %6 = load i8*, i8** %iobuf1, align 8, !dbg !6444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 5, i1 false), !dbg !6445
  %7 = load i8, i8* %cmd.addr, align 1, !dbg !6446
  %8 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6447
  %iobuf2 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 28, !dbg !6448
  %9 = load i8*, i8** %iobuf2, align 8, !dbg !6448
  %arrayidx = getelementptr i8, i8* %9, i64 5, !dbg !6447
  store i8 %7, i8* %arrayidx, align 1, !dbg !6449
  %10 = load i8, i8* @rio_karma_send_command.seq, align 1, !dbg !6450
  %11 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6451
  %iobuf3 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 28, !dbg !6452
  %12 = load i8*, i8** %iobuf3, align 8, !dbg !6452
  %arrayidx4 = getelementptr i8, i8* %12, i64 6, !dbg !6451
  store i8 %10, i8* %arrayidx4, align 1, !dbg !6453
  %13 = load volatile i64, i64* @jiffies, align 8, !dbg !6454
  store i32 6000, i32* %m.addr.i, align 4
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !6455
  %15 = call i1 @llvm.is.constant.i32(i32 %14) #9, !dbg !6457
  br i1 %15, label %if.then.i, label %if.else.i, !dbg !6458

if.then.i:                                        ; preds = %do.end
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !6459
  %cmp.i = icmp slt i32 %16, 0, !dbg !6462
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6463

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6464
  br label %msecs_to_jiffies.exit, !dbg !6464

if.end.i:                                         ; preds = %if.then.i
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !6465
  %call.i = call i64 @_msecs_to_jiffies(i32 %17) #11, !dbg !6466
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6467
  br label %msecs_to_jiffies.exit, !dbg !6467

if.else.i:                                        ; preds = %do.end
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !6468
  %call2.i = call i64 @__msecs_to_jiffies(i32 %18) #11, !dbg !6470
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6471
  br label %msecs_to_jiffies.exit, !dbg !6471

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %19 = load i64, i64* %retval.i, align 8, !dbg !6472
  %add = add i64 %13, %19, !dbg !6473
  store i64 %add, i64* %timeout, align 8, !dbg !6474
  br label %for.cond, !dbg !6475

for.cond:                                         ; preds = %if.end21, %msecs_to_jiffies.exit
  %20 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6476
  %21 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6480
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 6, !dbg !6481
  %22 = load i32, i32* %send_bulk_pipe, align 8, !dbg !6481
  %23 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6482
  %iobuf5 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 28, !dbg !6483
  %24 = load i8*, i8** %iobuf5, align 8, !dbg !6483
  %call6 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %20, i32 %22, i8* %24, i32 40, i32* null) #8, !dbg !6484
  store i32 %call6, i32* %result, align 4, !dbg !6485
  %25 = load i32, i32* %result, align 4, !dbg !6486
  %cmp = icmp ne i32 %25, 0, !dbg !6488
  br i1 %cmp, label %if.then, label %if.end, !dbg !6489

if.then:                                          ; preds = %for.cond
  br label %err, !dbg !6490

if.end:                                           ; preds = %for.cond
  %26 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6491
  %27 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6492
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 7, !dbg !6493
  %28 = load i32, i32* %recv_bulk_pipe, align 4, !dbg !6493
  %29 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6494
  %recv = getelementptr inbounds %struct.karma_data, %struct.karma_data* %29, i32 0, i32 1, !dbg !6495
  %30 = load i8*, i8** %recv, align 8, !dbg !6495
  %call7 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %26, i32 %28, i8* %30, i32 512, i32* null) #8, !dbg !6496
  store i32 %call7, i32* %result, align 4, !dbg !6497
  %31 = load i32, i32* %result, align 4, !dbg !6498
  %cmp8 = icmp ne i32 %31, 0, !dbg !6500
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6501

if.then9:                                         ; preds = %if.end
  br label %err, !dbg !6502

if.end10:                                         ; preds = %if.end
  %32 = load %struct.karma_data*, %struct.karma_data** %data, align 8, !dbg !6503
  %recv11 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %32, i32 0, i32 1, !dbg !6505
  %33 = load i8*, i8** %recv11, align 8, !dbg !6505
  %arrayidx12 = getelementptr i8, i8* %33, i64 5, !dbg !6503
  %34 = load i8, i8* %arrayidx12, align 1, !dbg !6503
  %conv = sext i8 %34 to i32, !dbg !6503
  %35 = load i8, i8* @rio_karma_send_command.seq, align 1, !dbg !6506
  %conv13 = zext i8 %35 to i32, !dbg !6506
  %cmp14 = icmp eq i32 %conv, %conv13, !dbg !6507
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !6508

if.then16:                                        ; preds = %if.end10
  br label %for.end, !dbg !6509

if.end17:                                         ; preds = %if.end10
  %36 = load i64, i64* %timeout, align 8, !dbg !6510
  %37 = load volatile i64, i64* @jiffies, align 8, !dbg !6510
  %sub = sub i64 %36, %37, !dbg !6510
  %cmp18 = icmp slt i64 %sub, 0, !dbg !6510
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6512

if.then20:                                        ; preds = %if.end17
  br label %err, !dbg !6513

if.end21:                                         ; preds = %if.end17
  %38 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6514
  %iobuf22 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 28, !dbg !6515
  %39 = load i8*, i8** %iobuf22, align 8, !dbg !6515
  %arrayidx23 = getelementptr i8, i8* %39, i64 4, !dbg !6514
  store i8 -128, i8* %arrayidx23, align 1, !dbg !6516
  %40 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6517
  %iobuf24 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 28, !dbg !6518
  %41 = load i8*, i8** %iobuf24, align 8, !dbg !6518
  %arrayidx25 = getelementptr i8, i8* %41, i64 5, !dbg !6517
  store i8 0, i8* %arrayidx25, align 1, !dbg !6519
  call void @msleep(i32 50) #8, !dbg !6520
  br label %for.cond, !dbg !6521, !llvm.loop !6522

for.end:                                          ; preds = %if.then16
  %42 = load i8, i8* @rio_karma_send_command.seq, align 1, !dbg !6525
  %inc = add i8 %42, 1, !dbg !6525
  store i8 %inc, i8* @rio_karma_send_command.seq, align 1, !dbg !6525
  %43 = load i8, i8* @rio_karma_send_command.seq, align 1, !dbg !6526
  %conv26 = zext i8 %43 to i32, !dbg !6526
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !6528
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !6529

if.then29:                                        ; preds = %for.end
  store i8 1, i8* @rio_karma_send_command.seq, align 1, !dbg !6530
  br label %if.end30, !dbg !6531

if.end30:                                         ; preds = %if.then29, %for.end
  br label %do.body31, !dbg !6532

do.body31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !6533

do.end32:                                         ; preds = %do.body31
  store i32 0, i32* %retval, align 4, !dbg !6535
  br label %return, !dbg !6535

err:                                              ; preds = %if.then20, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !6536), !dbg !6537
  br label %do.body33, !dbg !6538

do.body33:                                        ; preds = %err
  br label %do.end34, !dbg !6539

do.end34:                                         ; preds = %do.body33
  store i32 1, i32* %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

return:                                           ; preds = %do.end34, %do.end32
  %44 = load i32, i32* %retval, align 4, !dbg !6542
  ret i32 %44, !dbg !6542
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !6543 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6547, metadata !DIExpression()), !dbg !6552
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6554, metadata !DIExpression()), !dbg !6555
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load i64, i64* %size.addr, align 8, !dbg !6558
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6560
  br i1 %1, label %if.then, label %if.end447, !dbg !6561

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6562
  %tobool = icmp ne i64 %2, 0, !dbg !6562
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6565

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6567
  %cmp = icmp ult i64 %3, 4096, !dbg !6569
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6570

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6571
  br label %return, !dbg !6571

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub = sub i64 %4, 1, !dbg !6572
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6572
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6572

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub4 = sub i64 %6, 1, !dbg !6572
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6572
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6572

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub6 = sub i64 %8, 1, !dbg !6572
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6572
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6572

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6572

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub9 = sub i64 %9, 1, !dbg !6572
  %and = and i64 %sub9, -9223372036854775808, !dbg !6572
  %tobool10 = icmp ne i64 %and, 0, !dbg !6572
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6572

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6572

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub13 = sub i64 %10, 1, !dbg !6572
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6572
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6572
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6572

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6572

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub18 = sub i64 %11, 1, !dbg !6572
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6572
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6572
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6572

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6572

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub23 = sub i64 %12, 1, !dbg !6572
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6572
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6572
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6572

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6572

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub28 = sub i64 %13, 1, !dbg !6572
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6572
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6572
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6572

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6572

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub33 = sub i64 %14, 1, !dbg !6572
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6572
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6572
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6572

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6572

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub38 = sub i64 %15, 1, !dbg !6572
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6572
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6572
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6572

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6572

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub43 = sub i64 %16, 1, !dbg !6572
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6572
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6572
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6572

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6572

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub48 = sub i64 %17, 1, !dbg !6572
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6572
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6572
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6572

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6572

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub53 = sub i64 %18, 1, !dbg !6572
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6572
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6572
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6572

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6572

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub58 = sub i64 %19, 1, !dbg !6572
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6572
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6572
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6572

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6572

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub63 = sub i64 %20, 1, !dbg !6572
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6572
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6572
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6572

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6572

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub68 = sub i64 %21, 1, !dbg !6572
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6572
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6572
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6572

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6572

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub73 = sub i64 %22, 1, !dbg !6572
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6572
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6572
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6572

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6572

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub78 = sub i64 %23, 1, !dbg !6572
  %and79 = and i64 %sub78, 562949953421312, !dbg !6572
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6572
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6572

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6572

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub83 = sub i64 %24, 1, !dbg !6572
  %and84 = and i64 %sub83, 281474976710656, !dbg !6572
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6572
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6572

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6572

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub88 = sub i64 %25, 1, !dbg !6572
  %and89 = and i64 %sub88, 140737488355328, !dbg !6572
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6572
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6572

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6572

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub93 = sub i64 %26, 1, !dbg !6572
  %and94 = and i64 %sub93, 70368744177664, !dbg !6572
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6572
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6572

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6572

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub98 = sub i64 %27, 1, !dbg !6572
  %and99 = and i64 %sub98, 35184372088832, !dbg !6572
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6572
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6572

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6572

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub103 = sub i64 %28, 1, !dbg !6572
  %and104 = and i64 %sub103, 17592186044416, !dbg !6572
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6572
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6572

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6572

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub108 = sub i64 %29, 1, !dbg !6572
  %and109 = and i64 %sub108, 8796093022208, !dbg !6572
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6572
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6572

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6572

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub113 = sub i64 %30, 1, !dbg !6572
  %and114 = and i64 %sub113, 4398046511104, !dbg !6572
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6572
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6572

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6572

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub118 = sub i64 %31, 1, !dbg !6572
  %and119 = and i64 %sub118, 2199023255552, !dbg !6572
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6572
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6572

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6572

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub123 = sub i64 %32, 1, !dbg !6572
  %and124 = and i64 %sub123, 1099511627776, !dbg !6572
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6572
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6572

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6572

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub128 = sub i64 %33, 1, !dbg !6572
  %and129 = and i64 %sub128, 549755813888, !dbg !6572
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6572
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6572

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6572

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub133 = sub i64 %34, 1, !dbg !6572
  %and134 = and i64 %sub133, 274877906944, !dbg !6572
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6572
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6572

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6572

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub138 = sub i64 %35, 1, !dbg !6572
  %and139 = and i64 %sub138, 137438953472, !dbg !6572
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6572
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6572

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6572

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub143 = sub i64 %36, 1, !dbg !6572
  %and144 = and i64 %sub143, 68719476736, !dbg !6572
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6572
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6572

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6572

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub148 = sub i64 %37, 1, !dbg !6572
  %and149 = and i64 %sub148, 34359738368, !dbg !6572
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6572
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6572

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6572

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub153 = sub i64 %38, 1, !dbg !6572
  %and154 = and i64 %sub153, 17179869184, !dbg !6572
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6572
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6572

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6572

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub158 = sub i64 %39, 1, !dbg !6572
  %and159 = and i64 %sub158, 8589934592, !dbg !6572
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6572
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6572

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6572

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub163 = sub i64 %40, 1, !dbg !6572
  %and164 = and i64 %sub163, 4294967296, !dbg !6572
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6572
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6572

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6572

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub168 = sub i64 %41, 1, !dbg !6572
  %and169 = and i64 %sub168, 2147483648, !dbg !6572
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6572
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6572

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6572

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub173 = sub i64 %42, 1, !dbg !6572
  %and174 = and i64 %sub173, 1073741824, !dbg !6572
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6572
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6572

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6572

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub178 = sub i64 %43, 1, !dbg !6572
  %and179 = and i64 %sub178, 536870912, !dbg !6572
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6572
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6572

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6572

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub183 = sub i64 %44, 1, !dbg !6572
  %and184 = and i64 %sub183, 268435456, !dbg !6572
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6572
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6572

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6572

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub188 = sub i64 %45, 1, !dbg !6572
  %and189 = and i64 %sub188, 134217728, !dbg !6572
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6572
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6572

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6572

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub193 = sub i64 %46, 1, !dbg !6572
  %and194 = and i64 %sub193, 67108864, !dbg !6572
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6572
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6572

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6572

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub198 = sub i64 %47, 1, !dbg !6572
  %and199 = and i64 %sub198, 33554432, !dbg !6572
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6572
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6572

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6572

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub203 = sub i64 %48, 1, !dbg !6572
  %and204 = and i64 %sub203, 16777216, !dbg !6572
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6572
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6572

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6572

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub208 = sub i64 %49, 1, !dbg !6572
  %and209 = and i64 %sub208, 8388608, !dbg !6572
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6572
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6572

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6572

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub213 = sub i64 %50, 1, !dbg !6572
  %and214 = and i64 %sub213, 4194304, !dbg !6572
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6572
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6572

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6572

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub218 = sub i64 %51, 1, !dbg !6572
  %and219 = and i64 %sub218, 2097152, !dbg !6572
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6572
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6572

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6572

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub223 = sub i64 %52, 1, !dbg !6572
  %and224 = and i64 %sub223, 1048576, !dbg !6572
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6572
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6572

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6572

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub228 = sub i64 %53, 1, !dbg !6572
  %and229 = and i64 %sub228, 524288, !dbg !6572
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6572
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6572

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6572

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub233 = sub i64 %54, 1, !dbg !6572
  %and234 = and i64 %sub233, 262144, !dbg !6572
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6572
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6572

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6572

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub238 = sub i64 %55, 1, !dbg !6572
  %and239 = and i64 %sub238, 131072, !dbg !6572
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6572
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6572

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6572

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub243 = sub i64 %56, 1, !dbg !6572
  %and244 = and i64 %sub243, 65536, !dbg !6572
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6572
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6572

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6572

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub248 = sub i64 %57, 1, !dbg !6572
  %and249 = and i64 %sub248, 32768, !dbg !6572
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6572
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6572

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6572

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub253 = sub i64 %58, 1, !dbg !6572
  %and254 = and i64 %sub253, 16384, !dbg !6572
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6572
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6572

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6572

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub258 = sub i64 %59, 1, !dbg !6572
  %and259 = and i64 %sub258, 8192, !dbg !6572
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6572
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6572

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6572

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub263 = sub i64 %60, 1, !dbg !6572
  %and264 = and i64 %sub263, 4096, !dbg !6572
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6572
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6572

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6572

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub268 = sub i64 %61, 1, !dbg !6572
  %and269 = and i64 %sub268, 2048, !dbg !6572
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6572
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6572

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6572

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub273 = sub i64 %62, 1, !dbg !6572
  %and274 = and i64 %sub273, 1024, !dbg !6572
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6572
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6572

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6572

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub278 = sub i64 %63, 1, !dbg !6572
  %and279 = and i64 %sub278, 512, !dbg !6572
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6572
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6572

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6572

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub283 = sub i64 %64, 1, !dbg !6572
  %and284 = and i64 %sub283, 256, !dbg !6572
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6572
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6572

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6572

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub288 = sub i64 %65, 1, !dbg !6572
  %and289 = and i64 %sub288, 128, !dbg !6572
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6572
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6572

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6572

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub293 = sub i64 %66, 1, !dbg !6572
  %and294 = and i64 %sub293, 64, !dbg !6572
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6572
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6572

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6572

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub298 = sub i64 %67, 1, !dbg !6572
  %and299 = and i64 %sub298, 32, !dbg !6572
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6572
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6572

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6572

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub303 = sub i64 %68, 1, !dbg !6572
  %and304 = and i64 %sub303, 16, !dbg !6572
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6572
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6572

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6572

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub308 = sub i64 %69, 1, !dbg !6572
  %and309 = and i64 %sub308, 8, !dbg !6572
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6572
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6572

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6572

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub313 = sub i64 %70, 1, !dbg !6572
  %and314 = and i64 %sub313, 4, !dbg !6572
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6572
  %71 = zext i1 %tobool315 to i64, !dbg !6572
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6572
  br label %cond.end, !dbg !6572

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6572
  br label %cond.end317, !dbg !6572

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6572
  br label %cond.end319, !dbg !6572

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6572
  br label %cond.end321, !dbg !6572

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6572
  br label %cond.end323, !dbg !6572

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6572
  br label %cond.end325, !dbg !6572

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6572
  br label %cond.end327, !dbg !6572

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6572
  br label %cond.end329, !dbg !6572

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6572
  br label %cond.end331, !dbg !6572

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6572
  br label %cond.end333, !dbg !6572

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6572
  br label %cond.end335, !dbg !6572

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6572
  br label %cond.end337, !dbg !6572

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6572
  br label %cond.end339, !dbg !6572

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6572
  br label %cond.end341, !dbg !6572

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6572
  br label %cond.end343, !dbg !6572

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6572
  br label %cond.end345, !dbg !6572

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6572
  br label %cond.end347, !dbg !6572

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6572
  br label %cond.end349, !dbg !6572

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6572
  br label %cond.end351, !dbg !6572

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6572
  br label %cond.end353, !dbg !6572

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6572
  br label %cond.end355, !dbg !6572

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6572
  br label %cond.end357, !dbg !6572

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6572
  br label %cond.end359, !dbg !6572

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6572
  br label %cond.end361, !dbg !6572

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6572
  br label %cond.end363, !dbg !6572

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6572
  br label %cond.end365, !dbg !6572

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6572
  br label %cond.end367, !dbg !6572

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6572
  br label %cond.end369, !dbg !6572

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6572
  br label %cond.end371, !dbg !6572

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6572
  br label %cond.end373, !dbg !6572

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6572
  br label %cond.end375, !dbg !6572

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6572
  br label %cond.end377, !dbg !6572

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6572
  br label %cond.end379, !dbg !6572

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6572
  br label %cond.end381, !dbg !6572

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6572
  br label %cond.end383, !dbg !6572

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6572
  br label %cond.end385, !dbg !6572

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6572
  br label %cond.end387, !dbg !6572

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6572
  br label %cond.end389, !dbg !6572

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6572
  br label %cond.end391, !dbg !6572

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6572
  br label %cond.end393, !dbg !6572

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6572
  br label %cond.end395, !dbg !6572

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6572
  br label %cond.end397, !dbg !6572

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6572
  br label %cond.end399, !dbg !6572

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6572
  br label %cond.end401, !dbg !6572

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6572
  br label %cond.end403, !dbg !6572

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6572
  br label %cond.end405, !dbg !6572

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6572
  br label %cond.end407, !dbg !6572

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6572
  br label %cond.end409, !dbg !6572

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6572
  br label %cond.end411, !dbg !6572

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6572
  br label %cond.end413, !dbg !6572

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6572
  br label %cond.end415, !dbg !6572

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6572
  br label %cond.end417, !dbg !6572

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6572
  br label %cond.end419, !dbg !6572

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6572
  br label %cond.end421, !dbg !6572

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6572
  br label %cond.end423, !dbg !6572

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6572
  br label %cond.end425, !dbg !6572

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6572
  br label %cond.end427, !dbg !6572

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6572
  br label %cond.end429, !dbg !6572

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6572
  br label %cond.end431, !dbg !6572

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6572
  br label %cond.end433, !dbg !6572

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6572
  br label %cond.end435, !dbg !6572

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6572
  br label %cond.end437, !dbg !6572

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6572
  br label %cond.end440, !dbg !6572

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6572

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6572
  br label %cond.end444, !dbg !6572

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6572
  %sub443 = sub i64 %72, 1, !dbg !6572
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !6572
  br label %cond.end444, !dbg !6572

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6572
  %sub446 = sub i32 %cond445, 12, !dbg !6573
  %add = add i32 %sub446, 1, !dbg !6574
  store i32 %add, i32* %retval, align 4, !dbg !6575
  br label %return, !dbg !6575

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6576
  %dec = add i64 %73, -1, !dbg !6576
  store i64 %dec, i64* %size.addr, align 8, !dbg !6576
  %74 = load i64, i64* %size.addr, align 8, !dbg !6577
  %shr = lshr i64 %74, 12, !dbg !6577
  store i64 %shr, i64* %size.addr, align 8, !dbg !6577
  %75 = load i64, i64* %size.addr, align 8, !dbg !6578
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6555
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6579
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6580
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !6579, !srcloc !6581
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6579
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6582
  %add.i = add i32 %79, 1, !dbg !6583
  store i32 %add.i, i32* %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6585
  ret i32 %80, !dbg !6585
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !6586 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6547, metadata !DIExpression()), !dbg !6590
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6554, metadata !DIExpression()), !dbg !6592
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load i64, i64* %n.addr, align 8, !dbg !6595
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6592
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6596
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6597
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !6596, !srcloc !6581
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6596
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6598
  %add.i = add i32 %4, 1, !dbg !6599
  %sub = sub i32 %add.i, 1, !dbg !6600
  ret i32 %sub, !dbg !6601
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6602 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6606, metadata !DIExpression()), !dbg !6607
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6608, metadata !DIExpression()), !dbg !6609
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6610, metadata !DIExpression()), !dbg !6611
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6612, metadata !DIExpression()), !dbg !6613
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6614
  ret i8* %0, !dbg !6615
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6616 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6617, metadata !DIExpression()), !dbg !6618
  %0 = load i32, i32* %m.addr, align 4, !dbg !6619
  %conv = zext i32 %0 to i64, !dbg !6619
  %add = add i64 %conv, 4, !dbg !6620
  %sub = sub i64 %add, 1, !dbg !6621
  %div = sdiv i64 %sub, 4, !dbg !6622
  ret i64 %div, !dbg !6623
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd*, %struct.us_data*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5791, !5792, !5793, !5794}
!llvm.ident = !{!5795}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description302", scope: !2, file: !3, line: 23, type: !5788, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !203, globals: !219, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/storage/karma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !20, !28, !34, !40, !46, !53, !61, !67, !73, !80, !84, !96, !101, !108, !115, !121, !127, !137, !145, !156, !163, !170, !182, !191, !196}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !12, line: 296, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !21, line: 9, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !29, line: 54, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !35, line: 26, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !41, line: 44, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !47, line: 343, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !54, line: 524, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!60 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !54, line: 502, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !68, line: 118, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !74, line: 19, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !68, line: 293, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83}
!82 = !DIEnumerator(name: "BLK_EH_DONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !85, line: 49, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95}
!87 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!92 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!93 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!94 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!95 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !68, line: 315, baseType: !7, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !102, line: 15, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !109, line: 59, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !116, line: 546, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !122, line: 16, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_host_state", file: !128, line: 514, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/scsi/scsi_host.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DIEnumerator(name: "SHOST_CREATED", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "SHOST_RUNNING", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "SHOST_CANCEL", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "SHOST_DEL", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "SHOST_RECOVERY", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "SHOST_CANCEL_RECOVERY", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "SHOST_DEL_RECOVERY", value: 7, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_target_state", file: !138, line: 276, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/scsi/scsi_device.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIEnumerator(name: "STARGET_CREATED", value: 1, isUnsigned: true)
!141 = !DIEnumerator(name: "STARGET_RUNNING", value: 2, isUnsigned: true)
!142 = !DIEnumerator(name: "STARGET_REMOVE", value: 3, isUnsigned: true)
!143 = !DIEnumerator(name: "STARGET_CREATED_REMOVE", value: 4, isUnsigned: true)
!144 = !DIEnumerator(name: "STARGET_DEL", value: 5, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_device_state", file: !138, line: 36, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155}
!147 = !DIEnumerator(name: "SDEV_CREATED", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "SDEV_RUNNING", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "SDEV_CANCEL", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "SDEV_DEL", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "SDEV_QUIESCE", value: 5, isUnsigned: true)
!152 = !DIEnumerator(name: "SDEV_OFFLINE", value: 6, isUnsigned: true)
!153 = !DIEnumerator(name: "SDEV_TRANSPORT_OFFLINE", value: 7, isUnsigned: true)
!154 = !DIEnumerator(name: "SDEV_BLOCK", value: 8, isUnsigned: true)
!155 = !DIEnumerator(name: "SDEV_CREATED_BLOCK", value: 9, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !157, line: 5, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !164, line: 96, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !171, line: 1156, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181}
!173 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!177 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!178 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!179 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!180 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!181 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !171, line: 1146, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190}
!184 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!189 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!190 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !164, line: 476, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!195 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !197, line: 305, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!201 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!202 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!203 = !{!204, !207, !209, !210, !218, !214}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !206, line: 76, flags: DIFlagFwdDecl)
!206 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !208, line: 148, baseType: !7)
!208 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "karma_data", file: !3, line: 37, size: 128, elements: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "in_storage", scope: !211, file: !3, line: 38, baseType: !214, size: 32)
!214 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !211, file: !3, line: 39, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!219 = !{!0, !220, !226, !231, !236, !241, !243, !250, !5271, !5422, !5780, !5785}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author303", scope: !2, file: !3, line: 24, type: !222, isLocal: true, isDefinition: true, align: 8)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 728, elements: !224)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!224 = !{!225}
!225 = !DISubrange(count: 91)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file304", scope: !2, file: !3, line: 25, type: !228, isLocal: true, isDefinition: true, align: 8)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 360, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 45)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license305", scope: !2, file: !3, line: 25, type: !233, isLocal: true, isDefinition: true, align: 8)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 176, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 22)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns306", scope: !2, file: !3, line: 26, type: !238, isLocal: true, isDefinition: true, align: 8)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 32)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_karma_driver_init307", scope: !2, file: !3, line: 233, type: !209, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "__exitcall_karma_driver_exit", scope: !2, file: !3, line: 233, type: !245, isLocal: true, isDefinition: true)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !246, line: 117, baseType: !247)
!246 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null}
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "karma_host_template", scope: !2, file: !3, line: 197, type: !252, isLocal: true, isDefinition: true)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_template", file: !128, line: 32, size: 2880, elements: !253)
!253 = !{!254, !255, !257, !4916, !5069, !5153, !5154, !5155, !5159, !5163, !5164, !5165, !5166, !5167, !5171, !5172, !5176, !5180, !5184, !5188, !5192, !5196, !5200, !5204, !5208, !5209, !5213, !5217, !5221, !5225, !5226, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5263, !5264, !5265, !5266, !5267, !5270}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !252, file: !128, line: 33, baseType: !204, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !128, line: 34, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !252, file: !128, line: 43, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!256, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Scsi_Host", file: !128, line: 524, size: 16256, elements: !263)
!263 = !{!264, !270, !271, !272, !288, !290, !308, !309, !4858, !4859, !4860, !4862, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__devices", scope: !262, file: !128, line: 533, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !208, line: 178, size: 128, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !208, line: 179, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !208, line: 179, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__targets", scope: !262, file: !128, line: 534, baseType: !265, size: 128, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "starved_list", scope: !262, file: !128, line: 536, baseType: !265, size: 128, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "default_lock", scope: !262, file: !128, line: 538, baseType: !273, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !274, line: 83, baseType: !275)
!274 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !274, line: 71, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !274, line: 72, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !274, line: 72, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !278, file: !274, line: 73, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !274, line: 20, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !281, file: !274, line: 21, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !285, line: 25, baseType: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 25, elements: !287)
!287 = !{}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "host_lock", scope: !262, file: !128, line: 539, baseType: !289, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mutex", scope: !262, file: !128, line: 541, baseType: !291, size: 192, offset: 448)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !292, line: 53, size: 192, elements: !293)
!292 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !306, !307}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !291, file: !292, line: 54, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !296, line: 13, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !208, line: 175, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 173, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !298, file: !208, line: 174, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !302, line: 22, baseType: !303)
!302 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !304, line: 30, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !291, file: !292, line: 55, baseType: !273, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !291, file: !292, line: 59, baseType: !265, size: 128, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "eh_cmd_q", scope: !262, file: !128, line: 543, baseType: !265, size: 128, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ehandler", scope: !262, file: !128, line: 544, baseType: !310, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !312, line: 640, size: 48640, elements: !313)
!312 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !323, !325, !326, !336, !337, !338, !339, !340, !341, !342, !343, !347, !375, !387, !487, !488, !489, !500, !501, !503, !504, !4193, !4194, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4271, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4286, !4287, !4288, !4290, !4291, !4292, !4293, !4294, !4295, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4319, !4324, !4325, !4326, !4327, !4328, !4330, !4333, !4336, !4339, !4342, !4346, !4447, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4491, !4492, !4493, !4494, !4495, !4500, !4501, !4502, !4505, !4506, !4508, !4517, !4520, !4521, !4522, !4525, !4526, !4605, !4606, !4609, !4610, !4613, !4614, !4615, !4619, !4620, !4621, !4634, !4635, !4636, !4646, !4651, !4652, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !311, file: !312, line: 646, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !316, line: 56, size: 128, elements: !317)
!316 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !316, line: 57, baseType: !319, size: 64)
!319 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !315, file: !316, line: 58, baseType: !321, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !302, line: 21, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !304, line: 27, baseType: !7)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !312, line: 649, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !218)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !311, file: !312, line: 657, baseType: !209, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !311, file: !312, line: 658, baseType: !327, size: 32, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !328, line: 113, baseType: !329)
!328 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !328, line: 111, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !329, file: !328, line: 112, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !208, line: 168, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 166, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !333, file: !208, line: 167, baseType: !214, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 660, baseType: !7, size: 32, offset: 288)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !311, file: !312, line: 661, baseType: !7, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !311, file: !312, line: 684, baseType: !214, size: 32, offset: 352)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !311, file: !312, line: 686, baseType: !214, size: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !311, file: !312, line: 687, baseType: !214, size: 32, offset: 416)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !311, file: !312, line: 688, baseType: !214, size: 32, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !311, file: !312, line: 689, baseType: !7, size: 32, offset: 480)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !311, file: !312, line: 691, baseType: !344, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !312, line: 691, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !311, file: !312, line: 692, baseType: !348, size: 832, offset: 576)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !312, line: 451, size: 832, elements: !349)
!349 = !{!350, !355, !363, !364, !365, !369, !370, !371, !372, !373}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !348, file: !312, line: 453, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !312, line: 325, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !351, file: !312, line: 326, baseType: !319, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !351, file: !312, line: 327, baseType: !321, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !348, file: !312, line: 454, baseType: !356, size: 192, align: 64, offset: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !357, line: 24, size: 192, align: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !360, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !356, file: !357, line: 25, baseType: !319, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !356, file: !357, line: 26, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !356, file: !357, line: 27, baseType: !361, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !348, file: !312, line: 455, baseType: !265, size: 128, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !348, file: !312, line: 456, baseType: !7, size: 32, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !348, file: !312, line: 458, baseType: !366, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !302, line: 23, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !304, line: 31, baseType: !368)
!368 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !348, file: !312, line: 459, baseType: !366, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !348, file: !312, line: 460, baseType: !366, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !348, file: !312, line: 461, baseType: !366, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !348, file: !312, line: 463, baseType: !366, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !348, file: !312, line: 465, baseType: !374, offset: 832)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !312, line: 415, elements: !287)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !311, file: !312, line: 693, baseType: !376, size: 384, offset: 1408)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !312, line: 489, size: 384, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !384, !385}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !376, file: !312, line: 490, baseType: !265, size: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !376, file: !312, line: 491, baseType: !319, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !376, file: !312, line: 492, baseType: !319, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !376, file: !312, line: 493, baseType: !7, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !376, file: !312, line: 494, baseType: !383, size: 16, offset: 288)
!383 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !376, file: !312, line: 495, baseType: !383, size: 16, offset: 304)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !376, file: !312, line: 497, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !311, file: !312, line: 697, baseType: !388, size: 1792, offset: 1792)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !312, line: 507, size: 1792, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !484, !485}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !388, file: !312, line: 508, baseType: !356, size: 192, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !388, file: !312, line: 515, baseType: !366, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !388, file: !312, line: 516, baseType: !366, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !388, file: !312, line: 517, baseType: !366, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !388, file: !312, line: 518, baseType: !366, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !388, file: !312, line: 519, baseType: !366, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !388, file: !312, line: 526, baseType: !301, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !388, file: !312, line: 527, baseType: !366, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !312, line: 528, baseType: !7, size: 32, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !388, file: !312, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !388, file: !312, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !388, file: !312, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !388, file: !312, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !388, file: !312, line: 563, baseType: !404, size: 512, offset: 704)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !405)
!405 = !{!406, !414, !415, !420, !477, !481, !482, !483}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !404, file: !6, line: 119, baseType: !407, size: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !408, line: 9, size: 256, elements: !409)
!408 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !407, file: !408, line: 10, baseType: !356, size: 192, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !407, file: !408, line: 11, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !413, line: 29, baseType: !301)
!413 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !404, file: !6, line: 120, baseType: !412, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !404, file: !6, line: 121, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!5, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !404, file: !6, line: 122, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !423)
!423 = !{!424, !445, !446, !450, !460, !461, !472, !476}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !422, file: !6, line: 160, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !427)
!427 = !{!428, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !6, line: 215, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !274, line: 29, baseType: !281)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !426, file: !6, line: 216, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !426, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !426, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !426, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !426, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !426, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !426, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !426, file: !6, line: 233, baseType: !412, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !426, file: !6, line: 234, baseType: !419, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !426, file: !6, line: 235, baseType: !412, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !426, file: !6, line: 236, baseType: !419, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !426, file: !6, line: 237, baseType: !442, size: 4096, offset: 512)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 4096, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !422, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !422, file: !6, line: 162, baseType: !447, size: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !208, line: 27, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !449, line: 96, baseType: !214)
!449 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !422, file: !6, line: 163, baseType: !451, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !452, line: 276, baseType: !453)
!452 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !452, line: 276, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !453, file: !452, line: 276, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !452, line: 70, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !452, line: 65, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !457, file: !452, line: 66, baseType: !7, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !422, file: !6, line: 164, baseType: !419, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !422, file: !6, line: 165, baseType: !462, size: 128, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !408, line: 14, size: 128, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !462, file: !408, line: 15, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !357, line: 125, size: 128, elements: !466)
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !465, file: !357, line: 126, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !357, line: 31, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !468, file: !357, line: 32, baseType: !361, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !465, file: !357, line: 127, baseType: !361, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !422, file: !6, line: 166, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!412}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !422, file: !6, line: 167, baseType: !412, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !6, line: 123, baseType: !478, size: 8, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !302, line: 17, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !304, line: 21, baseType: !480)
!480 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !404, file: !6, line: 124, baseType: !478, size: 8, offset: 456)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !404, file: !6, line: 125, baseType: !478, size: 8, offset: 464)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !404, file: !6, line: 126, baseType: !478, size: 8, offset: 472)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !388, file: !312, line: 572, baseType: !404, size: 512, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !388, file: !312, line: 580, baseType: !486, size: 64, offset: 1728)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !311, file: !312, line: 721, baseType: !7, size: 32, offset: 3584)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !311, file: !312, line: 722, baseType: !214, size: 32, offset: 3616)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !311, file: !312, line: 723, baseType: !490, size: 64, offset: 3648)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !493, line: 17, baseType: !494)
!493 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !493, line: 17, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !494, file: !493, line: 17, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 1)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !311, file: !312, line: 724, baseType: !492, size: 64, offset: 3712)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !311, file: !312, line: 749, baseType: !502, offset: 3776)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !312, line: 290, elements: !287)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !311, file: !312, line: 751, baseType: !265, size: 128, offset: 3776)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !311, file: !312, line: 757, baseType: !505, size: 64, offset: 3904)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !507, line: 388, size: 7296, elements: !508)
!507 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !4191}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !507, line: 389, baseType: !510, size: 7296)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !507, line: 389, size: 7296, elements: !511)
!511 = !{!512, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4114, !4120, !4123, !4162, !4163, !4175, !4176, !4179, !4180, !4181, !4184, !4185, !4186, !4189, !4190}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !510, file: !507, line: 390, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !507, line: 305, size: 1472, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !531, !532, !537, !538, !541, !4060, !4061, !4062, !4063, !4064}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !514, file: !507, line: 308, baseType: !319, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !514, file: !507, line: 309, baseType: !319, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !514, file: !507, line: 313, baseType: !513, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !514, file: !507, line: 313, baseType: !513, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !514, file: !507, line: 315, baseType: !356, size: 192, align: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !514, file: !507, line: 323, baseType: !319, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !514, file: !507, line: 327, baseType: !505, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !514, file: !507, line: 333, baseType: !524, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !525, line: 284, baseType: !526)
!525 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !525, line: 284, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !526, file: !525, line: 284, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !530, line: 19, baseType: !319)
!530 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !514, file: !507, line: 334, baseType: !319, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !514, file: !507, line: 343, baseType: !533, size: 256, offset: 704)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !507, line: 340, size: 256, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !533, file: !507, line: 341, baseType: !356, size: 192, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !533, file: !507, line: 342, baseType: !319, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !514, file: !507, line: 351, baseType: !265, size: 128, offset: 960)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !514, file: !507, line: 353, baseType: !539, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !507, line: 353, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !514, file: !507, line: 356, baseType: !542, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !116, line: 557, size: 832, elements: !545)
!545 = !{!546, !550, !551, !555, !559, !4034, !4038, !4042, !4046, !4047, !4048, !4052, !4056}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !544, file: !116, line: 558, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !513}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !544, file: !116, line: 559, baseType: !547, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !544, file: !116, line: 560, baseType: !552, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!214, !513, !319}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !544, file: !116, line: 561, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!214, !513}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !544, file: !116, line: 562, baseType: !560, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !507, line: 682, baseType: !7)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !116, line: 508, size: 768, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !579, !586, !592, !4029, !4030, !4032, !4033}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !565, file: !116, line: 509, baseType: !513, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !116, line: 510, baseType: !7, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !565, file: !116, line: 511, baseType: !207, size: 32, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !565, file: !116, line: 512, baseType: !319, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !565, file: !116, line: 513, baseType: !319, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !565, file: !116, line: 514, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !525, line: 385, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 385, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !575, file: !525, line: 385, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !530, line: 15, baseType: !319)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !565, file: !116, line: 516, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !525, line: 359, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 359, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !582, file: !525, line: 359, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !530, line: 16, baseType: !319)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !565, file: !116, line: 519, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !530, line: 21, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 21, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !588, file: !530, line: 21, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !530, line: 14, baseType: !319)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !565, file: !116, line: 521, baseType: !593, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !507, line: 68, size: 512, align: 128, elements: !595)
!595 = !{!596, !597, !4021, !4028}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !507, line: 69, baseType: !319, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !507, line: 77, baseType: !598, size: 320, offset: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !507, line: 77, size: 320, elements: !599)
!599 = !{!600, !3914, !3919, !3945, !3953, !3959, !3972, !4020}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 78, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 78, size: 320, elements: !602)
!602 = !{!603, !604, !3912, !3913}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !601, file: !507, line: 84, baseType: !265, size: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !601, file: !507, line: 86, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !12, line: 451, size: 1216, align: 64, elements: !607)
!607 = !{!608, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3907, !3908, !3909, !3910, !3911}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !606, file: !12, line: 452, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !12, line: 610, size: 4224, elements: !611)
!611 = !{!612, !614, !615, !623, !630, !631, !3733, !3734, !3735, !3736, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3776, !3784, !3785, !3786, !3796, !3797, !3798, !3799}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !610, file: !12, line: 611, baseType: !613, size: 16)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !208, line: 19, baseType: !383)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !610, file: !12, line: 612, baseType: !383, size: 16, offset: 16)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !610, file: !12, line: 613, baseType: !616, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !617, line: 23, baseType: !618)
!617 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !617, line: 21, size: 32, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !617, line: 22, baseType: !621, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !208, line: 32, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !449, line: 49, baseType: !7)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !610, file: !12, line: 614, baseType: !624, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !617, line: 28, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !617, line: 26, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !625, file: !617, line: 27, baseType: !628, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !208, line: 33, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !449, line: 50, baseType: !7)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !610, file: !12, line: 615, baseType: !7, size: 32, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !610, file: !12, line: 622, baseType: !632, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !12, line: 1864, size: 1536, align: 512, elements: !635)
!635 = !{!636, !3610, !3620, !3624, !3630, !3634, !3638, !3642, !3646, !3650, !3654, !3655, !3659, !3663, !3683, !3709, !3713, !3719, !3724, !3728, !3729}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !634, file: !12, line: 1865, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!640, !609, !640, !7}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !642, line: 89, size: 1536, elements: !643)
!642 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645, !650, !658, !659, !674, !675, !677, !689, !759, !3594, !3595, !3596, !3602, !3603, !3604}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !641, file: !642, line: 91, baseType: !7, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !641, file: !642, line: 92, baseType: !646, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !452, line: 277, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !452, line: 277, size: 32, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !647, file: !452, line: 277, baseType: !456, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !641, file: !642, line: 93, baseType: !651, size: 128, offset: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !652, line: 38, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !652, line: 39, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !651, file: !652, line: 39, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !641, file: !642, line: 94, baseType: !640, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !641, file: !642, line: 95, baseType: !660, size: 128, offset: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !642, line: 47, size: 128, elements: !661)
!661 = !{!662, !671}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !642, line: 48, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !642, line: 48, size: 64, elements: !664)
!664 = !{!665, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !642, line: 49, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !642, line: 49, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !666, file: !642, line: 50, baseType: !321, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !666, file: !642, line: 50, baseType: !321, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !663, file: !642, line: 52, baseType: !366, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !642, line: 54, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !641, file: !642, line: 96, baseType: !609, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !641, file: !642, line: 98, baseType: !676, size: 256, offset: 448)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 256, elements: !239)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !641, file: !642, line: 101, baseType: !678, size: 32, offset: 704)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !679, line: 25, size: 32, elements: !680)
!679 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !679, line: 26, baseType: !682, size: 32)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !679, line: 26, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !679, line: 30, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !679, line: 30, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !685, file: !679, line: 31, baseType: !273)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !685, file: !679, line: 32, baseType: !214, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !641, file: !642, line: 102, baseType: !690, size: 64, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !642, line: 135, size: 1024, align: 512, elements: !693)
!693 = !{!694, !698, !699, !706, !712, !716, !720, !724, !725, !729, !733, !745, !753}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !692, file: !642, line: 136, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!214, !640, !7}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !692, file: !642, line: 137, baseType: !695, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !692, file: !642, line: 138, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!214, !703, !705}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !692, file: !642, line: 139, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!214, !703, !7, !256, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !692, file: !642, line: 141, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!214, !703}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !692, file: !642, line: 142, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!214, !640}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !692, file: !642, line: 143, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !640}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !692, file: !642, line: 144, baseType: !721, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !692, file: !642, line: 145, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !640, !609}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !692, file: !642, line: 146, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!216, !640, !216, !214}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !692, file: !642, line: 147, baseType: !734, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !642, line: 18, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !741, line: 8, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !740, file: !741, line: 9, baseType: !737, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !740, file: !741, line: 10, baseType: !640, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !692, file: !642, line: 148, baseType: !746, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!214, !749, !751}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !208, line: 30, baseType: !752)
!752 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !692, file: !642, line: 149, baseType: !754, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!640, !640, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !641, file: !642, line: 103, baseType: !760, size: 64, offset: 832)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !12, line: 1416, size: 9472, elements: !762)
!762 = !{!763, !764, !767, !768, !769, !772, !821, !1500, !1582, !1665, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1681, !1685, !1686, !3453, !3454, !3457, !3458, !3459, !3500, !3526, !3527, !3528, !3529, !3530, !3531, !3534, !3535, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !761, file: !12, line: 1417, baseType: !265, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !761, file: !12, line: 1418, baseType: !765, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !208, line: 16, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !208, line: 13, baseType: !321)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !761, file: !12, line: 1419, baseType: !480, size: 8, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !761, file: !12, line: 1420, baseType: !319, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !761, file: !12, line: 1421, baseType: !770, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !208, line: 46, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !449, line: 88, baseType: !305)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !761, file: !12, line: 1422, baseType: !773, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !12, line: 2228, size: 576, elements: !775)
!775 = !{!776, !777, !778, !785, !789, !793, !797, !798, !799, !809, !812, !813, !814, !818, !819, !820}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !12, line: 2229, baseType: !256, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !774, file: !12, line: 2230, baseType: !214, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !774, file: !12, line: 2238, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!214, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !784, line: 28, flags: DIFlagFwdDecl)
!784 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !774, file: !12, line: 2239, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !12, line: 70, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !774, file: !12, line: 2240, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!640, !773, !214, !256, !209}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !774, file: !12, line: 2242, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !760}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !774, file: !12, line: 2243, baseType: !204, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !12, line: 2244, baseType: !773, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !774, file: !12, line: 2245, baseType: !800, size: 64, offset: 512)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !208, line: 182, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !800, file: !208, line: 183, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !208, line: 186, size: 128, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !208, line: 187, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !804, file: !208, line: 187, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !774, file: !12, line: 2247, baseType: !810, offset: 576)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !811, line: 187, elements: !287)
!811 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !774, file: !12, line: 2248, baseType: !810, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !774, file: !12, line: 2249, baseType: !810, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !774, file: !12, line: 2250, baseType: !815, offset: 576)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 3)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !774, file: !12, line: 2252, baseType: !810, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !774, file: !12, line: 2253, baseType: !810, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !774, file: !12, line: 2254, baseType: !810, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !761, file: !12, line: 1423, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !12, line: 1935, size: 1472, elements: !825)
!825 = !{!826, !830, !834, !835, !839, !845, !849, !850, !851, !855, !859, !860, !861, !862, !868, !873, !874, !1477, !1478, !1479, !1480, !1484, !1499}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !824, file: !12, line: 1936, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!609, !760}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !824, file: !12, line: 1937, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !609}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !824, file: !12, line: 1938, baseType: !831, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !824, file: !12, line: 1940, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !609, !214}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !824, file: !12, line: 1941, baseType: !840, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!214, !609, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !116, line: 40, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !824, file: !12, line: 1942, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!214, !609}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !824, file: !12, line: 1943, baseType: !831, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !824, file: !12, line: 1944, baseType: !794, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !824, file: !12, line: 1945, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!214, !760, !214}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !824, file: !12, line: 1946, baseType: !856, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!214, !760}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !824, file: !12, line: 1947, baseType: !856, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !824, file: !12, line: 1948, baseType: !856, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !824, file: !12, line: 1949, baseType: !856, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !824, file: !12, line: 1950, baseType: !863, size: 64, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!214, !640, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !12, line: 57, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !824, file: !12, line: 1951, baseType: !869, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!214, !760, !872, !216}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !824, file: !12, line: 1952, baseType: !794, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !824, file: !12, line: 1954, baseType: !875, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!214, !878, !640}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !880, line: 16, size: 896, elements: !881)
!880 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !883, !887, !888, !889, !890, !891, !892, !893, !915, !916, !1476}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !879, file: !880, line: 17, baseType: !216, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !879, file: !880, line: 18, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !208, line: 55, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !449, line: 72, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !449, line: 16, baseType: !319)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !879, file: !880, line: 19, baseType: !884, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !879, file: !880, line: 20, baseType: !884, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !879, file: !880, line: 21, baseType: !884, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !879, file: !880, line: 22, baseType: !770, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !879, file: !880, line: 23, baseType: !770, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !879, file: !880, line: 24, baseType: !291, size: 192, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !879, file: !880, line: 25, baseType: !894, size: 64, offset: 640)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !880, line: 31, size: 256, elements: !897)
!897 = !{!898, !903, !907, !911}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !896, file: !880, line: 32, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!209, !878, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !896, file: !880, line: 33, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !878, !209}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !896, file: !880, line: 34, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!209, !878, !209, !902}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !896, file: !880, line: 35, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!214, !878, !209}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !879, file: !880, line: 26, baseType: !214, size: 32, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !879, file: !880, line: 27, baseType: !917, size: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !12, line: 916, size: 1856, align: 32, elements: !920)
!920 = !{!921, !939, !940, !941, !1223, !1224, !1225, !1226, !1227, !1229, !1230, !1231, !1261, !1458, !1467, !1468, !1469, !1470, !1471, !1472, !1475}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !919, file: !12, line: 920, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !12, line: 917, size: 128, elements: !923)
!923 = !{!924, !930}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !922, file: !12, line: 918, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !926, line: 58, size: 64, elements: !927)
!926 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !926, line: 59, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !922, file: !12, line: 919, baseType: !931, size: 128, align: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !208, line: 216, size: 128, align: 64, elements: !932)
!932 = !{!933, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !931, file: !208, line: 217, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !931, file: !208, line: 218, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !934}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !919, file: !12, line: 921, baseType: !740, size: 128, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !919, file: !12, line: 922, baseType: !609, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !919, file: !12, line: 923, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !12, line: 1822, size: 2048, elements: !945)
!945 = !{!946, !947, !952, !959, !963, !1009, !1010, !1014, !1027, !1028, !1036, !1040, !1041, !1045, !1046, !1050, !1055, !1056, !1060, !1064, !1178, !1182, !1186, !1190, !1191, !1197, !1201, !1206, !1210, !1214, !1218, !1222}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !944, file: !12, line: 1823, baseType: !204, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !944, file: !12, line: 1824, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!770, !951, !770, !214}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !944, file: !12, line: 1825, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!956, !951, !216, !884, !902}
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !208, line: 60, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !449, line: 73, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !449, line: 15, baseType: !218)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !944, file: !12, line: 1826, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!956, !951, !256, !884, !902}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !944, file: !12, line: 1827, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!956, !967, !1007}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !12, line: 320, size: 384, elements: !969)
!969 = !{!970, !971, !972, !976, !977, !978, !981, !982}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !968, file: !12, line: 321, baseType: !951, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !968, file: !12, line: 326, baseType: !770, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !968, file: !12, line: 327, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !967, !218, !218}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !968, file: !12, line: 328, baseType: !209, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !968, file: !12, line: 329, baseType: !214, size: 32, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !968, file: !12, line: 330, baseType: !979, size: 16, offset: 288)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !302, line: 19, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !304, line: 24, baseType: !383)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !968, file: !12, line: 331, baseType: !979, size: 16, offset: 304)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !12, line: 332, baseType: !983, size: 64, offset: 320)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !12, line: 332, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !983, file: !12, line: 333, baseType: !7, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !983, file: !12, line: 334, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !989, line: 569, size: 448, elements: !990)
!989 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !988, file: !989, line: 570, baseType: !593, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !988, file: !989, line: 571, baseType: !214, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !988, file: !989, line: 572, baseType: !994, size: 320, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !995, line: 14, baseType: !996)
!995 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !995, line: 29, size: 320, elements: !997)
!997 = !{!998, !999, !1000, !1006}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !995, line: 30, baseType: !7, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !996, file: !995, line: 31, baseType: !209, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !996, file: !995, line: 32, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !995, line: 16, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!214, !1005, !7, !214, !209}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !996, file: !995, line: 33, baseType: !265, size: 128, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !12, line: 64, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !944, file: !12, line: 1828, baseType: !964, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !944, file: !12, line: 1829, baseType: !1011, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!214, !967, !751}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !944, file: !12, line: 1830, baseType: !1015, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!214, !951, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !12, line: 1776, size: 128, elements: !1020)
!1020 = !{!1021, !1026}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1019, file: !12, line: 1777, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !12, line: 1773, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!214, !1018, !256, !214, !770, !366, !7}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1019, file: !12, line: 1778, baseType: !770, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !944, file: !12, line: 1831, baseType: !1015, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !944, file: !12, line: 1832, baseType: !1029, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!1032, !951, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1033, line: 52, baseType: !7)
!1033 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !784, line: 27, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !944, file: !12, line: 1833, baseType: !1037, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!218, !951, !7, !319}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !944, file: !12, line: 1834, baseType: !1037, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !944, file: !12, line: 1835, baseType: !1042, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!214, !951, !513}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !944, file: !12, line: 1836, baseType: !319, size: 64, offset: 832)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !944, file: !12, line: 1837, baseType: !1047, size: 64, offset: 896)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!214, !609, !951}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !944, file: !12, line: 1838, baseType: !1051, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!214, !951, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !12, line: 1007, baseType: !209)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !944, file: !12, line: 1839, baseType: !1047, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !944, file: !12, line: 1840, baseType: !1057, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!214, !951, !770, !770, !214}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !944, file: !12, line: 1841, baseType: !1061, size: 64, offset: 1152)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!214, !214, !951, !214}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !12, line: 1842, baseType: !1065, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!214, !951, !214, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !12, line: 1062, size: 1664, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1087, !1088, !1089, !1090, !1107, !1108, !1109, !1122, !1154}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1069, file: !12, line: 1063, baseType: !1068, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1069, file: !12, line: 1064, baseType: !265, size: 128, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1069, file: !12, line: 1065, baseType: !804, size: 128, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1069, file: !12, line: 1066, baseType: !265, size: 128, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1069, file: !12, line: 1069, baseType: !265, size: 128, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1069, file: !12, line: 1072, baseType: !1054, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1069, file: !12, line: 1073, baseType: !7, size: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1069, file: !12, line: 1074, baseType: !480, size: 8, offset: 672)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1069, file: !12, line: 1075, baseType: !7, size: 32, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1069, file: !12, line: 1076, baseType: !214, size: 32, offset: 736)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1069, file: !12, line: 1077, baseType: !1082, size: 128, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !995, line: 40, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !995, line: 36, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1083, file: !995, line: 37, baseType: !273)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1083, file: !995, line: 38, baseType: !265, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1069, file: !12, line: 1078, baseType: !951, size: 64, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1069, file: !12, line: 1079, baseType: !770, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1069, file: !12, line: 1080, baseType: !770, size: 64, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1069, file: !12, line: 1082, baseType: !1091, size: 64, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !12, line: 1314, size: 320, elements: !1093)
!1093 = !{!1094, !1102, !1103, !1104, !1105, !1106}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1092, file: !12, line: 1315, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1096, line: 20, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 11, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1097, file: !1096, line: 12, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !285, line: 33, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 31, elements: !287)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1092, file: !12, line: 1316, baseType: !214, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1092, file: !12, line: 1317, baseType: !214, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1092, file: !12, line: 1318, baseType: !1091, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1092, file: !12, line: 1319, baseType: !951, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1092, file: !12, line: 1320, baseType: !931, size: 128, align: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1069, file: !12, line: 1084, baseType: !319, size: 64, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1069, file: !12, line: 1085, baseType: !319, size: 64, offset: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1069, file: !12, line: 1087, baseType: !1110, size: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !12, line: 1011, size: 128, elements: !1113)
!1113 = !{!1114, !1118}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1112, file: !12, line: 1012, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !1068, !1068}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1112, file: !12, line: 1013, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1068}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1069, file: !12, line: 1088, baseType: !1123, size: 64, offset: 1344)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !12, line: 1016, size: 512, elements: !1126)
!1126 = !{!1127, !1131, !1135, !1136, !1140, !1144, !1148, !1153}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1125, file: !12, line: 1017, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1054, !1054}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1125, file: !12, line: 1018, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1054}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1125, file: !12, line: 1019, baseType: !1119, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1125, file: !12, line: 1020, baseType: !1137, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!214, !1068, !214}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1125, file: !12, line: 1021, baseType: !1141, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!751, !1068}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1125, file: !12, line: 1022, baseType: !1145, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!214, !1068, !214, !268}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1125, file: !12, line: 1023, baseType: !1149, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1068, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1125, file: !12, line: 1024, baseType: !1141, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1069, file: !12, line: 1097, baseType: !1155, size: 256, offset: 1408)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !12, line: 1089, size: 256, elements: !1156)
!1156 = !{!1157, !1166, !1172}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1155, file: !12, line: 1090, baseType: !1158, size: 256)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1159, line: 10, size: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161, !1162, !1165}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1158, file: !1159, line: 11, baseType: !321, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1158, file: !1159, line: 12, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1159, line: 5, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1158, file: !1159, line: 13, baseType: !265, size: 128, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1155, file: !12, line: 1091, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1159, line: 17, size: 64, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1167, file: !1159, line: 18, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1159, line: 16, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1155, file: !12, line: 1096, baseType: !1173, size: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !12, line: 1092, size: 192, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1173, file: !12, line: 1093, baseType: !265, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1173, file: !12, line: 1094, baseType: !214, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1173, file: !12, line: 1095, baseType: !7, size: 32, offset: 160)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !944, file: !12, line: 1843, baseType: !1179, size: 64, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!956, !951, !593, !214, !884, !902, !214}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !944, file: !12, line: 1844, baseType: !1183, size: 64, offset: 1344)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!319, !951, !319, !319, !319, !319}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !944, file: !12, line: 1845, baseType: !1187, size: 64, offset: 1408)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!214, !214}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !944, file: !12, line: 1846, baseType: !1065, size: 64, offset: 1472)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !944, file: !12, line: 1847, baseType: !1192, size: 64, offset: 1536)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!956, !1195, !951, !902, !884, !7}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !312, line: 53, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !944, file: !12, line: 1848, baseType: !1198, size: 64, offset: 1600)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!956, !951, !902, !1195, !884, !7}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !944, file: !12, line: 1849, baseType: !1202, size: 64, offset: 1664)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!214, !951, !218, !1205, !1152}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !944, file: !12, line: 1850, baseType: !1207, size: 64, offset: 1728)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!218, !951, !214, !770, !770}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !944, file: !12, line: 1852, baseType: !1211, size: 64, offset: 1792)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !878, !951}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !944, file: !12, line: 1856, baseType: !1215, size: 64, offset: 1856)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!956, !951, !770, !951, !770, !884, !7}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !944, file: !12, line: 1858, baseType: !1219, size: 64, offset: 1920)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!770, !951, !770, !951, !770, !770, !7}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !944, file: !12, line: 1861, baseType: !1057, size: 64, offset: 1984)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !919, file: !12, line: 929, baseType: !273, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !919, file: !12, line: 930, baseType: !11, size: 32, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !919, file: !12, line: 931, baseType: !295, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !919, file: !12, line: 932, baseType: !7, size: 32, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !919, file: !12, line: 933, baseType: !1228, size: 32, offset: 544)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !208, line: 150, baseType: !7)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !919, file: !12, line: 934, baseType: !291, size: 192, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !919, file: !12, line: 935, baseType: !770, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !919, file: !12, line: 936, baseType: !1232, size: 192, offset: 832)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !12, line: 885, size: 192, elements: !1233)
!1233 = !{!1234, !1235, !1257, !1258, !1259, !1260}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1232, file: !12, line: 886, baseType: !1095)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1232, file: !12, line: 887, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !21, line: 59, size: 768, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1246, !1247, !1248, !1249}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1237, file: !21, line: 61, baseType: !327, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1237, file: !21, line: 62, baseType: !7, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !21, line: 63, baseType: !273, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1237, file: !21, line: 65, baseType: !1243, size: 256, offset: 64)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 4)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1237, file: !21, line: 66, baseType: !800, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1237, file: !21, line: 68, baseType: !1082, size: 128, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1237, file: !21, line: 69, baseType: !931, size: 128, align: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1237, file: !21, line: 70, baseType: !1250, size: 128, offset: 640)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 128, elements: !498)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !21, line: 54, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1251, file: !21, line: 55, baseType: !214, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1251, file: !21, line: 56, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !21, line: 56, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1232, file: !12, line: 888, baseType: !20, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !12, line: 889, baseType: !616, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1232, file: !12, line: 889, baseType: !616, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1232, file: !12, line: 890, baseType: !214, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !919, file: !12, line: 937, baseType: !1262, size: 64, offset: 1024)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1265, line: 111, size: 1280, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1286, !1287, !1288, !1289, !1290, !1291, !1411, !1412, !1413, !1414, !1440, !1443, !1453}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1264, file: !1265, line: 112, baseType: !332, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1264, file: !1265, line: 120, baseType: !616, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1264, file: !1265, line: 121, baseType: !624, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1264, file: !1265, line: 122, baseType: !616, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1264, file: !1265, line: 123, baseType: !624, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1264, file: !1265, line: 124, baseType: !616, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1264, file: !1265, line: 125, baseType: !624, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1264, file: !1265, line: 126, baseType: !616, size: 32, offset: 224)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1264, file: !1265, line: 127, baseType: !624, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1264, file: !1265, line: 128, baseType: !7, size: 32, offset: 288)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1264, file: !1265, line: 129, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1279, line: 26, baseType: !1280)
!1279 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1279, line: 24, size: 64, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1280, file: !1279, line: 25, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 2)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1264, file: !1265, line: 130, baseType: !1278, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1264, file: !1265, line: 131, baseType: !1278, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1264, file: !1265, line: 132, baseType: !1278, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1264, file: !1265, line: 133, baseType: !1278, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1264, file: !1265, line: 135, baseType: !480, size: 8, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1264, file: !1265, line: 137, baseType: !1292, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1294, line: 189, size: 1664, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297, !1302, !1307, !1315, !1318, !1319, !1326, !1327, !1328, !1329, !1332, !1333, !1334, !1336, !1337, !1375, !1396}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1293, file: !1294, line: 190, baseType: !327, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1293, file: !1294, line: 191, baseType: !1298, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1294, line: 28, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !208, line: 98, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !302, line: 20, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !304, line: 26, baseType: !214)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1294, line: 192, baseType: !1303, size: 192, offset: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1294, line: 192, size: 192, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1303, file: !1294, line: 193, baseType: !265, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1303, file: !1294, line: 194, baseType: !356, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1293, file: !1294, line: 199, baseType: !1308, size: 256, offset: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1309, line: 35, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1308, file: !1309, line: 36, baseType: !295, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1308, file: !1309, line: 42, baseType: !295, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1308, file: !1309, line: 46, baseType: !429, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1308, file: !1309, line: 47, baseType: !265, size: 128, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1293, file: !1294, line: 200, baseType: !1316, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1294, line: 200, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1293, file: !1294, line: 201, baseType: !209, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1294, line: 202, baseType: !1320, size: 64, offset: 640)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1294, line: 202, size: 64, elements: !1321)
!1321 = !{!1322, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1320, file: !1294, line: 203, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1324, line: 8, baseType: !303)
!1324 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1320, file: !1294, line: 204, baseType: !1323, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1293, file: !1294, line: 206, baseType: !1323, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1293, file: !1294, line: 207, baseType: !616, size: 32, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1293, file: !1294, line: 208, baseType: !624, size: 32, offset: 800)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1293, file: !1294, line: 209, baseType: !1330, size: 32, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1294, line: 31, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !208, line: 104, baseType: !321)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1293, file: !1294, line: 210, baseType: !383, size: 16, offset: 864)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1293, file: !1294, line: 211, baseType: !383, size: 16, offset: 880)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1293, file: !1294, line: 215, baseType: !1335, size: 16, offset: 896)
!1335 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1294, line: 222, baseType: !319, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1294, line: 239, baseType: !1338, size: 320, offset: 1024)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1294, line: 239, size: 320, elements: !1339)
!1339 = !{!1340, !1367}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1338, file: !1294, line: 240, baseType: !1341, size: 320)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1294, line: 108, size: 320, elements: !1342)
!1342 = !{!1343, !1344, !1356, !1359, !1366}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1341, file: !1294, line: 110, baseType: !319, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1294, line: 111, baseType: !1345, size: 64, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1294, line: 111, size: 64, elements: !1346)
!1346 = !{!1347, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !1294, line: 112, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !1294, line: 112, size: 64, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1348, file: !1294, line: 114, baseType: !979, size: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1348, file: !1294, line: 115, baseType: !1352, size: 48, offset: 16)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 6)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1345, file: !1294, line: 121, baseType: !319, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1341, file: !1294, line: 123, baseType: !1357, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1294, line: 96, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1341, file: !1294, line: 124, baseType: !1360, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1294, line: 102, size: 192, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1361, file: !1294, line: 103, baseType: !931, size: 128, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1361, file: !1294, line: 104, baseType: !327, size: 32, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1361, file: !1294, line: 105, baseType: !751, size: 8, offset: 160)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1341, file: !1294, line: 125, baseType: !256, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !1294, line: 241, baseType: !1368, size: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1338, file: !1294, line: 241, size: 320, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1368, file: !1294, line: 242, baseType: !319, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1368, file: !1294, line: 243, baseType: !319, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1368, file: !1294, line: 244, baseType: !1357, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1368, file: !1294, line: 245, baseType: !1360, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1368, file: !1294, line: 246, baseType: !216, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1294, line: 254, baseType: !1376, size: 256, offset: 1344)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1294, line: 254, size: 256, elements: !1377)
!1377 = !{!1378, !1384}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1376, file: !1294, line: 255, baseType: !1379, size: 256)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1294, line: 128, size: 256, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1379, file: !1294, line: 129, baseType: !209, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1379, file: !1294, line: 130, baseType: !1383, size: 256)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !1244)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !1294, line: 256, baseType: !1385, size: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1294, line: 256, size: 256, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1385, file: !1294, line: 258, baseType: !265, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1385, file: !1294, line: 259, baseType: !1389, size: 128, offset: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1390, line: 22, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1395}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1389, file: !1390, line: 23, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1390, line: 23, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1389, file: !1390, line: 24, baseType: !319, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1293, file: !1294, line: 274, baseType: !1397, size: 64, offset: 1600)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1294, line: 170, size: 192, elements: !1399)
!1399 = !{!1400, !1409, !1410}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1398, file: !1294, line: 171, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1294, line: 165, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!214, !1292, !1405, !1407, !1292}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1398, file: !1294, line: 172, baseType: !1292, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1398, file: !1294, line: 173, baseType: !1357, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1264, file: !1265, line: 138, baseType: !1292, size: 64, offset: 768)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1264, file: !1265, line: 139, baseType: !1292, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1264, file: !1265, line: 140, baseType: !1292, size: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1264, file: !1265, line: 145, baseType: !1415, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1417, line: 13, size: 896, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1416, file: !1417, line: 14, baseType: !327, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1416, file: !1417, line: 15, baseType: !332, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1416, file: !1417, line: 16, baseType: !332, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1416, file: !1417, line: 21, baseType: !295, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1416, file: !1417, line: 27, baseType: !319, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1416, file: !1417, line: 28, baseType: !319, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1416, file: !1417, line: 29, baseType: !295, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1416, file: !1417, line: 32, baseType: !804, size: 128, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1416, file: !1417, line: 33, baseType: !616, size: 32, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1416, file: !1417, line: 37, baseType: !295, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1416, file: !1417, line: 44, baseType: !1430, size: 256, offset: 640)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1431, line: 15, size: 256, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !1431, line: 16, baseType: !429)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1430, file: !1431, line: 18, baseType: !214, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1430, file: !1431, line: 19, baseType: !214, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1430, file: !1431, line: 20, baseType: !214, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1430, file: !1431, line: 21, baseType: !214, size: 32, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1430, file: !1431, line: 22, baseType: !319, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1431, line: 23, baseType: !319, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1264, file: !1265, line: 146, baseType: !1441, size: 64, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !617, line: 18, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1264, file: !1265, line: 147, baseType: !1444, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1265, line: 25, size: 64, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1445, file: !1265, line: 26, baseType: !332, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1445, file: !1265, line: 27, baseType: !214, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1445, file: !1265, line: 28, baseType: !1450, offset: 64)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 0)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1265, line: 149, baseType: !1454, size: 128, offset: 1152)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !1265, line: 149, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1454, file: !1265, line: 150, baseType: !214, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1454, file: !1265, line: 151, baseType: !931, size: 128, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !919, file: !12, line: 938, baseType: !1459, size: 256, offset: 1088)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !12, line: 896, size: 256, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1459, file: !12, line: 897, baseType: !319, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1459, file: !12, line: 898, baseType: !7, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1459, file: !12, line: 899, baseType: !7, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1459, file: !12, line: 902, baseType: !7, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1459, file: !12, line: 903, baseType: !7, size: 32, offset: 160)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1459, file: !12, line: 904, baseType: !770, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !919, file: !12, line: 940, baseType: !366, size: 64, offset: 1344)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !919, file: !12, line: 945, baseType: !209, size: 64, offset: 1408)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !919, file: !12, line: 949, baseType: !265, size: 128, offset: 1472)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !919, file: !12, line: 950, baseType: !265, size: 128, offset: 1600)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !919, file: !12, line: 952, baseType: !605, size: 64, offset: 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !919, file: !12, line: 953, baseType: !1473, size: 32, offset: 1792)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1474, line: 8, baseType: !321)
!1474 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !919, file: !12, line: 954, baseType: !1473, size: 32, offset: 1824)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !879, file: !880, line: 28, baseType: !209, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !824, file: !12, line: 1955, baseType: !875, size: 64, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !824, file: !12, line: 1956, baseType: !875, size: 64, offset: 1152)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !824, file: !12, line: 1957, baseType: !875, size: 64, offset: 1216)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !824, file: !12, line: 1963, baseType: !1481, size: 64, offset: 1280)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!214, !760, !593, !207}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !824, file: !12, line: 1964, baseType: !1485, size: 64, offset: 1344)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!218, !760, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1490, line: 12, size: 256, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1493, !1494, !1495, !1496}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1489, file: !1490, line: 13, baseType: !207, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1489, file: !1490, line: 16, baseType: !214, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1489, file: !1490, line: 23, baseType: !319, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1489, file: !1490, line: 30, baseType: !319, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1489, file: !1490, line: 33, baseType: !1497, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !507, line: 27, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !824, file: !12, line: 1966, baseType: !1485, size: 64, offset: 1408)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !761, file: !12, line: 1424, baseType: !1501, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !29, line: 322, size: 704, elements: !1504)
!1504 = !{!1505, !1551, !1555, !1559, !1560, !1561, !1562, !1563, !1568, !1573, !1577}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1503, file: !29, line: 323, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!214, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !29, line: 294, size: 1600, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1536, !1537, !1538}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1510, file: !29, line: 295, baseType: !804, size: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1510, file: !29, line: 296, baseType: !265, size: 128, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1510, file: !29, line: 297, baseType: !265, size: 128, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1510, file: !29, line: 298, baseType: !265, size: 128, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1510, file: !29, line: 299, baseType: !291, size: 192, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1510, file: !29, line: 300, baseType: !273, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1510, file: !29, line: 301, baseType: !332, size: 32, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1510, file: !29, line: 302, baseType: !760, size: 64, offset: 768)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1510, file: !29, line: 303, baseType: !1521, size: 64, offset: 832)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !29, line: 68, size: 64, elements: !1522)
!1522 = !{!1523, !1535}
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1521, file: !29, line: 69, baseType: !1524, size: 32)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1521, file: !29, line: 69, size: 32, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1524, file: !29, line: 70, baseType: !616, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1524, file: !29, line: 71, baseType: !624, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1524, file: !29, line: 72, baseType: !1529, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1530, line: 24, baseType: !1531)
!1530 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1530, line: 22, size: 32, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1531, file: !1530, line: 23, baseType: !1534, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1530, line: 20, baseType: !622)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1521, file: !29, line: 74, baseType: !28, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1510, file: !29, line: 304, baseType: !770, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1510, file: !29, line: 305, baseType: !319, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1510, file: !29, line: 306, baseType: !1539, size: 576, offset: 1024)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !29, line: 205, size: 576, elements: !1540)
!1540 = !{!1541, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1539, file: !29, line: 206, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !29, line: 66, baseType: !305)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1539, file: !29, line: 207, baseType: !1542, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1539, file: !29, line: 208, baseType: !1542, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1539, file: !29, line: 209, baseType: !1542, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1539, file: !29, line: 210, baseType: !1542, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1539, file: !29, line: 211, baseType: !1542, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1539, file: !29, line: 212, baseType: !1542, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1539, file: !29, line: 213, baseType: !1323, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1539, file: !29, line: 214, baseType: !1323, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1503, file: !29, line: 324, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1509, !760, !214}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1503, file: !29, line: 325, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1509}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1503, file: !29, line: 326, baseType: !1506, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1503, file: !29, line: 327, baseType: !1506, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1503, file: !29, line: 328, baseType: !1506, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1503, file: !29, line: 329, baseType: !852, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1503, file: !29, line: 332, baseType: !1564, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1567, !609}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1503, file: !29, line: 333, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!214, !609, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1503, file: !29, line: 335, baseType: !1574, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!214, !609, !1567}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1503, file: !29, line: 337, baseType: !1578, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!214, !760, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !761, file: !12, line: 1425, baseType: !1583, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !29, line: 428, size: 704, elements: !1586)
!1586 = !{!1587, !1591, !1592, !1596, !1597, !1598, !1613, !1636, !1640, !1641, !1664}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1585, file: !29, line: 429, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!214, !760, !214, !214, !749}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1585, file: !29, line: 430, baseType: !852, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1585, file: !29, line: 431, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!214, !760, !7}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1585, file: !29, line: 432, baseType: !1593, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1585, file: !29, line: 433, baseType: !852, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1585, file: !29, line: 434, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!214, !760, !214, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !29, line: 415, size: 256, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1603, file: !29, line: 416, baseType: !214, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1603, file: !29, line: 417, baseType: !7, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1603, file: !29, line: 418, baseType: !7, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1603, file: !29, line: 420, baseType: !7, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1603, file: !29, line: 421, baseType: !7, size: 32, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1603, file: !29, line: 422, baseType: !7, size: 32, offset: 160)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1603, file: !29, line: 423, baseType: !7, size: 32, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1603, file: !29, line: 424, baseType: !7, size: 32, offset: 224)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1585, file: !29, line: 435, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!214, !760, !1521, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !29, line: 343, size: 960, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1618, file: !29, line: 344, baseType: !214, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1618, file: !29, line: 345, baseType: !366, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1618, file: !29, line: 346, baseType: !366, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1618, file: !29, line: 347, baseType: !366, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1618, file: !29, line: 348, baseType: !366, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1618, file: !29, line: 349, baseType: !366, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1618, file: !29, line: 350, baseType: !366, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1618, file: !29, line: 351, baseType: !301, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1618, file: !29, line: 353, baseType: !301, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1618, file: !29, line: 354, baseType: !214, size: 32, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1618, file: !29, line: 355, baseType: !214, size: 32, offset: 608)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1618, file: !29, line: 356, baseType: !366, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1618, file: !29, line: 357, baseType: !366, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1618, file: !29, line: 358, baseType: !366, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1618, file: !29, line: 359, baseType: !301, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1618, file: !29, line: 360, baseType: !214, size: 32, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1585, file: !29, line: 436, baseType: !1637, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!214, !760, !1581, !1617}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1585, file: !29, line: 438, baseType: !1614, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1585, file: !29, line: 439, baseType: !1642, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!214, !760, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !29, line: 409, size: 1408, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1646, file: !29, line: 410, baseType: !7, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1646, file: !29, line: 411, baseType: !1650, size: 1344, offset: 64)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 1344, elements: !816)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !29, line: 395, size: 448, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1663}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !29, line: 396, baseType: !7, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1651, file: !29, line: 397, baseType: !7, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1651, file: !29, line: 399, baseType: !7, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1651, file: !29, line: 400, baseType: !7, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1651, file: !29, line: 401, baseType: !7, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1651, file: !29, line: 402, baseType: !7, size: 32, offset: 160)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1651, file: !29, line: 403, baseType: !7, size: 32, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1651, file: !29, line: 404, baseType: !368, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1651, file: !29, line: 405, baseType: !1662, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !208, line: 126, baseType: !366)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1651, file: !29, line: 406, baseType: !1662, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1585, file: !29, line: 440, baseType: !1593, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !761, file: !12, line: 1426, baseType: !1666, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !12, line: 49, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !761, file: !12, line: 1427, baseType: !319, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !761, file: !12, line: 1428, baseType: !319, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !761, file: !12, line: 1429, baseType: !319, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !761, file: !12, line: 1430, baseType: !640, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !761, file: !12, line: 1431, baseType: !1308, size: 256, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !761, file: !12, line: 1432, baseType: !214, size: 32, offset: 1152)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !761, file: !12, line: 1433, baseType: !332, size: 32, offset: 1184)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !761, file: !12, line: 1437, baseType: !1677, size: 64, offset: 1216)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !12, line: 1437, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !761, file: !12, line: 1449, baseType: !1682, size: 64, offset: 1280)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !652, line: 34, size: 64, elements: !1683)
!1683 = !{!1684}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1682, file: !652, line: 35, baseType: !655, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !761, file: !12, line: 1450, baseType: !265, size: 128, offset: 1344)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !761, file: !12, line: 1451, baseType: !1687, size: 64, offset: 1472)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1689, line: 22, size: 1344, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !2528, !2529, !2530, !3450, !3451, !3452}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1688, file: !1689, line: 23, baseType: !765, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1688, file: !1689, line: 24, baseType: !214, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1688, file: !1689, line: 25, baseType: !609, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1688, file: !1689, line: 26, baseType: !760, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1688, file: !1689, line: 27, baseType: !291, size: 192, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1688, file: !1689, line: 28, baseType: !209, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1688, file: !1689, line: 29, baseType: !209, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1688, file: !1689, line: 30, baseType: !214, size: 32, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1688, file: !1689, line: 31, baseType: !751, size: 8, offset: 544)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1688, file: !1689, line: 33, baseType: !265, size: 128, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1688, file: !1689, line: 35, baseType: !1687, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1688, file: !1689, line: 36, baseType: !478, size: 8, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1688, file: !1689, line: 37, baseType: !1704, size: 64, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1706, line: 53, size: 6592, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1710, !1711, !1712, !1715, !1736, !2507, !2508, !2509, !2510, !2520}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1705, file: !1706, line: 54, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !208, line: 125, baseType: !366)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1705, file: !1706, line: 60, baseType: !1709, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1705, file: !1706, line: 64, baseType: !319, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1705, file: !1706, line: 65, baseType: !1713, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1706, line: 65, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1705, file: !1706, line: 66, baseType: !1716, size: 128, offset: 256)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1717, line: 105, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1716, file: !1717, line: 110, baseType: !319, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1717, line: 118, baseType: !1721, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1717, line: 95, size: 448, elements: !1723)
!1723 = !{!1724, !1725, !1731, !1732, !1733, !1734, !1735}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1722, file: !1717, line: 96, baseType: !295, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1722, file: !1717, line: 97, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1717, line: 60, baseType: !1728)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1730}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1722, file: !1717, line: 98, baseType: !1726, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1722, file: !1717, line: 99, baseType: !751, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1722, file: !1717, line: 100, baseType: !751, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1722, file: !1717, line: 101, baseType: !931, size: 128, align: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1722, file: !1717, line: 102, baseType: !1730, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1705, file: !1706, line: 68, baseType: !1737, size: 5568, offset: 384)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !47, line: 461, size: 5568, elements: !1738)
!1738 = !{!1739, !2037, !2039, !2042, !2043, !2094, !2186, !2187, !2188, !2189, !2190, !2199, !2325, !2338, !2342, !2343, !2347, !2349, !2350, !2351, !2355, !2361, !2362, !2365, !2369, !2459, !2460, !2461, !2462, !2463, !2495, !2496, !2497, !2500, !2503, !2504, !2505, !2506}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1737, file: !47, line: 462, baseType: !1740, size: 512)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1741, line: 64, size: 512, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744, !1745, !1747, !1789, !1894, !2027, !2032, !2033, !2034, !2035, !2036}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1740, file: !1741, line: 65, baseType: !256, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1740, file: !1741, line: 66, baseType: !265, size: 128, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1740, file: !1741, line: 67, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1740, file: !1741, line: 68, baseType: !1748, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1741, line: 192, size: 704, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1749, file: !1741, line: 193, baseType: !265, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1749, file: !1741, line: 194, baseType: !273, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1749, file: !1741, line: 195, baseType: !1740, size: 512, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1749, file: !1741, line: 196, baseType: !1755, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1741, line: 156, size: 192, elements: !1758)
!1758 = !{!1759, !1764, !1769}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1757, file: !1741, line: 157, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!214, !1748, !1746}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1741, line: 158, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!256, !1748, !1746}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1757, file: !1741, line: 159, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!214, !1748, !1746, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1741, line: 148, size: 20736, elements: !1776)
!1776 = !{!1777, !1779, !1783, !1784, !1788}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1775, file: !1741, line: 149, baseType: !1778, size: 192)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 192, elements: !816)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1775, file: !1741, line: 150, baseType: !1780, size: 4096, offset: 192)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 4096, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1775, file: !1741, line: 151, baseType: !214, size: 32, offset: 4288)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1775, file: !1741, line: 152, baseType: !1785, size: 16384, offset: 4320)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 16384, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 2048)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1775, file: !1741, line: 153, baseType: !214, size: 32, offset: 20704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1740, file: !1741, line: 69, baseType: !1790, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1741, line: 138, size: 448, elements: !1792)
!1792 = !{!1793, !1797, !1816, !1818, !1851, !1884, !1888}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1791, file: !1741, line: 139, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1746}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1791, file: !1741, line: 140, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1801, line: 230, size: 128, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1812}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1800, file: !1801, line: 231, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!956, !1746, !1807, !216}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1801, line: 30, size: 128, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1808, file: !1801, line: 31, baseType: !256, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1808, file: !1801, line: 32, baseType: !613, size: 16, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1800, file: !1801, line: 232, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!956, !1746, !1807, !256, !884}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1791, file: !1741, line: 141, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1791, file: !1741, line: 142, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1801, line: 84, size: 320, elements: !1823)
!1823 = !{!1824, !1825, !1829, !1848, !1849}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1822, file: !1801, line: 85, baseType: !256, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1822, file: !1801, line: 86, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!613, !1746, !1807, !214}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1822, file: !1801, line: 88, baseType: !1830, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!613, !1746, !1833, !214}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1801, line: 168, size: 448, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839, !1843, !1844}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1834, file: !1801, line: 169, baseType: !1808, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1834, file: !1801, line: 170, baseType: !884, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1834, file: !1801, line: 171, baseType: !209, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1834, file: !1801, line: 172, baseType: !1840, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!956, !951, !1746, !1833, !216, !770, !884}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1834, file: !1801, line: 174, baseType: !1840, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1834, file: !1801, line: 176, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!214, !951, !1746, !1833, !513}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1822, file: !1801, line: 90, baseType: !1817, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1822, file: !1801, line: 91, baseType: !1850, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1791, file: !1741, line: 143, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !1746}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !35, line: 39, size: 384, elements: !1858)
!1858 = !{!1859, !1860, !1864, !1868, !1876, !1880}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1857, file: !35, line: 40, baseType: !34, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1857, file: !35, line: 41, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!751}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1857, file: !35, line: 42, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!209}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1857, file: !35, line: 43, baseType: !1869, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1872, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !35, line: 19, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1857, file: !35, line: 44, baseType: !1877, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1872}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1857, file: !35, line: 45, baseType: !1881, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !209}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1791, file: !1741, line: 144, baseType: !1885, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1872, !1746}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1791, file: !1741, line: 145, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1746, !1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1740, file: !1741, line: 70, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !784, line: 123, size: 1024, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !2020, !2021, !2022, !2023, !2024}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1896, file: !784, line: 124, baseType: !332, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1896, file: !784, line: 125, baseType: !332, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1896, file: !784, line: 135, baseType: !1895, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1896, file: !784, line: 136, baseType: !256, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1896, file: !784, line: 138, baseType: !356, size: 192, align: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1896, file: !784, line: 140, baseType: !1872, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1896, file: !784, line: 141, baseType: !7, size: 32, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !784, line: 142, baseType: !1906, size: 256, offset: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !784, line: 142, size: 256, elements: !1907)
!1907 = !{!1908, !1960, !1964}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1906, file: !784, line: 143, baseType: !1909, size: 192)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !784, line: 91, size: 192, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1909, file: !784, line: 92, baseType: !319, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1909, file: !784, line: 94, baseType: !468, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1909, file: !784, line: 100, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !784, line: 180, size: 704, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1932, !1933, !1934, !1958, !1959}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1915, file: !784, line: 182, baseType: !1895, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1915, file: !784, line: 183, baseType: !7, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1915, file: !784, line: 186, baseType: !1920, size: 192, offset: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1921, line: 19, size: 192, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1930, !1931}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1920, file: !1921, line: 20, baseType: !1924, size: 128)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1925, line: 292, size: 128, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1924, file: !1925, line: 293, baseType: !273)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1924, file: !1925, line: 295, baseType: !207, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1924, file: !1925, line: 296, baseType: !209, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1920, file: !1921, line: 21, baseType: !7, size: 32, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1920, file: !1921, line: 22, baseType: !7, size: 32, offset: 160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1915, file: !784, line: 187, baseType: !321, size: 32, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1915, file: !784, line: 188, baseType: !321, size: 32, offset: 352)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1915, file: !784, line: 189, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !784, line: 168, size: 320, elements: !1937)
!1937 = !{!1938, !1942, !1946, !1950, !1954}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1936, file: !784, line: 169, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!214, !878, !1914}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1936, file: !784, line: 171, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!214, !1895, !256, !613}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1936, file: !784, line: 173, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!214, !1895}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1936, file: !784, line: 174, baseType: !1951, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!214, !1895, !1895, !256}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1936, file: !784, line: 176, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!214, !878, !1895, !1914}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1915, file: !784, line: 192, baseType: !265, size: 128, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1915, file: !784, line: 194, baseType: !1082, size: 128, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1906, file: !784, line: 144, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !784, line: 103, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1961, file: !784, line: 104, baseType: !1895, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1906, file: !784, line: 145, baseType: !1965, size: 256)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !784, line: 107, size: 256, elements: !1966)
!1966 = !{!1967, !2015, !2018, !2019}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1965, file: !784, line: 108, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !784, line: 217, size: 768, elements: !1971)
!1971 = !{!1972, !1992, !1996, !1997, !1998, !1999, !2000, !2004, !2005, !2006, !2007, !2011}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1970, file: !784, line: 222, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!214, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !784, line: 197, size: 1088, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1977, file: !784, line: 199, baseType: !1895, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1977, file: !784, line: 200, baseType: !951, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1977, file: !784, line: 201, baseType: !878, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1977, file: !784, line: 202, baseType: !209, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1977, file: !784, line: 205, baseType: !291, size: 192, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1977, file: !784, line: 206, baseType: !291, size: 192, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1977, file: !784, line: 207, baseType: !214, size: 32, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1977, file: !784, line: 208, baseType: !265, size: 128, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1977, file: !784, line: 209, baseType: !216, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1977, file: !784, line: 211, baseType: !884, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1977, file: !784, line: 212, baseType: !751, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1977, file: !784, line: 213, baseType: !751, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1977, file: !784, line: 214, baseType: !542, size: 64, offset: 1024)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1970, file: !784, line: 223, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1976}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1970, file: !784, line: 236, baseType: !912, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1970, file: !784, line: 238, baseType: !899, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1970, file: !784, line: 239, baseType: !908, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1970, file: !784, line: 240, baseType: !904, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1970, file: !784, line: 242, baseType: !2001, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!956, !1976, !216, !884, !770}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1970, file: !784, line: 252, baseType: !884, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1970, file: !784, line: 259, baseType: !751, size: 8, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1970, file: !784, line: 260, baseType: !2001, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1970, file: !784, line: 263, baseType: !2008, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1032, !1976, !1034}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1970, file: !784, line: 266, baseType: !2012, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!214, !1976, !513}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1965, file: !784, line: 109, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !784, line: 31, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1965, file: !784, line: 110, baseType: !770, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1965, file: !784, line: 111, baseType: !1895, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1896, file: !784, line: 148, baseType: !209, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1896, file: !784, line: 154, baseType: !366, size: 64, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1896, file: !784, line: 156, baseType: !383, size: 16, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1896, file: !784, line: 157, baseType: !613, size: 16, offset: 912)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1896, file: !784, line: 158, baseType: !2025, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !784, line: 32, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1740, file: !1741, line: 71, baseType: !2028, size: 32, offset: 448)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2029, line: 19, size: 32, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2028, file: !2029, line: 20, baseType: !327, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1740, file: !1741, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1740, file: !1741, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1740, file: !1741, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1740, file: !1741, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1740, file: !1741, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1737, file: !47, line: 463, baseType: !2038, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1737, file: !47, line: 465, baseType: !2040, size: 64, offset: 576)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !47, line: 36, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1737, file: !47, line: 467, baseType: !256, size: 64, offset: 640)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1737, file: !47, line: 468, baseType: !2044, size: 64, offset: 704)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !47, line: 87, size: 384, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2054, !2059, !2063}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2046, file: !47, line: 88, baseType: !256, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2046, file: !47, line: 89, baseType: !1819, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2046, file: !47, line: 90, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!214, !2038, !1774}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2046, file: !47, line: 91, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!216, !2038, !2058, !1892, !1893}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2046, file: !47, line: 93, baseType: !2060, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !2038}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2046, file: !47, line: 95, baseType: !2064, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !54, line: 278, size: 1472, elements: !2067)
!2067 = !{!2068, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2066, file: !54, line: 279, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!214, !2038}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2066, file: !54, line: 280, baseType: !2060, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2066, file: !54, line: 281, baseType: !2069, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2066, file: !54, line: 282, baseType: !2069, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2066, file: !54, line: 283, baseType: !2069, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2066, file: !54, line: 284, baseType: !2069, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2066, file: !54, line: 285, baseType: !2069, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2066, file: !54, line: 286, baseType: !2069, size: 64, offset: 448)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2066, file: !54, line: 287, baseType: !2069, size: 64, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2066, file: !54, line: 288, baseType: !2069, size: 64, offset: 576)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2066, file: !54, line: 289, baseType: !2069, size: 64, offset: 640)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2066, file: !54, line: 290, baseType: !2069, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2066, file: !54, line: 291, baseType: !2069, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2066, file: !54, line: 292, baseType: !2069, size: 64, offset: 832)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2066, file: !54, line: 293, baseType: !2069, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2066, file: !54, line: 294, baseType: !2069, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2066, file: !54, line: 295, baseType: !2069, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2066, file: !54, line: 296, baseType: !2069, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2066, file: !54, line: 297, baseType: !2069, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2066, file: !54, line: 298, baseType: !2069, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2066, file: !54, line: 299, baseType: !2069, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2066, file: !54, line: 300, baseType: !2069, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2066, file: !54, line: 301, baseType: !2069, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1737, file: !47, line: 470, baseType: !2095, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2097, line: 82, size: 1408, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2181, !2184, !2185}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2096, file: !2097, line: 83, baseType: !256, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2096, file: !2097, line: 84, baseType: !256, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2096, file: !2097, line: 85, baseType: !2038, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2096, file: !2097, line: 86, baseType: !1819, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2096, file: !2097, line: 87, baseType: !1819, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2096, file: !2097, line: 88, baseType: !1819, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2096, file: !2097, line: 90, baseType: !2106, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!214, !2038, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !41, line: 95, size: 1152, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2132, !2145, !2146, !2147, !2148, !2149, !2157, !2158, !2159, !2160, !2161, !2162}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2110, file: !41, line: 96, baseType: !256, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2110, file: !41, line: 97, baseType: !2095, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2110, file: !41, line: 99, baseType: !204, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2110, file: !41, line: 100, baseType: !256, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2110, file: !41, line: 102, baseType: !751, size: 8, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2110, file: !41, line: 103, baseType: !40, size: 32, offset: 288)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2110, file: !41, line: 105, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2122, line: 262, size: 1600, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2126, !2127, !2131}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !2122, line: 263, baseType: !2125, size: 256)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !239)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !2122, line: 264, baseType: !2125, size: 256, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2121, file: !2122, line: 265, baseType: !2128, size: 1024, offset: 512)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !2129)
!2129 = !{!2130}
!2130 = !DISubrange(count: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2121, file: !2122, line: 266, baseType: !1872, size: 64, offset: 1536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2110, file: !41, line: 106, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2122, line: 210, size: 256, elements: !2136)
!2136 = !{!2137, !2141, !2143, !2144}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2135, file: !2122, line: 211, baseType: !2138, size: 72)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 72, elements: !2139)
!2139 = !{!2140}
!2140 = !DISubrange(count: 9)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2135, file: !2122, line: 212, baseType: !2142, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2122, line: 14, baseType: !319)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2135, file: !2122, line: 213, baseType: !322, size: 32, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2135, file: !2122, line: 214, baseType: !322, size: 32, offset: 224)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2110, file: !41, line: 108, baseType: !2069, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2110, file: !41, line: 109, baseType: !2060, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2110, file: !41, line: 110, baseType: !2069, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2110, file: !41, line: 111, baseType: !2060, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2110, file: !41, line: 112, baseType: !2150, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!214, !2038, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !54, line: 52, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !54, line: 50, size: 32, elements: !2155)
!2155 = !{!2156}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2154, file: !54, line: 51, baseType: !214, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2110, file: !41, line: 113, baseType: !2069, size: 64, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2110, file: !41, line: 114, baseType: !1819, size: 64, offset: 832)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2110, file: !41, line: 115, baseType: !1819, size: 64, offset: 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2110, file: !41, line: 117, baseType: !2064, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2110, file: !41, line: 118, baseType: !2060, size: 64, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2110, file: !41, line: 120, baseType: !2163, size: 64, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !41, line: 120, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2096, file: !2097, line: 91, baseType: !2051, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2096, file: !2097, line: 92, baseType: !2069, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2096, file: !2097, line: 93, baseType: !2060, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2096, file: !2097, line: 94, baseType: !2069, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2096, file: !2097, line: 95, baseType: !2060, size: 64, offset: 704)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2096, file: !2097, line: 97, baseType: !2069, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2096, file: !2097, line: 98, baseType: !2069, size: 64, offset: 832)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2096, file: !2097, line: 100, baseType: !2150, size: 64, offset: 896)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2096, file: !2097, line: 101, baseType: !2069, size: 64, offset: 960)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2096, file: !2097, line: 103, baseType: !2069, size: 64, offset: 1024)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2096, file: !2097, line: 105, baseType: !2069, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2096, file: !2097, line: 107, baseType: !2064, size: 64, offset: 1152)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2096, file: !2097, line: 109, baseType: !2178, size: 64, offset: 1216)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2097, line: 109, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2096, file: !2097, line: 111, baseType: !2182, size: 64, offset: 1280)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2097, line: 111, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2096, file: !2097, line: 112, baseType: !810, offset: 1344)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2096, file: !2097, line: 114, baseType: !751, size: 8, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1737, file: !47, line: 471, baseType: !2109, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1737, file: !47, line: 473, baseType: !209, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1737, file: !47, line: 475, baseType: !209, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1737, file: !47, line: 480, baseType: !291, size: 192, offset: 1024)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1737, file: !47, line: 484, baseType: !2191, size: 576, offset: 1216)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !47, line: 361, size: 576, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2191, file: !47, line: 362, baseType: !265, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2191, file: !47, line: 363, baseType: !265, size: 128, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2191, file: !47, line: 364, baseType: !265, size: 128, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2191, file: !47, line: 365, baseType: !265, size: 128, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2191, file: !47, line: 366, baseType: !751, size: 8, offset: 512)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2191, file: !47, line: 367, baseType: !46, size: 32, offset: 544)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1737, file: !47, line: 485, baseType: !2200, size: 2304, offset: 1792)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !54, line: 565, size: 2304, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2227, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2318, !2322}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2200, file: !54, line: 566, baseType: !2153, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2200, file: !54, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2200, file: !54, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2200, file: !54, line: 569, baseType: !751, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2200, file: !54, line: 570, baseType: !751, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2200, file: !54, line: 571, baseType: !751, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2200, file: !54, line: 572, baseType: !751, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2200, file: !54, line: 573, baseType: !751, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2200, file: !54, line: 574, baseType: !751, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2200, file: !54, line: 575, baseType: !751, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2200, file: !54, line: 576, baseType: !751, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2200, file: !54, line: 577, baseType: !321, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2200, file: !54, line: 578, baseType: !273, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2200, file: !54, line: 580, baseType: !265, size: 128, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2200, file: !54, line: 581, baseType: !2217, size: 192, offset: 256)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2218, line: 26, size: 192, elements: !2219)
!2218 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2217, file: !2218, line: 27, baseType: !7, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2217, file: !2218, line: 28, baseType: !2222, size: 128, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2223, line: 43, size: 128, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2222, file: !2223, line: 44, baseType: !429)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2222, file: !2223, line: 45, baseType: !265, size: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2200, file: !54, line: 582, baseType: !2228, size: 64, offset: 448)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2230, line: 43, size: 1472, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2239, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2229, file: !2230, line: 44, baseType: !256, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2229, file: !2230, line: 45, baseType: !214, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2229, file: !2230, line: 46, baseType: !265, size: 128, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2229, file: !2230, line: 47, baseType: !273, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2229, file: !2230, line: 48, baseType: !2237, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !54, line: 533, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2229, file: !2230, line: 49, baseType: !2240, size: 320, offset: 320)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2241, line: 11, size: 320, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243, !2244, !2245, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2240, file: !2241, line: 16, baseType: !804, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2240, file: !2241, line: 17, baseType: !319, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2240, file: !2241, line: 18, baseType: !2246, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2241, line: 19, baseType: !321, size: 32, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2229, file: !2230, line: 50, baseType: !319, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2229, file: !2230, line: 51, baseType: !412, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2229, file: !2230, line: 52, baseType: !412, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2229, file: !2230, line: 53, baseType: !412, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2229, file: !2230, line: 54, baseType: !412, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2229, file: !2230, line: 55, baseType: !412, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2229, file: !2230, line: 56, baseType: !319, size: 64, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2229, file: !2230, line: 57, baseType: !319, size: 64, offset: 1088)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2229, file: !2230, line: 58, baseType: !319, size: 64, offset: 1152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2229, file: !2230, line: 59, baseType: !319, size: 64, offset: 1216)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2229, file: !2230, line: 60, baseType: !319, size: 64, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2229, file: !2230, line: 61, baseType: !2038, size: 64, offset: 1344)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2229, file: !2230, line: 62, baseType: !751, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2229, file: !2230, line: 63, baseType: !751, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2200, file: !54, line: 583, baseType: !751, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2200, file: !54, line: 584, baseType: !751, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2200, file: !54, line: 585, baseType: !751, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2200, file: !54, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2200, file: !54, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2200, file: !54, line: 592, baseType: !404, size: 512, offset: 576)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2200, file: !54, line: 593, baseType: !366, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2200, file: !54, line: 594, baseType: !2273, size: 256, offset: 1152)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2274, line: 102, size: 256, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2273, file: !2274, line: 103, baseType: !295, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2273, file: !2274, line: 104, baseType: !265, size: 128, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2273, file: !2274, line: 105, baseType: !2279, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2274, line: 21, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2200, file: !54, line: 595, baseType: !1082, size: 128, offset: 1408)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2200, file: !54, line: 596, baseType: !2237, size: 64, offset: 1536)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2200, file: !54, line: 597, baseType: !332, size: 32, offset: 1600)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2200, file: !54, line: 598, baseType: !332, size: 32, offset: 1632)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2200, file: !54, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2200, file: !54, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2200, file: !54, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2200, file: !54, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2200, file: !54, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2200, file: !54, line: 604, baseType: !751, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2200, file: !54, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2200, file: !54, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2200, file: !54, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2200, file: !54, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2200, file: !54, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2200, file: !54, line: 610, baseType: !7, size: 32, offset: 1696)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2200, file: !54, line: 611, baseType: !53, size: 32, offset: 1728)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2200, file: !54, line: 612, baseType: !61, size: 32, offset: 1760)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2200, file: !54, line: 613, baseType: !214, size: 32, offset: 1792)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2200, file: !54, line: 614, baseType: !214, size: 32, offset: 1824)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2200, file: !54, line: 615, baseType: !366, size: 64, offset: 1856)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2200, file: !54, line: 616, baseType: !366, size: 64, offset: 1920)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2200, file: !54, line: 617, baseType: !366, size: 64, offset: 1984)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2200, file: !54, line: 618, baseType: !366, size: 64, offset: 2048)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2200, file: !54, line: 620, baseType: !2309, size: 64, offset: 2112)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !54, line: 536, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2310, file: !54, line: 537, baseType: !273)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2310, file: !54, line: 538, baseType: !7, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2310, file: !54, line: 540, baseType: !265, size: 128, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2310, file: !54, line: 543, baseType: !2316, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !54, line: 534, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2200, file: !54, line: 621, baseType: !2319, size: 64, offset: 2176)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2038, !1300}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2200, file: !54, line: 622, baseType: !2323, size: 64, offset: 2240)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 622, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1737, file: !47, line: 486, baseType: !2326, size: 64, offset: 4096)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !54, line: 642, size: 1792, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2335, !2336, !2337}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2327, file: !54, line: 643, baseType: !2066, size: 1472)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2327, file: !54, line: 644, baseType: !2069, size: 64, offset: 1472)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2327, file: !54, line: 645, baseType: !2332, size: 64, offset: 1536)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2038, !751}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2327, file: !54, line: 646, baseType: !2069, size: 64, offset: 1600)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2327, file: !54, line: 647, baseType: !2060, size: 64, offset: 1664)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2327, file: !54, line: 648, baseType: !2060, size: 64, offset: 1728)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1737, file: !47, line: 493, baseType: !2339, size: 64, offset: 4160)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2341, line: 13, flags: DIFlagFwdDecl)
!2341 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1737, file: !47, line: 499, baseType: !265, size: 128, offset: 4224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1737, file: !47, line: 502, baseType: !2344, size: 64, offset: 4352)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2346)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !47, line: 502, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1737, file: !47, line: 504, baseType: !2348, size: 64, offset: 4416)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1737, file: !47, line: 505, baseType: !366, size: 64, offset: 4480)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1737, file: !47, line: 510, baseType: !366, size: 64, offset: 4544)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1737, file: !47, line: 511, baseType: !2352, size: 64, offset: 4608)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2354)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !47, line: 511, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1737, file: !47, line: 513, baseType: !2356, size: 64, offset: 4672)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !47, line: 288, size: 128, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2357, file: !47, line: 293, baseType: !7, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2357, file: !47, line: 294, baseType: !319, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1737, file: !47, line: 515, baseType: !265, size: 128, offset: 4736)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1737, file: !47, line: 526, baseType: !2363, offset: 4864)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2364, line: 5, elements: !287)
!2364 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1737, file: !47, line: 528, baseType: !2366, size: 64, offset: 4864)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2368, line: 14, flags: DIFlagFwdDecl)
!2368 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1737, file: !47, line: 529, baseType: !2370, size: 64, offset: 4928)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2372, line: 17, size: 192, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2373 = !{!2374, !2375, !2458}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2371, file: !2372, line: 18, baseType: !2370, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2371, file: !2372, line: 19, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2372, line: 110, size: 1152, elements: !2379)
!2379 = !{!2380, !2384, !2388, !2394, !2400, !2404, !2408, !2413, !2417, !2418, !2422, !2426, !2430, !2441, !2442, !2443, !2444, !2454}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2378, file: !2372, line: 111, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2370, !2370}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2378, file: !2372, line: 112, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2370}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2378, file: !2372, line: 113, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!751, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2378, file: !2372, line: 114, baseType: !2395, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!1872, !2392, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2378, file: !2372, line: 116, baseType: !2401, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!751, !2392, !256}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2378, file: !2372, line: 118, baseType: !2405, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!214, !2392, !256, !7, !209, !884}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2378, file: !2372, line: 123, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!214, !2392, !256, !2412, !884}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2378, file: !2372, line: 126, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!256, !2392}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2378, file: !2372, line: 127, baseType: !2414, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2378, file: !2372, line: 128, baseType: !2419, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!2370, !2392}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2378, file: !2372, line: 130, baseType: !2423, size: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!2370, !2392, !2370}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2378, file: !2372, line: 133, baseType: !2427, size: 64, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2370, !2392, !256}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2378, file: !2372, line: 135, baseType: !2431, size: 64, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!214, !2392, !256, !256, !7, !7, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2372, line: 43, size: 640, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2435, file: !2372, line: 44, baseType: !2370, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2435, file: !2372, line: 45, baseType: !7, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2435, file: !2372, line: 46, baseType: !2440, size: 512, offset: 128)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !443)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2378, file: !2372, line: 140, baseType: !2423, size: 64, offset: 832)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2378, file: !2372, line: 143, baseType: !2419, size: 64, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2378, file: !2372, line: 145, baseType: !2381, size: 64, offset: 960)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2378, file: !2372, line: 146, baseType: !2445, size: 64, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!214, !2392, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2372, line: 29, size: 128, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2449, file: !2372, line: 30, baseType: !7, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2449, file: !2372, line: 31, baseType: !7, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2449, file: !2372, line: 32, baseType: !2392, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2378, file: !2372, line: 148, baseType: !2455, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!214, !2392, !2038}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2371, file: !2372, line: 20, baseType: !2038, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1737, file: !47, line: 534, baseType: !765, size: 32, offset: 4992)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1737, file: !47, line: 535, baseType: !321, size: 32, offset: 5024)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1737, file: !47, line: 537, baseType: !273, offset: 5056)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1737, file: !47, line: 538, baseType: !265, size: 128, offset: 5056)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1737, file: !47, line: 540, baseType: !2464, size: 64, offset: 5184)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2466, line: 54, size: 960, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2478, !2482, !2483, !2484, !2485, !2489, !2493, !2494}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2465, file: !2466, line: 55, baseType: !256, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2465, file: !2466, line: 56, baseType: !204, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2465, file: !2466, line: 58, baseType: !1819, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2465, file: !2466, line: 59, baseType: !1819, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2465, file: !2466, line: 60, baseType: !1746, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2465, file: !2466, line: 62, baseType: !2051, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2465, file: !2466, line: 63, baseType: !2475, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!216, !2038, !2058}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2465, file: !2466, line: 65, baseType: !2479, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2464}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2465, file: !2466, line: 66, baseType: !2060, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2465, file: !2466, line: 68, baseType: !2069, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2465, file: !2466, line: 70, baseType: !1855, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2465, file: !2466, line: 71, baseType: !2486, size: 64, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!1872, !2038}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2465, file: !2466, line: 73, baseType: !2490, size: 64, offset: 768)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2038, !1892, !1893}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2465, file: !2466, line: 75, baseType: !2064, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2465, file: !2466, line: 77, baseType: !2182, size: 64, offset: 896)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1737, file: !47, line: 541, baseType: !1819, size: 64, offset: 5248)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1737, file: !47, line: 543, baseType: !2060, size: 64, offset: 5312)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1737, file: !47, line: 544, baseType: !2498, size: 64, offset: 5376)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !47, line: 45, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1737, file: !47, line: 545, baseType: !2501, size: 64, offset: 5440)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !47, line: 47, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1737, file: !47, line: 547, baseType: !751, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1737, file: !47, line: 548, baseType: !751, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1737, file: !47, line: 549, baseType: !751, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1737, file: !47, line: 550, baseType: !751, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1705, file: !1706, line: 69, baseType: !1746, size: 64, offset: 5952)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1705, file: !1706, line: 70, baseType: !214, size: 32, offset: 6016)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1705, file: !1706, line: 70, baseType: !214, size: 32, offset: 6048)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1705, file: !1706, line: 71, baseType: !2511, size: 64, offset: 6080)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1706, line: 48, size: 808, elements: !2513)
!2513 = !{!2514, !2518}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2512, file: !1706, line: 49, baseType: !2515, size: 296)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 296, elements: !2516)
!2516 = !{!2517}
!2517 = !DISubrange(count: 37)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2512, file: !1706, line: 50, baseType: !2519, size: 512, offset: 296)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 512, elements: !1781)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1705, file: !1706, line: 75, baseType: !2521, size: 448, offset: 6144)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !2274, line: 124, size: 448, elements: !2522)
!2522 = !{!2523, !2524, !2525}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2521, file: !2274, line: 125, baseType: !2273, size: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2521, file: !2274, line: 126, baseType: !931, size: 128, align: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2521, file: !2274, line: 129, baseType: !2526, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2274, line: 18, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1688, file: !1689, line: 39, baseType: !7, size: 32, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1688, file: !1689, line: 41, baseType: !273, offset: 928)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1688, file: !1689, line: 42, baseType: !2531, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1706, line: 167, size: 8512, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2551, !2552, !2733, !3431, !3432, !3433, !3434, !3435, !3436, !3439, !3440, !3443, !3444, !3445, !3448}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2532, file: !1706, line: 171, baseType: !214, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2532, file: !1706, line: 172, baseType: !214, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2532, file: !1706, line: 173, baseType: !214, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2532, file: !1706, line: 176, baseType: !2125, size: 256, offset: 96)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2532, file: !1706, line: 178, baseType: !383, size: 16, offset: 352)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2532, file: !1706, line: 179, baseType: !383, size: 16, offset: 368)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2532, file: !1706, line: 186, baseType: !2541, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1706, line: 149, size: 256, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2542, file: !1706, line: 150, baseType: !931, size: 128, align: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2542, file: !1706, line: 151, baseType: !214, size: 32, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !2542, file: !1706, line: 152, baseType: !1704, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2542, file: !1706, line: 153, baseType: !2548, offset: 256)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1704, elements: !2549)
!2549 = !{!2550}
!2550 = !DISubrange(count: -1)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2532, file: !1706, line: 187, baseType: !1705, size: 6592, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2532, file: !1706, line: 189, baseType: !2553, size: 64, offset: 7040)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !68, line: 1844, size: 960, elements: !2556)
!2556 = !{!2557, !2659, !2663, !2667, !2671, !2675, !2676, !2680, !2684, !2688, !2694, !2698, !2724, !2728, !2729}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2555, file: !68, line: 1845, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1689, line: 515, baseType: !7)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1689, line: 203, size: 832, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2573, !2574, !2575, !2583, !2588, !2589, !2614, !2615, !2616, !2617, !2618, !2658}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2563, file: !1689, line: 204, baseType: !2562, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !2563, file: !1689, line: 205, baseType: !2531, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2563, file: !1689, line: 206, baseType: !7, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2563, file: !1689, line: 210, baseType: !383, size: 16, offset: 160)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2563, file: !1689, line: 211, baseType: !383, size: 16, offset: 176)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !2563, file: !1689, line: 212, baseType: !383, size: 16, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2563, file: !1689, line: 213, baseType: !2572, size: 8, offset: 208)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1689, line: 58, baseType: !478)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !2563, file: !1689, line: 214, baseType: !478, size: 8, offset: 216)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2563, file: !1689, line: 215, baseType: !332, size: 32, offset: 224)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2563, file: !1689, line: 217, baseType: !2576, size: 192, offset: 256)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2577, line: 37, size: 192, elements: !2578)
!2577 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!2578 = !{!2579, !2580, !2581, !2582}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2576, file: !2577, line: 38, baseType: !1709, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2576, file: !2577, line: 40, baseType: !7, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2576, file: !2577, line: 42, baseType: !7, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2576, file: !2577, line: 44, baseType: !7, size: 32, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2563, file: !1689, line: 219, baseType: !2584, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1689, line: 19, baseType: !2586)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !2562}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2563, file: !1689, line: 221, baseType: !209, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !1689, line: 240, baseType: !2590, size: 64, offset: 576)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2563, file: !1689, line: 240, size: 64, elements: !2591)
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !2590, file: !1689, line: 242, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !2595, line: 313, size: 832, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2612}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !2594, file: !2595, line: 314, baseType: !2562, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !2594, file: !2595, line: 316, baseType: !2576, size: 192, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !2594, file: !2595, line: 318, baseType: !383, size: 16, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !2594, file: !2595, line: 319, baseType: !383, size: 16, offset: 272)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !2594, file: !2595, line: 320, baseType: !383, size: 16, offset: 288)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !2594, file: !2595, line: 321, baseType: !383, size: 16, offset: 304)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !2594, file: !2595, line: 323, baseType: !2576, size: 192, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !2594, file: !2595, line: 325, baseType: !2273, size: 256, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !2594, file: !2595, line: 327, baseType: !2606, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2577, line: 31, size: 128, elements: !2608)
!2608 = !{!2609, !2610, !2611}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2607, file: !2577, line: 32, baseType: !593, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2607, file: !2577, line: 33, baseType: !7, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2607, file: !2577, line: 34, baseType: !7, size: 32, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !2594, file: !2595, line: 328, baseType: !2613, offset: 832)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, elements: !2549)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2563, file: !1689, line: 246, baseType: !383, size: 16, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2563, file: !1689, line: 252, baseType: !383, size: 16, offset: 656)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2563, file: !1689, line: 254, baseType: !332, size: 32, offset: 672)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2563, file: !1689, line: 256, baseType: !2606, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2563, file: !1689, line: 258, baseType: !2619, size: 64, offset: 768)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2595, line: 682, size: 2368, elements: !2621)
!2621 = !{!2622, !2625, !2626, !2647, !2648, !2649, !2650, !2651, !2656, !2657}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2620, file: !2595, line: 683, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !507, line: 117, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2620, file: !2595, line: 684, baseType: !7, size: 32, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2620, file: !2595, line: 686, baseType: !2627, size: 448, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2628, line: 26, baseType: !2629)
!2628 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2628, line: 16, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2641, !2646}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2629, file: !2628, line: 17, baseType: !273)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2629, file: !2628, line: 18, baseType: !214, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2629, file: !2628, line: 19, baseType: !214, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2629, file: !2628, line: 20, baseType: !1152, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2629, file: !2628, line: 22, baseType: !209, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2629, file: !2628, line: 23, baseType: !2637, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2628, line: 13, baseType: !2639)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!209, !207, !209}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2629, file: !2628, line: 24, baseType: !2642, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2628, line: 14, baseType: !2644)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !209, !209}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2629, file: !2628, line: 25, baseType: !1082, size: 128, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2620, file: !2595, line: 687, baseType: !2627, size: 448, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !2620, file: !2595, line: 689, baseType: !2627, size: 448, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !2620, file: !2595, line: 690, baseType: !2627, size: 448, offset: 1472)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2620, file: !2595, line: 697, baseType: !273, offset: 1920)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2620, file: !2595, line: 698, baseType: !2652, size: 128, offset: 1920)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2595, line: 554, size: 128, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2652, file: !2595, line: 555, baseType: !2562, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2652, file: !2595, line: 556, baseType: !2562, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2620, file: !2595, line: 699, baseType: !2273, size: 256, offset: 2048)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2620, file: !2595, line: 700, baseType: !2526, size: 64, offset: 2304)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2563, file: !1689, line: 265, baseType: !2613, offset: 832)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2555, file: !68, line: 1846, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!214, !1687, !1228}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2555, file: !68, line: 1847, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2531, !1228}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !2555, file: !68, line: 1848, baseType: !2668, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!214, !1687, !1709, !593, !7}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2555, file: !68, line: 1849, baseType: !2672, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!214, !1687, !1228, !7, !319}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2555, file: !68, line: 1850, baseType: !2672, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2555, file: !68, line: 1851, baseType: !2677, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!7, !2531, !7}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2555, file: !68, line: 1853, baseType: !2681, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2531}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !2555, file: !68, line: 1854, baseType: !2685, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!214, !2531}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2555, file: !68, line: 1855, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!214, !1687, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !12, line: 51, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2555, file: !68, line: 1857, baseType: !2695, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !1687, !319}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2555, file: !68, line: 1858, baseType: !2699, size: 64, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!214, !2531, !1709, !7, !2702, !209}
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !68, line: 354, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!214, !2706, !7, !209}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2708, line: 106, size: 512, elements: !2709)
!2708 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2719, !2720}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2707, file: !2708, line: 107, baseType: !367, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2707, file: !2708, line: 108, baseType: !367, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2707, file: !2708, line: 109, baseType: !367, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !2708, line: 110, baseType: !479, size: 8, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2707, file: !2708, line: 111, baseType: !479, size: 8, offset: 200)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2707, file: !2708, line: 112, baseType: !479, size: 8, offset: 208)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2707, file: !2708, line: 113, baseType: !479, size: 8, offset: 216)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2707, file: !2708, line: 114, baseType: !2718, size: 32, offset: 224)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 32, elements: !1244)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2707, file: !2708, line: 115, baseType: !367, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2707, file: !2708, line: 116, baseType: !2721, size: 192, offset: 320)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 192, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 24)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2555, file: !68, line: 1860, baseType: !2725, size: 64, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!216, !2531, !2058}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2555, file: !68, line: 1861, baseType: !204, size: 64, offset: 832)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2555, file: !68, line: 1862, baseType: !2730, size: 64, offset: 896)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !68, line: 41, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2532, file: !1706, line: 190, baseType: !2734, size: 64, offset: 7104)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !68, line: 399, size: 14464, elements: !2736)
!2736 = !{!2737, !2953, !3073, !3074, !3077, !3080, !3176, !3177, !3178, !3180, !3181, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3297, !3308, !3309, !3310, !3311, !3312, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2735, file: !68, line: 400, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !68, line: 130, size: 2176, elements: !2740)
!2740 = !{!2741, !2742, !2745, !2835, !2836, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2850, !2857, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2951, !2952}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2739, file: !68, line: 131, baseType: !2734, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2739, file: !68, line: 132, baseType: !2743, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !68, line: 132, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2739, file: !68, line: 133, baseType: !2746, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !2748, line: 16, size: 4032, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750, !2756, !2763, !2766, !2767, !2768, !2769, !2770, !2771, !2774, !2775, !2790, !2791, !2792, !2793, !2794, !2796, !2797, !2798, !2799, !2802, !2803, !2804, !2805, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2747, file: !2748, line: 17, baseType: !2751, size: 192)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 17, size: 192, elements: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2751, file: !2748, line: 19, baseType: !273)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2751, file: !2748, line: 27, baseType: !265, size: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2751, file: !2748, line: 32, baseType: !319, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2747, file: !2748, line: 38, baseType: !2757, size: 704, offset: 192)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2274, line: 115, size: 704, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2757, file: !2274, line: 116, baseType: !2273, size: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2757, file: !2274, line: 117, baseType: !2240, size: 320, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2757, file: !2274, line: 120, baseType: !2526, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2757, file: !2274, line: 121, baseType: !214, size: 32, offset: 640)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2747, file: !2748, line: 40, baseType: !2764, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !493, line: 756, baseType: !2765)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !498)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !2747, file: !2748, line: 45, baseType: !214, size: 32, offset: 960)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !2747, file: !2748, line: 50, baseType: !214, size: 32, offset: 992)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2747, file: !2748, line: 53, baseType: !319, size: 64, offset: 1024)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !2747, file: !2748, line: 59, baseType: !209, size: 64, offset: 1088)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2747, file: !2748, line: 63, baseType: !2734, size: 64, offset: 1152)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2747, file: !2748, line: 65, baseType: !2772, size: 64, offset: 1216)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !68, line: 40, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2747, file: !2748, line: 71, baseType: !209, size: 64, offset: 1280)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !2747, file: !2748, line: 77, baseType: !2776, size: 192, offset: 1344)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2777, line: 48, size: 192, elements: !2778)
!2777 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/lizy2001/genbc/linux")
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2776, file: !2777, line: 52, baseType: !7, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2776, file: !2777, line: 57, baseType: !7, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2776, file: !2777, line: 62, baseType: !7, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2776, file: !2777, line: 67, baseType: !2783, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2777, line: 20, size: 192, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2784, file: !2777, line: 24, baseType: !319, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2784, file: !2777, line: 29, baseType: !319, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2784, file: !2777, line: 34, baseType: !319, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2784, file: !2777, line: 39, baseType: !273, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !2747, file: !2748, line: 83, baseType: !2743, size: 64, offset: 1536)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !2747, file: !2748, line: 89, baseType: !7, size: 32, offset: 1600)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2747, file: !2748, line: 92, baseType: !383, size: 16, offset: 1632)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !2747, file: !2748, line: 94, baseType: !383, size: 16, offset: 1648)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2747, file: !2748, line: 96, baseType: !2795, size: 64, offset: 1664)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !2747, file: !2748, line: 99, baseType: !273, offset: 1728)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !2747, file: !2748, line: 104, baseType: !994, size: 320, offset: 1728)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2747, file: !2748, line: 110, baseType: !332, size: 32, offset: 2048)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2747, file: !2748, line: 116, baseType: !2800, size: 64, offset: 2112)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !2748, line: 9, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !2747, file: !2748, line: 122, baseType: !2800, size: 64, offset: 2176)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !2747, file: !2748, line: 125, baseType: !319, size: 64, offset: 2240)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2747, file: !2748, line: 127, baseType: !319, size: 64, offset: 2304)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dispatched", scope: !2747, file: !2748, line: 130, baseType: !2806, size: 448, offset: 2368)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 448, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 7)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2747, file: !2748, line: 133, baseType: !7, size: 32, offset: 2816)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !2747, file: !2748, line: 135, baseType: !7, size: 32, offset: 2848)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2747, file: !2748, line: 141, baseType: !332, size: 32, offset: 2880)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_queued", scope: !2747, file: !2748, line: 145, baseType: !332, size: 32, offset: 2912)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !2747, file: !2748, line: 148, baseType: !804, size: 128, offset: 2944)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2747, file: !2748, line: 150, baseType: !804, size: 128, offset: 3072)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2747, file: !2748, line: 152, baseType: !1740, size: 512, offset: 3200)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "poll_considered", scope: !2747, file: !2748, line: 155, baseType: !319, size: 64, offset: 3712)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "poll_invoked", scope: !2747, file: !2748, line: 157, baseType: !319, size: 64, offset: 3776)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "poll_success", scope: !2747, file: !2748, line: 159, baseType: !319, size: 64, offset: 3840)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !2747, file: !2748, line: 175, baseType: !265, size: 128, offset: 3904)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !2747, file: !2748, line: 182, baseType: !2821, offset: 4032)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, elements: !2549)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2823, line: 16, size: 576, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/srcutiny.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !{!2825, !2827, !2828, !2829, !2830, !2831, !2832, !2834}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_nesting", scope: !2822, file: !2823, line: 17, baseType: !2826, size: 32)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 32, elements: !1284)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2822, file: !2823, line: 18, baseType: !1335, size: 16, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_running", scope: !2822, file: !2823, line: 19, baseType: !478, size: 8, offset: 48)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_waiting", scope: !2822, file: !2823, line: 20, baseType: !478, size: 8, offset: 56)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_wq", scope: !2822, file: !2823, line: 21, baseType: !2222, size: 128, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_head", scope: !2822, file: !2823, line: 23, baseType: !934, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_tail", scope: !2822, file: !2823, line: 24, baseType: !2833, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_work", scope: !2822, file: !2823, line: 25, baseType: !2273, size: 256, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2739, file: !68, line: 135, baseType: !7, size: 32, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2739, file: !68, line: 136, baseType: !2837, size: 32, offset: 224)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !68, line: 66, baseType: !322)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2739, file: !68, line: 138, baseType: !214, size: 32, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2739, file: !68, line: 139, baseType: !214, size: 32, offset: 288)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2739, file: !68, line: 142, baseType: !7, size: 32, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2739, file: !68, line: 143, baseType: !1709, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2739, file: !68, line: 145, baseType: !2562, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2739, file: !68, line: 146, baseType: !2562, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2739, file: !68, line: 148, baseType: !265, size: 128, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !68, line: 157, baseType: !2846, size: 128, offset: 704)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !68, line: 157, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2846, file: !68, line: 158, baseType: !804, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2846, file: !68, line: 159, baseType: !265, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !68, line: 167, baseType: !2851, size: 192, offset: 832)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !68, line: 167, size: 192, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2851, file: !68, line: 168, baseType: !356, size: 192, align: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2851, file: !68, line: 169, baseType: !2607, size: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !2851, file: !68, line: 170, baseType: !209, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !2851, file: !68, line: 171, baseType: !214, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !68, line: 180, baseType: !2858, size: 256, offset: 1024)
!2858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !68, line: 180, size: 256, elements: !2859)
!2859 = !{!2860, !2895}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2858, file: !68, line: 184, baseType: !2861, size: 192)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2858, file: !68, line: 181, size: 192, elements: !2862)
!2862 = !{!2863, !2893}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2861, file: !68, line: 182, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2866, line: 73, size: 448, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868, !2869, !2882, !2887, !2892}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2865, file: !2866, line: 74, baseType: !2734, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2865, file: !2866, line: 75, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2866, line: 99, size: 704, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2871, file: !2866, line: 100, baseType: !295, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2871, file: !2866, line: 101, baseType: !332, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2871, file: !2866, line: 102, baseType: !332, size: 32, offset: 96)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2871, file: !2866, line: 105, baseType: !273, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2871, file: !2866, line: 107, baseType: !383, size: 16, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2871, file: !2866, line: 109, baseType: !1924, size: 128, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2871, file: !2866, line: 110, baseType: !2864, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2871, file: !2866, line: 111, baseType: !800, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2871, file: !2866, line: 113, baseType: !2273, size: 256, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2866, line: 83, baseType: !2883, size: 128, offset: 128)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2866, line: 83, size: 128, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2883, file: !2866, line: 84, baseType: !265, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2883, file: !2866, line: 85, baseType: !2623, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2866, line: 87, baseType: !2888, size: 128, offset: 256)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2866, line: 87, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2888, file: !2866, line: 88, baseType: !804, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2888, file: !2866, line: 89, baseType: !931, size: 128, align: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2866, line: 92, baseType: !7, size: 32, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2861, file: !68, line: 183, baseType: !2894, size: 128, offset: 64)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !1284)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2858, file: !68, line: 190, baseType: !2896, size: 256)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2858, file: !68, line: 186, size: 256, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2896, file: !68, line: 187, baseType: !7, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2896, file: !68, line: 188, baseType: !265, size: 128, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2896, file: !68, line: 189, baseType: !2901, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !68, line: 62, baseType: !2903)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2738, !2572}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !2739, file: !68, line: 193, baseType: !2531, size: 64, offset: 1280)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2739, file: !68, line: 194, baseType: !1704, size: 64, offset: 1344)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2739, file: !68, line: 200, baseType: !366, size: 64, offset: 1408)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2739, file: !68, line: 202, baseType: !366, size: 64, offset: 1472)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2739, file: !68, line: 212, baseType: !383, size: 16, offset: 1536)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2739, file: !68, line: 218, baseType: !383, size: 16, offset: 1552)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !2739, file: !68, line: 221, baseType: !383, size: 16, offset: 1568)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !2739, file: !68, line: 229, baseType: !383, size: 16, offset: 1584)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2739, file: !68, line: 230, baseType: !383, size: 16, offset: 1600)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2739, file: !68, line: 232, baseType: !67, size: 32, offset: 1632)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2739, file: !68, line: 233, baseType: !327, size: 32, offset: 1664)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2739, file: !68, line: 235, baseType: !7, size: 32, offset: 1696)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2739, file: !68, line: 236, baseType: !319, size: 64, offset: 1728)
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !68, line: 238, baseType: !2919, size: 256, offset: 1792)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !68, line: 238, size: 256, elements: !2920)
!2920 = !{!2921, !2950}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !2919, file: !68, line: 239, baseType: !2922, size: 256)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !2923, line: 23, size: 256, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!2924 = !{!2925, !2947, !2949}
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2922, file: !2923, line: 24, baseType: !2926, size: 128)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2922, file: !2923, line: 24, size: 128, elements: !2927)
!2927 = !{!2928, !2940}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2926, file: !2923, line: 25, baseType: !2929, size: 128)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2930, line: 58, size: 128, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!2931 = !{!2932, !2933, !2938, !2939}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2929, file: !2930, line: 59, baseType: !925, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2929, file: !2930, line: 60, baseType: !2934, size: 32, offset: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2929, file: !2930, line: 60, size: 32, elements: !2935)
!2935 = !{!2936, !2937}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2934, file: !2930, line: 61, baseType: !7, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2934, file: !2930, line: 62, baseType: !332, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2929, file: !2930, line: 65, baseType: !979, size: 16, offset: 96)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2929, file: !2930, line: 65, baseType: !979, size: 16, offset: 112)
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2923, line: 26, baseType: !2941, size: 128)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2923, line: 26, size: 128, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2941, file: !2923, line: 27, baseType: !925, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2941, file: !2923, line: 28, baseType: !7, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2941, file: !2923, line: 30, baseType: !979, size: 16, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2941, file: !2923, line: 30, baseType: !979, size: 16, offset: 112)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2922, file: !2923, line: 34, baseType: !2948, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !2923, line: 17, baseType: !1881)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2922, file: !2923, line: 35, baseType: !209, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2919, file: !68, line: 240, baseType: !366, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2739, file: !68, line: 246, baseType: !2901, size: 64, offset: 2048)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2739, file: !68, line: 247, baseType: !209, size: 64, offset: 2112)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2735, file: !68, line: 401, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !74, line: 101, size: 4992, elements: !2956)
!2956 = !{!2957, !3067, !3068, !3069, !3070, !3071}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2955, file: !74, line: 103, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !74, line: 66, size: 2240, elements: !2960)
!2960 = !{!2961, !2962, !3044, !3045, !3046, !3059, !3060, !3061, !3063, !3064, !3066}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !2959, file: !74, line: 69, baseType: !2623, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2959, file: !74, line: 72, baseType: !2963, size: 1408, offset: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !74, line: 29, size: 1408, elements: !2964)
!2964 = !{!2965, !2969, !2973, !2977, !2981, !2985, !2989, !2993, !2998, !3002, !3006, !3012, !3016, !3017, !3021, !3025, !3029, !3033, !3034, !3038, !3039, !3043}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !2963, file: !74, line: 30, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!214, !2734, !2958}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !2963, file: !74, line: 31, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2954}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2963, file: !74, line: 32, baseType: !2974, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!214, !2746, !7}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2963, file: !74, line: 33, baseType: !2978, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2746, !7}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !2963, file: !74, line: 34, baseType: !2982, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2746}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !2963, file: !74, line: 36, baseType: !2986, size: 64, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!751, !2734, !2738, !2562}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !2963, file: !74, line: 37, baseType: !2990, size: 64, offset: 384)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!751, !2746, !2562, !7}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !2963, file: !74, line: 38, baseType: !2994, size: 64, offset: 448)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!214, !2734, !2997, !2562}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !2963, file: !74, line: 39, baseType: !2999, size: 64, offset: 512)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !2734, !2738, !73}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !2963, file: !74, line: 40, baseType: !3003, size: 64, offset: 576)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2734, !2738, !2738}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !2963, file: !74, line: 41, baseType: !3007, size: 64, offset: 640)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !7, !3010}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !74, line: 26, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !2963, file: !74, line: 42, baseType: !3013, size: 64, offset: 704)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2738}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !2963, file: !74, line: 43, baseType: !3013, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !2963, file: !74, line: 44, baseType: !3018, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2746, !268, !751}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !2963, file: !74, line: 45, baseType: !3022, size: 64, offset: 896)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!2738, !2746}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !2963, file: !74, line: 46, baseType: !3026, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!751, !2746}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !2963, file: !74, line: 47, baseType: !3030, size: 64, offset: 1024)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2738, !366}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !2963, file: !74, line: 48, baseType: !3013, size: 64, offset: 1088)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !2963, file: !74, line: 49, baseType: !3035, size: 64, offset: 1152)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2738, !2734, !2738}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !2963, file: !74, line: 50, baseType: !3035, size: 64, offset: 1216)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !2963, file: !74, line: 51, baseType: !3040, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2864}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !2963, file: !74, line: 52, baseType: !3040, size: 64, offset: 1344)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !2959, file: !74, line: 74, baseType: !884, size: 64, offset: 1472)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !2959, file: !74, line: 75, baseType: !884, size: 64, offset: 1536)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !2959, file: !74, line: 76, baseType: !3047, size: 64, offset: 1600)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !74, line: 57, size: 256, elements: !3049)
!3049 = !{!3050, !3051, !3055}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3048, file: !74, line: 58, baseType: !1808, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3048, file: !74, line: 59, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!956, !2954, !216}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3048, file: !74, line: 60, baseType: !3056, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!956, !2954, !256, !884}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !2959, file: !74, line: 77, baseType: !256, size: 64, offset: 1664)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !2959, file: !74, line: 78, baseType: !256, size: 64, offset: 1728)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !2959, file: !74, line: 79, baseType: !3062, size: 32, offset: 1792)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !2959, file: !74, line: 80, baseType: !204, size: 64, offset: 1856)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !2959, file: !74, line: 87, baseType: !3065, size: 176, offset: 1920)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 176, elements: !234)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2959, file: !74, line: 88, baseType: !265, size: 128, offset: 2112)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !2955, file: !74, line: 104, baseType: !209, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2955, file: !74, line: 105, baseType: !1740, size: 512, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2955, file: !74, line: 106, baseType: !291, size: 192, offset: 640)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !2955, file: !74, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2955, file: !74, line: 108, baseType: !3072, size: 4096, offset: 896)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 4096, elements: !1781)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2735, file: !68, line: 403, baseType: !1716, size: 128, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2735, file: !68, line: 405, baseType: !3075, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !68, line: 43, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2735, file: !68, line: 406, baseType: !3078, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !68, line: 42, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2735, file: !68, line: 408, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !2748, line: 290, size: 960, elements: !3084)
!3084 = !{!3085, !3095, !3096, !3100, !3104, !3108, !3112, !3113, !3117, !3118, !3165, !3169, !3170, !3171, !3172}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !3083, file: !2748, line: 294, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!2572, !2746, !3089}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !2748, line: 277, size: 128, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !3091, file: !2748, line: 278, baseType: !2738, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3091, file: !2748, line: 279, baseType: !751, size: 8, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !3083, file: !2748, line: 304, baseType: !2982, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !3083, file: !2748, line: 312, baseType: !3097, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!751, !2734}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !3083, file: !2748, line: 317, baseType: !3101, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !2734}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3083, file: !2748, line: 322, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!80, !2738, !751}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3083, file: !2748, line: 327, baseType: !3109, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!214, !2746}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3083, file: !2748, line: 332, baseType: !3013, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !3083, file: !2748, line: 339, baseType: !3114, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!214, !2746, !209, !7}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !3083, file: !2748, line: 343, baseType: !2978, size: 64, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !3083, file: !2748, line: 352, baseType: !3119, size: 64, offset: 576)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!214, !3122, !2738, !7, !7}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !2748, line: 249, size: 2304, elements: !3124)
!3124 = !{!3125, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3160, !3161, !3163, !3164}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3123, file: !2748, line: 250, baseType: !3126, size: 384)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3127, size: 384, elements: !816)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !2748, line: 195, size: 128, elements: !3128)
!3128 = !{!3129, !3131, !3132}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !3127, file: !2748, line: 196, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !3127, file: !2748, line: 197, baseType: !7, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !3127, file: !2748, line: 198, baseType: !7, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !3123, file: !2748, line: 251, baseType: !7, size: 32, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3123, file: !2748, line: 252, baseType: !3081, size: 64, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3123, file: !2748, line: 253, baseType: !7, size: 32, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3123, file: !2748, line: 254, baseType: !7, size: 32, offset: 544)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !3123, file: !2748, line: 255, baseType: !7, size: 32, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !3123, file: !2748, line: 256, baseType: !7, size: 32, offset: 608)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3123, file: !2748, line: 257, baseType: !214, size: 32, offset: 640)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3123, file: !2748, line: 258, baseType: !7, size: 32, offset: 672)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3123, file: !2748, line: 259, baseType: !7, size: 32, offset: 704)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3123, file: !2748, line: 260, baseType: !209, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues_shared_sbitmap", scope: !3123, file: !2748, line: 261, baseType: !332, size: 32, offset: 832)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__bitmap_tags", scope: !3123, file: !2748, line: 263, baseType: !3145, size: 512, offset: 896)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2777, line: 97, size: 512, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3157, !3158, !3159}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3145, file: !2777, line: 101, baseType: !2776, size: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !3145, file: !2777, line: 109, baseType: !3130, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !3145, file: !2777, line: 115, baseType: !7, size: 32, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !3145, file: !2777, line: 120, baseType: !332, size: 32, offset: 288)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3145, file: !2777, line: 125, baseType: !3152, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2777, line: 76, size: 192, elements: !3154)
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cnt", scope: !3153, file: !2777, line: 80, baseType: !332, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3153, file: !2777, line: 85, baseType: !1082, size: 128, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !3145, file: !2777, line: 130, baseType: !332, size: 32, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !3145, file: !2777, line: 135, baseType: !751, size: 8, offset: 416)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !3145, file: !2777, line: 141, baseType: !7, size: 32, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "__breserved_tags", scope: !3123, file: !2748, line: 264, baseType: !3145, size: 512, offset: 1408)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !3123, file: !2748, line: 265, baseType: !3162, size: 64, offset: 1920)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !3123, file: !2748, line: 267, baseType: !291, size: 192, offset: 1984)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !3123, file: !2748, line: 268, baseType: !265, size: 128, offset: 2176)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !3083, file: !2748, line: 357, baseType: !3166, size: 64, offset: 640)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3122, !2738, !7}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_rq_fn", scope: !3083, file: !2748, line: 363, baseType: !3013, size: 64, offset: 704)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !3083, file: !2748, line: 369, baseType: !3013, size: 64, offset: 768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3083, file: !2748, line: 374, baseType: !3097, size: 64, offset: 832)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !3083, file: !2748, line: 380, baseType: !3173, size: 64, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!214, !3122}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2735, file: !68, line: 411, baseType: !2743, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2735, file: !68, line: 413, baseType: !7, size: 32, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !2735, file: !68, line: 416, baseType: !3179, size: 64, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2735, file: !68, line: 417, baseType: !7, size: 32, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2735, file: !68, line: 419, baseType: !3182, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !85, line: 165, size: 4672, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3235, !3236, !3237, !3238, !3240, !3241}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3183, file: !85, line: 166, baseType: !366, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3183, file: !85, line: 167, baseType: !356, size: 192, align: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3183, file: !85, line: 168, baseType: !265, size: 128, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3183, file: !85, line: 169, baseType: !319, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3183, file: !85, line: 170, baseType: !319, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3183, file: !85, line: 172, baseType: !2028, size: 32, offset: 512)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3183, file: !85, line: 173, baseType: !7, size: 32, offset: 544)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3183, file: !85, line: 174, baseType: !7, size: 32, offset: 576)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3183, file: !85, line: 175, baseType: !7, size: 32, offset: 608)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3183, file: !85, line: 175, baseType: !7, size: 32, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3183, file: !85, line: 181, baseType: !295, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3183, file: !85, line: 183, baseType: !3197, size: 2688, offset: 768)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !85, line: 107, size: 2688, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3197, file: !85, line: 108, baseType: !3182, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3197, file: !85, line: 110, baseType: !319, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3197, file: !85, line: 111, baseType: !319, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3197, file: !85, line: 113, baseType: !265, size: 128, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3197, file: !85, line: 114, baseType: !265, size: 128, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3197, file: !85, line: 115, baseType: !265, size: 128, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3197, file: !85, line: 116, baseType: !265, size: 128, offset: 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3197, file: !85, line: 117, baseType: !273, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3197, file: !85, line: 119, baseType: !3208, size: 256, offset: 704)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3209, size: 256, elements: !1244)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !3210, line: 97, size: 64, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3209, file: !3210, line: 98, baseType: !301, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !3197, file: !85, line: 121, baseType: !319, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3197, file: !85, line: 123, baseType: !319, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3197, file: !85, line: 124, baseType: !319, size: 64, offset: 1088)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3197, file: !85, line: 125, baseType: !319, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3197, file: !85, line: 126, baseType: !319, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3197, file: !85, line: 127, baseType: !319, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3197, file: !85, line: 135, baseType: !319, size: 64, offset: 1344)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3197, file: !85, line: 136, baseType: !319, size: 64, offset: 1408)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3197, file: !85, line: 138, baseType: !3222, size: 128, offset: 1472)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3223, line: 76, size: 128, elements: !3224)
!3223 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!3224 = !{!3225, !3226, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3222, file: !3223, line: 78, baseType: !3209, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3222, file: !3223, line: 80, baseType: !7, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3222, file: !3223, line: 81, baseType: !429, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3197, file: !85, line: 139, baseType: !214, size: 32, offset: 1600)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3197, file: !85, line: 140, baseType: !84, size: 32, offset: 1632)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3197, file: !85, line: 142, baseType: !273, offset: 1664)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3197, file: !85, line: 143, baseType: !265, size: 128, offset: 1664)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3197, file: !85, line: 144, baseType: !2757, size: 704, offset: 1792)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !3197, file: !85, line: 146, baseType: !319, size: 64, offset: 2496)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3197, file: !85, line: 148, baseType: !265, size: 128, offset: 2560)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3183, file: !85, line: 184, baseType: !265, size: 128, offset: 3456)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3183, file: !85, line: 190, baseType: !1082, size: 128, offset: 3584)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3183, file: !85, line: 192, baseType: !2038, size: 64, offset: 3712)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3183, file: !85, line: 193, baseType: !3239, size: 512, offset: 3776)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 512, elements: !1781)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3183, file: !85, line: 194, baseType: !2038, size: 64, offset: 4288)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3183, file: !85, line: 196, baseType: !2240, size: 320, offset: 4352)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2735, file: !68, line: 425, baseType: !209, size: 64, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2735, file: !68, line: 430, baseType: !319, size: 64, offset: 832)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2735, file: !68, line: 436, baseType: !332, size: 32, offset: 896)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2735, file: !68, line: 442, baseType: !214, size: 32, offset: 928)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !2735, file: !68, line: 447, baseType: !207, size: 32, offset: 960)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2735, file: !68, line: 449, baseType: !273, offset: 992)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2735, file: !68, line: 454, baseType: !1740, size: 512, offset: 1024)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2735, file: !68, line: 459, baseType: !1746, size: 64, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !2735, file: !68, line: 462, baseType: !3251, size: 128, offset: 1600)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1706, line: 159, size: 128, elements: !3252)
!3252 = !{!3253, !3282, !3283, !3284, !3285}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !3251, file: !1706, line: 160, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !68, line: 1664, size: 320, elements: !3257)
!3257 = !{!3258, !3272, !3273, !3276, !3281}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !3256, file: !68, line: 1665, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !68, line: 1660, baseType: !3261)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!2572, !3263}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !68, line: 1651, size: 320, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !3264, file: !68, line: 1652, baseType: !209, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !3264, file: !68, line: 1653, baseType: !209, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !3264, file: !68, line: 1654, baseType: !1709, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !3264, file: !68, line: 1655, baseType: !7, size: 32, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3264, file: !68, line: 1656, baseType: !383, size: 16, offset: 224)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !3264, file: !68, line: 1657, baseType: !256, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !3256, file: !68, line: 1666, baseType: !3259, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !3256, file: !68, line: 1667, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !68, line: 1661, baseType: !3014)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !3256, file: !68, line: 1668, baseType: !3277, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !68, line: 1662, baseType: !3279)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !2738, !7}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3256, file: !68, line: 1669, baseType: !256, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !1706, line: 161, baseType: !480, size: 8, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !3251, file: !1706, line: 162, baseType: !480, size: 8, offset: 72)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !3251, file: !1706, line: 163, baseType: !480, size: 8, offset: 80)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !3251, file: !1706, line: 164, baseType: !480, size: 8, offset: 88)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2735, file: !68, line: 466, baseType: !2038, size: 64, offset: 1728)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2735, file: !68, line: 467, baseType: !61, size: 32, offset: 1792)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2735, file: !68, line: 468, baseType: !7, size: 32, offset: 1824)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2735, file: !68, line: 474, baseType: !319, size: 64, offset: 1856)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2735, file: !68, line: 476, baseType: !7, size: 32, offset: 1920)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2735, file: !68, line: 477, baseType: !7, size: 32, offset: 1952)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2735, file: !68, line: 484, baseType: !7, size: 32, offset: 1984)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !2735, file: !68, line: 485, baseType: !214, size: 32, offset: 2016)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !2735, file: !68, line: 487, baseType: !3295, size: 64, offset: 2048)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !68, line: 44, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !2735, file: !68, line: 488, baseType: !3298, size: 5120, offset: 2112)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3299, size: 5120, elements: !3306)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1689, line: 540, size: 320, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !3299, file: !1689, line: 541, baseType: !366, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3299, file: !1689, line: 542, baseType: !366, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3299, file: !1689, line: 543, baseType: !366, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !3299, file: !1689, line: 544, baseType: !321, size: 32, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3299, file: !1689, line: 545, baseType: !366, size: 64, offset: 256)
!3306 = !{!3307}
!3307 = !DISubrange(count: 16)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2735, file: !68, line: 490, baseType: !2240, size: 320, offset: 7232)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2735, file: !68, line: 491, baseType: !2273, size: 256, offset: 7552)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !2735, file: !68, line: 493, baseType: !332, size: 32, offset: 7808)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2735, file: !68, line: 495, baseType: !265, size: 128, offset: 7872)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2735, file: !68, line: 502, baseType: !3313, size: 896, offset: 8000)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !68, line: 321, size: 896, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !3313, file: !68, line: 322, baseType: !319, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3313, file: !68, line: 323, baseType: !319, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3313, file: !68, line: 324, baseType: !319, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3313, file: !68, line: 326, baseType: !7, size: 32, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3313, file: !68, line: 327, baseType: !7, size: 32, offset: 224)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3313, file: !68, line: 328, baseType: !7, size: 32, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3313, file: !68, line: 329, baseType: !7, size: 32, offset: 288)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3313, file: !68, line: 330, baseType: !7, size: 32, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3313, file: !68, line: 331, baseType: !7, size: 32, offset: 352)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3313, file: !68, line: 332, baseType: !7, size: 32, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3313, file: !68, line: 333, baseType: !7, size: 32, offset: 416)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3313, file: !68, line: 334, baseType: !7, size: 32, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3313, file: !68, line: 335, baseType: !7, size: 32, offset: 480)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3313, file: !68, line: 336, baseType: !7, size: 32, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3313, file: !68, line: 337, baseType: !7, size: 32, offset: 544)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !3313, file: !68, line: 338, baseType: !7, size: 32, offset: 576)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3313, file: !68, line: 339, baseType: !7, size: 32, offset: 608)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3313, file: !68, line: 340, baseType: !7, size: 32, offset: 640)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3313, file: !68, line: 341, baseType: !7, size: 32, offset: 672)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3313, file: !68, line: 342, baseType: !7, size: 32, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3313, file: !68, line: 344, baseType: !383, size: 16, offset: 736)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3313, file: !68, line: 345, baseType: !383, size: 16, offset: 752)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3313, file: !68, line: 346, baseType: !383, size: 16, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3313, file: !68, line: 348, baseType: !480, size: 8, offset: 784)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3313, file: !68, line: 349, baseType: !480, size: 8, offset: 792)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3313, file: !68, line: 350, baseType: !480, size: 8, offset: 800)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3313, file: !68, line: 351, baseType: !96, size: 32, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2735, file: !68, line: 504, baseType: !7, size: 32, offset: 8896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !2735, file: !68, line: 534, baseType: !7, size: 32, offset: 8928)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !2735, file: !68, line: 535, baseType: !7, size: 32, offset: 8960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2735, file: !68, line: 536, baseType: !214, size: 32, offset: 8992)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2735, file: !68, line: 537, baseType: !291, size: 192, offset: 9024)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2735, file: !68, line: 544, baseType: !2772, size: 64, offset: 9216)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2735, file: !68, line: 546, baseType: !265, size: 128, offset: 9280)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2735, file: !68, line: 547, baseType: !273, offset: 9408)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2735, file: !68, line: 548, baseType: !2757, size: 704, offset: 9408)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2735, file: !68, line: 550, baseType: !291, size: 192, offset: 10112)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2735, file: !68, line: 551, baseType: !291, size: 192, offset: 10304)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2735, file: !68, line: 557, baseType: !265, size: 128, offset: 10496)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2735, file: !68, line: 558, baseType: !273, offset: 10624)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2735, file: !68, line: 560, baseType: !214, size: 32, offset: 10624)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !2735, file: !68, line: 563, baseType: !3357, size: 256, offset: 10688)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !3358, line: 18, size: 256, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3357, file: !3358, line: 19, baseType: !2038, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3357, file: !3358, line: 20, baseType: !214, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3357, file: !3358, line: 21, baseType: !2734, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3357, file: !3358, line: 22, baseType: !3364, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !3358, line: 10, size: 256, elements: !3367)
!3367 = !{!3368, !3409, !3413, !3417}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !3366, file: !3358, line: 11, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!214, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !3374, line: 22, size: 1280, elements: !3375)
!3374 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !3373, file: !3374, line: 23, baseType: !1301, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3373, file: !3374, line: 24, baseType: !322, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !3373, file: !3374, line: 25, baseType: !322, size: 32, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !3373, file: !3374, line: 28, baseType: !322, size: 32, offset: 96)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3373, file: !3374, line: 29, baseType: !367, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !3373, file: !3374, line: 30, baseType: !367, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !3373, file: !3374, line: 31, baseType: !322, size: 32, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !3373, file: !3374, line: 32, baseType: !322, size: 32, offset: 288)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !3373, file: !3374, line: 33, baseType: !322, size: 32, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !3373, file: !3374, line: 34, baseType: !322, size: 32, offset: 352)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3373, file: !3374, line: 35, baseType: !367, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !3373, file: !3374, line: 38, baseType: !322, size: 32, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !3373, file: !3374, line: 40, baseType: !322, size: 32, offset: 480)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !3373, file: !3374, line: 41, baseType: !322, size: 32, offset: 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !3373, file: !3374, line: 42, baseType: !322, size: 32, offset: 544)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !3373, file: !3374, line: 43, baseType: !367, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !3373, file: !3374, line: 44, baseType: !367, size: 64, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3373, file: !3374, line: 46, baseType: !322, size: 32, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3373, file: !3374, line: 47, baseType: !322, size: 32, offset: 736)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !3373, file: !3374, line: 48, baseType: !367, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !3373, file: !3374, line: 49, baseType: !322, size: 32, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !3373, file: !3374, line: 51, baseType: !322, size: 32, offset: 864)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !3373, file: !3374, line: 52, baseType: !322, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !3373, file: !3374, line: 53, baseType: !322, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !3373, file: !3374, line: 54, baseType: !322, size: 32, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3373, file: !3374, line: 55, baseType: !322, size: 32, offset: 992)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !3373, file: !3374, line: 56, baseType: !322, size: 32, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !3373, file: !3374, line: 57, baseType: !322, size: 32, offset: 1056)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !3373, file: !3374, line: 58, baseType: !1301, size: 32, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !3373, file: !3374, line: 59, baseType: !1301, size: 32, offset: 1120)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !3373, file: !3374, line: 60, baseType: !367, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !3373, file: !3374, line: 61, baseType: !322, size: 32, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3373, file: !3374, line: 63, baseType: !322, size: 32, offset: 1248)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !3366, file: !3358, line: 12, baseType: !3410, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!214, !2738, !3372, !1228}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !3366, file: !3358, line: 14, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!214, !2738, !3372}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !3366, file: !3358, line: 15, baseType: !3013, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2735, file: !68, line: 570, baseType: !931, size: 128, align: 64, offset: 10944)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2735, file: !68, line: 571, baseType: !1082, size: 128, offset: 11072)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2735, file: !68, line: 576, baseType: !291, size: 192, offset: 11200)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2735, file: !68, line: 578, baseType: !3122, size: 64, offset: 11392)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2735, file: !68, line: 579, baseType: !265, size: 128, offset: 11456)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2735, file: !68, line: 580, baseType: !2620, size: 2368, offset: 11584)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2735, file: !68, line: 582, baseType: !640, size: 64, offset: 13952)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2735, file: !68, line: 589, baseType: !751, size: 8, offset: 14016)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !2735, file: !68, line: 591, baseType: !884, size: 64, offset: 14080)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !2735, file: !68, line: 594, baseType: !3428, size: 320, offset: 14144)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 320, elements: !3429)
!3429 = !{!3430}
!3430 = !DISubrange(count: 5)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2532, file: !1706, line: 191, baseType: !209, size: 64, offset: 7168)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !1706, line: 193, baseType: !214, size: 32, offset: 7232)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2532, file: !1706, line: 194, baseType: !319, size: 64, offset: 7296)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !2532, file: !1706, line: 196, baseType: !1308, size: 256, offset: 7360)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2532, file: !1706, line: 197, baseType: !1746, size: 64, offset: 7616)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2532, file: !1706, line: 199, baseType: !3437, size: 64, offset: 7680)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1706, line: 199, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2532, file: !1706, line: 200, baseType: !332, size: 32, offset: 7744)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2532, file: !1706, line: 201, baseType: !3441, size: 64, offset: 7808)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1706, line: 156, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !2532, file: !1706, line: 203, baseType: !1740, size: 512, offset: 7872)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2532, file: !1706, line: 208, baseType: !214, size: 32, offset: 8384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2532, file: !1706, line: 209, baseType: !3446, size: 64, offset: 8448)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1706, line: 157, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2532, file: !1706, line: 210, baseType: !3449, offset: 8512)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !811, line: 192, elements: !287)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1688, file: !1689, line: 43, baseType: !3182, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1688, file: !1689, line: 46, baseType: !214, size: 32, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1688, file: !1689, line: 48, baseType: !291, size: 192, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !761, file: !12, line: 1452, baseType: !3182, size: 64, offset: 1536)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !761, file: !12, line: 1453, baseType: !3455, size: 64, offset: 1600)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !12, line: 1453, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !761, file: !12, line: 1454, baseType: !804, size: 128, offset: 1664)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !761, file: !12, line: 1455, baseType: !7, size: 32, offset: 1792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !761, file: !12, line: 1456, baseType: !3460, size: 2432, offset: 1856)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !29, line: 518, size: 2432, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3466, !3498}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3460, file: !29, line: 519, baseType: !7, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3460, file: !29, line: 520, baseType: !1308, size: 256, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3460, file: !29, line: 521, baseType: !3465, size: 192, offset: 320)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !816)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3460, file: !29, line: 522, baseType: !3467, size: 1728, offset: 512)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3468, size: 1728, elements: !816)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !29, line: 222, size: 576, elements: !3469)
!3469 = !{!3470, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3468, file: !29, line: 223, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !29, line: 443, size: 256, elements: !3473)
!3473 = !{!3474, !3475, !3488, !3489}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3472, file: !29, line: 444, baseType: !214, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3472, file: !29, line: 445, baseType: !3476, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !29, line: 310, size: 512, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3478, file: !29, line: 311, baseType: !852, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3478, file: !29, line: 312, baseType: !852, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3478, file: !29, line: 313, baseType: !852, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3478, file: !29, line: 314, baseType: !852, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3478, file: !29, line: 315, baseType: !1506, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3478, file: !29, line: 316, baseType: !1506, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3478, file: !29, line: 317, baseType: !1506, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3478, file: !29, line: 318, baseType: !1578, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3472, file: !29, line: 446, baseType: !204, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3472, file: !29, line: 447, baseType: !3471, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3468, file: !29, line: 224, baseType: !214, size: 32, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3468, file: !29, line: 226, baseType: !265, size: 128, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3468, file: !29, line: 227, baseType: !319, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3468, file: !29, line: 228, baseType: !7, size: 32, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3468, file: !29, line: 229, baseType: !7, size: 32, offset: 352)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3468, file: !29, line: 230, baseType: !1542, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3468, file: !29, line: 231, baseType: !1542, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3468, file: !29, line: 232, baseType: !209, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3460, file: !29, line: 523, baseType: !3499, size: 192, offset: 2240)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3476, size: 192, elements: !816)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !761, file: !12, line: 1458, baseType: !3501, size: 2112, offset: 4288)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !12, line: 1410, size: 2112, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3501, file: !12, line: 1411, baseType: !214, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3501, file: !12, line: 1412, baseType: !1082, size: 128, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3501, file: !12, line: 1413, baseType: !3506, size: 1920, offset: 192)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3507, size: 1920, elements: !816)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3508, line: 12, size: 640, elements: !3509)
!3508 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3509 = !{!3510, !3518, !3519, !3524, !3525}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3507, file: !3508, line: 13, baseType: !3511, size: 320)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3512, line: 17, size: 320, elements: !3513)
!3512 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3511, file: !3512, line: 18, baseType: !214, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3511, file: !3512, line: 19, baseType: !214, size: 32, offset: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3511, file: !3512, line: 20, baseType: !1082, size: 128, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3511, file: !3512, line: 22, baseType: !931, size: 128, align: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3507, file: !3508, line: 14, baseType: !3130, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3507, file: !3508, line: 15, baseType: !3520, size: 64, offset: 384)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3521, line: 16, size: 64, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3522 = !{!3523}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3520, file: !3521, line: 17, baseType: !310, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3507, file: !3508, line: 16, baseType: !1082, size: 128, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3507, file: !3508, line: 17, baseType: !332, size: 32, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !761, file: !12, line: 1465, baseType: !209, size: 64, offset: 6400)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !761, file: !12, line: 1468, baseType: !321, size: 32, offset: 6464)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !761, file: !12, line: 1470, baseType: !1323, size: 64, offset: 6528)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !761, file: !12, line: 1471, baseType: !1323, size: 64, offset: 6592)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !761, file: !12, line: 1473, baseType: !322, size: 32, offset: 6656)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !761, file: !12, line: 1474, baseType: !3532, size: 64, offset: 6720)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !12, line: 603, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !761, file: !12, line: 1477, baseType: !2125, size: 256, offset: 6784)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !761, file: !12, line: 1478, baseType: !3536, size: 128, offset: 7040)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3537, line: 18, baseType: !3538)
!3537 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3537, line: 16, size: 128, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3538, file: !3537, line: 17, baseType: !3541, size: 128)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 128, elements: !3306)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !761, file: !12, line: 1480, baseType: !7, size: 32, offset: 7168)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !761, file: !12, line: 1481, baseType: !1228, size: 32, offset: 7200)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !761, file: !12, line: 1487, baseType: !291, size: 192, offset: 7232)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !761, file: !12, line: 1493, baseType: !256, size: 64, offset: 7424)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !761, file: !12, line: 1495, baseType: !690, size: 64, offset: 7488)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !761, file: !12, line: 1500, baseType: !214, size: 32, offset: 7552)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !761, file: !12, line: 1502, baseType: !3549, size: 448, offset: 7616)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1490, line: 60, size: 448, elements: !3550)
!3550 = !{!3551, !3556, !3557, !3558, !3559, !3560, !3561}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3549, file: !1490, line: 61, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!319, !3555, !1488}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3549, file: !1490, line: 63, baseType: !3552, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3549, file: !1490, line: 66, baseType: !218, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3549, file: !1490, line: 67, baseType: !214, size: 32, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3549, file: !1490, line: 68, baseType: !7, size: 32, offset: 224)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3549, file: !1490, line: 71, baseType: !265, size: 128, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3549, file: !1490, line: 77, baseType: !3562, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !761, file: !12, line: 1505, baseType: !295, size: 64, offset: 8064)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !761, file: !12, line: 1508, baseType: !295, size: 64, offset: 8128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !761, file: !12, line: 1511, baseType: !214, size: 32, offset: 8192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !761, file: !12, line: 1514, baseType: !1473, size: 32, offset: 8224)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !761, file: !12, line: 1517, baseType: !2526, size: 64, offset: 8256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !761, file: !12, line: 1518, baseType: !800, size: 64, offset: 8320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !761, file: !12, line: 1525, baseType: !1441, size: 64, offset: 8384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !761, file: !12, line: 1532, baseType: !3571, size: 64, offset: 8448)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3572, line: 52, size: 64, elements: !3573)
!3572 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3573 = !{!3574}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3571, file: !3572, line: 53, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3572, line: 40, size: 256, elements: !3577)
!3577 = !{!3578, !3579, !3584}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3576, file: !3572, line: 42, baseType: !273)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3576, file: !3572, line: 44, baseType: !3580, size: 192)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3572, line: 28, size: 192, elements: !3581)
!3581 = !{!3582, !3583}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3580, file: !3572, line: 29, baseType: !265, size: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3580, file: !3572, line: 31, baseType: !218, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3576, file: !3572, line: 49, baseType: !218, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !761, file: !12, line: 1533, baseType: !3571, size: 64, offset: 8512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !761, file: !12, line: 1534, baseType: !931, size: 128, align: 64, offset: 8576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !761, file: !12, line: 1535, baseType: !2273, size: 256, offset: 8704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !761, file: !12, line: 1537, baseType: !291, size: 192, offset: 8960)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !761, file: !12, line: 1542, baseType: !214, size: 32, offset: 9152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !761, file: !12, line: 1545, baseType: !273, offset: 9184)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !761, file: !12, line: 1546, baseType: !265, size: 128, offset: 9216)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !761, file: !12, line: 1548, baseType: !273, offset: 9344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !761, file: !12, line: 1549, baseType: !265, size: 128, offset: 9344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !641, file: !642, line: 104, baseType: !319, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !641, file: !642, line: 105, baseType: !209, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !642, line: 107, baseType: !3597, size: 128, offset: 1024)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 107, size: 128, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3597, file: !642, line: 108, baseType: !265, size: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3597, file: !642, line: 109, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !641, file: !642, line: 111, baseType: !265, size: 128, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !641, file: !642, line: 112, baseType: !265, size: 128, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !641, file: !642, line: 120, baseType: !3605, size: 128, offset: 1408)
!3605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 116, size: 128, elements: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3605, file: !642, line: 117, baseType: !804, size: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3605, file: !642, line: 118, baseType: !651, size: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3605, file: !642, line: 119, baseType: !931, size: 128, align: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !634, file: !12, line: 1866, baseType: !3611, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!256, !640, !609, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3616, line: 10, size: 128, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3615, file: !3616, line: 11, baseType: !1881, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3615, file: !3616, line: 12, baseType: !209, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !634, file: !12, line: 1867, baseType: !3621, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!214, !609, !214}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !634, file: !12, line: 1868, baseType: !3625, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!3628, !609, !214}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !12, line: 581, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !634, file: !12, line: 1870, baseType: !3631, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!214, !640, !216, !214}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !634, file: !12, line: 1872, baseType: !3635, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!214, !609, !640, !613, !751}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !634, file: !12, line: 1873, baseType: !3639, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!214, !640, !609, !640}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !634, file: !12, line: 1874, baseType: !3643, size: 64, offset: 448)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!214, !609, !640}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !634, file: !12, line: 1875, baseType: !3647, size: 64, offset: 512)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!214, !609, !640, !256}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !634, file: !12, line: 1876, baseType: !3651, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!214, !609, !640, !613}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !634, file: !12, line: 1877, baseType: !3643, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !634, file: !12, line: 1878, baseType: !3656, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!214, !609, !640, !613, !765}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !634, file: !12, line: 1879, baseType: !3660, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!214, !609, !640, !609, !640, !7}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !634, file: !12, line: 1881, baseType: !3664, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!214, !640, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !12, line: 219, size: 640, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675, !3680, !3681, !3682}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3668, file: !12, line: 220, baseType: !7, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3668, file: !12, line: 221, baseType: !613, size: 16, offset: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3668, file: !12, line: 222, baseType: !616, size: 32, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3668, file: !12, line: 223, baseType: !624, size: 32, offset: 96)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3668, file: !12, line: 224, baseType: !770, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3668, file: !12, line: 225, baseType: !3676, size: 128, offset: 192)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1324, line: 13, size: 128, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3676, file: !1324, line: 14, baseType: !1323, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3676, file: !1324, line: 15, baseType: !218, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3668, file: !12, line: 226, baseType: !3676, size: 128, offset: 320)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3668, file: !12, line: 227, baseType: !3676, size: 128, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3668, file: !12, line: 234, baseType: !951, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !634, file: !12, line: 1882, baseType: !3684, size: 64, offset: 896)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!214, !749, !3687, !321, !7}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3689, line: 22, size: 1152, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3688, file: !3689, line: 23, baseType: !321, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3688, file: !3689, line: 24, baseType: !613, size: 16, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3688, file: !3689, line: 25, baseType: !7, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3688, file: !3689, line: 26, baseType: !1331, size: 32, offset: 96)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3688, file: !3689, line: 27, baseType: !366, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3688, file: !3689, line: 28, baseType: !366, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3688, file: !3689, line: 37, baseType: !366, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3688, file: !3689, line: 38, baseType: !765, size: 32, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3688, file: !3689, line: 39, baseType: !765, size: 32, offset: 352)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3688, file: !3689, line: 40, baseType: !616, size: 32, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3688, file: !3689, line: 41, baseType: !624, size: 32, offset: 416)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3688, file: !3689, line: 42, baseType: !770, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3688, file: !3689, line: 43, baseType: !3676, size: 128, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3688, file: !3689, line: 44, baseType: !3676, size: 128, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3688, file: !3689, line: 45, baseType: !3676, size: 128, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3688, file: !3689, line: 46, baseType: !3676, size: 128, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3688, file: !3689, line: 47, baseType: !366, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3688, file: !3689, line: 48, baseType: !366, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !634, file: !12, line: 1883, baseType: !3710, size: 64, offset: 960)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!956, !640, !216, !884}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !634, file: !12, line: 1884, baseType: !3714, size: 64, offset: 1024)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!214, !609, !3717, !366, !366}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !12, line: 50, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !634, file: !12, line: 1886, baseType: !3720, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!214, !609, !3723, !214}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !634, file: !12, line: 1887, baseType: !3725, size: 64, offset: 1152)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!214, !609, !640, !951, !7, !613}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !634, file: !12, line: 1890, baseType: !3651, size: 64, offset: 1216)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !634, file: !12, line: 1891, baseType: !3730, size: 64, offset: 1280)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!214, !609, !3628, !214}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !610, file: !12, line: 623, baseType: !760, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !610, file: !12, line: 624, baseType: !605, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !610, file: !12, line: 631, baseType: !319, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !12, line: 639, baseType: !3737, size: 32, offset: 384)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !12, line: 639, size: 32, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3737, file: !12, line: 640, baseType: !3062, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3737, file: !12, line: 641, baseType: !7, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !610, file: !12, line: 643, baseType: !765, size: 32, offset: 416)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !610, file: !12, line: 644, baseType: !770, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !610, file: !12, line: 645, baseType: !3676, size: 128, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !610, file: !12, line: 646, baseType: !3676, size: 128, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !610, file: !12, line: 647, baseType: !3676, size: 128, offset: 768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !610, file: !12, line: 648, baseType: !273, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !610, file: !12, line: 649, baseType: !383, size: 16, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !610, file: !12, line: 650, baseType: !478, size: 8, offset: 912)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !610, file: !12, line: 651, baseType: !478, size: 8, offset: 920)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !610, file: !12, line: 652, baseType: !1662, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !610, file: !12, line: 659, baseType: !319, size: 64, offset: 1024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !610, file: !12, line: 660, baseType: !1308, size: 256, offset: 1088)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !610, file: !12, line: 662, baseType: !319, size: 64, offset: 1344)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !610, file: !12, line: 663, baseType: !319, size: 64, offset: 1408)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !610, file: !12, line: 665, baseType: !804, size: 128, offset: 1472)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !610, file: !12, line: 666, baseType: !265, size: 128, offset: 1600)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !610, file: !12, line: 675, baseType: !265, size: 128, offset: 1728)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !610, file: !12, line: 676, baseType: !265, size: 128, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !610, file: !12, line: 677, baseType: !265, size: 128, offset: 1984)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !12, line: 678, baseType: !3761, size: 128, offset: 2112)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !12, line: 678, size: 128, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3761, file: !12, line: 679, baseType: !800, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3761, file: !12, line: 680, baseType: !931, size: 128, align: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !610, file: !12, line: 682, baseType: !297, size: 64, offset: 2240)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !610, file: !12, line: 683, baseType: !297, size: 64, offset: 2304)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !610, file: !12, line: 684, baseType: !332, size: 32, offset: 2368)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !610, file: !12, line: 685, baseType: !332, size: 32, offset: 2400)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !610, file: !12, line: 686, baseType: !332, size: 32, offset: 2432)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !610, file: !12, line: 688, baseType: !332, size: 32, offset: 2464)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !12, line: 690, baseType: !3772, size: 64, offset: 2496)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !12, line: 690, size: 64, elements: !3773)
!3773 = !{!3774, !3775}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3772, file: !12, line: 691, baseType: !942, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3772, file: !12, line: 692, baseType: !831, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !610, file: !12, line: 694, baseType: !3777, size: 64, offset: 2560)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !12, line: 1100, size: 384, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3778, file: !12, line: 1101, baseType: !273)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3778, file: !12, line: 1102, baseType: !265, size: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3778, file: !12, line: 1103, baseType: !265, size: 128, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3778, file: !12, line: 1104, baseType: !265, size: 128, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !610, file: !12, line: 695, baseType: !606, size: 1216, align: 64, offset: 2624)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !610, file: !12, line: 696, baseType: !265, size: 128, offset: 3840)
!3786 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !12, line: 697, baseType: !3787, size: 64, offset: 3968)
!3787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !12, line: 697, size: 64, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3794, !3795}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3787, file: !12, line: 698, baseType: !1195, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3787, file: !12, line: 699, baseType: !1687, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3787, file: !12, line: 700, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !12, line: 700, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3787, file: !12, line: 701, baseType: !216, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3787, file: !12, line: 702, baseType: !7, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !610, file: !12, line: 705, baseType: !322, size: 32, offset: 4032)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !610, file: !12, line: 708, baseType: !322, size: 32, offset: 4064)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !610, file: !12, line: 709, baseType: !3532, size: 64, offset: 4096)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !610, file: !12, line: 720, baseType: !209, size: 64, offset: 4160)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !606, file: !12, line: 453, baseType: !1924, size: 128, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !606, file: !12, line: 454, baseType: !207, size: 32, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !606, file: !12, line: 455, baseType: !332, size: 32, offset: 224)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !606, file: !12, line: 460, baseType: !465, size: 128, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !606, file: !12, line: 461, baseType: !1308, size: 256, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !606, file: !12, line: 462, baseType: !319, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !606, file: !12, line: 463, baseType: !319, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !606, file: !12, line: 464, baseType: !319, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !606, file: !12, line: 465, baseType: !3809, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !12, line: 367, size: 1408, elements: !3812)
!3812 = !{!3813, !3817, !3821, !3825, !3829, !3833, !3845, !3850, !3854, !3858, !3862, !3866, !3870, !3871, !3875, !3881, !3882, !3883, !3887, !3892, !3896, !3903}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3811, file: !12, line: 368, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!214, !593, !843}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3811, file: !12, line: 369, baseType: !3818, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!214, !951, !593}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3811, file: !12, line: 372, baseType: !3822, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!214, !605, !843}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3811, file: !12, line: 375, baseType: !3826, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!214, !593}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3811, file: !12, line: 381, baseType: !3830, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!214, !951, !605, !268, !7}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3811, file: !12, line: 383, baseType: !3834, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{null, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !989, line: 795, size: 256, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3838, file: !989, line: 796, baseType: !951, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3838, file: !989, line: 797, baseType: !605, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3838, file: !989, line: 799, baseType: !319, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3838, file: !989, line: 800, baseType: !7, size: 32, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3838, file: !989, line: 801, baseType: !7, size: 32, offset: 224)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3811, file: !12, line: 385, baseType: !3846, size: 64, offset: 384)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!214, !951, !605, !770, !7, !7, !3849, !1152}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3811, file: !12, line: 388, baseType: !3851, size: 64, offset: 448)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!214, !951, !605, !770, !7, !7, !593, !209}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3811, file: !12, line: 393, baseType: !3855, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!1709, !605, !1709}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3811, file: !12, line: 394, baseType: !3859, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !593, !7, !7}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3811, file: !12, line: 395, baseType: !3863, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!214, !593, !207}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3811, file: !12, line: 396, baseType: !3867, size: 64, offset: 704)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !593}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3811, file: !12, line: 397, baseType: !964, size: 64, offset: 768)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3811, file: !12, line: 402, baseType: !3872, size: 64, offset: 832)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!214, !605, !593, !593, !101}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3811, file: !12, line: 404, baseType: !3876, size: 64, offset: 896)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!751, !593, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3880, line: 305, baseType: !7)
!3880 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3811, file: !12, line: 405, baseType: !3867, size: 64, offset: 960)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3811, file: !12, line: 406, baseType: !3826, size: 64, offset: 1024)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3811, file: !12, line: 407, baseType: !3884, size: 64, offset: 1088)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!214, !593, !319, !319}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3811, file: !12, line: 409, baseType: !3888, size: 64, offset: 1152)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !593, !3891, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3811, file: !12, line: 410, baseType: !3893, size: 64, offset: 1216)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!214, !605, !593}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3811, file: !12, line: 413, baseType: !3897, size: 64, offset: 1280)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!214, !3900, !951, !3902}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !12, line: 61, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3811, file: !12, line: 415, baseType: !3904, size: 64, offset: 1344)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !951}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !12, line: 466, baseType: !319, size: 64, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !606, file: !12, line: 467, baseType: !1473, size: 32, offset: 960)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !606, file: !12, line: 468, baseType: !273, offset: 992)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !606, file: !12, line: 469, baseType: !265, size: 128, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !606, file: !12, line: 470, baseType: !209, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !601, file: !507, line: 87, baseType: !319, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !601, file: !507, line: 94, baseType: !319, size: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 96, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 96, size: 64, elements: !3916)
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3915, file: !507, line: 101, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !208, line: 143, baseType: !366)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 103, baseType: !3920, size: 320)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 103, size: 320, elements: !3921)
!3921 = !{!3922, !3932, !3933, !3934}
!3922 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !507, line: 104, baseType: !3923, size: 128)
!3923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !507, line: 104, size: 128, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3923, file: !507, line: 105, baseType: !265, size: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !507, line: 106, baseType: !3927, size: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3923, file: !507, line: 106, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3927, file: !507, line: 107, baseType: !593, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3927, file: !507, line: 109, baseType: !214, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3927, file: !507, line: 110, baseType: !214, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3920, file: !507, line: 117, baseType: !2623, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3920, file: !507, line: 119, baseType: !209, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !507, line: 120, baseType: !3935, size: 64, offset: 256)
!3935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !507, line: 120, size: 64, elements: !3936)
!3936 = !{!3937, !3938, !3939}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3935, file: !507, line: 121, baseType: !209, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3935, file: !507, line: 122, baseType: !319, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !507, line: 123, baseType: !3940, size: 32)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3935, file: !507, line: 123, size: 32, elements: !3941)
!3941 = !{!3942, !3943, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3940, file: !507, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3940, file: !507, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3940, file: !507, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 130, baseType: !3946, size: 192)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 130, size: 192, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3946, file: !507, line: 131, baseType: !319, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3946, file: !507, line: 134, baseType: !480, size: 8, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3946, file: !507, line: 135, baseType: !480, size: 8, offset: 72)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3946, file: !507, line: 136, baseType: !332, size: 32, offset: 96)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3946, file: !507, line: 137, baseType: !7, size: 32, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 139, baseType: !3954, size: 256)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 139, size: 256, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3954, file: !507, line: 140, baseType: !319, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3954, file: !507, line: 141, baseType: !332, size: 32, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3954, file: !507, line: 143, baseType: !265, size: 128, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 145, baseType: !3960, size: 256)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 145, size: 256, elements: !3961)
!3961 = !{!3962, !3963, !3965, !3966, !3971}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3960, file: !507, line: 146, baseType: !319, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3960, file: !507, line: 147, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !525, line: 509, baseType: !593)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3960, file: !507, line: 148, baseType: !319, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3960, file: !507, line: 149, baseType: !3967, size: 64, offset: 192)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3960, file: !507, line: 149, size: 64, elements: !3968)
!3968 = !{!3969, !3970}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3967, file: !507, line: 150, baseType: !505, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3967, file: !507, line: 151, baseType: !332, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3960, file: !507, line: 156, baseType: !273, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !507, line: 159, baseType: !3973, size: 128)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !507, line: 159, size: 128, elements: !3974)
!3974 = !{!3975, !4019}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3973, file: !507, line: 161, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !109, line: 110, size: 1152, elements: !3978)
!3978 = !{!3979, !3989, !3990, !3991, !3992, !3993, !3994, !4006, !4007, !4008}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3977, file: !109, line: 111, baseType: !3980, size: 384)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !109, line: 19, size: 384, elements: !3981)
!3981 = !{!3982, !3984, !3985, !3986, !3987, !3988}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3980, file: !109, line: 20, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3980, file: !109, line: 21, baseType: !3983, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3980, file: !109, line: 22, baseType: !3983, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3980, file: !109, line: 23, baseType: !319, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3980, file: !109, line: 24, baseType: !319, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3980, file: !109, line: 25, baseType: !319, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3977, file: !109, line: 112, baseType: !1730, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3977, file: !109, line: 113, baseType: !1716, size: 128, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3977, file: !109, line: 114, baseType: !2217, size: 192, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3977, file: !109, line: 115, baseType: !108, size: 32, offset: 768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3977, file: !109, line: 116, baseType: !7, size: 32, offset: 800)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3977, file: !109, line: 117, baseType: !3995, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3997)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !109, line: 67, size: 256, elements: !3998)
!3998 = !{!3999, !4000, !4004, !4005}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3997, file: !109, line: 73, baseType: !3867, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3997, file: !109, line: 78, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !3976}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3997, file: !109, line: 83, baseType: !4001, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3997, file: !109, line: 89, baseType: !560, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3977, file: !109, line: 118, baseType: !209, size: 64, offset: 896)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3977, file: !109, line: 119, baseType: !214, size: 32, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_member, scope: !3977, file: !109, line: 120, baseType: !4009, size: 128, offset: 1024)
!4009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3977, file: !109, line: 120, size: 128, elements: !4010)
!4010 = !{!4011, !4017}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4009, file: !109, line: 121, baseType: !4012, size: 128)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4013, line: 6, size: 128, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4012, file: !4013, line: 7, baseType: !366, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4012, file: !4013, line: 8, baseType: !366, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4009, file: !109, line: 122, baseType: !4018)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4012, elements: !1451)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3973, file: !507, line: 162, baseType: !209, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !598, file: !507, line: 176, baseType: !931, size: 128, align: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !507, line: 179, baseType: !4022, size: 32, offset: 384)
!4022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !507, line: 179, size: 32, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4022, file: !507, line: 184, baseType: !332, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4022, file: !507, line: 192, baseType: !7, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4022, file: !507, line: 194, baseType: !7, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4022, file: !507, line: 195, baseType: !214, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !594, file: !507, line: 199, baseType: !332, size: 32, offset: 416)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !565, file: !116, line: 522, baseType: !593, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !565, file: !116, line: 528, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !565, file: !116, line: 532, baseType: !289, size: 64, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !565, file: !116, line: 536, baseType: !3964, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !544, file: !116, line: 563, baseType: !4035, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!563, !564, !115}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !544, file: !116, line: 565, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !564, !319, !319}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !544, file: !116, line: 567, baseType: !4043, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!319, !513}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !544, file: !116, line: 571, baseType: !560, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !544, file: !116, line: 574, baseType: !560, size: 64, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !544, file: !116, line: 579, baseType: !4049, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!214, !513, !319, !209, !214, !214}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !116, line: 585, baseType: !4053, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!256, !513}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !544, file: !116, line: 615, baseType: !4057, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!593, !513, !319}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !514, file: !507, line: 359, baseType: !319, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !514, file: !507, line: 361, baseType: !951, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !514, file: !507, line: 362, baseType: !209, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !514, file: !507, line: 365, baseType: !295, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !514, file: !507, line: 373, baseType: !4065, offset: 1472)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !507, line: 296, elements: !287)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !510, file: !507, line: 391, baseType: !468, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !510, file: !507, line: 392, baseType: !366, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !510, file: !507, line: 394, baseType: !1183, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !510, file: !507, line: 398, baseType: !319, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !510, file: !507, line: 399, baseType: !319, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !510, file: !507, line: 405, baseType: !319, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !510, file: !507, line: 406, baseType: !319, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !510, file: !507, line: 407, baseType: !4074, size: 64, offset: 512)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !525, line: 286, baseType: !4076)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 286, size: 64, elements: !4077)
!4077 = !{!4078}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4076, file: !525, line: 286, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !530, line: 18, baseType: !319)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !510, file: !507, line: 416, baseType: !332, size: 32, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !510, file: !507, line: 428, baseType: !332, size: 32, offset: 608)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !510, file: !507, line: 437, baseType: !332, size: 32, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !510, file: !507, line: 447, baseType: !332, size: 32, offset: 672)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !510, file: !507, line: 450, baseType: !295, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !510, file: !507, line: 452, baseType: !214, size: 32, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !510, file: !507, line: 454, baseType: !273, offset: 800)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !510, file: !507, line: 457, baseType: !1308, size: 256, offset: 832)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !510, file: !507, line: 459, baseType: !265, size: 128, offset: 1088)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !510, file: !507, line: 466, baseType: !319, size: 64, offset: 1216)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !510, file: !507, line: 467, baseType: !319, size: 64, offset: 1280)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !510, file: !507, line: 469, baseType: !319, size: 64, offset: 1344)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !510, file: !507, line: 470, baseType: !319, size: 64, offset: 1408)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !510, file: !507, line: 471, baseType: !297, size: 64, offset: 1472)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !510, file: !507, line: 472, baseType: !319, size: 64, offset: 1536)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !510, file: !507, line: 473, baseType: !319, size: 64, offset: 1600)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !510, file: !507, line: 474, baseType: !319, size: 64, offset: 1664)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !510, file: !507, line: 475, baseType: !319, size: 64, offset: 1728)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !510, file: !507, line: 477, baseType: !273, offset: 1792)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !510, file: !507, line: 478, baseType: !319, size: 64, offset: 1792)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !510, file: !507, line: 478, baseType: !319, size: 64, offset: 1856)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !510, file: !507, line: 478, baseType: !319, size: 64, offset: 1920)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !510, file: !507, line: 478, baseType: !319, size: 64, offset: 1984)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !510, file: !507, line: 479, baseType: !319, size: 64, offset: 2048)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !510, file: !507, line: 479, baseType: !319, size: 64, offset: 2112)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !510, file: !507, line: 479, baseType: !319, size: 64, offset: 2176)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !510, file: !507, line: 480, baseType: !319, size: 64, offset: 2240)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !510, file: !507, line: 480, baseType: !319, size: 64, offset: 2304)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !510, file: !507, line: 480, baseType: !319, size: 64, offset: 2368)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !510, file: !507, line: 480, baseType: !319, size: 64, offset: 2432)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !510, file: !507, line: 482, baseType: !4111, size: 2816, offset: 2496)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2816, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 44)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !510, file: !507, line: 488, baseType: !4115, size: 256, offset: 5312)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !4116, line: 60, size: 256, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!4117 = !{!4118}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4115, file: !4116, line: 61, baseType: !4119, size: 256)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !1244)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !510, file: !507, line: 490, baseType: !4121, size: 64, offset: 5568)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !507, line: 490, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !507, line: 493, baseType: !4124, size: 896, offset: 5632)
!4124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4125, line: 53, baseType: !4126)
!4125 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4125, line: 13, size: 896, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4134, !4135, !4136, !4137, !4157, !4158, !4159}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4126, file: !4125, line: 18, baseType: !366, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4126, file: !4125, line: 28, baseType: !297, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4126, file: !4125, line: 31, baseType: !1308, size: 256, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4126, file: !4125, line: 32, baseType: !4132, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4125, line: 32, flags: DIFlagFwdDecl)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !4126, file: !4125, line: 37, baseType: !383, size: 16, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4126, file: !4125, line: 40, baseType: !291, size: 192, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4126, file: !4125, line: 41, baseType: !209, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4126, file: !4125, line: 42, baseType: !4138, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4141, line: 13, size: 896, elements: !4142)
!4141 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4140, file: !4141, line: 14, baseType: !209, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4140, file: !4141, line: 15, baseType: !319, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4140, file: !4141, line: 17, baseType: !319, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4140, file: !4141, line: 17, baseType: !319, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4140, file: !4141, line: 19, baseType: !218, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4140, file: !4141, line: 21, baseType: !218, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4140, file: !4141, line: 22, baseType: !218, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4140, file: !4141, line: 23, baseType: !218, size: 64, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4140, file: !4141, line: 24, baseType: !218, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4140, file: !4141, line: 25, baseType: !218, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4140, file: !4141, line: 26, baseType: !218, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4140, file: !4141, line: 27, baseType: !218, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4140, file: !4141, line: 28, baseType: !218, size: 64, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4140, file: !4141, line: 29, baseType: !218, size: 64, offset: 832)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4126, file: !4125, line: 44, baseType: !332, size: 32, offset: 832)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4126, file: !4125, line: 50, baseType: !979, size: 16, offset: 864)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4126, file: !4125, line: 51, baseType: !4160, size: 16, offset: 880)
!4160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !302, line: 18, baseType: !4161)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !304, line: 23, baseType: !1335)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !507, line: 495, baseType: !319, size: 64, offset: 6528)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !510, file: !507, line: 497, baseType: !4164, size: 64, offset: 6592)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !507, line: 381, size: 384, elements: !4166)
!4166 = !{!4167, !4168, !4174}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4165, file: !507, line: 382, baseType: !332, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4165, file: !507, line: 383, baseType: !4169, size: 128, offset: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !507, line: 376, size: 128, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4169, file: !507, line: 377, baseType: !310, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4169, file: !507, line: 378, baseType: !4173, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4165, file: !507, line: 384, baseType: !2217, size: 192, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !510, file: !507, line: 500, baseType: !273, offset: 6656)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !510, file: !507, line: 501, baseType: !4177, size: 64, offset: 6656)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !507, line: 387, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !510, file: !507, line: 516, baseType: !1441, size: 64, offset: 6720)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !510, file: !507, line: 519, baseType: !951, size: 64, offset: 6784)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !510, file: !507, line: 521, baseType: !4182, size: 64, offset: 6848)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !507, line: 521, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !510, file: !507, line: 545, baseType: !332, size: 32, offset: 6912)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !510, file: !507, line: 548, baseType: !751, size: 8, offset: 6944)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !510, file: !507, line: 550, baseType: !4187, offset: 6952)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4188, line: 142, elements: !287)
!4188 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !510, file: !507, line: 554, baseType: !2273, size: 256, offset: 6976)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !510, file: !507, line: 557, baseType: !321, size: 32, offset: 7232)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !506, file: !507, line: 565, baseType: !4192, offset: 7296)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !2549)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !311, file: !312, line: 758, baseType: !505, size: 64, offset: 3968)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !311, file: !312, line: 761, baseType: !4195, size: 320, offset: 4032)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !4116, line: 34, size: 320, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !4195, file: !4116, line: 35, baseType: !366, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !4195, file: !4116, line: 36, baseType: !4199, size: 256, offset: 64)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 256, elements: !1244)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !311, file: !312, line: 766, baseType: !214, size: 32, offset: 4352)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !311, file: !312, line: 767, baseType: !214, size: 32, offset: 4384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !311, file: !312, line: 768, baseType: !214, size: 32, offset: 4416)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !311, file: !312, line: 770, baseType: !214, size: 32, offset: 4448)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !311, file: !312, line: 772, baseType: !319, size: 64, offset: 4480)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !311, file: !312, line: 775, baseType: !7, size: 32, offset: 4544)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !311, file: !312, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !311, file: !312, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !311, file: !312, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !311, file: !312, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !311, file: !312, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !311, file: !312, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !311, file: !312, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !311, file: !312, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !311, file: !312, line: 831, baseType: !319, size: 64, offset: 4672)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !311, file: !312, line: 833, baseType: !4216, size: 384, offset: 4736)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !122, line: 25, size: 384, elements: !4217)
!4217 = !{!4218, !4223}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4216, file: !122, line: 26, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!218, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, scope: !4216, file: !122, line: 27, baseType: !4224, size: 320, offset: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4216, file: !122, line: 27, size: 320, elements: !4225)
!4225 = !{!4226, !4236, !4261}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4224, file: !122, line: 36, baseType: !4227, size: 320)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4224, file: !122, line: 29, size: 320, elements: !4228)
!4228 = !{!4229, !4231, !4232, !4233, !4234, !4235}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4227, file: !122, line: 30, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4227, file: !122, line: 31, baseType: !321, size: 32, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !122, line: 32, baseType: !321, size: 32, offset: 96)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4227, file: !122, line: 33, baseType: !321, size: 32, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4227, file: !122, line: 34, baseType: !366, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4227, file: !122, line: 35, baseType: !4230, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4224, file: !122, line: 46, baseType: !4237, size: 192)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4224, file: !122, line: 38, size: 192, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4260}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4237, file: !122, line: 39, baseType: !447, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4237, file: !122, line: 40, baseType: !121, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4237, file: !122, line: 41, baseType: !4242, size: 64, offset: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4237, file: !122, line: 41, size: 64, elements: !4243)
!4243 = !{!4244, !4252}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4242, file: !122, line: 42, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4247, line: 7, size: 128, elements: !4248)
!4247 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!4248 = !{!4249, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4246, file: !4247, line: 8, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !449, line: 93, baseType: !305)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4246, file: !4247, line: 9, baseType: !305, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4242, file: !122, line: 43, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4255, line: 7, size: 64, elements: !4256)
!4255 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!4256 = !{!4257, !4259}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4254, file: !4255, line: 8, baseType: !4258, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4255, line: 5, baseType: !1300)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4254, file: !4255, line: 9, baseType: !1300, size: 32, offset: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4237, file: !122, line: 45, baseType: !366, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4224, file: !122, line: 54, baseType: !4262, size: 256)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4224, file: !122, line: 48, size: 256, elements: !4263)
!4263 = !{!4264, !4267, !4268, !4269, !4270}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4262, file: !122, line: 49, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !122, line: 14, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4262, file: !122, line: 50, baseType: !214, size: 32, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4262, file: !122, line: 51, baseType: !214, size: 32, offset: 96)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4262, file: !122, line: 52, baseType: !319, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4262, file: !122, line: 53, baseType: !319, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !311, file: !312, line: 835, baseType: !4272, size: 32, offset: 5120)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !208, line: 22, baseType: !4273)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !449, line: 28, baseType: !214)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !311, file: !312, line: 836, baseType: !4272, size: 32, offset: 5152)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !311, file: !312, line: 840, baseType: !319, size: 64, offset: 5184)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !311, file: !312, line: 849, baseType: !310, size: 64, offset: 5248)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !311, file: !312, line: 852, baseType: !310, size: 64, offset: 5312)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !311, file: !312, line: 857, baseType: !265, size: 128, offset: 5376)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !311, file: !312, line: 858, baseType: !265, size: 128, offset: 5504)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !311, file: !312, line: 859, baseType: !310, size: 64, offset: 5632)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !311, file: !312, line: 867, baseType: !265, size: 128, offset: 5696)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !311, file: !312, line: 868, baseType: !265, size: 128, offset: 5824)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !311, file: !312, line: 871, baseType: !1236, size: 64, offset: 5952)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !311, file: !312, line: 872, baseType: !4285, size: 512, offset: 6016)
!4285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 512, elements: !1244)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !311, file: !312, line: 873, baseType: !265, size: 128, offset: 6528)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !311, file: !312, line: 874, baseType: !265, size: 128, offset: 6656)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !311, file: !312, line: 876, baseType: !4289, size: 64, offset: 6784)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !311, file: !312, line: 879, baseType: !872, size: 64, offset: 6848)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !311, file: !312, line: 882, baseType: !872, size: 64, offset: 6912)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !311, file: !312, line: 884, baseType: !366, size: 64, offset: 6976)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !311, file: !312, line: 885, baseType: !366, size: 64, offset: 7040)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !311, file: !312, line: 890, baseType: !366, size: 64, offset: 7104)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !311, file: !312, line: 891, baseType: !4296, size: 128, offset: 7168)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !312, line: 242, size: 128, elements: !4297)
!4297 = !{!4298, !4299, !4300}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4296, file: !312, line: 244, baseType: !366, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4296, file: !312, line: 245, baseType: !366, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4296, file: !312, line: 246, baseType: !429, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !311, file: !312, line: 900, baseType: !319, size: 64, offset: 7296)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !311, file: !312, line: 901, baseType: !319, size: 64, offset: 7360)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !311, file: !312, line: 904, baseType: !366, size: 64, offset: 7424)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !311, file: !312, line: 907, baseType: !366, size: 64, offset: 7488)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !311, file: !312, line: 910, baseType: !319, size: 64, offset: 7552)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !311, file: !312, line: 911, baseType: !319, size: 64, offset: 7616)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !311, file: !312, line: 914, baseType: !4308, size: 640, offset: 7680)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4309, line: 123, size: 640, elements: !4310)
!4309 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!4310 = !{!4311, !4317, !4318}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4308, file: !4309, line: 124, baseType: !4312, size: 576)
!4312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4313, size: 576, elements: !816)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4309, line: 108, size: 192, elements: !4314)
!4314 = !{!4315, !4316}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4313, file: !4309, line: 109, baseType: !366, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4313, file: !4309, line: 110, baseType: !462, size: 128, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4308, file: !4309, line: 125, baseType: !7, size: 32, offset: 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4308, file: !4309, line: 126, baseType: !7, size: 32, offset: 608)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !311, file: !312, line: 917, baseType: !4320, size: 192, offset: 8320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4309, line: 134, size: 192, elements: !4321)
!4321 = !{!4322, !4323}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4320, file: !4309, line: 135, baseType: !931, size: 128, align: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4320, file: !4309, line: 136, baseType: !7, size: 32, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !311, file: !312, line: 923, baseType: !1262, size: 64, offset: 8512)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !311, file: !312, line: 926, baseType: !1262, size: 64, offset: 8576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !311, file: !312, line: 929, baseType: !1262, size: 64, offset: 8640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !311, file: !312, line: 933, baseType: !1292, size: 64, offset: 8704)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !311, file: !312, line: 943, baseType: !4329, size: 128, offset: 8768)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !3306)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !311, file: !312, line: 945, baseType: !4331, size: 64, offset: 8896)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !312, line: 49, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !311, file: !312, line: 956, baseType: !4334, size: 64, offset: 8960)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !312, line: 45, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !311, file: !312, line: 959, baseType: !4337, size: 64, offset: 9024)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !312, line: 959, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !311, file: !312, line: 962, baseType: !4340, size: 64, offset: 9088)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !312, line: 66, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !311, file: !312, line: 966, baseType: !4343, size: 64, offset: 9152)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4345, line: 35, flags: DIFlagFwdDecl)
!4345 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !311, file: !312, line: 969, baseType: !4347, size: 64, offset: 9216)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4349, line: 82, size: 7296, elements: !4350)
!4349 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4386, !4395, !4396, !4398, !4399, !4400, !4403, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4433, !4434, !4441, !4442, !4443, !4444, !4445, !4446}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4348, file: !4349, line: 83, baseType: !327, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4348, file: !4349, line: 84, baseType: !332, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4348, file: !4349, line: 85, baseType: !214, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4348, file: !4349, line: 86, baseType: !265, size: 128, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4348, file: !4349, line: 88, baseType: !1082, size: 128, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4348, file: !4349, line: 91, baseType: !310, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4348, file: !4349, line: 94, baseType: !4358, size: 192, offset: 448)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4359, line: 30, size: 192, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!4360 = !{!4361, !4362}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4358, file: !4359, line: 31, baseType: !265, size: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4358, file: !4359, line: 32, baseType: !4363, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4364, line: 25, baseType: !4365)
!4364 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4364, line: 23, size: 64, elements: !4366)
!4366 = !{!4367}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4365, file: !4364, line: 24, baseType: !497, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4348, file: !4349, line: 97, baseType: !800, size: 64, offset: 640)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4348, file: !4349, line: 100, baseType: !214, size: 32, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4348, file: !4349, line: 106, baseType: !214, size: 32, offset: 736)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !4348, file: !4349, line: 107, baseType: !310, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4348, file: !4349, line: 110, baseType: !214, size: 32, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4348, file: !4349, line: 111, baseType: !7, size: 32, offset: 864)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4348, file: !4349, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4348, file: !4349, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !4348, file: !4349, line: 128, baseType: !214, size: 32, offset: 928)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4348, file: !4349, line: 129, baseType: !265, size: 128, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4348, file: !4349, line: 132, baseType: !404, size: 512, offset: 1088)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4348, file: !4349, line: 133, baseType: !412, size: 64, offset: 1600)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4348, file: !4349, line: 140, baseType: !4381, size: 256, offset: 1664)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4382, size: 256, elements: !1284)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4349, line: 38, size: 128, elements: !4383)
!4383 = !{!4384, !4385}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4382, file: !4349, line: 39, baseType: !366, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4382, file: !4349, line: 40, baseType: !366, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4348, file: !4349, line: 146, baseType: !4387, size: 192, offset: 1920)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4349, line: 66, size: 192, elements: !4388)
!4388 = !{!4389}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4387, file: !4349, line: 67, baseType: !4390, size: 192)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4349, line: 47, size: 192, elements: !4391)
!4391 = !{!4392, !4393, !4394}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4390, file: !4349, line: 48, baseType: !297, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4390, file: !4349, line: 49, baseType: !297, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4390, file: !4349, line: 50, baseType: !297, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4348, file: !4349, line: 150, baseType: !4308, size: 640, offset: 2112)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4348, file: !4349, line: 153, baseType: !4397, size: 256, offset: 2752)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 256, elements: !1244)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4348, file: !4349, line: 159, baseType: !1236, size: 64, offset: 3008)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4348, file: !4349, line: 162, baseType: !214, size: 32, offset: 3072)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4348, file: !4349, line: 164, baseType: !4401, size: 64, offset: 3136)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4349, line: 164, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4348, file: !4349, line: 175, baseType: !4404, size: 32, offset: 3200)
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !452, line: 805, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 798, size: 32, elements: !4406)
!4406 = !{!4407, !4408}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4405, file: !452, line: 803, baseType: !646, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4405, file: !452, line: 804, baseType: !273, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4348, file: !4349, line: 176, baseType: !366, size: 64, offset: 3264)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4348, file: !4349, line: 176, baseType: !366, size: 64, offset: 3328)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4348, file: !4349, line: 176, baseType: !366, size: 64, offset: 3392)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4348, file: !4349, line: 176, baseType: !366, size: 64, offset: 3456)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4348, file: !4349, line: 177, baseType: !366, size: 64, offset: 3520)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4348, file: !4349, line: 178, baseType: !366, size: 64, offset: 3584)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4348, file: !4349, line: 179, baseType: !4296, size: 128, offset: 3648)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4348, file: !4349, line: 180, baseType: !319, size: 64, offset: 3776)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4348, file: !4349, line: 180, baseType: !319, size: 64, offset: 3840)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4348, file: !4349, line: 180, baseType: !319, size: 64, offset: 3904)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4348, file: !4349, line: 180, baseType: !319, size: 64, offset: 3968)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4348, file: !4349, line: 181, baseType: !319, size: 64, offset: 4032)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4348, file: !4349, line: 181, baseType: !319, size: 64, offset: 4096)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4348, file: !4349, line: 181, baseType: !319, size: 64, offset: 4160)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4348, file: !4349, line: 181, baseType: !319, size: 64, offset: 4224)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4348, file: !4349, line: 182, baseType: !319, size: 64, offset: 4288)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4348, file: !4349, line: 182, baseType: !319, size: 64, offset: 4352)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4348, file: !4349, line: 182, baseType: !319, size: 64, offset: 4416)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4348, file: !4349, line: 182, baseType: !319, size: 64, offset: 4480)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4348, file: !4349, line: 183, baseType: !319, size: 64, offset: 4544)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4348, file: !4349, line: 183, baseType: !319, size: 64, offset: 4608)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4348, file: !4349, line: 184, baseType: !4431, offset: 4672)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4432, line: 12, elements: !287)
!4432 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4348, file: !4349, line: 192, baseType: !368, size: 64, offset: 4672)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4348, file: !4349, line: 203, baseType: !4435, size: 2048, offset: 4736)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4436, size: 2048, elements: !3306)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4437, line: 43, size: 128, elements: !4438)
!4437 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4436, file: !4437, line: 44, baseType: !886, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4436, file: !4437, line: 45, baseType: !886, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4348, file: !4349, line: 220, baseType: !751, size: 8, offset: 6784)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4348, file: !4349, line: 221, baseType: !1335, size: 16, offset: 6800)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4348, file: !4349, line: 222, baseType: !1335, size: 16, offset: 6816)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4348, file: !4349, line: 224, baseType: !505, size: 64, offset: 6848)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4348, file: !4349, line: 227, baseType: !291, size: 192, offset: 6912)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !4348, file: !4349, line: 233, baseType: !291, size: 192, offset: 7104)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !311, file: !312, line: 970, baseType: !4448, size: 64, offset: 9280)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4349, line: 20, size: 16576, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4454}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4449, file: !4349, line: 21, baseType: !273)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4449, file: !4349, line: 22, baseType: !327, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4449, file: !4349, line: 23, baseType: !1082, size: 128, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4449, file: !4349, line: 24, baseType: !4455, size: 16384, offset: 192)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4456, size: 16384, elements: !1781)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4359, line: 49, size: 256, elements: !4457)
!4457 = !{!4458}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4456, file: !4359, line: 50, baseType: !4459, size: 256)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4359, line: 35, size: 256, elements: !4460)
!4460 = !{!4461, !4468, !4469, !4473}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4459, file: !4359, line: 37, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4463, line: 19, baseType: !4464)
!4463 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4463, line: 18, baseType: !4466)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !214}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4459, file: !4359, line: 38, baseType: !319, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4459, file: !4359, line: 44, baseType: !4470, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4463, line: 22, baseType: !4471)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4463, line: 21, baseType: !248)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4459, file: !4359, line: 46, baseType: !4363, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !311, file: !312, line: 971, baseType: !4363, size: 64, offset: 9344)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !311, file: !312, line: 972, baseType: !4363, size: 64, offset: 9408)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !311, file: !312, line: 974, baseType: !4363, size: 64, offset: 9472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !311, file: !312, line: 975, baseType: !4358, size: 192, offset: 9536)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !311, file: !312, line: 976, baseType: !319, size: 64, offset: 9728)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !311, file: !312, line: 977, baseType: !884, size: 64, offset: 9792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !311, file: !312, line: 978, baseType: !7, size: 32, offset: 9856)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !311, file: !312, line: 980, baseType: !934, size: 64, offset: 9920)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !311, file: !312, line: 989, baseType: !4483, size: 128, offset: 9984)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4484, line: 35, size: 128, elements: !4485)
!4484 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4483, file: !4484, line: 36, baseType: !214, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4483, file: !4484, line: 37, baseType: !332, size: 32, offset: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4483, file: !4484, line: 38, baseType: !4489, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4484, line: 23, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !311, file: !312, line: 992, baseType: !366, size: 64, offset: 10112)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !311, file: !312, line: 993, baseType: !366, size: 64, offset: 10176)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !311, file: !312, line: 996, baseType: !273, offset: 10240)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !311, file: !312, line: 999, baseType: !429, offset: 10240)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !311, file: !312, line: 1001, baseType: !4496, size: 64, offset: 10240)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !312, line: 636, size: 64, elements: !4497)
!4497 = !{!4498}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4496, file: !312, line: 637, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !311, file: !312, line: 1005, baseType: !465, size: 128, offset: 10304)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !311, file: !312, line: 1007, baseType: !310, size: 64, offset: 10432)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !311, file: !312, line: 1009, baseType: !4503, size: 64, offset: 10496)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !312, line: 1009, flags: DIFlagFwdDecl)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !311, file: !312, line: 1043, baseType: !209, size: 64, offset: 10560)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !311, file: !312, line: 1046, baseType: !4507, size: 64, offset: 10624)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !311, file: !312, line: 1050, baseType: !4509, size: 64, offset: 10688)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !68, line: 1236, size: 320, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4516}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4510, file: !68, line: 1237, baseType: !265, size: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4510, file: !68, line: 1238, baseType: !265, size: 128, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4510, file: !68, line: 1239, baseType: !383, size: 16, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4510, file: !68, line: 1240, baseType: !751, size: 8, offset: 272)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !4510, file: !68, line: 1241, baseType: !751, size: 8, offset: 280)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !311, file: !312, line: 1054, baseType: !4518, size: 64, offset: 10752)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !312, line: 55, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !311, file: !312, line: 1056, baseType: !3182, size: 64, offset: 10816)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !311, file: !312, line: 1058, baseType: !2870, size: 64, offset: 10880)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !311, file: !312, line: 1061, baseType: !4523, size: 64, offset: 10944)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !312, line: 43, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !311, file: !312, line: 1064, baseType: !319, size: 64, offset: 11008)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !311, file: !312, line: 1065, baseType: !4527, size: 64, offset: 11072)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4359, line: 14, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4359, line: 12, size: 384, elements: !4530)
!4530 = !{!4531}
!4531 = !DIDerivedType(tag: DW_TAG_member, scope: !4529, file: !4359, line: 13, baseType: !4532, size: 384)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4529, file: !4359, line: 13, size: 384, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4532, file: !4359, line: 13, baseType: !214, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4532, file: !4359, line: 13, baseType: !214, size: 32, offset: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4532, file: !4359, line: 13, baseType: !214, size: 32, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4532, file: !4359, line: 13, baseType: !4538, size: 256, offset: 128)
!4538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4539, line: 32, size: 256, elements: !4540)
!4539 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!4540 = !{!4541, !4546, !4559, !4565, !4574, !4594, !4599}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4538, file: !4539, line: 37, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 34, size: 64, elements: !4543)
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4542, file: !4539, line: 35, baseType: !4273, size: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4542, file: !4539, line: 36, baseType: !622, size: 32, offset: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4538, file: !4539, line: 45, baseType: !4547, size: 192)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 40, size: 192, elements: !4548)
!4548 = !{!4549, !4551, !4552, !4558}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4547, file: !4539, line: 41, baseType: !4550, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !449, line: 95, baseType: !214)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4547, file: !4539, line: 42, baseType: !214, size: 32, offset: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4547, file: !4539, line: 43, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4539, line: 11, baseType: !4554)
!4554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4539, line: 8, size: 64, elements: !4555)
!4555 = !{!4556, !4557}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4554, file: !4539, line: 9, baseType: !214, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4554, file: !4539, line: 10, baseType: !209, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4547, file: !4539, line: 44, baseType: !214, size: 32, offset: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4538, file: !4539, line: 52, baseType: !4560, size: 128)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 48, size: 128, elements: !4561)
!4561 = !{!4562, !4563, !4564}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4560, file: !4539, line: 49, baseType: !4273, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4560, file: !4539, line: 50, baseType: !622, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4560, file: !4539, line: 51, baseType: !4553, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4538, file: !4539, line: 61, baseType: !4566, size: 256)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 55, size: 256, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4573}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4566, file: !4539, line: 56, baseType: !4273, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4566, file: !4539, line: 57, baseType: !622, size: 32, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4566, file: !4539, line: 58, baseType: !214, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4566, file: !4539, line: 59, baseType: !4572, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !449, line: 94, baseType: !958)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4566, file: !4539, line: 60, baseType: !4572, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4538, file: !4539, line: 95, baseType: !4575, size: 256)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 64, size: 256, elements: !4576)
!4576 = !{!4577, !4578}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4575, file: !4539, line: 65, baseType: !209, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, scope: !4575, file: !4539, line: 77, baseType: !4579, size: 192, offset: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4575, file: !4539, line: 77, size: 192, elements: !4580)
!4580 = !{!4581, !4582, !4589}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4579, file: !4539, line: 82, baseType: !1335, size: 16)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4579, file: !4539, line: 88, baseType: !4583, size: 192)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !4539, line: 84, size: 192, elements: !4584)
!4584 = !{!4585, !4587, !4588}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4583, file: !4539, line: 85, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !443)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4583, file: !4539, line: 86, baseType: !209, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4583, file: !4539, line: 87, baseType: !209, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4579, file: !4539, line: 93, baseType: !4590, size: 96)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !4539, line: 90, size: 96, elements: !4591)
!4591 = !{!4592, !4593}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4590, file: !4539, line: 91, baseType: !4586, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4590, file: !4539, line: 92, baseType: !322, size: 32, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4538, file: !4539, line: 101, baseType: !4595, size: 128)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 98, size: 128, elements: !4596)
!4596 = !{!4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4595, file: !4539, line: 99, baseType: !218, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4595, file: !4539, line: 100, baseType: !214, size: 32, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4538, file: !4539, line: 108, baseType: !4600, size: 128)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4539, line: 104, size: 128, elements: !4601)
!4601 = !{!4602, !4603, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4600, file: !4539, line: 105, baseType: !209, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4600, file: !4539, line: 106, baseType: !214, size: 32, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4600, file: !4539, line: 107, baseType: !7, size: 32, offset: 96)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !311, file: !312, line: 1067, baseType: !4431, offset: 11136)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !311, file: !312, line: 1099, baseType: !4607, size: 64, offset: 11136)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !312, line: 56, flags: DIFlagFwdDecl)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !311, file: !312, line: 1103, baseType: !265, size: 128, offset: 11200)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !311, file: !312, line: 1104, baseType: !4611, size: 64, offset: 11328)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !312, line: 46, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !311, file: !312, line: 1105, baseType: !291, size: 192, offset: 11392)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !311, file: !312, line: 1106, baseType: !7, size: 32, offset: 11584)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !311, file: !312, line: 1109, baseType: !4616, size: 128, offset: 11648)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4617, size: 128, elements: !1284)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !312, line: 51, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !311, file: !312, line: 1110, baseType: !291, size: 192, offset: 11776)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !311, file: !312, line: 1111, baseType: !265, size: 128, offset: 11968)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !311, file: !312, line: 1173, baseType: !4622, size: 64, offset: 12096)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4624, line: 62, size: 256, align: 256, elements: !4625)
!4624 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!4625 = !{!4626, !4627, !4628, !4633}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4623, file: !4624, line: 75, baseType: !322, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4623, file: !4624, line: 90, baseType: !322, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4623, file: !4624, line: 124, baseType: !4629, size: 64, offset: 64)
!4629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4623, file: !4624, line: 109, size: 64, elements: !4630)
!4630 = !{!4631, !4632}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !4629, file: !4624, line: 110, baseType: !367, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4629, file: !4624, line: 112, baseType: !367, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4623, file: !4624, line: 144, baseType: !322, size: 32, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !311, file: !312, line: 1174, baseType: !321, size: 32, offset: 12160)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !311, file: !312, line: 1179, baseType: !319, size: 64, offset: 12224)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !311, file: !312, line: 1182, baseType: !4637, size: 128, offset: 12288)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4116, line: 76, size: 128, elements: !4638)
!4638 = !{!4639, !4644, !4645}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4637, file: !4116, line: 85, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4641, line: 7, size: 64, elements: !4642)
!4641 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!4642 = !{!4643}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4640, file: !4641, line: 12, baseType: !494, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4637, file: !4116, line: 88, baseType: !751, size: 8, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4637, file: !4116, line: 95, baseType: !751, size: 8, offset: 72)
!4646 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 1184, baseType: !4647, size: 128, offset: 12416)
!4647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 1184, size: 128, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !4647, file: !312, line: 1185, baseType: !327, size: 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4647, file: !312, line: 1186, baseType: !931, size: 128, align: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !311, file: !312, line: 1190, baseType: !1195, size: 64, offset: 12544)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !311, file: !312, line: 1192, baseType: !4653, size: 128, offset: 12608)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4116, line: 64, size: 128, elements: !4654)
!4654 = !{!4655, !4656, !4657}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4653, file: !4116, line: 65, baseType: !593, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4653, file: !4116, line: 67, baseType: !322, size: 32, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4653, file: !4116, line: 68, baseType: !322, size: 32, offset: 96)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !311, file: !312, line: 1206, baseType: !214, size: 32, offset: 12736)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !311, file: !312, line: 1207, baseType: !214, size: 32, offset: 12768)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !311, file: !312, line: 1209, baseType: !319, size: 64, offset: 12800)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !311, file: !312, line: 1219, baseType: !366, size: 64, offset: 12864)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !311, file: !312, line: 1220, baseType: !366, size: 64, offset: 12928)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !311, file: !312, line: 1317, baseType: !214, size: 32, offset: 12992)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !311, file: !312, line: 1319, baseType: !310, size: 64, offset: 13056)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !311, file: !312, line: 1322, baseType: !4666, size: 64, offset: 13120)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4668, line: 56, size: 512, elements: !4669)
!4668 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!4669 = !{!4670, !4671, !4672, !4673, !4674, !4675, !4676, !4678}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4667, file: !4668, line: 57, baseType: !4666, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4667, file: !4668, line: 58, baseType: !209, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4667, file: !4668, line: 59, baseType: !319, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4667, file: !4668, line: 60, baseType: !319, size: 64, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4667, file: !4668, line: 61, baseType: !3849, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4667, file: !4668, line: 62, baseType: !7, size: 32, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4667, file: !4668, line: 63, baseType: !4677, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !208, line: 153, baseType: !366)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4667, file: !4668, line: 64, baseType: !1872, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !311, file: !312, line: 1326, baseType: !327, size: 32, offset: 13184)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !311, file: !312, line: 1342, baseType: !209, size: 64, offset: 13248)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !311, file: !312, line: 1343, baseType: !367, size: 64, offset: 13312)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !311, file: !312, line: 1344, baseType: !366, size: 64, offset: 13376)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !311, file: !312, line: 1345, baseType: !367, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !311, file: !312, line: 1346, baseType: !367, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !311, file: !312, line: 1347, baseType: !367, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !311, file: !312, line: 1348, baseType: !931, size: 128, align: 64, offset: 13504)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !311, file: !312, line: 1358, baseType: !4688, size: 34816, offset: 13824)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4689, line: 485, size: 34816, elements: !4690)
!4689 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!4690 = !{!4691, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4720, !4721, !4722, !4723, !4724, !4725, !4728, !4729, !4730}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4688, file: !4689, line: 487, baseType: !4692, size: 192)
!4692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4693, size: 192, elements: !816)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4694, line: 16, size: 64, elements: !4695)
!4694 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4693, file: !4694, line: 17, baseType: !979, size: 16)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4693, file: !4694, line: 18, baseType: !979, size: 16, offset: 16)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4693, file: !4694, line: 19, baseType: !979, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4693, file: !4694, line: 19, baseType: !979, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4693, file: !4694, line: 19, baseType: !979, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4693, file: !4694, line: 19, baseType: !979, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4693, file: !4694, line: 19, baseType: !979, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4693, file: !4694, line: 20, baseType: !979, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4693, file: !4694, line: 20, baseType: !979, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4693, file: !4694, line: 20, baseType: !979, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4693, file: !4694, line: 20, baseType: !979, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4693, file: !4694, line: 20, baseType: !979, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4693, file: !4694, line: 20, baseType: !979, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4688, file: !4689, line: 491, baseType: !319, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4688, file: !4689, line: 495, baseType: !383, size: 16, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4688, file: !4689, line: 496, baseType: !383, size: 16, offset: 272)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4688, file: !4689, line: 497, baseType: !383, size: 16, offset: 288)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4688, file: !4689, line: 498, baseType: !383, size: 16, offset: 304)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4688, file: !4689, line: 502, baseType: !319, size: 64, offset: 320)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4688, file: !4689, line: 503, baseType: !319, size: 64, offset: 384)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4688, file: !4689, line: 514, baseType: !4717, size: 256, offset: 448)
!4717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4718, size: 256, elements: !1244)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4689, line: 483, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4688, file: !4689, line: 516, baseType: !319, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4688, file: !4689, line: 518, baseType: !319, size: 64, offset: 768)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4688, file: !4689, line: 520, baseType: !319, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4688, file: !4689, line: 521, baseType: !319, size: 64, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4688, file: !4689, line: 522, baseType: !319, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4688, file: !4689, line: 528, baseType: !4726, size: 64, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4689, line: 10, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4688, file: !4689, line: 535, baseType: !319, size: 64, offset: 1088)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !4688, file: !4689, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4688, file: !4689, line: 540, baseType: !4731, size: 33280, offset: 1536)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4732, line: 317, size: 33280, elements: !4733)
!4732 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!4733 = !{!4734, !4735, !4736}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4731, file: !4732, line: 330, baseType: !7, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4731, file: !4732, line: 337, baseType: !319, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4731, file: !4732, line: 348, baseType: !4737, size: 32768, offset: 512)
!4737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4732, line: 304, size: 32768, elements: !4738)
!4738 = !{!4739, !4754, !4791, !4841, !4854}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4737, file: !4732, line: 305, baseType: !4740, size: 896)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4732, line: 12, size: 896, elements: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4753}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4740, file: !4732, line: 13, baseType: !321, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4740, file: !4732, line: 14, baseType: !321, size: 32, offset: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4740, file: !4732, line: 15, baseType: !321, size: 32, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4740, file: !4732, line: 16, baseType: !321, size: 32, offset: 96)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4740, file: !4732, line: 17, baseType: !321, size: 32, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4740, file: !4732, line: 18, baseType: !321, size: 32, offset: 160)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4740, file: !4732, line: 19, baseType: !321, size: 32, offset: 192)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4740, file: !4732, line: 22, baseType: !4750, size: 640, offset: 224)
!4750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 640, elements: !4751)
!4751 = !{!4752}
!4752 = !DISubrange(count: 20)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4740, file: !4732, line: 25, baseType: !321, size: 32, offset: 864)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4737, file: !4732, line: 306, baseType: !4755, size: 4096, align: 128)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4732, line: 34, size: 4096, align: 128, elements: !4756)
!4756 = !{!4757, !4758, !4759, !4760, !4761, !4776, !4777, !4778, !4780, !4782, !4786}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4755, file: !4732, line: 35, baseType: !979, size: 16)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4755, file: !4732, line: 36, baseType: !979, size: 16, offset: 16)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4755, file: !4732, line: 37, baseType: !979, size: 16, offset: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4755, file: !4732, line: 38, baseType: !979, size: 16, offset: 48)
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !4755, file: !4732, line: 39, baseType: !4762, size: 128, offset: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4755, file: !4732, line: 39, size: 128, elements: !4763)
!4763 = !{!4764, !4769}
!4764 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4732, line: 40, baseType: !4765, size: 128)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4762, file: !4732, line: 40, size: 128, elements: !4766)
!4766 = !{!4767, !4768}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4765, file: !4732, line: 41, baseType: !366, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4765, file: !4732, line: 42, baseType: !366, size: 64, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4732, line: 44, baseType: !4770, size: 128)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4762, file: !4732, line: 44, size: 128, elements: !4771)
!4771 = !{!4772, !4773, !4774, !4775}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4770, file: !4732, line: 45, baseType: !321, size: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4770, file: !4732, line: 46, baseType: !321, size: 32, offset: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4770, file: !4732, line: 47, baseType: !321, size: 32, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4770, file: !4732, line: 48, baseType: !321, size: 32, offset: 96)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4755, file: !4732, line: 51, baseType: !321, size: 32, offset: 192)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4755, file: !4732, line: 52, baseType: !321, size: 32, offset: 224)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4755, file: !4732, line: 55, baseType: !4779, size: 1024, offset: 256)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !239)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4755, file: !4732, line: 58, baseType: !4781, size: 2048, offset: 1280)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2048, elements: !1781)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4755, file: !4732, line: 60, baseType: !4783, size: 384, offset: 3328)
!4783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 384, elements: !4784)
!4784 = !{!4785}
!4785 = !DISubrange(count: 12)
!4786 = !DIDerivedType(tag: DW_TAG_member, scope: !4755, file: !4732, line: 62, baseType: !4787, size: 384, offset: 3712)
!4787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4755, file: !4732, line: 62, size: 384, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4787, file: !4732, line: 63, baseType: !4783, size: 384)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4787, file: !4732, line: 64, baseType: !4783, size: 384)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4737, file: !4732, line: 307, baseType: !4792, size: 1088)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4732, line: 79, size: 1088, elements: !4793)
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4840}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4792, file: !4732, line: 80, baseType: !321, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4792, file: !4732, line: 81, baseType: !321, size: 32, offset: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4792, file: !4732, line: 82, baseType: !321, size: 32, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4792, file: !4732, line: 83, baseType: !321, size: 32, offset: 96)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4792, file: !4732, line: 84, baseType: !321, size: 32, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4792, file: !4732, line: 85, baseType: !321, size: 32, offset: 160)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4792, file: !4732, line: 86, baseType: !321, size: 32, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4792, file: !4732, line: 88, baseType: !4750, size: 640, offset: 224)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4792, file: !4732, line: 89, baseType: !478, size: 8, offset: 864)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4792, file: !4732, line: 90, baseType: !478, size: 8, offset: 872)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4792, file: !4732, line: 91, baseType: !478, size: 8, offset: 880)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4792, file: !4732, line: 92, baseType: !478, size: 8, offset: 888)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4792, file: !4732, line: 93, baseType: !478, size: 8, offset: 896)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4792, file: !4732, line: 94, baseType: !478, size: 8, offset: 904)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4792, file: !4732, line: 95, baseType: !4809, size: 64, offset: 960)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4811, line: 11, size: 128, elements: !4812)
!4811 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!4812 = !{!4813, !4814}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4810, file: !4811, line: 12, baseType: !218, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4810, file: !4811, line: 13, baseType: !4815, size: 64, offset: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4817, line: 56, size: 1344, elements: !4818)
!4817 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!4818 = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4816, file: !4817, line: 61, baseType: !319, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4816, file: !4817, line: 62, baseType: !319, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4816, file: !4817, line: 63, baseType: !319, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4816, file: !4817, line: 64, baseType: !319, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4816, file: !4817, line: 65, baseType: !319, size: 64, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4816, file: !4817, line: 66, baseType: !319, size: 64, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4816, file: !4817, line: 68, baseType: !319, size: 64, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4816, file: !4817, line: 69, baseType: !319, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4816, file: !4817, line: 70, baseType: !319, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4816, file: !4817, line: 71, baseType: !319, size: 64, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4816, file: !4817, line: 72, baseType: !319, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4816, file: !4817, line: 73, baseType: !319, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4816, file: !4817, line: 74, baseType: !319, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4816, file: !4817, line: 75, baseType: !319, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4816, file: !4817, line: 76, baseType: !319, size: 64, offset: 896)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4816, file: !4817, line: 81, baseType: !319, size: 64, offset: 960)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4816, file: !4817, line: 83, baseType: !319, size: 64, offset: 1024)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4816, file: !4817, line: 84, baseType: !319, size: 64, offset: 1088)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4816, file: !4817, line: 85, baseType: !319, size: 64, offset: 1152)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4816, file: !4817, line: 86, baseType: !319, size: 64, offset: 1216)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4816, file: !4817, line: 87, baseType: !319, size: 64, offset: 1280)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4792, file: !4732, line: 96, baseType: !321, size: 32, offset: 1024)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4737, file: !4732, line: 308, baseType: !4842, size: 4608, align: 512)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4732, line: 289, size: 4608, align: 512, elements: !4843)
!4843 = !{!4844, !4845, !4852}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4842, file: !4732, line: 290, baseType: !4755, size: 4096, align: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4842, file: !4732, line: 291, baseType: !4846, size: 512, offset: 4096)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4732, line: 268, size: 512, elements: !4847)
!4847 = !{!4848, !4849, !4850}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4846, file: !4732, line: 269, baseType: !366, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4846, file: !4732, line: 270, baseType: !366, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4846, file: !4732, line: 271, baseType: !4851, size: 384, offset: 128)
!4851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !1353)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4842, file: !4732, line: 292, baseType: !4853, offset: 4608)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !1451)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4737, file: !4732, line: 309, baseType: !4855, size: 32768)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 32768, elements: !4856)
!4856 = !{!4857}
!4857 = !DISubrange(count: 4096)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "eh_action", scope: !262, file: !128, line: 545, baseType: !4289, size: 64, offset: 832)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "host_wait", scope: !262, file: !128, line: 547, baseType: !1082, size: 128, offset: 896)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "hostt", scope: !262, file: !128, line: 548, baseType: !4861, size: 64, offset: 1024)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "transportt", scope: !262, file: !128, line: 549, baseType: !4863, size: 64, offset: 1088)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_transport_template", file: !128, line: 23, flags: DIFlagFwdDecl)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !262, file: !128, line: 552, baseType: !3123, size: 2304, offset: 1152)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "host_blocked", scope: !262, file: !128, line: 554, baseType: !332, size: 32, offset: 3456)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "host_failed", scope: !262, file: !128, line: 556, baseType: !7, size: 32, offset: 3488)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "host_eh_scheduled", scope: !262, file: !128, line: 558, baseType: !7, size: 32, offset: 3520)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "host_no", scope: !262, file: !128, line: 560, baseType: !7, size: 32, offset: 3552)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "eh_deadline", scope: !262, file: !128, line: 563, baseType: !214, size: 32, offset: 3584)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "last_reset", scope: !262, file: !128, line: 564, baseType: !319, size: 64, offset: 3648)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "max_channel", scope: !262, file: !128, line: 573, baseType: !7, size: 32, offset: 3712)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "max_id", scope: !262, file: !128, line: 574, baseType: !7, size: 32, offset: 3744)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !262, file: !128, line: 575, baseType: !366, size: 64, offset: 3776)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !262, file: !128, line: 584, baseType: !7, size: 32, offset: 3840)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmd_len", scope: !262, file: !128, line: 593, baseType: !383, size: 16, offset: 3872)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !262, file: !128, line: 595, baseType: !214, size: 32, offset: 3904)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !262, file: !128, line: 596, baseType: !214, size: 32, offset: 3936)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !262, file: !128, line: 597, baseType: !1335, size: 16, offset: 3968)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !262, file: !128, line: 598, baseType: !383, size: 16, offset: 3984)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !262, file: !128, line: 599, baseType: !383, size: 16, offset: 4000)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !262, file: !128, line: 600, baseType: !7, size: 32, offset: 4032)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !262, file: !128, line: 601, baseType: !7, size: 32, offset: 4064)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !262, file: !128, line: 602, baseType: !319, size: 64, offset: 4096)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !262, file: !128, line: 603, baseType: !319, size: 64, offset: 4160)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !262, file: !128, line: 612, baseType: !7, size: 32, offset: 4224)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "active_mode", scope: !262, file: !128, line: 613, baseType: !7, size: 2, offset: 4256, flags: DIFlagBitField, extraData: i64 4256)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "unchecked_isa_dma", scope: !262, file: !128, line: 614, baseType: !7, size: 1, offset: 4258, flags: DIFlagBitField, extraData: i64 4256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "host_self_blocked", scope: !262, file: !128, line: 620, baseType: !7, size: 1, offset: 4259, flags: DIFlagBitField, extraData: i64 4256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_ordering", scope: !262, file: !128, line: 627, baseType: !7, size: 1, offset: 4260, flags: DIFlagBitField, extraData: i64 4256)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_in_progress", scope: !262, file: !128, line: 630, baseType: !7, size: 1, offset: 4261, flags: DIFlagBitField, extraData: i64 4256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "async_scan", scope: !262, file: !128, line: 633, baseType: !7, size: 1, offset: 4262, flags: DIFlagBitField, extraData: i64 4256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "eh_noresume", scope: !262, file: !128, line: 636, baseType: !7, size: 1, offset: 4263, flags: DIFlagBitField, extraData: i64 4256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !262, file: !128, line: 639, baseType: !7, size: 1, offset: 4264, flags: DIFlagBitField, extraData: i64 4256)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !262, file: !128, line: 642, baseType: !7, size: 1, offset: 4265, flags: DIFlagBitField, extraData: i64 4256)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "short_inquiry", scope: !262, file: !128, line: 645, baseType: !7, size: 1, offset: 4266, flags: DIFlagBitField, extraData: i64 4256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "no_scsi2_lun_in_cdb", scope: !262, file: !128, line: 648, baseType: !7, size: 1, offset: 4267, flags: DIFlagBitField, extraData: i64 4256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "work_q_name", scope: !262, file: !128, line: 653, baseType: !4899, size: 160, offset: 4272)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 160, elements: !4751)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "work_q", scope: !262, file: !128, line: 654, baseType: !2526, size: 64, offset: 4480)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_work_q", scope: !262, file: !128, line: 659, baseType: !2526, size: 64, offset: 4544)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !262, file: !128, line: 664, baseType: !7, size: 32, offset: 4608)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "prot_capabilities", scope: !262, file: !128, line: 667, baseType: !7, size: 32, offset: 4640)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "prot_guard_type", scope: !262, file: !128, line: 668, baseType: !480, size: 8, offset: 4672)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !262, file: !128, line: 671, baseType: !319, size: 64, offset: 4736)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "io_port", scope: !262, file: !128, line: 672, baseType: !319, size: 64, offset: 4800)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "n_io_port", scope: !262, file: !128, line: 673, baseType: !480, size: 8, offset: 4864)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel", scope: !262, file: !128, line: 674, baseType: !480, size: 8, offset: 4872)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !262, file: !128, line: 675, baseType: !7, size: 32, offset: 4896)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "shost_state", scope: !262, file: !128, line: 678, baseType: !127, size: 32, offset: 4928)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "shost_gendev", scope: !262, file: !128, line: 681, baseType: !1737, size: 5568, offset: 4992)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "shost_dev", scope: !262, file: !128, line: 681, baseType: !1737, size: 5568, offset: 10560)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "shost_data", scope: !262, file: !128, line: 687, baseType: !209, size: 64, offset: 16128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !262, file: !128, line: 693, baseType: !2038, size: 64, offset: 16192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !262, file: !128, line: 700, baseType: !4192, align: 64, offset: 16256)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !252, file: !128, line: 50, baseType: !4917, size: 64, offset: 192)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!214, !4920, !7, !209}
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device", file: !138, line: 101, size: 15232, align: 64, elements: !4922)
!4922 = !{!4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4952, !4953, !4954, !4955, !4963, !4964, !4965, !4966, !4967, !4991, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5057, !5058, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4921, file: !138, line: 102, baseType: !261, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "request_queue", scope: !4921, file: !138, line: 103, baseType: !2734, size: 64, offset: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !4921, file: !138, line: 106, baseType: !265, size: 128, offset: 128)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "same_target_siblings", scope: !4921, file: !138, line: 107, baseType: !265, size: 128, offset: 256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "device_busy", scope: !4921, file: !138, line: 109, baseType: !332, size: 32, offset: 384)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "device_blocked", scope: !4921, file: !138, line: 110, baseType: !332, size: 32, offset: 416)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "restarts", scope: !4921, file: !138, line: 112, baseType: !332, size: 32, offset: 448)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4921, file: !138, line: 113, baseType: !273, offset: 480)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "starved_entry", scope: !4921, file: !138, line: 114, baseType: !265, size: 128, offset: 512)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4921, file: !138, line: 115, baseType: !383, size: 16, offset: 640)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue_depth", scope: !4921, file: !138, line: 116, baseType: !383, size: 16, offset: 656)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_depth", scope: !4921, file: !138, line: 117, baseType: !383, size: 16, offset: 672)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_count", scope: !4921, file: !138, line: 118, baseType: !383, size: 16, offset: 688)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_time", scope: !4921, file: !138, line: 119, baseType: !319, size: 64, offset: 704)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ramp_up_period", scope: !4921, file: !138, line: 120, baseType: !319, size: 64, offset: 768)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_ramp_up", scope: !4921, file: !138, line: 123, baseType: !319, size: 64, offset: 832)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4921, file: !138, line: 125, baseType: !7, size: 32, offset: 896)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4921, file: !138, line: 125, baseType: !7, size: 32, offset: 928)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !4921, file: !138, line: 126, baseType: !366, size: 64, offset: 960)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4921, file: !138, line: 127, baseType: !7, size: 32, offset: 1024)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !4921, file: !138, line: 129, baseType: !7, size: 32, offset: 1056)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !4921, file: !138, line: 131, baseType: !209, size: 64, offset: 1088)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4921, file: !138, line: 132, baseType: !480, size: 8, offset: 1152)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !4921, file: !138, line: 133, baseType: !217, size: 8, offset: 1160)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "inq_periph_qual", scope: !4921, file: !138, line: 134, baseType: !217, size: 8, offset: 1168)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_mutex", scope: !4921, file: !138, line: 135, baseType: !291, size: 192, offset: 1216)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_len", scope: !4921, file: !138, line: 136, baseType: !480, size: 8, offset: 1408)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry", scope: !4921, file: !138, line: 137, baseType: !4951, size: 64, offset: 1472)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4921, file: !138, line: 138, baseType: !256, size: 64, offset: 1536)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4921, file: !138, line: 139, baseType: !256, size: 64, offset: 1600)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4921, file: !138, line: 140, baseType: !256, size: 64, offset: 1664)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg0", scope: !4921, file: !138, line: 143, baseType: !4956, size: 64, offset: 1728)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_vpd", file: !138, line: 95, size: 192, elements: !4958)
!4958 = !{!4959, !4960, !4961}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4957, file: !138, line: 96, baseType: !931, size: 128, align: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4957, file: !138, line: 97, baseType: !214, size: 32, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4957, file: !138, line: 98, baseType: !4962, offset: 160)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, elements: !2549)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg83", scope: !4921, file: !138, line: 144, baseType: !4956, size: 64, offset: 1792)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg80", scope: !4921, file: !138, line: 145, baseType: !4956, size: 64, offset: 1856)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg89", scope: !4921, file: !138, line: 146, baseType: !4956, size: 64, offset: 1920)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "current_tag", scope: !4921, file: !138, line: 147, baseType: !480, size: 8, offset: 1984)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_target", scope: !4921, file: !138, line: 148, baseType: !4968, size: 64, offset: 2048)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_target", file: !138, line: 289, size: 6272, align: 64, elements: !4970)
!4970 = !{!4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "starget_sdev_user", scope: !4969, file: !138, line: 290, baseType: !4920, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !4969, file: !138, line: 291, baseType: !265, size: 128, offset: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4969, file: !138, line: 292, baseType: !265, size: 128, offset: 192)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4969, file: !138, line: 293, baseType: !1737, size: 5568, offset: 320)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "reap_ref", scope: !4969, file: !138, line: 294, baseType: !2028, size: 32, offset: 5888)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4969, file: !138, line: 295, baseType: !7, size: 32, offset: 5920)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4969, file: !138, line: 296, baseType: !7, size: 32, offset: 5952)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4969, file: !138, line: 298, baseType: !7, size: 1, offset: 5984, flags: DIFlagBitField, extraData: i64 5984)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "single_lun", scope: !4969, file: !138, line: 299, baseType: !7, size: 1, offset: 5985, flags: DIFlagBitField, extraData: i64 5984)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "pdt_1f_for_no_lun", scope: !4969, file: !138, line: 302, baseType: !7, size: 1, offset: 5986, flags: DIFlagBitField, extraData: i64 5984)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_luns", scope: !4969, file: !138, line: 304, baseType: !7, size: 1, offset: 5987, flags: DIFlagBitField, extraData: i64 5984)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_lun_change", scope: !4969, file: !138, line: 306, baseType: !7, size: 1, offset: 5988, flags: DIFlagBitField, extraData: i64 5984)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "target_busy", scope: !4969, file: !138, line: 310, baseType: !332, size: 32, offset: 6016)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "target_blocked", scope: !4969, file: !138, line: 311, baseType: !332, size: 32, offset: 6048)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !4969, file: !138, line: 317, baseType: !7, size: 32, offset: 6080)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "max_target_blocked", scope: !4969, file: !138, line: 318, baseType: !7, size: 32, offset: 6112)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !4969, file: !138, line: 321, baseType: !217, size: 8, offset: 6144)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4969, file: !138, line: 322, baseType: !137, size: 32, offset: 6176)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !4969, file: !138, line: 323, baseType: !209, size: 64, offset: 6208)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "starget_data", scope: !4969, file: !138, line: 324, baseType: !4192, offset: 6272)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_bflags", scope: !4921, file: !138, line: 150, baseType: !4992, size: 64, offset: 2112)
!4992 = !DIDerivedType(tag: DW_TAG_typedef, name: "blist_flags_t", file: !138, line: 18, baseType: !367)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timeout", scope: !4921, file: !138, line: 154, baseType: !7, size: 32, offset: 2176)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4921, file: !138, line: 155, baseType: !7, size: 1, offset: 2208, flags: DIFlagBitField, extraData: i64 2208)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4921, file: !138, line: 156, baseType: !7, size: 1, offset: 2209, flags: DIFlagBitField, extraData: i64 2208)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !4921, file: !138, line: 157, baseType: !7, size: 1, offset: 2210, flags: DIFlagBitField, extraData: i64 2208)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "lockable", scope: !4921, file: !138, line: 158, baseType: !7, size: 1, offset: 2211, flags: DIFlagBitField, extraData: i64 2208)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4921, file: !138, line: 159, baseType: !7, size: 1, offset: 2212, flags: DIFlagBitField, extraData: i64 2208)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "borken", scope: !4921, file: !138, line: 160, baseType: !7, size: 1, offset: 2213, flags: DIFlagBitField, extraData: i64 2208)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4921, file: !138, line: 162, baseType: !7, size: 1, offset: 2214, flags: DIFlagBitField, extraData: i64 2208)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !4921, file: !138, line: 163, baseType: !7, size: 1, offset: 2215, flags: DIFlagBitField, extraData: i64 2208)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "sdtr", scope: !4921, file: !138, line: 164, baseType: !7, size: 1, offset: 2216, flags: DIFlagBitField, extraData: i64 2208)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "wdtr", scope: !4921, file: !138, line: 165, baseType: !7, size: 1, offset: 2217, flags: DIFlagBitField, extraData: i64 2208)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ppr", scope: !4921, file: !138, line: 166, baseType: !7, size: 1, offset: 2218, flags: DIFlagBitField, extraData: i64 2208)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_supported", scope: !4921, file: !138, line: 167, baseType: !7, size: 1, offset: 2219, flags: DIFlagBitField, extraData: i64 2208)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "simple_tags", scope: !4921, file: !138, line: 168, baseType: !7, size: 1, offset: 2220, flags: DIFlagBitField, extraData: i64 2208)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "was_reset", scope: !4921, file: !138, line: 169, baseType: !7, size: 1, offset: 2221, flags: DIFlagBitField, extraData: i64 2208)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_cc_ua", scope: !4921, file: !138, line: 171, baseType: !7, size: 1, offset: 2222, flags: DIFlagBitField, extraData: i64 2208)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_rw", scope: !4921, file: !138, line: 173, baseType: !7, size: 1, offset: 2223, flags: DIFlagBitField, extraData: i64 2208)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_ms", scope: !4921, file: !138, line: 174, baseType: !7, size: 1, offset: 2224, flags: DIFlagBitField, extraData: i64 2208)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "set_dbd_for_ms", scope: !4921, file: !138, line: 175, baseType: !7, size: 1, offset: 2225, flags: DIFlagBitField, extraData: i64 2208)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_opcodes", scope: !4921, file: !138, line: 176, baseType: !7, size: 1, offset: 2226, flags: DIFlagBitField, extraData: i64 2208)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !4921, file: !138, line: 177, baseType: !7, size: 1, offset: 2227, flags: DIFlagBitField, extraData: i64 2208)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_rw", scope: !4921, file: !138, line: 178, baseType: !7, size: 1, offset: 2228, flags: DIFlagBitField, extraData: i64 2208)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_8", scope: !4921, file: !138, line: 179, baseType: !7, size: 1, offset: 2229, flags: DIFlagBitField, extraData: i64 2208)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_3f", scope: !4921, file: !138, line: 180, baseType: !7, size: 1, offset: 2230, flags: DIFlagBitField, extraData: i64 2208)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vpd_pages", scope: !4921, file: !138, line: 181, baseType: !7, size: 1, offset: 2231, flags: DIFlagBitField, extraData: i64 2208)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "try_vpd_pages", scope: !4921, file: !138, line: 182, baseType: !7, size: 1, offset: 2232, flags: DIFlagBitField, extraData: i64 2208)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "use_192_bytes_for_3f", scope: !4921, file: !138, line: 183, baseType: !7, size: 1, offset: 2233, flags: DIFlagBitField, extraData: i64 2208)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "no_start_on_add", scope: !4921, file: !138, line: 184, baseType: !7, size: 1, offset: 2234, flags: DIFlagBitField, extraData: i64 2208)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "allow_restart", scope: !4921, file: !138, line: 185, baseType: !7, size: 1, offset: 2235, flags: DIFlagBitField, extraData: i64 2208)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "manage_start_stop", scope: !4921, file: !138, line: 186, baseType: !7, size: 1, offset: 2236, flags: DIFlagBitField, extraData: i64 2208)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "start_stop_pwr_cond", scope: !4921, file: !138, line: 187, baseType: !7, size: 1, offset: 2237, flags: DIFlagBitField, extraData: i64 2208)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "no_uld_attach", scope: !4921, file: !138, line: 188, baseType: !7, size: 1, offset: 2238, flags: DIFlagBitField, extraData: i64 2208)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "select_no_atn", scope: !4921, file: !138, line: 189, baseType: !7, size: 1, offset: 2239, flags: DIFlagBitField, extraData: i64 2208)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "fix_capacity", scope: !4921, file: !138, line: 190, baseType: !7, size: 1, offset: 2240, flags: DIFlagBitField, extraData: i64 2208)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "guess_capacity", scope: !4921, file: !138, line: 191, baseType: !7, size: 1, offset: 2241, flags: DIFlagBitField, extraData: i64 2208)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "retry_hwerror", scope: !4921, file: !138, line: 192, baseType: !7, size: 1, offset: 2242, flags: DIFlagBitField, extraData: i64 2208)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_bug", scope: !4921, file: !138, line: 193, baseType: !7, size: 1, offset: 2243, flags: DIFlagBitField, extraData: i64 2208)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_disc_info", scope: !4921, file: !138, line: 195, baseType: !7, size: 1, offset: 2244, flags: DIFlagBitField, extraData: i64 2208)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_capacity_16", scope: !4921, file: !138, line: 196, baseType: !7, size: 1, offset: 2245, flags: DIFlagBitField, extraData: i64 2208)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "try_rc_10_first", scope: !4921, file: !138, line: 197, baseType: !7, size: 1, offset: 2246, flags: DIFlagBitField, extraData: i64 2208)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "security_supported", scope: !4921, file: !138, line: 198, baseType: !7, size: 1, offset: 2247, flags: DIFlagBitField, extraData: i64 2208)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !4921, file: !138, line: 199, baseType: !7, size: 1, offset: 2248, flags: DIFlagBitField, extraData: i64 2208)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "wce_default_on", scope: !4921, file: !138, line: 200, baseType: !7, size: 1, offset: 2249, flags: DIFlagBitField, extraData: i64 2208)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "no_dif", scope: !4921, file: !138, line: 201, baseType: !7, size: 1, offset: 2250, flags: DIFlagBitField, extraData: i64 2208)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "broken_fua", scope: !4921, file: !138, line: 202, baseType: !7, size: 1, offset: 2251, flags: DIFlagBitField, extraData: i64 2208)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "lun_in_cdb", scope: !4921, file: !138, line: 203, baseType: !7, size: 1, offset: 2252, flags: DIFlagBitField, extraData: i64 2208)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_limit_for_ws", scope: !4921, file: !138, line: 204, baseType: !7, size: 1, offset: 2253, flags: DIFlagBitField, extraData: i64 2208)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend", scope: !4921, file: !138, line: 205, baseType: !7, size: 1, offset: 2254, flags: DIFlagBitField, extraData: i64 2208)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "offline_already", scope: !4921, file: !138, line: 208, baseType: !751, size: 8, offset: 2256)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "disk_events_disable_depth", scope: !4921, file: !138, line: 210, baseType: !332, size: 32, offset: 2272)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !4921, file: !138, line: 212, baseType: !497, size: 64, offset: 2304)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !4921, file: !138, line: 213, baseType: !497, size: 64, offset: 2368)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4921, file: !138, line: 214, baseType: !265, size: 128, offset: 2432)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "event_work", scope: !4921, file: !138, line: 215, baseType: !2273, size: 256, offset: 2560)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "max_device_blocked", scope: !4921, file: !138, line: 217, baseType: !7, size: 32, offset: 2816)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "iorequest_cnt", scope: !4921, file: !138, line: 220, baseType: !332, size: 32, offset: 2848)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "iodone_cnt", scope: !4921, file: !138, line: 221, baseType: !332, size: 32, offset: 2880)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "ioerr_cnt", scope: !4921, file: !138, line: 222, baseType: !332, size: 32, offset: 2912)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_gendev", scope: !4921, file: !138, line: 224, baseType: !1737, size: 5568, offset: 2944)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_dev", scope: !4921, file: !138, line: 225, baseType: !1737, size: 5568, offset: 8512)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "ew", scope: !4921, file: !138, line: 227, baseType: !5054, size: 256, offset: 14080)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "execute_work", file: !2274, line: 168, size: 256, elements: !5055)
!5055 = !{!5056}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5054, file: !2274, line: 169, baseType: !2273, size: 256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !4921, file: !138, line: 228, baseType: !2273, size: 256, offset: 14336)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4921, file: !138, line: 230, baseType: !5059, size: 64, offset: 14592)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device_handler", file: !138, line: 230, flags: DIFlagFwdDecl)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4921, file: !138, line: 231, baseType: !209, size: 64, offset: 14656)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_len", scope: !4921, file: !138, line: 233, baseType: !884, size: 64, offset: 14720)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_buf", scope: !4921, file: !138, line: 234, baseType: !209, size: 64, offset: 14784)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "access_state", scope: !4921, file: !138, line: 236, baseType: !480, size: 8, offset: 14848)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "state_mutex", scope: !4921, file: !138, line: 237, baseType: !291, size: 192, offset: 14912)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_state", scope: !4921, file: !138, line: 238, baseType: !145, size: 32, offset: 15104)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "quiesced_by", scope: !4921, file: !138, line: 239, baseType: !310, size: 64, offset: 15168)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_data", scope: !4921, file: !138, line: 240, baseType: !4192, offset: 15232)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_priv", scope: !252, file: !128, line: 65, baseType: !5070, size: 64, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!214, !261, !5073}
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cmnd", file: !5075, line: 68, size: 3136, elements: !5076)
!5075 = !DIFile(filename: "./include/scsi/scsi_cmnd.h", directory: "/home/lizy2001/genbc/linux")
!5076 = !{!5077, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5123, !5125, !5126, !5127, !5128, !5129, !5133, !5147, !5148, !5149, !5150, !5151, !5152}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !5074, file: !5075, line: 69, baseType: !5078, size: 448)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_request", file: !5079, line: 9, size: 448, elements: !5080)
!5079 = !DIFile(filename: "./include/scsi/scsi_request.h", directory: "/home/lizy2001/genbc/linux")
!5080 = !{!5081, !5083, !5084, !5085, !5086, !5087, !5088, !5089}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "__cmd", scope: !5078, file: !5079, line: 10, baseType: !5082, size: 128)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 128, elements: !3306)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5078, file: !5079, line: 11, baseType: !4951, size: 64, offset: 128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !5078, file: !5079, line: 12, baseType: !383, size: 16, offset: 192)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5078, file: !5079, line: 13, baseType: !214, size: 32, offset: 224)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "sense_len", scope: !5078, file: !5079, line: 14, baseType: !7, size: 32, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "resid_len", scope: !5078, file: !5079, line: 15, baseType: !7, size: 32, offset: 288)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5078, file: !5079, line: 16, baseType: !214, size: 32, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !5078, file: !5079, line: 17, baseType: !209, size: 64, offset: 384)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5074, file: !5075, line: 70, baseType: !4920, size: 64, offset: 448)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "eh_entry", scope: !5074, file: !5075, line: 71, baseType: !265, size: 128, offset: 512)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "abort_work", scope: !5074, file: !5075, line: 72, baseType: !2757, size: 704, offset: 640)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5074, file: !5075, line: 74, baseType: !931, size: 128, align: 64, offset: 1344)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "eh_eflags", scope: !5074, file: !5075, line: 76, baseType: !214, size: 32, offset: 1472)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "jiffies_at_alloc", scope: !5074, file: !5075, line: 83, baseType: !319, size: 64, offset: 1536)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5074, file: !5075, line: 85, baseType: !214, size: 32, offset: 1600)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !5074, file: !5075, line: 86, baseType: !214, size: 32, offset: 1632)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "prot_op", scope: !5074, file: !5075, line: 88, baseType: !480, size: 8, offset: 1664)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "prot_type", scope: !5074, file: !5075, line: 89, baseType: !480, size: 8, offset: 1672)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "prot_flags", scope: !5074, file: !5075, line: 90, baseType: !480, size: 8, offset: 1680)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !5074, file: !5075, line: 92, baseType: !383, size: 16, offset: 1696)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "sc_data_direction", scope: !5074, file: !5075, line: 93, baseType: !156, size: 32, offset: 1728)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !5074, file: !5075, line: 96, baseType: !4951, size: 64, offset: 1792)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "sdb", scope: !5074, file: !5075, line: 100, baseType: !5105, size: 192, offset: 1856)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_data_buffer", file: !5075, line: 35, size: 192, elements: !5106)
!5106 = !{!5107, !5122}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5105, file: !5075, line: 36, baseType: !5108, size: 128)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5109, line: 42, size: 128, elements: !5110)
!5109 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!5110 = !{!5111, !5120, !5121}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5108, file: !5109, line: 43, baseType: !5112, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5109, line: 11, size: 256, elements: !5114)
!5114 = !{!5115, !5116, !5117, !5118, !5119}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5113, file: !5109, line: 12, baseType: !319, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5113, file: !5109, line: 13, baseType: !7, size: 32, offset: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5113, file: !5109, line: 14, baseType: !7, size: 32, offset: 96)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5113, file: !5109, line: 15, baseType: !3918, size: 64, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5113, file: !5109, line: 17, baseType: !7, size: 32, offset: 192)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5108, file: !5109, line: 44, baseType: !7, size: 32, offset: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5108, file: !5109, line: 45, baseType: !7, size: 32, offset: 96)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5105, file: !5075, line: 37, baseType: !7, size: 32, offset: 128)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "prot_sdb", scope: !5074, file: !5075, line: 101, baseType: !5124, size: 64, offset: 2048)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "underflow", scope: !5074, file: !5075, line: 103, baseType: !7, size: 32, offset: 2112)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "transfersize", scope: !5074, file: !5075, line: 106, baseType: !7, size: 32, offset: 2144)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5074, file: !5075, line: 112, baseType: !2738, size: 64, offset: 2176)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "sense_buffer", scope: !5074, file: !5075, line: 115, baseType: !4951, size: 64, offset: 2240)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_done", scope: !5074, file: !5075, line: 123, baseType: !5130, size: 64, offset: 2304)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{null, !5073}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "SCp", scope: !5074, file: !5075, line: 129, baseType: !5134, size: 512, offset: 2368)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_pointer", file: !5075, line: 41, size: 512, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139, !5140, !5141, !5143, !5144, !5145, !5146}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5134, file: !5075, line: 42, baseType: !216, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "this_residual", scope: !5134, file: !5075, line: 43, baseType: !214, size: 32, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5134, file: !5075, line: 44, baseType: !5112, size: 64, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "buffers_residual", scope: !5134, file: !5075, line: 45, baseType: !214, size: 32, offset: 192)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_handle", scope: !5134, file: !5075, line: 47, baseType: !3918, size: 64, offset: 256)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !5134, file: !5075, line: 49, baseType: !5142, size: 32, offset: 320)
!5142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "Message", scope: !5134, file: !5075, line: 50, baseType: !5142, size: 32, offset: 352)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "have_data_in", scope: !5134, file: !5075, line: 51, baseType: !5142, size: 32, offset: 384)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "sent_command", scope: !5134, file: !5075, line: 52, baseType: !5142, size: 32, offset: 416)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5134, file: !5075, line: 53, baseType: !5142, size: 32, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "host_scribble", scope: !5074, file: !5075, line: 131, baseType: !4951, size: 64, offset: 2880)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5074, file: !5075, line: 139, baseType: !214, size: 32, offset: 2944)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5074, file: !5075, line: 140, baseType: !214, size: 32, offset: 2976)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5074, file: !5075, line: 141, baseType: !319, size: 64, offset: 3008)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5074, file: !5075, line: 143, baseType: !480, size: 8, offset: 3072)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !5074, file: !5075, line: 144, baseType: !7, size: 32, offset: 3104)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "exit_cmd_priv", scope: !252, file: !128, line: 66, baseType: !5070, size: 64, offset: 320)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand", scope: !252, file: !128, line: 102, baseType: !5070, size: 64, offset: 384)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !252, file: !128, line: 112, baseType: !5156, size: 64, offset: 448)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{null, !261, !979}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_handler", scope: !252, file: !128, line: 132, baseType: !5160, size: 64, offset: 512)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!214, !5073}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "eh_device_reset_handler", scope: !252, file: !128, line: 133, baseType: !5160, size: 64, offset: 576)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "eh_target_reset_handler", scope: !252, file: !128, line: 134, baseType: !5160, size: 64, offset: 640)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "eh_bus_reset_handler", scope: !252, file: !128, line: 135, baseType: !5160, size: 64, offset: 704)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "eh_host_reset_handler", scope: !252, file: !128, line: 136, baseType: !5160, size: 64, offset: 768)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "slave_alloc", scope: !252, file: !128, line: 164, baseType: !5168, size: 64, offset: 832)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!214, !4920}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "slave_configure", scope: !252, file: !128, line: 195, baseType: !5168, size: 64, offset: 896)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "slave_destroy", scope: !252, file: !128, line: 206, baseType: !5173, size: 64, offset: 960)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{null, !4920}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "target_alloc", scope: !252, file: !128, line: 220, baseType: !5177, size: 64, offset: 1024)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!214, !4968}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "target_destroy", scope: !252, file: !128, line: 230, baseType: !5181, size: 64, offset: 1088)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{null, !4968}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "scan_finished", scope: !252, file: !128, line: 241, baseType: !5185, size: 64, offset: 1152)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!214, !261, !319}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "scan_start", scope: !252, file: !128, line: 250, baseType: !5189, size: 64, offset: 1216)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{null, !261}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "change_queue_depth", scope: !252, file: !128, line: 263, baseType: !5193, size: 64, offset: 1280)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!214, !4920, !214}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !252, file: !128, line: 271, baseType: !5197, size: 64, offset: 1344)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!214, !261}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_need_drain", scope: !252, file: !128, line: 278, baseType: !5201, size: 64, offset: 1408)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!751, !2738}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "bios_param", scope: !252, file: !128, line: 288, baseType: !5205, size: 64, offset: 1472)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!214, !4920, !1687, !1709, !872}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !252, file: !128, line: 297, baseType: !5173, size: 64, offset: 1536)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "show_info", scope: !252, file: !128, line: 306, baseType: !5210, size: 64, offset: 1600)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!214, !878, !261}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !252, file: !128, line: 307, baseType: !5214, size: 64, offset: 1664)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!214, !261, !216, !214}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timed_out", scope: !252, file: !128, line: 316, baseType: !5218, size: 64, offset: 1728)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!80, !5073}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "host_reset", scope: !252, file: !128, line: 326, baseType: !5222, size: 64, offset: 1792)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!214, !261, !214}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "proc_name", scope: !252, file: !128, line: 334, baseType: !256, size: 64, offset: 1856)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir", scope: !252, file: !128, line: 340, baseType: !5227, size: 64, offset: 1920)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5229, line: 123, flags: DIFlagFwdDecl)
!5229 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !252, file: !128, line: 347, baseType: !214, size: 32, offset: 1984)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !252, file: !128, line: 356, baseType: !214, size: 32, offset: 2016)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !252, file: !128, line: 362, baseType: !383, size: 16, offset: 2048)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !252, file: !128, line: 363, baseType: !383, size: 16, offset: 2064)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !252, file: !128, line: 368, baseType: !7, size: 32, offset: 2080)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !252, file: !128, line: 373, baseType: !7, size: 32, offset: 2112)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !252, file: !128, line: 379, baseType: !319, size: 64, offset: 2176)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !252, file: !128, line: 381, baseType: !319, size: 64, offset: 2240)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !252, file: !128, line: 400, baseType: !1335, size: 16, offset: 2304)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !252, file: !128, line: 406, baseType: !480, size: 8, offset: 2320)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "tag_alloc_policy", scope: !252, file: !128, line: 409, baseType: !214, size: 32, offset: 2336)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "track_queue_depth", scope: !252, file: !128, line: 414, baseType: !7, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "supported_mode", scope: !252, file: !128, line: 419, baseType: !7, size: 2, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "unchecked_isa_dma", scope: !252, file: !128, line: 424, baseType: !7, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "emulated", scope: !252, file: !128, line: 429, baseType: !7, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "skip_settle_delay", scope: !252, file: !128, line: 434, baseType: !7, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !252, file: !128, line: 437, baseType: !7, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !252, file: !128, line: 440, baseType: !7, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !252, file: !128, line: 445, baseType: !7, size: 32, offset: 2400)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "shost_attrs", scope: !252, file: !128, line: 459, baseType: !5250, size: 64, offset: 2432)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !47, line: 99, size: 256, elements: !5253)
!5253 = !{!5254, !5255, !5259}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5252, file: !47, line: 100, baseType: !1808, size: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5252, file: !47, line: 101, baseType: !5256, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!956, !2038, !5251, !216}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5252, file: !47, line: 103, baseType: !5260, size: 64, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!956, !2038, !5251, !256, !884}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_attrs", scope: !252, file: !128, line: 464, baseType: !5250, size: 64, offset: 2496)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_groups", scope: !252, file: !128, line: 470, baseType: !1819, size: 64, offset: 2560)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !252, file: !128, line: 479, baseType: !366, size: 64, offset: 2624)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !252, file: !128, line: 484, baseType: !7, size: 32, offset: 2688)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pool", scope: !252, file: !128, line: 485, baseType: !5268, size: 64, offset: 2752)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_cmd_pool", file: !128, line: 19, flags: DIFlagFwdDecl)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend_delay", scope: !252, file: !128, line: 488, baseType: !214, size: 32, offset: 2816)
!5271 = !DIGlobalVariableExpression(var: !5272, expr: !DIExpression())
!5272 = distinct !DIGlobalVariable(name: "karma_driver", scope: !2, file: !3, line: 219, type: !5273, isLocal: true, isDefinition: true)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !164, line: 1184, size: 2112, elements: !5274)
!5274 = !{!5275, !5276, !5387, !5391, !5395, !5399, !5403, !5404, !5405, !5406, !5407, !5408, !5413, !5418, !5419, !5420, !5421}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5273, file: !164, line: 1185, baseType: !256, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5273, file: !164, line: 1187, baseType: !5277, size: 64, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!214, !5280, !5370}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !164, line: 232, size: 6272, elements: !5282)
!5282 = !{!5283, !5343, !5344, !5345, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5281, file: !164, line: 235, baseType: !5284, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !164, line: 82, size: 320, elements: !5286)
!5286 = !{!5287, !5299, !5300, !5301, !5342}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5285, file: !164, line: 83, baseType: !5288, size: 72)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !171, line: 389, size: 72, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5288, file: !171, line: 390, baseType: !479, size: 8)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5288, file: !171, line: 391, baseType: !479, size: 8, offset: 8)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5288, file: !171, line: 393, baseType: !479, size: 8, offset: 16)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5288, file: !171, line: 394, baseType: !479, size: 8, offset: 24)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5288, file: !171, line: 395, baseType: !479, size: 8, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5288, file: !171, line: 396, baseType: !479, size: 8, offset: 40)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5288, file: !171, line: 397, baseType: !479, size: 8, offset: 48)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5288, file: !171, line: 398, baseType: !479, size: 8, offset: 56)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5288, file: !171, line: 399, baseType: !479, size: 8, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5285, file: !164, line: 85, baseType: !214, size: 32, offset: 96)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5285, file: !164, line: 86, baseType: !4951, size: 64, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5285, file: !164, line: 91, baseType: !5302, size: 64, offset: 192)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !164, line: 67, size: 640, elements: !5304)
!5304 = !{!5305, !5317, !5325, !5333, !5334, !5335, !5338, !5339, !5340, !5341}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5303, file: !164, line: 68, baseType: !5306, size: 72)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !171, line: 407, size: 72, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5314, !5315, !5316}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5306, file: !171, line: 408, baseType: !479, size: 8)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5306, file: !171, line: 409, baseType: !479, size: 8, offset: 8)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5306, file: !171, line: 411, baseType: !479, size: 8, offset: 16)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5306, file: !171, line: 412, baseType: !479, size: 8, offset: 24)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5306, file: !171, line: 413, baseType: !5313, size: 16, offset: 32)
!5313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1033, line: 29, baseType: !980)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5306, file: !171, line: 414, baseType: !479, size: 8, offset: 48)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5306, file: !171, line: 418, baseType: !479, size: 8, offset: 56)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5306, file: !171, line: 419, baseType: !479, size: 8, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5303, file: !164, line: 69, baseType: !5318, size: 48, offset: 72)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !171, line: 689, size: 48, elements: !5319)
!5319 = !{!5320, !5321, !5322, !5323, !5324}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5318, file: !171, line: 690, baseType: !479, size: 8)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5318, file: !171, line: 691, baseType: !479, size: 8, offset: 8)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5318, file: !171, line: 693, baseType: !479, size: 8, offset: 16)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5318, file: !171, line: 694, baseType: !479, size: 8, offset: 24)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5318, file: !171, line: 695, baseType: !5313, size: 16, offset: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5303, file: !164, line: 70, baseType: !5326, size: 64, offset: 120)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !171, line: 677, size: 64, elements: !5327)
!5327 = !{!5328, !5329, !5330, !5331}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5326, file: !171, line: 678, baseType: !479, size: 8)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5326, file: !171, line: 679, baseType: !479, size: 8, offset: 8)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5326, file: !171, line: 680, baseType: !5313, size: 16, offset: 16)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5326, file: !171, line: 681, baseType: !5332, size: 32, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1033, line: 31, baseType: !322)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5303, file: !164, line: 71, baseType: !265, size: 128, offset: 192)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5303, file: !164, line: 72, baseType: !209, size: 64, offset: 320)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5303, file: !164, line: 73, baseType: !5336, size: 64, offset: 384)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !164, line: 48, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5303, file: !164, line: 75, baseType: !4951, size: 64, offset: 448)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5303, file: !164, line: 76, baseType: !214, size: 32, offset: 512)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5303, file: !164, line: 77, baseType: !214, size: 32, offset: 544)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5303, file: !164, line: 78, baseType: !214, size: 32, offset: 576)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5285, file: !164, line: 93, baseType: !216, size: 64, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5281, file: !164, line: 237, baseType: !5284, size: 64, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5281, file: !164, line: 239, baseType: !7, size: 32, offset: 128)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5281, file: !164, line: 243, baseType: !5346, size: 64, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !171, line: 783, size: 64, elements: !5348)
!5348 = !{!5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5347, file: !171, line: 784, baseType: !479, size: 8)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5347, file: !171, line: 785, baseType: !479, size: 8, offset: 8)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5347, file: !171, line: 787, baseType: !479, size: 8, offset: 16)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5347, file: !171, line: 788, baseType: !479, size: 8, offset: 24)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5347, file: !171, line: 789, baseType: !479, size: 8, offset: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5347, file: !171, line: 790, baseType: !479, size: 8, offset: 40)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5347, file: !171, line: 791, baseType: !479, size: 8, offset: 48)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5347, file: !171, line: 792, baseType: !479, size: 8, offset: 56)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5281, file: !164, line: 245, baseType: !214, size: 32, offset: 256)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5281, file: !164, line: 247, baseType: !163, size: 32, offset: 288)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5281, file: !164, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5281, file: !164, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5281, file: !164, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5281, file: !164, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5281, file: !164, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5281, file: !164, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5281, file: !164, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5281, file: !164, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5281, file: !164, line: 257, baseType: !1737, size: 5568, offset: 384)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5281, file: !164, line: 258, baseType: !2038, size: 64, offset: 5952)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5281, file: !164, line: 259, baseType: !2273, size: 256, offset: 6016)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5372)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !2122, line: 121, size: 256, elements: !5373)
!5373 = !{!5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !5372, file: !2122, line: 123, baseType: !980, size: 16)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5372, file: !2122, line: 126, baseType: !980, size: 16, offset: 16)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5372, file: !2122, line: 127, baseType: !980, size: 16, offset: 32)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !5372, file: !2122, line: 128, baseType: !980, size: 16, offset: 48)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !5372, file: !2122, line: 129, baseType: !980, size: 16, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5372, file: !2122, line: 132, baseType: !479, size: 8, offset: 80)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5372, file: !2122, line: 133, baseType: !479, size: 8, offset: 88)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5372, file: !2122, line: 134, baseType: !479, size: 8, offset: 96)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5372, file: !2122, line: 137, baseType: !479, size: 8, offset: 104)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5372, file: !2122, line: 138, baseType: !479, size: 8, offset: 112)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5372, file: !2122, line: 139, baseType: !479, size: 8, offset: 120)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5372, file: !2122, line: 142, baseType: !479, size: 8, offset: 128)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !5372, file: !2122, line: 145, baseType: !2142, size: 64, align: 64, offset: 192)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5273, file: !164, line: 1190, baseType: !5388, size: 64, offset: 128)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !5280}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5273, file: !164, line: 1192, baseType: !5392, size: 64, offset: 192)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!214, !5280, !7, !209}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5273, file: !164, line: 1195, baseType: !5396, size: 64, offset: 256)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!214, !5280, !2153}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5273, file: !164, line: 1196, baseType: !5400, size: 64, offset: 320)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!214, !5280}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5273, file: !164, line: 1197, baseType: !5400, size: 64, offset: 384)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !5273, file: !164, line: 1199, baseType: !5400, size: 64, offset: 448)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !5273, file: !164, line: 1200, baseType: !5400, size: 64, offset: 512)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5273, file: !164, line: 1202, baseType: !5370, size: 64, offset: 576)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5273, file: !164, line: 1203, baseType: !1819, size: 64, offset: 640)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5273, file: !164, line: 1205, baseType: !5409, size: 128, offset: 704)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !164, line: 1091, size: 128, elements: !5410)
!5410 = !{!5411, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5409, file: !164, line: 1092, baseType: !273)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5409, file: !164, line: 1093, baseType: !265, size: 128)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !5273, file: !164, line: 1206, baseType: !5414, size: 1216, offset: 832)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !164, line: 1113, size: 1216, elements: !5415)
!5415 = !{!5416, !5417}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5414, file: !164, line: 1114, baseType: !2110, size: 1152)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !5414, file: !164, line: 1115, baseType: !214, size: 32, offset: 1152)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !5273, file: !164, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !5273, file: !164, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !5273, file: !164, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !5273, file: !164, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!5422 = !DIGlobalVariableExpression(var: !5423, expr: !DIExpression())
!5423 = distinct !DIGlobalVariable(name: "karma_unusual_dev_list", scope: !2, file: !3, line: 76, type: !5424, isLocal: true, isDefinition: true)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5425, size: 512, elements: !1284)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "us_unusual_dev", file: !5426, line: 45, size: 256, elements: !5427)
!5426 = !DIFile(filename: "drivers/usb/storage/usb.h", directory: "/home/lizy2001/genbc/linux")
!5427 = !{!5428, !5429, !5430, !5431, !5432}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "vendorName", scope: !5425, file: !5426, line: 46, baseType: !256, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "productName", scope: !5425, file: !5426, line: 47, baseType: !256, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "useProtocol", scope: !5425, file: !5426, line: 48, baseType: !479, size: 8, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "useTransport", scope: !5425, file: !5426, line: 49, baseType: !479, size: 8, offset: 136)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "initFunction", scope: !5425, file: !5426, line: 50, baseType: !5433, size: 64, offset: 192)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!214, !5436}
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "us_data", file: !5426, line: 87, size: 3904, elements: !5438)
!5438 = !{!5439, !5440, !5654, !5655, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5678, !5680, !5685, !5686, !5687, !5688, !5741, !5750, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5773, !5778, !5779}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mutex", scope: !5437, file: !5426, line: 93, baseType: !291, size: 192)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_dev", scope: !5437, file: !5426, line: 94, baseType: !5441, size: 64, offset: 192)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !164, line: 631, size: 10624, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5454, !5455, !5457, !5458, !5486, !5487, !5488, !5505, !5566, !5597, !5598, !5600, !5601, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5636, !5637, !5638, !5643, !5650, !5651, !5652, !5653}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5442, file: !164, line: 632, baseType: !214, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5442, file: !164, line: 633, baseType: !4329, size: 128, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5442, file: !164, line: 634, baseType: !321, size: 32, offset: 160)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5442, file: !164, line: 635, baseType: !170, size: 32, offset: 192)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5442, file: !164, line: 636, baseType: !182, size: 32, offset: 224)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5442, file: !164, line: 637, baseType: !7, size: 32, offset: 256)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5442, file: !164, line: 638, baseType: !7, size: 32, offset: 288)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5442, file: !164, line: 640, baseType: !5452, size: 64, offset: 320)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !164, line: 474, flags: DIFlagFwdDecl)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5442, file: !164, line: 641, baseType: !214, size: 32, offset: 384)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5442, file: !164, line: 643, baseType: !5456, size: 64, offset: 416)
!5456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1284)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5442, file: !164, line: 645, baseType: !5441, size: 64, offset: 512)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5442, file: !164, line: 646, baseType: !5459, size: 64, offset: 576)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !164, line: 424, size: 960, elements: !5461)
!5461 = !{!5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5480, !5481, !5482, !5483, !5484, !5485}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5460, file: !164, line: 425, baseType: !2038, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5460, file: !164, line: 426, baseType: !2038, size: 64, offset: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5460, file: !164, line: 427, baseType: !214, size: 32, offset: 128)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5460, file: !164, line: 428, baseType: !256, size: 64, offset: 192)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5460, file: !164, line: 429, baseType: !478, size: 8, offset: 256)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5460, file: !164, line: 433, baseType: !478, size: 8, offset: 264)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5460, file: !164, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5460, file: !164, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5460, file: !164, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5460, file: !164, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5460, file: !164, line: 442, baseType: !7, size: 32, offset: 288)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5460, file: !164, line: 444, baseType: !214, size: 32, offset: 320)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5460, file: !164, line: 446, baseType: !291, size: 192, offset: 384)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5460, file: !164, line: 448, baseType: !5476, size: 128, offset: 576)
!5476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !164, line: 417, size: 128, elements: !5477)
!5477 = !{!5478}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5476, file: !164, line: 418, baseType: !5479, size: 128)
!5479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 128, elements: !1284)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5460, file: !164, line: 449, baseType: !5441, size: 64, offset: 704)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5460, file: !164, line: 450, baseType: !5459, size: 64, offset: 768)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5460, file: !164, line: 452, baseType: !214, size: 32, offset: 832)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5460, file: !164, line: 459, baseType: !214, size: 32, offset: 864)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5460, file: !164, line: 460, baseType: !214, size: 32, offset: 896)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5460, file: !164, line: 462, baseType: !7, size: 32, offset: 928)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5442, file: !164, line: 647, baseType: !5303, size: 640, offset: 640)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5442, file: !164, line: 649, baseType: !1737, size: 5568, offset: 1280)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5442, file: !164, line: 651, baseType: !5489, size: 144, offset: 6848)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !171, line: 289, size: 144, elements: !5490)
!5490 = !{!5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5489, file: !171, line: 290, baseType: !479, size: 8)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5489, file: !171, line: 291, baseType: !479, size: 8, offset: 8)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5489, file: !171, line: 293, baseType: !5313, size: 16, offset: 16)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5489, file: !171, line: 294, baseType: !479, size: 8, offset: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5489, file: !171, line: 295, baseType: !479, size: 8, offset: 40)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5489, file: !171, line: 296, baseType: !479, size: 8, offset: 48)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5489, file: !171, line: 297, baseType: !479, size: 8, offset: 56)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5489, file: !171, line: 298, baseType: !5313, size: 16, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5489, file: !171, line: 299, baseType: !5313, size: 16, offset: 80)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5489, file: !171, line: 300, baseType: !5313, size: 16, offset: 96)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5489, file: !171, line: 301, baseType: !479, size: 8, offset: 112)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5489, file: !171, line: 302, baseType: !479, size: 8, offset: 120)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5489, file: !171, line: 303, baseType: !479, size: 8, offset: 128)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5489, file: !171, line: 304, baseType: !479, size: 8, offset: 136)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5442, file: !164, line: 652, baseType: !5506, size: 64, offset: 7040)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !164, line: 396, size: 384, elements: !5508)
!5508 = !{!5509, !5517, !5525, !5537, !5550, !5559}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5507, file: !164, line: 397, baseType: !5510, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !171, line: 844, size: 40, elements: !5512)
!5512 = !{!5513, !5514, !5515, !5516}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5511, file: !171, line: 845, baseType: !479, size: 8)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5511, file: !171, line: 846, baseType: !479, size: 8, offset: 8)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5511, file: !171, line: 848, baseType: !5313, size: 16, offset: 16)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5511, file: !171, line: 849, baseType: !479, size: 8, offset: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5507, file: !164, line: 400, baseType: !5518, size: 64, offset: 64)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !171, line: 895, size: 56, elements: !5520)
!5520 = !{!5521, !5522, !5523, !5524}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5519, file: !171, line: 896, baseType: !479, size: 8)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5519, file: !171, line: 897, baseType: !479, size: 8, offset: 8)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5519, file: !171, line: 898, baseType: !479, size: 8, offset: 16)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5519, file: !171, line: 899, baseType: !5332, size: 32, offset: 24)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5507, file: !164, line: 401, baseType: !5526, size: 64, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !171, line: 917, size: 80, elements: !5528)
!5528 = !{!5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5527, file: !171, line: 918, baseType: !479, size: 8)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5527, file: !171, line: 919, baseType: !479, size: 8, offset: 8)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5527, file: !171, line: 920, baseType: !479, size: 8, offset: 16)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5527, file: !171, line: 921, baseType: !479, size: 8, offset: 24)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5527, file: !171, line: 923, baseType: !5313, size: 16, offset: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5527, file: !171, line: 928, baseType: !479, size: 8, offset: 48)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5527, file: !171, line: 929, baseType: !479, size: 8, offset: 56)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5527, file: !171, line: 930, baseType: !5313, size: 16, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5507, file: !164, line: 402, baseType: !5538, size: 64, offset: 192)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !171, line: 955, size: 128, elements: !5540)
!5540 = !{!5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5539, file: !171, line: 956, baseType: !479, size: 8)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5539, file: !171, line: 957, baseType: !479, size: 8, offset: 8)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5539, file: !171, line: 958, baseType: !479, size: 8, offset: 16)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5539, file: !171, line: 959, baseType: !479, size: 8, offset: 24)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5539, file: !171, line: 960, baseType: !5332, size: 32, offset: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5539, file: !171, line: 963, baseType: !5313, size: 16, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5539, file: !171, line: 967, baseType: !5313, size: 16, offset: 80)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5539, file: !171, line: 968, baseType: !5549, size: 32, offset: 96)
!5549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5332, size: 32, elements: !498)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5507, file: !164, line: 403, baseType: !5551, size: 64, offset: 256)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !171, line: 940, size: 160, elements: !5553)
!5553 = !{!5554, !5555, !5556, !5557, !5558}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5552, file: !171, line: 941, baseType: !479, size: 8)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5552, file: !171, line: 942, baseType: !479, size: 8, offset: 8)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5552, file: !171, line: 943, baseType: !479, size: 8, offset: 16)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5552, file: !171, line: 944, baseType: !479, size: 8, offset: 24)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5552, file: !171, line: 945, baseType: !3541, size: 128, offset: 32)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5507, file: !164, line: 404, baseType: !5560, size: 64, offset: 320)
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5561, size: 64)
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !171, line: 1080, size: 24, elements: !5562)
!5562 = !{!5563, !5564, !5565}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5561, file: !171, line: 1081, baseType: !479, size: 8)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5561, file: !171, line: 1082, baseType: !479, size: 8, offset: 8)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5561, file: !171, line: 1083, baseType: !479, size: 8, offset: 16)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5442, file: !164, line: 653, baseType: !5567, size: 64, offset: 7104)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !164, line: 374, size: 5440, elements: !5569)
!5569 = !{!5570, !5581, !5582, !5584, !5586, !5595, !5596}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5568, file: !164, line: 375, baseType: !5571, size: 72)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !171, line: 349, size: 72, elements: !5572)
!5572 = !{!5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5571, file: !171, line: 350, baseType: !479, size: 8)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5571, file: !171, line: 351, baseType: !479, size: 8, offset: 8)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5571, file: !171, line: 353, baseType: !5313, size: 16, offset: 16)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5571, file: !171, line: 354, baseType: !479, size: 8, offset: 32)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5571, file: !171, line: 355, baseType: !479, size: 8, offset: 40)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5571, file: !171, line: 356, baseType: !479, size: 8, offset: 48)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5571, file: !171, line: 357, baseType: !479, size: 8, offset: 56)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5571, file: !171, line: 358, baseType: !479, size: 8, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5568, file: !164, line: 377, baseType: !216, size: 64, offset: 128)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5568, file: !164, line: 381, baseType: !5583, size: 1024, offset: 192)
!5583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5346, size: 1024, elements: !3306)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5568, file: !164, line: 385, baseType: !5585, size: 2048, offset: 1216)
!5585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5280, size: 2048, elements: !239)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5568, file: !164, line: 389, baseType: !5587, size: 2048, offset: 3264)
!5587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 2048, elements: !239)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !164, line: 322, size: 64, elements: !5590)
!5590 = !{!5591, !5592, !5593}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5589, file: !164, line: 323, baseType: !7, size: 32)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5589, file: !164, line: 324, baseType: !2028, size: 32, offset: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5589, file: !164, line: 328, baseType: !5594, offset: 64)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5285, elements: !2549)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5568, file: !164, line: 391, baseType: !4951, size: 64, offset: 5312)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5568, file: !164, line: 392, baseType: !214, size: 32, offset: 5376)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5442, file: !164, line: 655, baseType: !5567, size: 64, offset: 7168)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5442, file: !164, line: 656, baseType: !5599, size: 1024, offset: 7232)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5302, size: 1024, elements: !3306)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5442, file: !164, line: 657, baseType: !5599, size: 1024, offset: 8256)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5442, file: !164, line: 659, baseType: !5602, size: 64, offset: 9280)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5442, file: !164, line: 661, baseType: !383, size: 16, offset: 9344)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5442, file: !164, line: 662, baseType: !478, size: 8, offset: 9360)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5442, file: !164, line: 663, baseType: !478, size: 8, offset: 9368)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5442, file: !164, line: 664, baseType: !478, size: 8, offset: 9376)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5442, file: !164, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5442, file: !164, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5442, file: !164, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5442, file: !164, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5442, file: !164, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5442, file: !164, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5442, file: !164, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5442, file: !164, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5442, file: !164, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5442, file: !164, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5442, file: !164, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5442, file: !164, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5442, file: !164, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5442, file: !164, line: 679, baseType: !214, size: 32, offset: 9408)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5442, file: !164, line: 682, baseType: !216, size: 64, offset: 9472)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5442, file: !164, line: 683, baseType: !216, size: 64, offset: 9536)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5442, file: !164, line: 684, baseType: !216, size: 64, offset: 9600)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5442, file: !164, line: 686, baseType: !265, size: 128, offset: 9664)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5442, file: !164, line: 688, baseType: !214, size: 32, offset: 9792)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5442, file: !164, line: 690, baseType: !321, size: 32, offset: 9824)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5442, file: !164, line: 691, baseType: !332, size: 32, offset: 9856)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5442, file: !164, line: 693, baseType: !319, size: 64, offset: 9920)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5442, file: !164, line: 696, baseType: !319, size: 64, offset: 9984)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5442, file: !164, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5442, file: !164, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5442, file: !164, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5442, file: !164, line: 702, baseType: !5634, size: 64, offset: 10112)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !164, line: 28, flags: DIFlagFwdDecl)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5442, file: !164, line: 703, baseType: !214, size: 32, offset: 10176)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5442, file: !164, line: 704, baseType: !191, size: 32, offset: 10208)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5442, file: !164, line: 705, baseType: !5639, size: 64, offset: 10240)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !164, line: 502, size: 64, elements: !5640)
!5640 = !{!5641, !5642}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5639, file: !164, line: 506, baseType: !7, size: 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5639, file: !164, line: 512, baseType: !214, size: 32, offset: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5442, file: !164, line: 706, baseType: !5644, size: 128, offset: 10304)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !164, line: 522, size: 128, elements: !5645)
!5645 = !{!5646, !5647, !5648, !5649}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5644, file: !164, line: 529, baseType: !7, size: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5644, file: !164, line: 535, baseType: !7, size: 32, offset: 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5644, file: !164, line: 545, baseType: !7, size: 32, offset: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5644, file: !164, line: 551, baseType: !214, size: 32, offset: 96)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5442, file: !164, line: 707, baseType: !5644, size: 128, offset: 10432)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5442, file: !164, line: 708, baseType: !7, size: 32, offset: 10560)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5442, file: !164, line: 710, baseType: !979, size: 16, offset: 10592)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5442, file: !164, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_intf", scope: !5437, file: !5426, line: 95, baseType: !5280, size: 64, offset: 256)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "unusual_dev", scope: !5437, file: !5426, line: 96, baseType: !5656, size: 64, offset: 320)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5425)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "fflags", scope: !5437, file: !5426, line: 98, baseType: !319, size: 64, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "dflags", scope: !5437, file: !5426, line: 99, baseType: !319, size: 64, offset: 448)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "send_bulk_pipe", scope: !5437, file: !5426, line: 100, baseType: !7, size: 32, offset: 512)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "recv_bulk_pipe", scope: !5437, file: !5426, line: 101, baseType: !7, size: 32, offset: 544)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "send_ctrl_pipe", scope: !5437, file: !5426, line: 102, baseType: !7, size: 32, offset: 576)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ctrl_pipe", scope: !5437, file: !5426, line: 103, baseType: !7, size: 32, offset: 608)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "recv_intr_pipe", scope: !5437, file: !5426, line: 104, baseType: !7, size: 32, offset: 640)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "transport_name", scope: !5437, file: !5426, line: 107, baseType: !216, size: 64, offset: 704)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_name", scope: !5437, file: !5426, line: 108, baseType: !216, size: 64, offset: 768)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "bcs_signature", scope: !5437, file: !5426, line: 109, baseType: !5332, size: 32, offset: 832)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "subclass", scope: !5437, file: !5426, line: 110, baseType: !478, size: 8, offset: 864)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5437, file: !5426, line: 111, baseType: !478, size: 8, offset: 872)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !5437, file: !5426, line: 112, baseType: !478, size: 8, offset: 880)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "ifnum", scope: !5437, file: !5426, line: 114, baseType: !478, size: 8, offset: 888)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "ep_bInterval", scope: !5437, file: !5426, line: 115, baseType: !478, size: 8, offset: 896)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !5437, file: !5426, line: 118, baseType: !5674, size: 64, offset: 960)
!5674 = !DIDerivedType(tag: DW_TAG_typedef, name: "trans_cmnd", file: !5426, line: 77, baseType: !5675)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!214, !5073, !5436}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "transport_reset", scope: !5437, file: !5426, line: 119, baseType: !5679, size: 64, offset: 1024)
!5679 = !DIDerivedType(tag: DW_TAG_typedef, name: "trans_reset", file: !5426, line: 78, baseType: !5433)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "proto_handler", scope: !5437, file: !5426, line: 120, baseType: !5681, size: 64, offset: 1088)
!5681 = !DIDerivedType(tag: DW_TAG_typedef, name: "proto_cmnd", file: !5426, line: 79, baseType: !5682)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !5073, !5436}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "srb", scope: !5437, file: !5426, line: 123, baseType: !5073, size: 64, offset: 1152)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5437, file: !5426, line: 124, baseType: !7, size: 32, offset: 1216)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_name", scope: !5437, file: !5426, line: 125, baseType: !2125, size: 256, offset: 1248)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "current_urb", scope: !5437, file: !5426, line: 128, baseType: !5689, size: 64, offset: 1536)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !164, line: 1561, size: 1472, elements: !5691)
!5691 = !{!5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5733}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5690, file: !164, line: 1563, baseType: !2028, size: 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5690, file: !164, line: 1564, baseType: !214, size: 32, offset: 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5690, file: !164, line: 1565, baseType: !209, size: 64, offset: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5690, file: !164, line: 1566, baseType: !332, size: 32, offset: 128)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5690, file: !164, line: 1567, baseType: !332, size: 32, offset: 160)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5690, file: !164, line: 1570, baseType: !265, size: 128, offset: 192)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5690, file: !164, line: 1572, baseType: !265, size: 128, offset: 320)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5690, file: !164, line: 1573, baseType: !5700, size: 64, offset: 448)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !164, line: 1360, size: 320, elements: !5702)
!5702 = !{!5703, !5704, !5705, !5706, !5707}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5701, file: !164, line: 1361, baseType: !265, size: 128)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5701, file: !164, line: 1362, baseType: !1082, size: 128, offset: 128)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5701, file: !164, line: 1363, baseType: !273, offset: 256)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !5701, file: !164, line: 1364, baseType: !332, size: 32, offset: 256)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !5701, file: !164, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5690, file: !164, line: 1574, baseType: !5441, size: 64, offset: 512)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5690, file: !164, line: 1575, baseType: !5302, size: 64, offset: 576)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5690, file: !164, line: 1576, baseType: !7, size: 32, offset: 640)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5690, file: !164, line: 1577, baseType: !7, size: 32, offset: 672)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5690, file: !164, line: 1578, baseType: !214, size: 32, offset: 704)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5690, file: !164, line: 1579, baseType: !7, size: 32, offset: 736)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5690, file: !164, line: 1580, baseType: !209, size: 64, offset: 768)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5690, file: !164, line: 1581, baseType: !3918, size: 64, offset: 832)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5690, file: !164, line: 1582, baseType: !5112, size: 64, offset: 896)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5690, file: !164, line: 1583, baseType: !214, size: 32, offset: 960)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5690, file: !164, line: 1584, baseType: !214, size: 32, offset: 992)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5690, file: !164, line: 1585, baseType: !321, size: 32, offset: 1024)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5690, file: !164, line: 1586, baseType: !321, size: 32, offset: 1056)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5690, file: !164, line: 1587, baseType: !4951, size: 64, offset: 1088)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5690, file: !164, line: 1588, baseType: !3918, size: 64, offset: 1152)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5690, file: !164, line: 1589, baseType: !214, size: 32, offset: 1216)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5690, file: !164, line: 1590, baseType: !214, size: 32, offset: 1248)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5690, file: !164, line: 1591, baseType: !214, size: 32, offset: 1280)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5690, file: !164, line: 1593, baseType: !214, size: 32, offset: 1312)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5690, file: !164, line: 1594, baseType: !209, size: 64, offset: 1344)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5690, file: !164, line: 1595, baseType: !5729, size: 64, offset: 1408)
!5729 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !164, line: 1376, baseType: !5730)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !5689}
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5690, file: !164, line: 1596, baseType: !5734, offset: 1472)
!5734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5735, elements: !2549)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !164, line: 1351, size: 128, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5740}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5735, file: !164, line: 1352, baseType: !7, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5735, file: !164, line: 1353, baseType: !7, size: 32, offset: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5735, file: !164, line: 1354, baseType: !7, size: 32, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5735, file: !164, line: 1355, baseType: !214, size: 32, offset: 96)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "cr", scope: !5437, file: !5426, line: 129, baseType: !5742, size: 64, offset: 1600)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !171, line: 213, size: 64, elements: !5744)
!5744 = !{!5745, !5746, !5747, !5748, !5749}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !5743, file: !171, line: 214, baseType: !479, size: 8)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !5743, file: !171, line: 215, baseType: !479, size: 8, offset: 8)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !5743, file: !171, line: 216, baseType: !5313, size: 16, offset: 16)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !5743, file: !171, line: 217, baseType: !5313, size: 16, offset: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !5743, file: !171, line: 218, baseType: !5313, size: 16, offset: 48)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "current_sg", scope: !5437, file: !5426, line: 130, baseType: !5751, size: 576, offset: 1664)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_sg_request", file: !164, line: 1873, size: 576, elements: !5752)
!5752 = !{!5753, !5754, !5755, !5756, !5757, !5758, !5759, !5761, !5762}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5751, file: !164, line: 1874, baseType: !214, size: 32)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !5751, file: !164, line: 1875, baseType: !884, size: 64, offset: 64)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5751, file: !164, line: 1881, baseType: !273, offset: 128)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5751, file: !164, line: 1883, baseType: !5441, size: 64, offset: 128)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5751, file: !164, line: 1884, baseType: !214, size: 32, offset: 192)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5751, file: !164, line: 1886, baseType: !214, size: 32, offset: 224)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "urbs", scope: !5751, file: !164, line: 1887, baseType: !5760, size: 64, offset: 256)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5751, file: !164, line: 1889, baseType: !214, size: 32, offset: 320)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5751, file: !164, line: 1890, baseType: !2217, size: 192, offset: 384)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf", scope: !5437, file: !5426, line: 131, baseType: !4951, size: 64, offset: 2240)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf_dma", scope: !5437, file: !5426, line: 132, baseType: !3918, size: 64, offset: 2304)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_thread", scope: !5437, file: !5426, line: 133, baseType: !310, size: 64, offset: 2368)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_ready", scope: !5437, file: !5426, line: 136, baseType: !2217, size: 192, offset: 2432)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5437, file: !5426, line: 137, baseType: !2217, size: 192, offset: 2624)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "delay_wait", scope: !5437, file: !5426, line: 138, baseType: !1082, size: 128, offset: 2816)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dwork", scope: !5437, file: !5426, line: 139, baseType: !2757, size: 704, offset: 2944)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5437, file: !5426, line: 142, baseType: !209, size: 64, offset: 3648)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "extra_destructor", scope: !5437, file: !5426, line: 143, baseType: !5772, size: 64, offset: 3712)
!5772 = !DIDerivedType(tag: DW_TAG_typedef, name: "extra_data_destructor", file: !5426, line: 80, baseType: !1881)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_resume_hook", scope: !5437, file: !5426, line: 145, baseType: !5774, size: 64, offset: 3776)
!5774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_hook", file: !5426, line: 81, baseType: !5775)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{null, !5436, !214}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "use_last_sector_hacks", scope: !5437, file: !5426, line: 149, baseType: !214, size: 32, offset: 3840)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_retries", scope: !5437, file: !5426, line: 150, baseType: !214, size: 32, offset: 3872)
!5780 = !DIGlobalVariableExpression(var: !5781, expr: !DIExpression())
!5781 = distinct !DIGlobalVariable(name: "seq", scope: !5782, file: !3, line: 98, type: !480, isLocal: true, isDefinition: true)
!5782 = distinct !DISubprogram(name: "rio_karma_send_command", scope: !3, file: !3, line: 94, type: !5783, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!214, !217, !5436}
!5785 = !DIGlobalVariableExpression(var: !5786, expr: !DIExpression())
!5786 = distinct !DIGlobalVariable(name: "karma_usb_ids", scope: !2, file: !3, line: 54, type: !5787, isLocal: true, isDefinition: true)
!5787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5372, size: 512, elements: !1284)
!5788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 344, elements: !5789)
!5789 = !{!5790}
!5790 = !DISubrange(count: 43)
!5791 = !{i32 7, !"Dwarf Version", i32 4}
!5792 = !{i32 2, !"Debug Info Version", i32 3}
!5793 = !{i32 1, !"wchar_size", i32 2}
!5794 = !{i32 1, !"Code Model", i32 2}
!5795 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5796 = distinct !DISubprogram(name: "karma_driver_init", scope: !3, file: !3, line: 233, type: !5797, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!214}
!5799 = !DILocation(line: 233, column: 1, scope: !5796)
!5800 = distinct !DISubprogram(name: "karma_driver_exit", scope: !3, file: !3, line: 233, type: !248, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5801 = !DILocation(line: 233, column: 1, scope: !5800)
!5802 = distinct !DISubprogram(name: "karma_probe", scope: !3, file: !3, line: 199, type: !5278, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5803 = !DILocalVariable(name: "intf", arg: 1, scope: !5802, file: !3, line: 199, type: !5280)
!5804 = !DILocation(line: 199, column: 46, scope: !5802)
!5805 = !DILocalVariable(name: "id", arg: 2, scope: !5802, file: !3, line: 200, type: !5370)
!5806 = !DILocation(line: 200, column: 33, scope: !5802)
!5807 = !DILocalVariable(name: "us", scope: !5802, file: !3, line: 202, type: !5436)
!5808 = !DILocation(line: 202, column: 18, scope: !5802)
!5809 = !DILocalVariable(name: "result", scope: !5802, file: !3, line: 203, type: !214)
!5810 = !DILocation(line: 203, column: 6, scope: !5802)
!5811 = !DILocation(line: 205, column: 32, scope: !5802)
!5812 = !DILocation(line: 205, column: 38, scope: !5802)
!5813 = !DILocation(line: 206, column: 5, scope: !5802)
!5814 = !DILocation(line: 206, column: 8, scope: !5802)
!5815 = !DILocation(line: 206, column: 25, scope: !5802)
!5816 = !DILocation(line: 205, column: 11, scope: !5802)
!5817 = !DILocation(line: 205, column: 9, scope: !5802)
!5818 = !DILocation(line: 208, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 208, column: 6)
!5820 = !DILocation(line: 208, column: 6, scope: !5802)
!5821 = !DILocation(line: 209, column: 10, scope: !5819)
!5822 = !DILocation(line: 209, column: 3, scope: !5819)
!5823 = !DILocation(line: 211, column: 2, scope: !5802)
!5824 = !DILocation(line: 211, column: 6, scope: !5802)
!5825 = !DILocation(line: 211, column: 21, scope: !5802)
!5826 = !DILocation(line: 212, column: 2, scope: !5802)
!5827 = !DILocation(line: 212, column: 6, scope: !5802)
!5828 = !DILocation(line: 212, column: 16, scope: !5802)
!5829 = !DILocation(line: 213, column: 2, scope: !5802)
!5830 = !DILocation(line: 213, column: 6, scope: !5802)
!5831 = !DILocation(line: 213, column: 22, scope: !5802)
!5832 = !DILocation(line: 215, column: 27, scope: !5802)
!5833 = !DILocation(line: 215, column: 11, scope: !5802)
!5834 = !DILocation(line: 215, column: 9, scope: !5802)
!5835 = !DILocation(line: 216, column: 9, scope: !5802)
!5836 = !DILocation(line: 216, column: 2, scope: !5802)
!5837 = !DILocation(line: 217, column: 1, scope: !5802)
!5838 = distinct !DISubprogram(name: "rio_karma_transport", scope: !3, file: !3, line: 145, type: !5676, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5839 = !DILocalVariable(name: "srb", arg: 1, scope: !5838, file: !3, line: 145, type: !5073)
!5840 = !DILocation(line: 145, column: 50, scope: !5838)
!5841 = !DILocalVariable(name: "us", arg: 2, scope: !5838, file: !3, line: 145, type: !5436)
!5842 = !DILocation(line: 145, column: 71, scope: !5838)
!5843 = !DILocalVariable(name: "ret", scope: !5838, file: !3, line: 147, type: !214)
!5844 = !DILocation(line: 147, column: 6, scope: !5838)
!5845 = !DILocalVariable(name: "data", scope: !5838, file: !3, line: 148, type: !210)
!5846 = !DILocation(line: 148, column: 21, scope: !5838)
!5847 = !DILocation(line: 148, column: 50, scope: !5838)
!5848 = !DILocation(line: 148, column: 54, scope: !5838)
!5849 = !DILocation(line: 148, column: 28, scope: !5838)
!5850 = !DILocation(line: 150, column: 6, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 150, column: 6)
!5852 = !DILocation(line: 150, column: 11, scope: !5851)
!5853 = !DILocation(line: 150, column: 19, scope: !5851)
!5854 = !DILocation(line: 150, column: 30, scope: !5851)
!5855 = !DILocation(line: 150, column: 34, scope: !5851)
!5856 = !DILocation(line: 150, column: 40, scope: !5851)
!5857 = !DILocation(line: 150, column: 6, scope: !5838)
!5858 = !DILocation(line: 151, column: 51, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 150, column: 52)
!5860 = !DILocation(line: 151, column: 9, scope: !5859)
!5861 = !DILocation(line: 151, column: 7, scope: !5859)
!5862 = !DILocation(line: 152, column: 7, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 152, column: 7)
!5864 = !DILocation(line: 152, column: 7, scope: !5859)
!5865 = !DILocation(line: 153, column: 11, scope: !5863)
!5866 = !DILocation(line: 153, column: 4, scope: !5863)
!5867 = !DILocation(line: 155, column: 3, scope: !5859)
!5868 = !DILocation(line: 155, column: 9, scope: !5859)
!5869 = !DILocation(line: 155, column: 20, scope: !5859)
!5870 = !DILocation(line: 156, column: 34, scope: !5859)
!5871 = !DILocation(line: 156, column: 39, scope: !5859)
!5872 = !DILocation(line: 156, column: 10, scope: !5859)
!5873 = !DILocation(line: 156, column: 3, scope: !5859)
!5874 = !DILocation(line: 157, column: 13, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 157, column: 13)
!5876 = !DILocation(line: 157, column: 18, scope: !5875)
!5877 = !DILocation(line: 157, column: 26, scope: !5875)
!5878 = !DILocation(line: 157, column: 13, scope: !5851)
!5879 = !DILocation(line: 158, column: 51, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 157, column: 41)
!5881 = !DILocation(line: 158, column: 9, scope: !5880)
!5882 = !DILocation(line: 158, column: 7, scope: !5880)
!5883 = !DILocation(line: 159, column: 7, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 159, column: 7)
!5885 = !DILocation(line: 159, column: 7, scope: !5880)
!5886 = !DILocation(line: 160, column: 11, scope: !5884)
!5887 = !DILocation(line: 160, column: 4, scope: !5884)
!5888 = !DILocation(line: 162, column: 3, scope: !5880)
!5889 = !DILocation(line: 162, column: 9, scope: !5880)
!5890 = !DILocation(line: 162, column: 20, scope: !5880)
!5891 = !DILocation(line: 163, column: 44, scope: !5880)
!5892 = !DILocation(line: 163, column: 10, scope: !5880)
!5893 = !DILocation(line: 163, column: 3, scope: !5880)
!5894 = !DILocation(line: 165, column: 33, scope: !5838)
!5895 = !DILocation(line: 165, column: 38, scope: !5838)
!5896 = !DILocation(line: 165, column: 9, scope: !5838)
!5897 = !DILocation(line: 165, column: 2, scope: !5838)
!5898 = !DILocation(line: 166, column: 1, scope: !5838)
!5899 = distinct !DISubprogram(name: "rio_karma_init", scope: !3, file: !3, line: 175, type: !5434, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5900 = !DILocalVariable(name: "s", arg: 1, scope: !5901, file: !197, line: 445, type: !2623)
!5901 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !197, file: !197, line: 445, type: !5902, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!209, !2623, !207, !884}
!5904 = !DILocation(line: 445, column: 72, scope: !5901, inlinedAt: !5905)
!5905 = distinct !DILocation(line: 552, column: 10, scope: !5906, inlinedAt: !5911)
!5906 = distinct !DILexicalBlock(scope: !5907, file: !197, line: 540, column: 34)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !197, line: 540, column: 6)
!5908 = distinct !DISubprogram(name: "kmalloc", scope: !197, file: !197, line: 538, type: !5909, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!209, !884, !207}
!5911 = distinct !DILocation(line: 183, column: 15, scope: !5899)
!5912 = !DILocalVariable(name: "flags", arg: 2, scope: !5901, file: !197, line: 446, type: !207)
!5913 = !DILocation(line: 446, column: 9, scope: !5901, inlinedAt: !5905)
!5914 = !DILocalVariable(name: "size", arg: 3, scope: !5901, file: !197, line: 446, type: !884)
!5915 = !DILocation(line: 446, column: 23, scope: !5901, inlinedAt: !5905)
!5916 = !DILocalVariable(name: "ret", scope: !5901, file: !197, line: 448, type: !209)
!5917 = !DILocation(line: 448, column: 8, scope: !5901, inlinedAt: !5905)
!5918 = !DILocalVariable(name: "flags", arg: 1, scope: !5919, file: !197, line: 318, type: !207)
!5919 = distinct !DISubprogram(name: "kmalloc_type", scope: !197, file: !197, line: 318, type: !5920, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!196, !207}
!5922 = !DILocation(line: 318, column: 67, scope: !5919, inlinedAt: !5923)
!5923 = distinct !DILocation(line: 553, column: 20, scope: !5906, inlinedAt: !5911)
!5924 = !DILocalVariable(name: "size", arg: 1, scope: !5925, file: !197, line: 346, type: !884)
!5925 = distinct !DISubprogram(name: "kmalloc_index", scope: !197, file: !197, line: 346, type: !5926, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!7, !884}
!5928 = !DILocation(line: 346, column: 58, scope: !5925, inlinedAt: !5929)
!5929 = distinct !DILocation(line: 547, column: 11, scope: !5906, inlinedAt: !5911)
!5930 = !DILocalVariable(name: "size", arg: 1, scope: !5931, file: !197, line: 472, type: !884)
!5931 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !197, file: !197, line: 472, type: !5932, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!209, !884, !207, !7}
!5934 = !DILocation(line: 472, column: 28, scope: !5931, inlinedAt: !5935)
!5935 = distinct !DILocation(line: 481, column: 9, scope: !5936, inlinedAt: !5937)
!5936 = distinct !DISubprogram(name: "kmalloc_large", scope: !197, file: !197, line: 478, type: !5909, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!5937 = distinct !DILocation(line: 545, column: 11, scope: !5938, inlinedAt: !5911)
!5938 = distinct !DILexicalBlock(scope: !5906, file: !197, line: 544, column: 7)
!5939 = !DILocalVariable(name: "flags", arg: 2, scope: !5931, file: !197, line: 472, type: !207)
!5940 = !DILocation(line: 472, column: 40, scope: !5931, inlinedAt: !5935)
!5941 = !DILocalVariable(name: "order", arg: 3, scope: !5931, file: !197, line: 472, type: !7)
!5942 = !DILocation(line: 472, column: 60, scope: !5931, inlinedAt: !5935)
!5943 = !DILocalVariable(name: "size", arg: 1, scope: !5936, file: !197, line: 478, type: !884)
!5944 = !DILocation(line: 478, column: 51, scope: !5936, inlinedAt: !5937)
!5945 = !DILocalVariable(name: "flags", arg: 2, scope: !5936, file: !197, line: 478, type: !207)
!5946 = !DILocation(line: 478, column: 63, scope: !5936, inlinedAt: !5937)
!5947 = !DILocalVariable(name: "order", scope: !5936, file: !197, line: 480, type: !7)
!5948 = !DILocation(line: 480, column: 15, scope: !5936, inlinedAt: !5937)
!5949 = !DILocalVariable(name: "size", arg: 1, scope: !5908, file: !197, line: 538, type: !884)
!5950 = !DILocation(line: 538, column: 45, scope: !5908, inlinedAt: !5911)
!5951 = !DILocalVariable(name: "flags", arg: 2, scope: !5908, file: !197, line: 538, type: !207)
!5952 = !DILocation(line: 538, column: 57, scope: !5908, inlinedAt: !5911)
!5953 = !DILocalVariable(name: "index", scope: !5906, file: !197, line: 542, type: !7)
!5954 = !DILocation(line: 542, column: 16, scope: !5906, inlinedAt: !5911)
!5955 = !DILocalVariable(name: "us", arg: 1, scope: !5899, file: !3, line: 175, type: !5436)
!5956 = !DILocation(line: 175, column: 43, scope: !5899)
!5957 = !DILocalVariable(name: "ret", scope: !5899, file: !3, line: 177, type: !214)
!5958 = !DILocation(line: 177, column: 6, scope: !5899)
!5959 = !DILocalVariable(name: "data", scope: !5899, file: !3, line: 178, type: !210)
!5960 = !DILocation(line: 178, column: 21, scope: !5899)
!5961 = !DILocation(line: 178, column: 28, scope: !5899)
!5962 = !DILocation(line: 180, column: 7, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 180, column: 6)
!5964 = !DILocation(line: 180, column: 6, scope: !5899)
!5965 = !DILocation(line: 181, column: 3, scope: !5963)
!5966 = !DILocation(line: 540, column: 27, scope: !5907, inlinedAt: !5911)
!5967 = !DILocation(line: 540, column: 6, scope: !5907, inlinedAt: !5911)
!5968 = !DILocation(line: 540, column: 6, scope: !5908, inlinedAt: !5911)
!5969 = !DILocation(line: 544, column: 7, scope: !5938, inlinedAt: !5911)
!5970 = !DILocation(line: 544, column: 12, scope: !5938, inlinedAt: !5911)
!5971 = !DILocation(line: 544, column: 7, scope: !5906, inlinedAt: !5911)
!5972 = !DILocation(line: 545, column: 25, scope: !5938, inlinedAt: !5911)
!5973 = !DILocation(line: 545, column: 31, scope: !5938, inlinedAt: !5911)
!5974 = !DILocation(line: 480, column: 33, scope: !5936, inlinedAt: !5937)
!5975 = !DILocation(line: 480, column: 23, scope: !5936, inlinedAt: !5937)
!5976 = !DILocation(line: 481, column: 29, scope: !5936, inlinedAt: !5937)
!5977 = !DILocation(line: 481, column: 35, scope: !5936, inlinedAt: !5937)
!5978 = !DILocation(line: 481, column: 42, scope: !5936, inlinedAt: !5937)
!5979 = !DILocation(line: 474, column: 23, scope: !5931, inlinedAt: !5935)
!5980 = !DILocation(line: 474, column: 29, scope: !5931, inlinedAt: !5935)
!5981 = !DILocation(line: 474, column: 36, scope: !5931, inlinedAt: !5935)
!5982 = !DILocation(line: 474, column: 9, scope: !5931, inlinedAt: !5935)
!5983 = !DILocation(line: 545, column: 4, scope: !5938, inlinedAt: !5911)
!5984 = !DILocation(line: 547, column: 25, scope: !5906, inlinedAt: !5911)
!5985 = !DILocation(line: 348, column: 7, scope: !5986, inlinedAt: !5929)
!5986 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 348, column: 6)
!5987 = !DILocation(line: 348, column: 6, scope: !5925, inlinedAt: !5929)
!5988 = !DILocation(line: 349, column: 3, scope: !5986, inlinedAt: !5929)
!5989 = !DILocation(line: 351, column: 6, scope: !5990, inlinedAt: !5929)
!5990 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 351, column: 6)
!5991 = !DILocation(line: 351, column: 11, scope: !5990, inlinedAt: !5929)
!5992 = !DILocation(line: 351, column: 6, scope: !5925, inlinedAt: !5929)
!5993 = !DILocation(line: 352, column: 3, scope: !5990, inlinedAt: !5929)
!5994 = !DILocation(line: 354, column: 32, scope: !5995, inlinedAt: !5929)
!5995 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 354, column: 6)
!5996 = !DILocation(line: 354, column: 37, scope: !5995, inlinedAt: !5929)
!5997 = !DILocation(line: 354, column: 42, scope: !5995, inlinedAt: !5929)
!5998 = !DILocation(line: 354, column: 45, scope: !5995, inlinedAt: !5929)
!5999 = !DILocation(line: 354, column: 50, scope: !5995, inlinedAt: !5929)
!6000 = !DILocation(line: 354, column: 6, scope: !5925, inlinedAt: !5929)
!6001 = !DILocation(line: 355, column: 3, scope: !5995, inlinedAt: !5929)
!6002 = !DILocation(line: 356, column: 32, scope: !6003, inlinedAt: !5929)
!6003 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 356, column: 6)
!6004 = !DILocation(line: 356, column: 37, scope: !6003, inlinedAt: !5929)
!6005 = !DILocation(line: 356, column: 43, scope: !6003, inlinedAt: !5929)
!6006 = !DILocation(line: 356, column: 46, scope: !6003, inlinedAt: !5929)
!6007 = !DILocation(line: 356, column: 51, scope: !6003, inlinedAt: !5929)
!6008 = !DILocation(line: 356, column: 6, scope: !5925, inlinedAt: !5929)
!6009 = !DILocation(line: 357, column: 3, scope: !6003, inlinedAt: !5929)
!6010 = !DILocation(line: 358, column: 6, scope: !6011, inlinedAt: !5929)
!6011 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 358, column: 6)
!6012 = !DILocation(line: 358, column: 11, scope: !6011, inlinedAt: !5929)
!6013 = !DILocation(line: 358, column: 6, scope: !5925, inlinedAt: !5929)
!6014 = !DILocation(line: 358, column: 26, scope: !6011, inlinedAt: !5929)
!6015 = !DILocation(line: 359, column: 6, scope: !6016, inlinedAt: !5929)
!6016 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 359, column: 6)
!6017 = !DILocation(line: 359, column: 11, scope: !6016, inlinedAt: !5929)
!6018 = !DILocation(line: 359, column: 6, scope: !5925, inlinedAt: !5929)
!6019 = !DILocation(line: 359, column: 26, scope: !6016, inlinedAt: !5929)
!6020 = !DILocation(line: 360, column: 6, scope: !6021, inlinedAt: !5929)
!6021 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 360, column: 6)
!6022 = !DILocation(line: 360, column: 11, scope: !6021, inlinedAt: !5929)
!6023 = !DILocation(line: 360, column: 6, scope: !5925, inlinedAt: !5929)
!6024 = !DILocation(line: 360, column: 26, scope: !6021, inlinedAt: !5929)
!6025 = !DILocation(line: 361, column: 6, scope: !6026, inlinedAt: !5929)
!6026 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 361, column: 6)
!6027 = !DILocation(line: 361, column: 11, scope: !6026, inlinedAt: !5929)
!6028 = !DILocation(line: 361, column: 6, scope: !5925, inlinedAt: !5929)
!6029 = !DILocation(line: 361, column: 26, scope: !6026, inlinedAt: !5929)
!6030 = !DILocation(line: 362, column: 6, scope: !6031, inlinedAt: !5929)
!6031 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 362, column: 6)
!6032 = !DILocation(line: 362, column: 11, scope: !6031, inlinedAt: !5929)
!6033 = !DILocation(line: 362, column: 6, scope: !5925, inlinedAt: !5929)
!6034 = !DILocation(line: 362, column: 26, scope: !6031, inlinedAt: !5929)
!6035 = !DILocation(line: 363, column: 6, scope: !6036, inlinedAt: !5929)
!6036 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 363, column: 6)
!6037 = !DILocation(line: 363, column: 11, scope: !6036, inlinedAt: !5929)
!6038 = !DILocation(line: 363, column: 6, scope: !5925, inlinedAt: !5929)
!6039 = !DILocation(line: 363, column: 26, scope: !6036, inlinedAt: !5929)
!6040 = !DILocation(line: 364, column: 6, scope: !6041, inlinedAt: !5929)
!6041 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 364, column: 6)
!6042 = !DILocation(line: 364, column: 11, scope: !6041, inlinedAt: !5929)
!6043 = !DILocation(line: 364, column: 6, scope: !5925, inlinedAt: !5929)
!6044 = !DILocation(line: 364, column: 26, scope: !6041, inlinedAt: !5929)
!6045 = !DILocation(line: 365, column: 6, scope: !6046, inlinedAt: !5929)
!6046 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 365, column: 6)
!6047 = !DILocation(line: 365, column: 11, scope: !6046, inlinedAt: !5929)
!6048 = !DILocation(line: 365, column: 6, scope: !5925, inlinedAt: !5929)
!6049 = !DILocation(line: 365, column: 26, scope: !6046, inlinedAt: !5929)
!6050 = !DILocation(line: 366, column: 6, scope: !6051, inlinedAt: !5929)
!6051 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 366, column: 6)
!6052 = !DILocation(line: 366, column: 11, scope: !6051, inlinedAt: !5929)
!6053 = !DILocation(line: 366, column: 6, scope: !5925, inlinedAt: !5929)
!6054 = !DILocation(line: 366, column: 26, scope: !6051, inlinedAt: !5929)
!6055 = !DILocation(line: 367, column: 6, scope: !6056, inlinedAt: !5929)
!6056 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 367, column: 6)
!6057 = !DILocation(line: 367, column: 11, scope: !6056, inlinedAt: !5929)
!6058 = !DILocation(line: 367, column: 6, scope: !5925, inlinedAt: !5929)
!6059 = !DILocation(line: 367, column: 26, scope: !6056, inlinedAt: !5929)
!6060 = !DILocation(line: 368, column: 6, scope: !6061, inlinedAt: !5929)
!6061 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 368, column: 6)
!6062 = !DILocation(line: 368, column: 11, scope: !6061, inlinedAt: !5929)
!6063 = !DILocation(line: 368, column: 6, scope: !5925, inlinedAt: !5929)
!6064 = !DILocation(line: 368, column: 26, scope: !6061, inlinedAt: !5929)
!6065 = !DILocation(line: 369, column: 6, scope: !6066, inlinedAt: !5929)
!6066 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 369, column: 6)
!6067 = !DILocation(line: 369, column: 11, scope: !6066, inlinedAt: !5929)
!6068 = !DILocation(line: 369, column: 6, scope: !5925, inlinedAt: !5929)
!6069 = !DILocation(line: 369, column: 26, scope: !6066, inlinedAt: !5929)
!6070 = !DILocation(line: 370, column: 6, scope: !6071, inlinedAt: !5929)
!6071 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 370, column: 6)
!6072 = !DILocation(line: 370, column: 11, scope: !6071, inlinedAt: !5929)
!6073 = !DILocation(line: 370, column: 6, scope: !5925, inlinedAt: !5929)
!6074 = !DILocation(line: 370, column: 26, scope: !6071, inlinedAt: !5929)
!6075 = !DILocation(line: 371, column: 6, scope: !6076, inlinedAt: !5929)
!6076 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 371, column: 6)
!6077 = !DILocation(line: 371, column: 11, scope: !6076, inlinedAt: !5929)
!6078 = !DILocation(line: 371, column: 6, scope: !5925, inlinedAt: !5929)
!6079 = !DILocation(line: 371, column: 26, scope: !6076, inlinedAt: !5929)
!6080 = !DILocation(line: 372, column: 6, scope: !6081, inlinedAt: !5929)
!6081 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 372, column: 6)
!6082 = !DILocation(line: 372, column: 11, scope: !6081, inlinedAt: !5929)
!6083 = !DILocation(line: 372, column: 6, scope: !5925, inlinedAt: !5929)
!6084 = !DILocation(line: 372, column: 26, scope: !6081, inlinedAt: !5929)
!6085 = !DILocation(line: 373, column: 6, scope: !6086, inlinedAt: !5929)
!6086 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 373, column: 6)
!6087 = !DILocation(line: 373, column: 11, scope: !6086, inlinedAt: !5929)
!6088 = !DILocation(line: 373, column: 6, scope: !5925, inlinedAt: !5929)
!6089 = !DILocation(line: 373, column: 26, scope: !6086, inlinedAt: !5929)
!6090 = !DILocation(line: 374, column: 6, scope: !6091, inlinedAt: !5929)
!6091 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 374, column: 6)
!6092 = !DILocation(line: 374, column: 11, scope: !6091, inlinedAt: !5929)
!6093 = !DILocation(line: 374, column: 6, scope: !5925, inlinedAt: !5929)
!6094 = !DILocation(line: 374, column: 26, scope: !6091, inlinedAt: !5929)
!6095 = !DILocation(line: 375, column: 6, scope: !6096, inlinedAt: !5929)
!6096 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 375, column: 6)
!6097 = !DILocation(line: 375, column: 11, scope: !6096, inlinedAt: !5929)
!6098 = !DILocation(line: 375, column: 6, scope: !5925, inlinedAt: !5929)
!6099 = !DILocation(line: 375, column: 27, scope: !6096, inlinedAt: !5929)
!6100 = !DILocation(line: 376, column: 6, scope: !6101, inlinedAt: !5929)
!6101 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 376, column: 6)
!6102 = !DILocation(line: 376, column: 11, scope: !6101, inlinedAt: !5929)
!6103 = !DILocation(line: 376, column: 6, scope: !5925, inlinedAt: !5929)
!6104 = !DILocation(line: 376, column: 32, scope: !6101, inlinedAt: !5929)
!6105 = !DILocation(line: 377, column: 6, scope: !6106, inlinedAt: !5929)
!6106 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 377, column: 6)
!6107 = !DILocation(line: 377, column: 11, scope: !6106, inlinedAt: !5929)
!6108 = !DILocation(line: 377, column: 6, scope: !5925, inlinedAt: !5929)
!6109 = !DILocation(line: 377, column: 32, scope: !6106, inlinedAt: !5929)
!6110 = !DILocation(line: 378, column: 6, scope: !6111, inlinedAt: !5929)
!6111 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 378, column: 6)
!6112 = !DILocation(line: 378, column: 11, scope: !6111, inlinedAt: !5929)
!6113 = !DILocation(line: 378, column: 6, scope: !5925, inlinedAt: !5929)
!6114 = !DILocation(line: 378, column: 32, scope: !6111, inlinedAt: !5929)
!6115 = !DILocation(line: 379, column: 6, scope: !6116, inlinedAt: !5929)
!6116 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 379, column: 6)
!6117 = !DILocation(line: 379, column: 11, scope: !6116, inlinedAt: !5929)
!6118 = !DILocation(line: 379, column: 6, scope: !5925, inlinedAt: !5929)
!6119 = !DILocation(line: 379, column: 33, scope: !6116, inlinedAt: !5929)
!6120 = !DILocation(line: 380, column: 6, scope: !6121, inlinedAt: !5929)
!6121 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 380, column: 6)
!6122 = !DILocation(line: 380, column: 11, scope: !6121, inlinedAt: !5929)
!6123 = !DILocation(line: 380, column: 6, scope: !5925, inlinedAt: !5929)
!6124 = !DILocation(line: 380, column: 33, scope: !6121, inlinedAt: !5929)
!6125 = !DILocation(line: 381, column: 6, scope: !6126, inlinedAt: !5929)
!6126 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 381, column: 6)
!6127 = !DILocation(line: 381, column: 11, scope: !6126, inlinedAt: !5929)
!6128 = !DILocation(line: 381, column: 6, scope: !5925, inlinedAt: !5929)
!6129 = !DILocation(line: 381, column: 33, scope: !6126, inlinedAt: !5929)
!6130 = !DILocation(line: 382, column: 2, scope: !6131, inlinedAt: !5929)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !197, line: 382, column: 2)
!6132 = distinct !DILexicalBlock(scope: !5925, file: !197, line: 382, column: 2)
!6133 = !{i32 -2144242172, i32 -2144242143, i32 -2144242097, i32 -2144242039, i32 -2144241985, i32 -2144241931, i32 -2144241876, i32 -2144241845}
!6134 = !DILocation(line: 382, column: 2, scope: !6135, inlinedAt: !5929)
!6135 = distinct !DILexicalBlock(scope: !6136, file: !197, line: 382, column: 2)
!6136 = distinct !DILexicalBlock(scope: !6132, file: !197, line: 382, column: 2)
!6137 = !{i32 -2144241402, i32 -2144241395, i32 -2144241341, i32 -2144241310, i32 -2144241280}
!6138 = !DILocation(line: 382, column: 2, scope: !6136, inlinedAt: !5929)
!6139 = !DILocation(line: 386, column: 1, scope: !5925, inlinedAt: !5929)
!6140 = !DILocation(line: 547, column: 9, scope: !5906, inlinedAt: !5911)
!6141 = !DILocation(line: 549, column: 8, scope: !6142, inlinedAt: !5911)
!6142 = distinct !DILexicalBlock(scope: !5906, file: !197, line: 549, column: 7)
!6143 = !DILocation(line: 549, column: 7, scope: !5906, inlinedAt: !5911)
!6144 = !DILocation(line: 550, column: 4, scope: !6142, inlinedAt: !5911)
!6145 = !DILocation(line: 553, column: 33, scope: !5906, inlinedAt: !5911)
!6146 = !DILocation(line: 325, column: 6, scope: !6147, inlinedAt: !5923)
!6147 = distinct !DILexicalBlock(scope: !5919, file: !197, line: 325, column: 6)
!6148 = !DILocation(line: 325, column: 6, scope: !5919, inlinedAt: !5923)
!6149 = !DILocation(line: 326, column: 3, scope: !6147, inlinedAt: !5923)
!6150 = !DILocation(line: 332, column: 9, scope: !5919, inlinedAt: !5923)
!6151 = !DILocation(line: 332, column: 15, scope: !5919, inlinedAt: !5923)
!6152 = !DILocation(line: 332, column: 2, scope: !5919, inlinedAt: !5923)
!6153 = !DILocation(line: 336, column: 1, scope: !5919, inlinedAt: !5923)
!6154 = !DILocation(line: 553, column: 5, scope: !5906, inlinedAt: !5911)
!6155 = !DILocation(line: 553, column: 41, scope: !5906, inlinedAt: !5911)
!6156 = !DILocation(line: 554, column: 5, scope: !5906, inlinedAt: !5911)
!6157 = !DILocation(line: 554, column: 12, scope: !5906, inlinedAt: !5911)
!6158 = !DILocation(line: 448, column: 31, scope: !5901, inlinedAt: !5905)
!6159 = !DILocation(line: 448, column: 34, scope: !5901, inlinedAt: !5905)
!6160 = !DILocation(line: 448, column: 14, scope: !5901, inlinedAt: !5905)
!6161 = !DILocation(line: 450, column: 22, scope: !5901, inlinedAt: !5905)
!6162 = !DILocation(line: 450, column: 25, scope: !5901, inlinedAt: !5905)
!6163 = !DILocation(line: 450, column: 30, scope: !5901, inlinedAt: !5905)
!6164 = !DILocation(line: 450, column: 36, scope: !5901, inlinedAt: !5905)
!6165 = !DILocation(line: 450, column: 8, scope: !5901, inlinedAt: !5905)
!6166 = !DILocation(line: 450, column: 6, scope: !5901, inlinedAt: !5905)
!6167 = !DILocation(line: 451, column: 9, scope: !5901, inlinedAt: !5905)
!6168 = !DILocation(line: 552, column: 3, scope: !5906, inlinedAt: !5911)
!6169 = !DILocation(line: 557, column: 19, scope: !5908, inlinedAt: !5911)
!6170 = !DILocation(line: 557, column: 25, scope: !5908, inlinedAt: !5911)
!6171 = !DILocation(line: 557, column: 9, scope: !5908, inlinedAt: !5911)
!6172 = !DILocation(line: 557, column: 2, scope: !5908, inlinedAt: !5911)
!6173 = !DILocation(line: 558, column: 1, scope: !5908, inlinedAt: !5911)
!6174 = !DILocation(line: 183, column: 2, scope: !5899)
!6175 = !DILocation(line: 183, column: 8, scope: !5899)
!6176 = !DILocation(line: 183, column: 13, scope: !5899)
!6177 = !DILocation(line: 184, column: 7, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 184, column: 6)
!6179 = !DILocation(line: 184, column: 13, scope: !6178)
!6180 = !DILocation(line: 184, column: 6, scope: !5899)
!6181 = !DILocation(line: 185, column: 9, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 184, column: 19)
!6183 = !DILocation(line: 185, column: 3, scope: !6182)
!6184 = !DILocation(line: 186, column: 3, scope: !6182)
!6185 = !DILocation(line: 189, column: 14, scope: !5899)
!6186 = !DILocation(line: 189, column: 2, scope: !5899)
!6187 = !DILocation(line: 189, column: 6, scope: !5899)
!6188 = !DILocation(line: 189, column: 12, scope: !5899)
!6189 = !DILocation(line: 190, column: 2, scope: !5899)
!6190 = !DILocation(line: 190, column: 6, scope: !5899)
!6191 = !DILocation(line: 190, column: 23, scope: !5899)
!6192 = !DILocation(line: 191, column: 50, scope: !5899)
!6193 = !DILocation(line: 191, column: 8, scope: !5899)
!6194 = !DILocation(line: 191, column: 6, scope: !5899)
!6195 = !DILocation(line: 192, column: 22, scope: !5899)
!6196 = !DILocation(line: 192, column: 26, scope: !5899)
!6197 = !DILocation(line: 192, column: 2, scope: !5899)
!6198 = !DILocation(line: 192, column: 8, scope: !5899)
!6199 = !DILocation(line: 192, column: 19, scope: !5899)
!6200 = !DILabel(scope: !5899, name: "out", file: !3, line: 193)
!6201 = !DILocation(line: 193, column: 1, scope: !5899)
!6202 = !DILocation(line: 194, column: 9, scope: !5899)
!6203 = !DILocation(line: 194, column: 2, scope: !5899)
!6204 = distinct !DISubprogram(name: "kzalloc", scope: !197, file: !197, line: 662, type: !5909, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6205 = !DILocation(line: 445, column: 72, scope: !5901, inlinedAt: !6206)
!6206 = distinct !DILocation(line: 552, column: 10, scope: !5906, inlinedAt: !6207)
!6207 = distinct !DILocation(line: 664, column: 9, scope: !6204)
!6208 = !DILocation(line: 446, column: 9, scope: !5901, inlinedAt: !6206)
!6209 = !DILocation(line: 446, column: 23, scope: !5901, inlinedAt: !6206)
!6210 = !DILocation(line: 448, column: 8, scope: !5901, inlinedAt: !6206)
!6211 = !DILocation(line: 318, column: 67, scope: !5919, inlinedAt: !6212)
!6212 = distinct !DILocation(line: 553, column: 20, scope: !5906, inlinedAt: !6207)
!6213 = !DILocation(line: 346, column: 58, scope: !5925, inlinedAt: !6214)
!6214 = distinct !DILocation(line: 547, column: 11, scope: !5906, inlinedAt: !6207)
!6215 = !DILocation(line: 472, column: 28, scope: !5931, inlinedAt: !6216)
!6216 = distinct !DILocation(line: 481, column: 9, scope: !5936, inlinedAt: !6217)
!6217 = distinct !DILocation(line: 545, column: 11, scope: !5938, inlinedAt: !6207)
!6218 = !DILocation(line: 472, column: 40, scope: !5931, inlinedAt: !6216)
!6219 = !DILocation(line: 472, column: 60, scope: !5931, inlinedAt: !6216)
!6220 = !DILocation(line: 478, column: 51, scope: !5936, inlinedAt: !6217)
!6221 = !DILocation(line: 478, column: 63, scope: !5936, inlinedAt: !6217)
!6222 = !DILocation(line: 480, column: 15, scope: !5936, inlinedAt: !6217)
!6223 = !DILocation(line: 538, column: 45, scope: !5908, inlinedAt: !6207)
!6224 = !DILocation(line: 538, column: 57, scope: !5908, inlinedAt: !6207)
!6225 = !DILocation(line: 542, column: 16, scope: !5906, inlinedAt: !6207)
!6226 = !DILocalVariable(name: "size", arg: 1, scope: !6204, file: !197, line: 662, type: !884)
!6227 = !DILocation(line: 662, column: 36, scope: !6204)
!6228 = !DILocalVariable(name: "flags", arg: 2, scope: !6204, file: !197, line: 662, type: !207)
!6229 = !DILocation(line: 662, column: 48, scope: !6204)
!6230 = !DILocation(line: 664, column: 17, scope: !6204)
!6231 = !DILocation(line: 664, column: 23, scope: !6204)
!6232 = !DILocation(line: 664, column: 29, scope: !6204)
!6233 = !DILocation(line: 540, column: 27, scope: !5907, inlinedAt: !6207)
!6234 = !DILocation(line: 540, column: 6, scope: !5907, inlinedAt: !6207)
!6235 = !DILocation(line: 540, column: 6, scope: !5908, inlinedAt: !6207)
!6236 = !DILocation(line: 544, column: 7, scope: !5938, inlinedAt: !6207)
!6237 = !DILocation(line: 544, column: 12, scope: !5938, inlinedAt: !6207)
!6238 = !DILocation(line: 544, column: 7, scope: !5906, inlinedAt: !6207)
!6239 = !DILocation(line: 545, column: 25, scope: !5938, inlinedAt: !6207)
!6240 = !DILocation(line: 545, column: 31, scope: !5938, inlinedAt: !6207)
!6241 = !DILocation(line: 480, column: 33, scope: !5936, inlinedAt: !6217)
!6242 = !DILocation(line: 480, column: 23, scope: !5936, inlinedAt: !6217)
!6243 = !DILocation(line: 481, column: 29, scope: !5936, inlinedAt: !6217)
!6244 = !DILocation(line: 481, column: 35, scope: !5936, inlinedAt: !6217)
!6245 = !DILocation(line: 481, column: 42, scope: !5936, inlinedAt: !6217)
!6246 = !DILocation(line: 474, column: 23, scope: !5931, inlinedAt: !6216)
!6247 = !DILocation(line: 474, column: 29, scope: !5931, inlinedAt: !6216)
!6248 = !DILocation(line: 474, column: 36, scope: !5931, inlinedAt: !6216)
!6249 = !DILocation(line: 474, column: 9, scope: !5931, inlinedAt: !6216)
!6250 = !DILocation(line: 545, column: 4, scope: !5938, inlinedAt: !6207)
!6251 = !DILocation(line: 547, column: 25, scope: !5906, inlinedAt: !6207)
!6252 = !DILocation(line: 348, column: 7, scope: !5986, inlinedAt: !6214)
!6253 = !DILocation(line: 348, column: 6, scope: !5925, inlinedAt: !6214)
!6254 = !DILocation(line: 349, column: 3, scope: !5986, inlinedAt: !6214)
!6255 = !DILocation(line: 351, column: 6, scope: !5990, inlinedAt: !6214)
!6256 = !DILocation(line: 351, column: 11, scope: !5990, inlinedAt: !6214)
!6257 = !DILocation(line: 351, column: 6, scope: !5925, inlinedAt: !6214)
!6258 = !DILocation(line: 352, column: 3, scope: !5990, inlinedAt: !6214)
!6259 = !DILocation(line: 354, column: 32, scope: !5995, inlinedAt: !6214)
!6260 = !DILocation(line: 354, column: 37, scope: !5995, inlinedAt: !6214)
!6261 = !DILocation(line: 354, column: 42, scope: !5995, inlinedAt: !6214)
!6262 = !DILocation(line: 354, column: 45, scope: !5995, inlinedAt: !6214)
!6263 = !DILocation(line: 354, column: 50, scope: !5995, inlinedAt: !6214)
!6264 = !DILocation(line: 354, column: 6, scope: !5925, inlinedAt: !6214)
!6265 = !DILocation(line: 355, column: 3, scope: !5995, inlinedAt: !6214)
!6266 = !DILocation(line: 356, column: 32, scope: !6003, inlinedAt: !6214)
!6267 = !DILocation(line: 356, column: 37, scope: !6003, inlinedAt: !6214)
!6268 = !DILocation(line: 356, column: 43, scope: !6003, inlinedAt: !6214)
!6269 = !DILocation(line: 356, column: 46, scope: !6003, inlinedAt: !6214)
!6270 = !DILocation(line: 356, column: 51, scope: !6003, inlinedAt: !6214)
!6271 = !DILocation(line: 356, column: 6, scope: !5925, inlinedAt: !6214)
!6272 = !DILocation(line: 357, column: 3, scope: !6003, inlinedAt: !6214)
!6273 = !DILocation(line: 358, column: 6, scope: !6011, inlinedAt: !6214)
!6274 = !DILocation(line: 358, column: 11, scope: !6011, inlinedAt: !6214)
!6275 = !DILocation(line: 358, column: 6, scope: !5925, inlinedAt: !6214)
!6276 = !DILocation(line: 358, column: 26, scope: !6011, inlinedAt: !6214)
!6277 = !DILocation(line: 359, column: 6, scope: !6016, inlinedAt: !6214)
!6278 = !DILocation(line: 359, column: 11, scope: !6016, inlinedAt: !6214)
!6279 = !DILocation(line: 359, column: 6, scope: !5925, inlinedAt: !6214)
!6280 = !DILocation(line: 359, column: 26, scope: !6016, inlinedAt: !6214)
!6281 = !DILocation(line: 360, column: 6, scope: !6021, inlinedAt: !6214)
!6282 = !DILocation(line: 360, column: 11, scope: !6021, inlinedAt: !6214)
!6283 = !DILocation(line: 360, column: 6, scope: !5925, inlinedAt: !6214)
!6284 = !DILocation(line: 360, column: 26, scope: !6021, inlinedAt: !6214)
!6285 = !DILocation(line: 361, column: 6, scope: !6026, inlinedAt: !6214)
!6286 = !DILocation(line: 361, column: 11, scope: !6026, inlinedAt: !6214)
!6287 = !DILocation(line: 361, column: 6, scope: !5925, inlinedAt: !6214)
!6288 = !DILocation(line: 361, column: 26, scope: !6026, inlinedAt: !6214)
!6289 = !DILocation(line: 362, column: 6, scope: !6031, inlinedAt: !6214)
!6290 = !DILocation(line: 362, column: 11, scope: !6031, inlinedAt: !6214)
!6291 = !DILocation(line: 362, column: 6, scope: !5925, inlinedAt: !6214)
!6292 = !DILocation(line: 362, column: 26, scope: !6031, inlinedAt: !6214)
!6293 = !DILocation(line: 363, column: 6, scope: !6036, inlinedAt: !6214)
!6294 = !DILocation(line: 363, column: 11, scope: !6036, inlinedAt: !6214)
!6295 = !DILocation(line: 363, column: 6, scope: !5925, inlinedAt: !6214)
!6296 = !DILocation(line: 363, column: 26, scope: !6036, inlinedAt: !6214)
!6297 = !DILocation(line: 364, column: 6, scope: !6041, inlinedAt: !6214)
!6298 = !DILocation(line: 364, column: 11, scope: !6041, inlinedAt: !6214)
!6299 = !DILocation(line: 364, column: 6, scope: !5925, inlinedAt: !6214)
!6300 = !DILocation(line: 364, column: 26, scope: !6041, inlinedAt: !6214)
!6301 = !DILocation(line: 365, column: 6, scope: !6046, inlinedAt: !6214)
!6302 = !DILocation(line: 365, column: 11, scope: !6046, inlinedAt: !6214)
!6303 = !DILocation(line: 365, column: 6, scope: !5925, inlinedAt: !6214)
!6304 = !DILocation(line: 365, column: 26, scope: !6046, inlinedAt: !6214)
!6305 = !DILocation(line: 366, column: 6, scope: !6051, inlinedAt: !6214)
!6306 = !DILocation(line: 366, column: 11, scope: !6051, inlinedAt: !6214)
!6307 = !DILocation(line: 366, column: 6, scope: !5925, inlinedAt: !6214)
!6308 = !DILocation(line: 366, column: 26, scope: !6051, inlinedAt: !6214)
!6309 = !DILocation(line: 367, column: 6, scope: !6056, inlinedAt: !6214)
!6310 = !DILocation(line: 367, column: 11, scope: !6056, inlinedAt: !6214)
!6311 = !DILocation(line: 367, column: 6, scope: !5925, inlinedAt: !6214)
!6312 = !DILocation(line: 367, column: 26, scope: !6056, inlinedAt: !6214)
!6313 = !DILocation(line: 368, column: 6, scope: !6061, inlinedAt: !6214)
!6314 = !DILocation(line: 368, column: 11, scope: !6061, inlinedAt: !6214)
!6315 = !DILocation(line: 368, column: 6, scope: !5925, inlinedAt: !6214)
!6316 = !DILocation(line: 368, column: 26, scope: !6061, inlinedAt: !6214)
!6317 = !DILocation(line: 369, column: 6, scope: !6066, inlinedAt: !6214)
!6318 = !DILocation(line: 369, column: 11, scope: !6066, inlinedAt: !6214)
!6319 = !DILocation(line: 369, column: 6, scope: !5925, inlinedAt: !6214)
!6320 = !DILocation(line: 369, column: 26, scope: !6066, inlinedAt: !6214)
!6321 = !DILocation(line: 370, column: 6, scope: !6071, inlinedAt: !6214)
!6322 = !DILocation(line: 370, column: 11, scope: !6071, inlinedAt: !6214)
!6323 = !DILocation(line: 370, column: 6, scope: !5925, inlinedAt: !6214)
!6324 = !DILocation(line: 370, column: 26, scope: !6071, inlinedAt: !6214)
!6325 = !DILocation(line: 371, column: 6, scope: !6076, inlinedAt: !6214)
!6326 = !DILocation(line: 371, column: 11, scope: !6076, inlinedAt: !6214)
!6327 = !DILocation(line: 371, column: 6, scope: !5925, inlinedAt: !6214)
!6328 = !DILocation(line: 371, column: 26, scope: !6076, inlinedAt: !6214)
!6329 = !DILocation(line: 372, column: 6, scope: !6081, inlinedAt: !6214)
!6330 = !DILocation(line: 372, column: 11, scope: !6081, inlinedAt: !6214)
!6331 = !DILocation(line: 372, column: 6, scope: !5925, inlinedAt: !6214)
!6332 = !DILocation(line: 372, column: 26, scope: !6081, inlinedAt: !6214)
!6333 = !DILocation(line: 373, column: 6, scope: !6086, inlinedAt: !6214)
!6334 = !DILocation(line: 373, column: 11, scope: !6086, inlinedAt: !6214)
!6335 = !DILocation(line: 373, column: 6, scope: !5925, inlinedAt: !6214)
!6336 = !DILocation(line: 373, column: 26, scope: !6086, inlinedAt: !6214)
!6337 = !DILocation(line: 374, column: 6, scope: !6091, inlinedAt: !6214)
!6338 = !DILocation(line: 374, column: 11, scope: !6091, inlinedAt: !6214)
!6339 = !DILocation(line: 374, column: 6, scope: !5925, inlinedAt: !6214)
!6340 = !DILocation(line: 374, column: 26, scope: !6091, inlinedAt: !6214)
!6341 = !DILocation(line: 375, column: 6, scope: !6096, inlinedAt: !6214)
!6342 = !DILocation(line: 375, column: 11, scope: !6096, inlinedAt: !6214)
!6343 = !DILocation(line: 375, column: 6, scope: !5925, inlinedAt: !6214)
!6344 = !DILocation(line: 375, column: 27, scope: !6096, inlinedAt: !6214)
!6345 = !DILocation(line: 376, column: 6, scope: !6101, inlinedAt: !6214)
!6346 = !DILocation(line: 376, column: 11, scope: !6101, inlinedAt: !6214)
!6347 = !DILocation(line: 376, column: 6, scope: !5925, inlinedAt: !6214)
!6348 = !DILocation(line: 376, column: 32, scope: !6101, inlinedAt: !6214)
!6349 = !DILocation(line: 377, column: 6, scope: !6106, inlinedAt: !6214)
!6350 = !DILocation(line: 377, column: 11, scope: !6106, inlinedAt: !6214)
!6351 = !DILocation(line: 377, column: 6, scope: !5925, inlinedAt: !6214)
!6352 = !DILocation(line: 377, column: 32, scope: !6106, inlinedAt: !6214)
!6353 = !DILocation(line: 378, column: 6, scope: !6111, inlinedAt: !6214)
!6354 = !DILocation(line: 378, column: 11, scope: !6111, inlinedAt: !6214)
!6355 = !DILocation(line: 378, column: 6, scope: !5925, inlinedAt: !6214)
!6356 = !DILocation(line: 378, column: 32, scope: !6111, inlinedAt: !6214)
!6357 = !DILocation(line: 379, column: 6, scope: !6116, inlinedAt: !6214)
!6358 = !DILocation(line: 379, column: 11, scope: !6116, inlinedAt: !6214)
!6359 = !DILocation(line: 379, column: 6, scope: !5925, inlinedAt: !6214)
!6360 = !DILocation(line: 379, column: 33, scope: !6116, inlinedAt: !6214)
!6361 = !DILocation(line: 380, column: 6, scope: !6121, inlinedAt: !6214)
!6362 = !DILocation(line: 380, column: 11, scope: !6121, inlinedAt: !6214)
!6363 = !DILocation(line: 380, column: 6, scope: !5925, inlinedAt: !6214)
!6364 = !DILocation(line: 380, column: 33, scope: !6121, inlinedAt: !6214)
!6365 = !DILocation(line: 381, column: 6, scope: !6126, inlinedAt: !6214)
!6366 = !DILocation(line: 381, column: 11, scope: !6126, inlinedAt: !6214)
!6367 = !DILocation(line: 381, column: 6, scope: !5925, inlinedAt: !6214)
!6368 = !DILocation(line: 381, column: 33, scope: !6126, inlinedAt: !6214)
!6369 = !DILocation(line: 382, column: 2, scope: !6131, inlinedAt: !6214)
!6370 = !DILocation(line: 382, column: 2, scope: !6135, inlinedAt: !6214)
!6371 = !DILocation(line: 382, column: 2, scope: !6136, inlinedAt: !6214)
!6372 = !DILocation(line: 386, column: 1, scope: !5925, inlinedAt: !6214)
!6373 = !DILocation(line: 547, column: 9, scope: !5906, inlinedAt: !6207)
!6374 = !DILocation(line: 549, column: 8, scope: !6142, inlinedAt: !6207)
!6375 = !DILocation(line: 549, column: 7, scope: !5906, inlinedAt: !6207)
!6376 = !DILocation(line: 550, column: 4, scope: !6142, inlinedAt: !6207)
!6377 = !DILocation(line: 553, column: 33, scope: !5906, inlinedAt: !6207)
!6378 = !DILocation(line: 325, column: 6, scope: !6147, inlinedAt: !6212)
!6379 = !DILocation(line: 325, column: 6, scope: !5919, inlinedAt: !6212)
!6380 = !DILocation(line: 326, column: 3, scope: !6147, inlinedAt: !6212)
!6381 = !DILocation(line: 332, column: 9, scope: !5919, inlinedAt: !6212)
!6382 = !DILocation(line: 332, column: 15, scope: !5919, inlinedAt: !6212)
!6383 = !DILocation(line: 332, column: 2, scope: !5919, inlinedAt: !6212)
!6384 = !DILocation(line: 336, column: 1, scope: !5919, inlinedAt: !6212)
!6385 = !DILocation(line: 553, column: 5, scope: !5906, inlinedAt: !6207)
!6386 = !DILocation(line: 553, column: 41, scope: !5906, inlinedAt: !6207)
!6387 = !DILocation(line: 554, column: 5, scope: !5906, inlinedAt: !6207)
!6388 = !DILocation(line: 554, column: 12, scope: !5906, inlinedAt: !6207)
!6389 = !DILocation(line: 448, column: 31, scope: !5901, inlinedAt: !6206)
!6390 = !DILocation(line: 448, column: 34, scope: !5901, inlinedAt: !6206)
!6391 = !DILocation(line: 448, column: 14, scope: !5901, inlinedAt: !6206)
!6392 = !DILocation(line: 450, column: 22, scope: !5901, inlinedAt: !6206)
!6393 = !DILocation(line: 450, column: 25, scope: !5901, inlinedAt: !6206)
!6394 = !DILocation(line: 450, column: 30, scope: !5901, inlinedAt: !6206)
!6395 = !DILocation(line: 450, column: 36, scope: !5901, inlinedAt: !6206)
!6396 = !DILocation(line: 450, column: 8, scope: !5901, inlinedAt: !6206)
!6397 = !DILocation(line: 450, column: 6, scope: !5901, inlinedAt: !6206)
!6398 = !DILocation(line: 451, column: 9, scope: !5901, inlinedAt: !6206)
!6399 = !DILocation(line: 552, column: 3, scope: !5906, inlinedAt: !6207)
!6400 = !DILocation(line: 557, column: 19, scope: !5908, inlinedAt: !6207)
!6401 = !DILocation(line: 557, column: 25, scope: !5908, inlinedAt: !6207)
!6402 = !DILocation(line: 557, column: 9, scope: !5908, inlinedAt: !6207)
!6403 = !DILocation(line: 557, column: 2, scope: !5908, inlinedAt: !6207)
!6404 = !DILocation(line: 558, column: 1, scope: !5908, inlinedAt: !6207)
!6405 = !DILocation(line: 664, column: 2, scope: !6204)
!6406 = distinct !DISubprogram(name: "rio_karma_destructor", scope: !3, file: !3, line: 168, type: !1882, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6407 = !DILocalVariable(name: "extra", arg: 1, scope: !6406, file: !3, line: 168, type: !209)
!6408 = !DILocation(line: 168, column: 40, scope: !6406)
!6409 = !DILocalVariable(name: "data", scope: !6406, file: !3, line: 170, type: !210)
!6410 = !DILocation(line: 170, column: 21, scope: !6406)
!6411 = !DILocation(line: 170, column: 50, scope: !6406)
!6412 = !DILocation(line: 170, column: 28, scope: !6406)
!6413 = !DILocation(line: 172, column: 8, scope: !6406)
!6414 = !DILocation(line: 172, column: 14, scope: !6406)
!6415 = !DILocation(line: 172, column: 2, scope: !6406)
!6416 = !DILocation(line: 173, column: 1, scope: !6406)
!6417 = !DILocalVariable(name: "m", arg: 1, scope: !6418, file: !6419, line: 363, type: !3062)
!6418 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6419, file: !6419, line: 363, type: !6420, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6419 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!319, !3062}
!6422 = !DILocation(line: 363, column: 74, scope: !6418, inlinedAt: !6423)
!6423 = distinct !DILocation(line: 107, column: 22, scope: !5782)
!6424 = !DILocalVariable(name: "cmd", arg: 1, scope: !5782, file: !3, line: 94, type: !217)
!6425 = !DILocation(line: 94, column: 40, scope: !5782)
!6426 = !DILocalVariable(name: "us", arg: 2, scope: !5782, file: !3, line: 94, type: !5436)
!6427 = !DILocation(line: 94, column: 61, scope: !5782)
!6428 = !DILocalVariable(name: "result", scope: !5782, file: !3, line: 96, type: !214)
!6429 = !DILocation(line: 96, column: 6, scope: !5782)
!6430 = !DILocalVariable(name: "timeout", scope: !5782, file: !3, line: 97, type: !319)
!6431 = !DILocation(line: 97, column: 16, scope: !5782)
!6432 = !DILocalVariable(name: "data", scope: !5782, file: !3, line: 99, type: !210)
!6433 = !DILocation(line: 99, column: 21, scope: !5782)
!6434 = !DILocation(line: 99, column: 50, scope: !5782)
!6435 = !DILocation(line: 99, column: 54, scope: !5782)
!6436 = !DILocation(line: 99, column: 28, scope: !5782)
!6437 = !DILocation(line: 101, column: 2, scope: !5782)
!6438 = !DILocation(line: 101, column: 2, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 101, column: 2)
!6440 = !DILocation(line: 102, column: 9, scope: !5782)
!6441 = !DILocation(line: 102, column: 13, scope: !5782)
!6442 = !DILocation(line: 102, column: 2, scope: !5782)
!6443 = !DILocation(line: 103, column: 9, scope: !5782)
!6444 = !DILocation(line: 103, column: 13, scope: !5782)
!6445 = !DILocation(line: 103, column: 2, scope: !5782)
!6446 = !DILocation(line: 104, column: 17, scope: !5782)
!6447 = !DILocation(line: 104, column: 2, scope: !5782)
!6448 = !DILocation(line: 104, column: 6, scope: !5782)
!6449 = !DILocation(line: 104, column: 15, scope: !5782)
!6450 = !DILocation(line: 105, column: 17, scope: !5782)
!6451 = !DILocation(line: 105, column: 2, scope: !5782)
!6452 = !DILocation(line: 105, column: 6, scope: !5782)
!6453 = !DILocation(line: 105, column: 15, scope: !5782)
!6454 = !DILocation(line: 107, column: 12, scope: !5782)
!6455 = !DILocation(line: 365, column: 27, scope: !6456, inlinedAt: !6423)
!6456 = distinct !DILexicalBlock(scope: !6418, file: !6419, line: 365, column: 6)
!6457 = !DILocation(line: 365, column: 6, scope: !6456, inlinedAt: !6423)
!6458 = !DILocation(line: 365, column: 6, scope: !6418, inlinedAt: !6423)
!6459 = !DILocation(line: 366, column: 12, scope: !6460, inlinedAt: !6423)
!6460 = distinct !DILexicalBlock(scope: !6461, file: !6419, line: 366, column: 7)
!6461 = distinct !DILexicalBlock(scope: !6456, file: !6419, line: 365, column: 31)
!6462 = !DILocation(line: 366, column: 14, scope: !6460, inlinedAt: !6423)
!6463 = !DILocation(line: 366, column: 7, scope: !6461, inlinedAt: !6423)
!6464 = !DILocation(line: 367, column: 4, scope: !6460, inlinedAt: !6423)
!6465 = !DILocation(line: 368, column: 28, scope: !6461, inlinedAt: !6423)
!6466 = !DILocation(line: 368, column: 10, scope: !6461, inlinedAt: !6423)
!6467 = !DILocation(line: 368, column: 3, scope: !6461, inlinedAt: !6423)
!6468 = !DILocation(line: 370, column: 29, scope: !6469, inlinedAt: !6423)
!6469 = distinct !DILexicalBlock(scope: !6456, file: !6419, line: 369, column: 9)
!6470 = !DILocation(line: 370, column: 10, scope: !6469, inlinedAt: !6423)
!6471 = !DILocation(line: 370, column: 3, scope: !6469, inlinedAt: !6423)
!6472 = !DILocation(line: 372, column: 1, scope: !6418, inlinedAt: !6423)
!6473 = !DILocation(line: 107, column: 20, scope: !5782)
!6474 = !DILocation(line: 107, column: 10, scope: !5782)
!6475 = !DILocation(line: 108, column: 2, scope: !5782)
!6476 = !DILocation(line: 109, column: 39, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 108, column: 11)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 108, column: 2)
!6479 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 108, column: 2)
!6480 = !DILocation(line: 109, column: 43, scope: !6477)
!6481 = !DILocation(line: 109, column: 47, scope: !6477)
!6482 = !DILocation(line: 110, column: 4, scope: !6477)
!6483 = !DILocation(line: 110, column: 8, scope: !6477)
!6484 = !DILocation(line: 109, column: 12, scope: !6477)
!6485 = !DILocation(line: 109, column: 10, scope: !6477)
!6486 = !DILocation(line: 111, column: 7, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 111, column: 7)
!6488 = !DILocation(line: 111, column: 14, scope: !6487)
!6489 = !DILocation(line: 111, column: 7, scope: !6477)
!6490 = !DILocation(line: 112, column: 4, scope: !6487)
!6491 = !DILocation(line: 114, column: 39, scope: !6477)
!6492 = !DILocation(line: 114, column: 43, scope: !6477)
!6493 = !DILocation(line: 114, column: 47, scope: !6477)
!6494 = !DILocation(line: 115, column: 4, scope: !6477)
!6495 = !DILocation(line: 115, column: 10, scope: !6477)
!6496 = !DILocation(line: 114, column: 12, scope: !6477)
!6497 = !DILocation(line: 114, column: 10, scope: !6477)
!6498 = !DILocation(line: 116, column: 7, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 116, column: 7)
!6500 = !DILocation(line: 116, column: 14, scope: !6499)
!6501 = !DILocation(line: 116, column: 7, scope: !6477)
!6502 = !DILocation(line: 117, column: 4, scope: !6499)
!6503 = !DILocation(line: 119, column: 7, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 119, column: 7)
!6505 = !DILocation(line: 119, column: 13, scope: !6504)
!6506 = !DILocation(line: 119, column: 24, scope: !6504)
!6507 = !DILocation(line: 119, column: 21, scope: !6504)
!6508 = !DILocation(line: 119, column: 7, scope: !6477)
!6509 = !DILocation(line: 120, column: 4, scope: !6504)
!6510 = !DILocation(line: 122, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 122, column: 7)
!6512 = !DILocation(line: 122, column: 7, scope: !6477)
!6513 = !DILocation(line: 123, column: 4, scope: !6511)
!6514 = !DILocation(line: 125, column: 3, scope: !6477)
!6515 = !DILocation(line: 125, column: 7, scope: !6477)
!6516 = !DILocation(line: 125, column: 16, scope: !6477)
!6517 = !DILocation(line: 126, column: 3, scope: !6477)
!6518 = !DILocation(line: 126, column: 7, scope: !6477)
!6519 = !DILocation(line: 126, column: 16, scope: !6477)
!6520 = !DILocation(line: 127, column: 3, scope: !6477)
!6521 = !DILocation(line: 108, column: 2, scope: !6478)
!6522 = distinct !{!6522, !6523, !6524}
!6523 = !DILocation(line: 108, column: 2, scope: !6479)
!6524 = !DILocation(line: 128, column: 2, scope: !6479)
!6525 = !DILocation(line: 130, column: 5, scope: !5782)
!6526 = !DILocation(line: 131, column: 6, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 131, column: 6)
!6528 = !DILocation(line: 131, column: 10, scope: !6527)
!6529 = !DILocation(line: 131, column: 6, scope: !5782)
!6530 = !DILocation(line: 132, column: 7, scope: !6527)
!6531 = !DILocation(line: 132, column: 3, scope: !6527)
!6532 = !DILocation(line: 134, column: 2, scope: !5782)
!6533 = !DILocation(line: 134, column: 2, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 134, column: 2)
!6535 = !DILocation(line: 135, column: 2, scope: !5782)
!6536 = !DILabel(scope: !5782, name: "err", file: !3, line: 136)
!6537 = !DILocation(line: 136, column: 1, scope: !5782)
!6538 = !DILocation(line: 137, column: 2, scope: !5782)
!6539 = !DILocation(line: 137, column: 2, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 137, column: 2)
!6541 = !DILocation(line: 138, column: 2, scope: !5782)
!6542 = !DILocation(line: 139, column: 1, scope: !5782)
!6543 = distinct !DISubprogram(name: "get_order", scope: !6544, file: !6544, line: 29, type: !6545, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6544 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!214, !319}
!6547 = !DILocalVariable(name: "x", arg: 1, scope: !6548, file: !6549, line: 366, type: !367)
!6548 = distinct !DISubprogram(name: "fls64", scope: !6549, file: !6549, line: 366, type: !6550, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6549 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6550 = !DISubroutineType(types: !6551)
!6551 = !{!214, !367}
!6552 = !DILocation(line: 366, column: 40, scope: !6548, inlinedAt: !6553)
!6553 = distinct !DILocation(line: 46, column: 9, scope: !6543)
!6554 = !DILocalVariable(name: "bitpos", scope: !6548, file: !6549, line: 368, type: !214)
!6555 = !DILocation(line: 368, column: 6, scope: !6548, inlinedAt: !6553)
!6556 = !DILocalVariable(name: "size", arg: 1, scope: !6543, file: !6544, line: 29, type: !319)
!6557 = !DILocation(line: 29, column: 63, scope: !6543)
!6558 = !DILocation(line: 31, column: 27, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6543, file: !6544, line: 31, column: 6)
!6560 = !DILocation(line: 31, column: 6, scope: !6559)
!6561 = !DILocation(line: 31, column: 6, scope: !6543)
!6562 = !DILocation(line: 32, column: 8, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6564, file: !6544, line: 32, column: 7)
!6564 = distinct !DILexicalBlock(scope: !6559, file: !6544, line: 31, column: 34)
!6565 = !DILocation(line: 32, column: 7, scope: !6564)
!6566 = !DILocation(line: 33, column: 4, scope: !6563)
!6567 = !DILocation(line: 35, column: 7, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6564, file: !6544, line: 35, column: 7)
!6569 = !DILocation(line: 35, column: 12, scope: !6568)
!6570 = !DILocation(line: 35, column: 7, scope: !6564)
!6571 = !DILocation(line: 36, column: 4, scope: !6568)
!6572 = !DILocation(line: 38, column: 10, scope: !6564)
!6573 = !DILocation(line: 38, column: 28, scope: !6564)
!6574 = !DILocation(line: 38, column: 41, scope: !6564)
!6575 = !DILocation(line: 38, column: 3, scope: !6564)
!6576 = !DILocation(line: 41, column: 6, scope: !6543)
!6577 = !DILocation(line: 42, column: 7, scope: !6543)
!6578 = !DILocation(line: 46, column: 15, scope: !6543)
!6579 = !DILocation(line: 374, column: 2, scope: !6548, inlinedAt: !6553)
!6580 = !DILocation(line: 376, column: 14, scope: !6548, inlinedAt: !6553)
!6581 = !{i32 302153}
!6582 = !DILocation(line: 377, column: 9, scope: !6548, inlinedAt: !6553)
!6583 = !DILocation(line: 377, column: 16, scope: !6548, inlinedAt: !6553)
!6584 = !DILocation(line: 46, column: 2, scope: !6543)
!6585 = !DILocation(line: 48, column: 1, scope: !6543)
!6586 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6587, file: !6587, line: 30, type: !6588, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6587 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!214, !366}
!6590 = !DILocation(line: 366, column: 40, scope: !6548, inlinedAt: !6591)
!6591 = distinct !DILocation(line: 32, column: 9, scope: !6586)
!6592 = !DILocation(line: 368, column: 6, scope: !6548, inlinedAt: !6591)
!6593 = !DILocalVariable(name: "n", arg: 1, scope: !6586, file: !6587, line: 30, type: !366)
!6594 = !DILocation(line: 30, column: 21, scope: !6586)
!6595 = !DILocation(line: 32, column: 15, scope: !6586)
!6596 = !DILocation(line: 374, column: 2, scope: !6548, inlinedAt: !6591)
!6597 = !DILocation(line: 376, column: 14, scope: !6548, inlinedAt: !6591)
!6598 = !DILocation(line: 377, column: 9, scope: !6548, inlinedAt: !6591)
!6599 = !DILocation(line: 377, column: 16, scope: !6548, inlinedAt: !6591)
!6600 = !DILocation(line: 32, column: 18, scope: !6586)
!6601 = !DILocation(line: 32, column: 2, scope: !6586)
!6602 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6603, file: !6603, line: 137, type: !6604, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6603 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6604 = !DISubroutineType(types: !6605)
!6605 = !{!209, !2623, !1872, !884, !207}
!6606 = !DILocalVariable(name: "s", arg: 1, scope: !6602, file: !6603, line: 137, type: !2623)
!6607 = !DILocation(line: 137, column: 54, scope: !6602)
!6608 = !DILocalVariable(name: "object", arg: 2, scope: !6602, file: !6603, line: 137, type: !1872)
!6609 = !DILocation(line: 137, column: 69, scope: !6602)
!6610 = !DILocalVariable(name: "size", arg: 3, scope: !6602, file: !6603, line: 138, type: !884)
!6611 = !DILocation(line: 138, column: 12, scope: !6602)
!6612 = !DILocalVariable(name: "flags", arg: 4, scope: !6602, file: !6603, line: 138, type: !207)
!6613 = !DILocation(line: 138, column: 24, scope: !6602)
!6614 = !DILocation(line: 140, column: 17, scope: !6602)
!6615 = !DILocation(line: 140, column: 2, scope: !6602)
!6616 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6419, file: !6419, line: 308, type: !6420, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !287)
!6617 = !DILocalVariable(name: "m", arg: 1, scope: !6616, file: !6419, line: 308, type: !3062)
!6618 = !DILocation(line: 308, column: 66, scope: !6616)
!6619 = !DILocation(line: 310, column: 10, scope: !6616)
!6620 = !DILocation(line: 310, column: 12, scope: !6616)
!6621 = !DILocation(line: 310, column: 34, scope: !6616)
!6622 = !DILocation(line: 310, column: 39, scope: !6616)
!6623 = !DILocation(line: 310, column: 2, scope: !6616)
