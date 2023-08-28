; ModuleID = '../bcout/drivers/usb/gadget/udc/bdc/bdc_udc.llvm.bc'
source_filename = "drivers/usb/gadget/udc/bdc/bdc_udc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.usb_gadget_ops = type { i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32, i64)*, void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)*, i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)*, i32 (%struct.usb_gadget*)*, void (%struct.usb_gadget*, i32)*, %struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* }
%struct.usb_gadget = type { %struct.work_struct, %struct.usb_udc*, %struct.usb_gadget_ops*, %struct.usb_ep*, %struct.list_head, i32, i32, i32, i8*, %struct.device, i32, i32, i32, i32, %struct.usb_otg_caps*, i24, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.usb_udc = type opaque
%struct.usb_ep = type { i8*, i8*, %struct.usb_ep_ops*, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor* }
%struct.usb_ep_ops = type { i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)*, %struct.usb_request* (%struct.usb_ep*, i32)*, void (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, %struct.usb_request*, i32)*, i32 (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, i32)*, i32 (%struct.usb_ep*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)* }
%struct.usb_request = type { i8*, i32, i64, %struct.scatterlist*, i32, i32, i24, void (%struct.usb_ep*, %struct.usb_request*)*, i8*, %struct.list_head, i32, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%struct.usb_gadget_driver = type { i8*, i32, {}*, void (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, %struct.device_driver, i8*, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.bdc = type { %struct.usb_gadget, %struct.usb_gadget_driver*, %struct.device*, %struct.spinlock, %struct.phy**, i32, i32, %struct.bdc_ep**, i8*, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, i8*, i32, %struct.dma_pool*, i8, [2 x {}*], [3 x {}*], [6 x i8], %struct.delayed_work, %struct.clk* }
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.regulator = type opaque
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, %struct.bdc*, i8, i8, i8, %struct.usb_ss_ep_comp_descriptor*, %struct.usb_endpoint_descriptor*, i32, [20 x i8], %struct.bd_list, i8 }
%struct.bd_list = type { %struct.bd_table**, i32, i32, i32, i32, i32 }
%struct.bd_table = type { %struct.bdc_bd*, i64 }
%struct.bdc_bd = type { [4 x i32] }
%struct.bdc_scratchpad = type { i64, i8*, i32 }
%struct.srr = type { %struct.bdc_sr*, i16, i16, i64 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, %struct.bdc_ep*, %struct.bd_transfer, i32 }
%struct.bd_transfer = type { %struct.bdc_req*, i32, i32, i32 }
%struct.dma_pool = type opaque
%struct.clk = type opaque
%struct.bdc_sr = type { [4 x i32] }

@bdc_gadget_ops = internal constant %struct.usb_gadget_ops { i32 (%struct.usb_gadget*)* null, i32 (%struct.usb_gadget*)* @bdc_udc_wakeup, i32 (%struct.usb_gadget*, i32)* @bdc_udc_set_selfpowered, i32 (%struct.usb_gadget*, i32)* null, i32 (%struct.usb_gadget*, i32)* null, i32 (%struct.usb_gadget*, i32)* @bdc_udc_pullup, i32 (%struct.usb_gadget*, i32, i64)* null, void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)* null, i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @bdc_udc_start, i32 (%struct.usb_gadget*)* @bdc_udc_stop, void (%struct.usb_gadget*, i32)* null, %struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"bdc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request irq #%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bdc init ep fail: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to register udc\0A\00", align 1
@bdc_gadget_ep0_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 512, i8 0, i8 0, i8 0 }>, align 1, !dbg !5379
@.str.4 = private unnamed_addr constant [19 x i8] c"fail to enable %s\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"UNDEFINED SPEED\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EP0 config failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"can't wakeup from link state %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s is already bound to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s bdc run fail\0A\00", align 1
@__func__.bdc_udc_start = private unnamed_addr constant [14 x i8] c"bdc_udc_start\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Global irq pending but SRR IP is 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"SR:%d not handled\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"err in bdc reinit\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bdc_sr_uspc(%struct.bdc* %bdc, %struct.bdc_sr* %sreport) #0 !dbg !5387 {
entry:
  %bdc.addr = alloca %struct.bdc*, align 8
  %sreport.addr = alloca %struct.bdc_sr*, align 8
  %clear_flags = alloca i32, align 4
  %uspc = alloca i32, align 4
  %connected = alloca i8, align 1
  %disconn = alloca i8, align 1
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  store %struct.bdc_sr* %sreport, %struct.bdc_sr** %sreport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc_sr** %sreport.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata i32* %clear_flags, metadata !5392, metadata !DIExpression()), !dbg !5393
  store i32 0, i32* %clear_flags, align 4, !dbg !5393
  call void @llvm.dbg.declare(metadata i32* %uspc, metadata !5394, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.declare(metadata i8* %connected, metadata !5396, metadata !DIExpression()), !dbg !5397
  store i8 0, i8* %connected, align 1, !dbg !5397
  call void @llvm.dbg.declare(metadata i8* %disconn, metadata !5398, metadata !DIExpression()), !dbg !5399
  store i8 0, i8* %disconn, align 1, !dbg !5399
  %0 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5400
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %0, i32 0, i32 8, !dbg !5401
  %1 = load i8*, i8** %regs, align 8, !dbg !5401
  %call = call i32 @bdc_readl(i8* %1, i32 32) #8, !dbg !5402
  store i32 %call, i32* %uspc, align 4, !dbg !5403
  %2 = load i32, i32* %uspc, align 4, !dbg !5404
  %and = and i32 %2, 134217728, !dbg !5406
  %tobool = icmp ne i32 %and, 0, !dbg !5406
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5407

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %uspc, align 4, !dbg !5408
  %and1 = and i32 %3, -2147483648, !dbg !5411
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5411
  br i1 %tobool2, label %land.lhs.true, label %if.else, !dbg !5412

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %uspc, align 4, !dbg !5413
  %and3 = and i32 %4, 33554432, !dbg !5414
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5414
  br i1 %tobool4, label %if.else, label %land.lhs.true5, !dbg !5415

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %uspc, align 4, !dbg !5416
  %and6 = and i32 %5, 8388608, !dbg !5417
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5417
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !5418

if.then8:                                         ; preds = %land.lhs.true5
  store i8 1, i8* %disconn, align 1, !dbg !5419
  br label %if.end15, !dbg !5420

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.then
  %6 = load i32, i32* %uspc, align 4, !dbg !5421
  %and9 = and i32 %6, 8388608, !dbg !5423
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5423
  br i1 %tobool10, label %land.lhs.true11, label %if.end, !dbg !5424

land.lhs.true11:                                  ; preds = %if.else
  %7 = load i32, i32* %uspc, align 4, !dbg !5425
  %and12 = and i32 %7, 15, !dbg !5425
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5425
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !5426

if.then14:                                        ; preds = %land.lhs.true11
  store i8 1, i8* %connected, align 1, !dbg !5427
  br label %if.end, !dbg !5428

if.end:                                           ; preds = %if.then14, %land.lhs.true11, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then8
  %8 = load i32, i32* %clear_flags, align 4, !dbg !5429
  %or = or i32 %8, 134217728, !dbg !5429
  store i32 %or, i32* %clear_flags, align 4, !dbg !5429
  br label %if.end16, !dbg !5430

if.end16:                                         ; preds = %if.end15, %entry
  %9 = load i32, i32* %uspc, align 4, !dbg !5431
  %and17 = and i32 %9, -2147483648, !dbg !5433
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5433
  br i1 %tobool18, label %land.lhs.true19, label %if.else27, !dbg !5434

land.lhs.true19:                                  ; preds = %if.end16
  %10 = load i32, i32* %uspc, align 4, !dbg !5435
  %and20 = and i32 %10, 33554432, !dbg !5436
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5436
  br i1 %tobool21, label %if.then22, label %if.else27, !dbg !5437

if.then22:                                        ; preds = %land.lhs.true19
  %11 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5438
  %pullup = getelementptr inbounds %struct.bdc, %struct.bdc* %11, i32 0, i32 19, !dbg !5441
  %12 = load i8, i8* %pullup, align 1, !dbg !5441
  %tobool23 = trunc i8 %12 to i1, !dbg !5441
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5442

if.then24:                                        ; preds = %if.then22
  %13 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5443
  call void @bdc_softconn(%struct.bdc* %13) #8, !dbg !5445
  %14 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5446
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 0, !dbg !5447
  call void @usb_gadget_set_state(%struct.usb_gadget* %gadget, i32 2) #8, !dbg !5448
  br label %if.end25, !dbg !5449

if.end25:                                         ; preds = %if.then24, %if.then22
  %15 = load i32, i32* %clear_flags, align 4, !dbg !5450
  %or26 = or i32 %15, -2147483648, !dbg !5450
  store i32 %or26, i32* %clear_flags, align 4, !dbg !5450
  br label %if.end47, !dbg !5451

if.else27:                                        ; preds = %land.lhs.true19, %if.end16
  %16 = load i32, i32* %uspc, align 4, !dbg !5452
  %and28 = and i32 %16, 16777216, !dbg !5454
  %tobool29 = icmp ne i32 %and28, 0, !dbg !5454
  br i1 %tobool29, label %if.then34, label %lor.lhs.false, !dbg !5455

lor.lhs.false:                                    ; preds = %if.else27
  %17 = load i32, i32* %uspc, align 4, !dbg !5456
  %and30 = and i32 %17, 1073741824, !dbg !5457
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5457
  br i1 %tobool31, label %if.then34, label %lor.lhs.false32, !dbg !5458

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %18 = load i8, i8* %disconn, align 1, !dbg !5459
  %tobool33 = trunc i8 %18 to i1, !dbg !5459
  br i1 %tobool33, label %if.then34, label %if.else37, !dbg !5460

if.then34:                                        ; preds = %lor.lhs.false32, %lor.lhs.false, %if.else27
  %19 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5461
  %20 = load i8, i8* %disconn, align 1, !dbg !5463
  %tobool35 = trunc i8 %20 to i1, !dbg !5463
  call void @bdc_uspc_disconnected(%struct.bdc* %19, i1 zeroext %tobool35) #8, !dbg !5464
  %21 = load i32, i32* %clear_flags, align 4, !dbg !5465
  %or36 = or i32 %21, 1073741824, !dbg !5465
  store i32 %or36, i32* %clear_flags, align 4, !dbg !5465
  br label %if.end46, !dbg !5466

if.else37:                                        ; preds = %lor.lhs.false32
  %22 = load i32, i32* %uspc, align 4, !dbg !5467
  %and38 = and i32 %22, 67108864, !dbg !5469
  %tobool39 = icmp ne i32 %and38, 0, !dbg !5469
  br i1 %tobool39, label %land.lhs.true40, label %if.end45, !dbg !5470

land.lhs.true40:                                  ; preds = %if.else37
  %23 = load i32, i32* %uspc, align 4, !dbg !5471
  %and41 = and i32 %23, 8388608, !dbg !5472
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5472
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !5473

if.then43:                                        ; preds = %land.lhs.true40
  %24 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5474
  %25 = load i32, i32* %uspc, align 4, !dbg !5476
  call void @handle_link_state_change(%struct.bdc* %24, i32 %25) #8, !dbg !5477
  %26 = load i32, i32* %clear_flags, align 4, !dbg !5478
  %or44 = or i32 %26, 67108864, !dbg !5478
  store i32 %or44, i32* %clear_flags, align 4, !dbg !5478
  br label %if.end45, !dbg !5479

if.end45:                                         ; preds = %if.then43, %land.lhs.true40, %if.else37
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end25
  %27 = load i8, i8* %connected, align 1, !dbg !5480
  %tobool48 = trunc i8 %27 to i1, !dbg !5480
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !5482

if.then49:                                        ; preds = %if.end47
  %28 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5483
  call void @bdc_uspc_connected(%struct.bdc* %28) #8, !dbg !5485
  %29 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5486
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %29, i32 0, i32 20, !dbg !5487
  %30 = load i32, i32* %devstatus, align 8, !dbg !5488
  %and50 = and i32 %30, -131073, !dbg !5488
  store i32 %and50, i32* %devstatus, align 8, !dbg !5488
  br label %if.end51, !dbg !5489

if.end51:                                         ; preds = %if.then49, %if.end47
  %31 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5490
  %regs52 = getelementptr inbounds %struct.bdc, %struct.bdc* %31, i32 0, i32 8, !dbg !5491
  %32 = load i8*, i8** %regs52, align 8, !dbg !5491
  %call53 = call i32 @bdc_readl(i8* %32, i32 32) #8, !dbg !5492
  store i32 %call53, i32* %uspc, align 4, !dbg !5493
  %33 = load i32, i32* %uspc, align 4, !dbg !5494
  %and54 = and i32 %33, -416, !dbg !5494
  store i32 %and54, i32* %uspc, align 4, !dbg !5494
  %34 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5495
  %regs55 = getelementptr inbounds %struct.bdc, %struct.bdc* %34, i32 0, i32 8, !dbg !5496
  %35 = load i8*, i8** %regs55, align 8, !dbg !5496
  %36 = load i32, i32* %clear_flags, align 4, !dbg !5497
  call void @bdc_writel(i8* %35, i32 32, i32 %36) #8, !dbg !5498
  ret void, !dbg !5499
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_readl(i8* %base, i32 %offset) #0 !dbg !5500 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  %0 = load i8*, i8** %base.addr, align 8, !dbg !5507
  %1 = load i32, i32* %offset.addr, align 4, !dbg !5508
  %idx.ext = zext i32 %1 to i64, !dbg !5509
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5509
  %call = call i32 @readl(i8* %add.ptr) #8, !dbg !5510
  ret i32 %call, !dbg !5511
}

; Function Attrs: noredzone
declare dso_local void @bdc_softconn(%struct.bdc*) #2

; Function Attrs: noredzone
declare dso_local void @usb_gadget_set_state(%struct.usb_gadget*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bdc_uspc_disconnected(%struct.bdc* %bdc, i1 zeroext %reinit) #0 !dbg !5512 {
entry:
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !5515, metadata !DIExpression()), !dbg !5520
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5524, metadata !DIExpression()), !dbg !5526
  %bdc.addr = alloca %struct.bdc*, align 8
  %reinit.addr = alloca i8, align 1
  %ep = alloca %struct.bdc_ep*, align 8
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  %frombool = zext i1 %reinit to i8
  store i8 %frombool, i8* %reinit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reinit.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.declare(metadata %struct.bdc_ep** %ep, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5534
  %bdc_ep_array = getelementptr inbounds %struct.bdc, %struct.bdc* %0, i32 0, i32 7, !dbg !5535
  %1 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array, align 8, !dbg !5535
  %arrayidx = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %1, i64 1, !dbg !5534
  %2 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx, align 8, !dbg !5534
  store %struct.bdc_ep* %2, %struct.bdc_ep** %ep, align 8, !dbg !5536
  %3 = load %struct.bdc_ep*, %struct.bdc_ep** %ep, align 8, !dbg !5537
  %tobool = icmp ne %struct.bdc_ep* %3, null, !dbg !5537
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5539

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.bdc_ep*, %struct.bdc_ep** %ep, align 8, !dbg !5540
  %flags = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %4, i32 0, i32 8, !dbg !5541
  %5 = load i32, i32* %flags, align 8, !dbg !5541
  %and = and i32 %5, 1, !dbg !5542
  %tobool1 = icmp ne i32 %and, 0, !dbg !5542
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5543

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.bdc_ep*, %struct.bdc_ep** %ep, align 8, !dbg !5544
  %call = call i32 @bdc_ep_disable(%struct.bdc_ep* %6) #8, !dbg !5545
  br label %if.end, !dbg !5545

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5546
  %gadget_driver = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 1, !dbg !5547
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver, align 8, !dbg !5547
  %tobool2 = icmp ne %struct.usb_gadget_driver* %8, null, !dbg !5546
  br i1 %tobool2, label %land.lhs.true3, label %if.end10, !dbg !5548

land.lhs.true3:                                   ; preds = %if.end
  %9 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5549
  %gadget_driver4 = getelementptr inbounds %struct.bdc, %struct.bdc* %9, i32 0, i32 1, !dbg !5550
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver4, align 8, !dbg !5550
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 5, !dbg !5551
  %11 = load void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)** %disconnect, align 8, !dbg !5551
  %tobool5 = icmp ne void (%struct.usb_gadget*)* %11, null, !dbg !5549
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !5552

if.then6:                                         ; preds = %land.lhs.true3
  %12 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5553
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 3, !dbg !5554
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5555, !srcloc !5557
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5558
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5558
  %rlock.i = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5558
  %15 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5560
  %gadget_driver7 = getelementptr inbounds %struct.bdc, %struct.bdc* %15, i32 0, i32 1, !dbg !5561
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver7, align 8, !dbg !5561
  %disconnect8 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 5, !dbg !5562
  %17 = load void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)** %disconnect8, align 8, !dbg !5562
  %18 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5563
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %18, i32 0, i32 0, !dbg !5564
  call void %17(%struct.usb_gadget* %gadget) #8, !dbg !5560
  %19 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5565
  %lock9 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 3, !dbg !5566
  store %struct.spinlock* %lock9, %struct.spinlock** %lock.addr.i16, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5567, !srcloc !5569
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !5570
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !5570
  %rlock.i17 = bitcast %union.anon.1* %21 to %struct.raw_spinlock*, !dbg !5570
  br label %if.end10, !dbg !5572

if.end10:                                         ; preds = %if.then6, %land.lhs.true3, %if.end
  %22 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5573
  %gadget11 = getelementptr inbounds %struct.bdc, %struct.bdc* %22, i32 0, i32 0, !dbg !5574
  %speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget11, i32 0, i32 5, !dbg !5575
  store i32 0, i32* %speed, align 8, !dbg !5576
  %23 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5577
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %23, i32 0, i32 20, !dbg !5578
  %24 = load i32, i32* %devstatus, align 8, !dbg !5579
  %and12 = and i32 %24, 1, !dbg !5579
  store i32 %and12, i32* %devstatus, align 8, !dbg !5579
  %25 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5580
  %delayed_status = getelementptr inbounds %struct.bdc, %struct.bdc* %25, i32 0, i32 16, !dbg !5581
  store i8 0, i8* %delayed_status, align 4, !dbg !5582
  %26 = load i8, i8* %reinit.addr, align 1, !dbg !5583
  %tobool13 = trunc i8 %26 to i1, !dbg !5583
  %27 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5584
  %reinit14 = getelementptr inbounds %struct.bdc, %struct.bdc* %27, i32 0, i32 18, !dbg !5585
  %frombool15 = zext i1 %tobool13 to i8, !dbg !5586
  store i8 %frombool15, i8* %reinit14, align 2, !dbg !5586
  %28 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5587
  %test_mode = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 25, !dbg !5588
  store i8 0, i8* %test_mode, align 8, !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @handle_link_state_change(%struct.bdc* %bdc, i32 %uspc) #0 !dbg !5591 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5594, metadata !DIExpression()), !dbg !5599
  %lock.addr.i32 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i32, metadata !5515, metadata !DIExpression()), !dbg !5606
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5524, metadata !DIExpression()), !dbg !5610
  %bdc.addr = alloca %struct.bdc*, align 8
  %uspc.addr = alloca i32, align 4
  %link_state = alloca i32, align 4
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !5612, metadata !DIExpression()), !dbg !5613
  store i32 %uspc, i32* %uspc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uspc.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i32* %link_state, metadata !5616, metadata !DIExpression()), !dbg !5617
  %0 = load i32, i32* %uspc.addr, align 4, !dbg !5618
  %and = and i32 %0, 15, !dbg !5618
  store i32 %and, i32* %link_state, align 4, !dbg !5619
  %1 = load i32, i32* %link_state, align 4, !dbg !5620
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb5
    i32 15, label %sw.bb22
  ], !dbg !5621

sw.bb:                                            ; preds = %entry
  %2 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5622
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %2, i32 0, i32 0, !dbg !5623
  %speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget, i32 0, i32 5, !dbg !5624
  %3 = load i32, i32* %speed, align 8, !dbg !5624
  %cmp = icmp ne i32 %3, 0, !dbg !5625
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5626

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5627
  %gadget_driver = getelementptr inbounds %struct.bdc, %struct.bdc* %4, i32 0, i32 1, !dbg !5628
  %5 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver, align 8, !dbg !5628
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %5, i32 0, i32 6, !dbg !5629
  %6 = load void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)** %suspend, align 8, !dbg !5629
  %tobool = icmp ne void (%struct.usb_gadget*)* %6, null, !dbg !5627
  br i1 %tobool, label %if.then, label %if.end, !dbg !5630

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5631
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 3, !dbg !5632
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5633, !srcloc !5557
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5634
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5634
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !5634
  %10 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5635
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %10, i32 0, i32 20, !dbg !5636
  %11 = load i32, i32* %devstatus, align 8, !dbg !5637
  %or = or i32 %11, 131072, !dbg !5637
  store i32 %or, i32* %devstatus, align 8, !dbg !5637
  %12 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5638
  %gadget_driver1 = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 1, !dbg !5639
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver1, align 8, !dbg !5639
  %suspend2 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %13, i32 0, i32 6, !dbg !5640
  %14 = load void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)** %suspend2, align 8, !dbg !5640
  %15 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5641
  %gadget3 = getelementptr inbounds %struct.bdc, %struct.bdc* %15, i32 0, i32 0, !dbg !5642
  call void %14(%struct.usb_gadget* %gadget3) #8, !dbg !5638
  %16 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5643
  %lock4 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 3, !dbg !5644
  store %struct.spinlock* %lock4, %struct.spinlock** %lock.addr.i32, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5645, !srcloc !5569
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i32, align 8, !dbg !5646
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !5646
  %rlock.i33 = bitcast %union.anon.1* %18 to %struct.raw_spinlock*, !dbg !5646
  br label %if.end, !dbg !5647

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5648

sw.bb5:                                           ; preds = %entry
  %19 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5649
  %devstatus6 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 20, !dbg !5650
  %20 = load i32, i32* %devstatus6, align 8, !dbg !5650
  %and7 = and i32 %20, 65536, !dbg !5651
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5651
  br i1 %tobool8, label %if.then9, label %if.end21, !dbg !5652

if.then9:                                         ; preds = %sw.bb5
  %21 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5653
  %devstatus10 = getelementptr inbounds %struct.bdc, %struct.bdc* %21, i32 0, i32 20, !dbg !5654
  %22 = load i32, i32* %devstatus10, align 8, !dbg !5655
  %and11 = and i32 %22, -65537, !dbg !5655
  store i32 %and11, i32* %devstatus10, align 8, !dbg !5655
  %23 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5656
  %gadget12 = getelementptr inbounds %struct.bdc, %struct.bdc* %23, i32 0, i32 0, !dbg !5657
  %speed13 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget12, i32 0, i32 5, !dbg !5658
  %24 = load i32, i32* %speed13, align 8, !dbg !5658
  %cmp14 = icmp eq i32 %24, 5, !dbg !5659
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !5660

if.then15:                                        ; preds = %if.then9
  %25 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5661
  %call = call i32 @bdc_function_wake_fh(%struct.bdc* %25, i8 zeroext 0) #8, !dbg !5662
  %26 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5663
  %devstatus16 = getelementptr inbounds %struct.bdc, %struct.bdc* %26, i32 0, i32 20, !dbg !5664
  %27 = load i32, i32* %devstatus16, align 8, !dbg !5665
  %or17 = or i32 %27, 262144, !dbg !5665
  store i32 %or17, i32* %devstatus16, align 8, !dbg !5665
  %28 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5666
  %func_wake_notify = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 29, !dbg !5667
  store i32 2500, i32* %m.addr.i, align 4
  %29 = load i32, i32* %m.addr.i, align 4, !dbg !5668
  %30 = call i1 @llvm.is.constant.i32(i32 %29) #7, !dbg !5670
  br i1 %30, label %if.then.i, label %if.else.i, !dbg !5671

if.then.i:                                        ; preds = %if.then15
  %31 = load i32, i32* %m.addr.i, align 4, !dbg !5672
  %cmp.i = icmp slt i32 %31, 0, !dbg !5675
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5676

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5677
  br label %msecs_to_jiffies.exit, !dbg !5677

if.end.i:                                         ; preds = %if.then.i
  %32 = load i32, i32* %m.addr.i, align 4, !dbg !5678
  %call.i = call i64 @_msecs_to_jiffies(i32 %32) #9, !dbg !5679
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5680
  br label %msecs_to_jiffies.exit, !dbg !5680

if.else.i:                                        ; preds = %if.then15
  %33 = load i32, i32* %m.addr.i, align 4, !dbg !5681
  %call2.i = call i64 @__msecs_to_jiffies(i32 %33) #9, !dbg !5683
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5684
  br label %msecs_to_jiffies.exit, !dbg !5684

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %34 = load i64, i64* %retval.i, align 8, !dbg !5685
  %call19 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %func_wake_notify, i64 %34) #8, !dbg !5686
  br label %if.end20, !dbg !5687

if.end20:                                         ; preds = %msecs_to_jiffies.exit, %if.then9
  br label %if.end21, !dbg !5688

if.end21:                                         ; preds = %if.end20, %sw.bb5
  br label %sw.epilog, !dbg !5689

sw.bb22:                                          ; preds = %entry
  %35 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5690
  %devstatus23 = getelementptr inbounds %struct.bdc, %struct.bdc* %35, i32 0, i32 20, !dbg !5692
  %36 = load i32, i32* %devstatus23, align 8, !dbg !5692
  %and24 = and i32 %36, 131072, !dbg !5693
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5693
  br i1 %tobool25, label %if.then26, label %if.end31, !dbg !5694

if.then26:                                        ; preds = %sw.bb22
  %37 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5695
  %gadget_driver27 = getelementptr inbounds %struct.bdc, %struct.bdc* %37, i32 0, i32 1, !dbg !5697
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver27, align 8, !dbg !5697
  %resume = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %38, i32 0, i32 7, !dbg !5698
  %39 = load void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)** %resume, align 8, !dbg !5698
  %40 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5699
  %gadget28 = getelementptr inbounds %struct.bdc, %struct.bdc* %40, i32 0, i32 0, !dbg !5700
  call void %39(%struct.usb_gadget* %gadget28) #8, !dbg !5695
  %41 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5701
  %devstatus29 = getelementptr inbounds %struct.bdc, %struct.bdc* %41, i32 0, i32 20, !dbg !5702
  %42 = load i32, i32* %devstatus29, align 8, !dbg !5703
  %and30 = and i32 %42, -131073, !dbg !5703
  store i32 %and30, i32* %devstatus29, align 8, !dbg !5703
  br label %if.end31, !dbg !5704

if.end31:                                         ; preds = %if.then26, %sw.bb22
  br label %sw.epilog, !dbg !5705

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5706

sw.epilog:                                        ; preds = %sw.default, %if.end31, %if.end21, %if.end
  ret void, !dbg !5707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bdc_uspc_connected(%struct.bdc* %bdc) #0 !dbg !5708 {
entry:
  %bdc.addr = alloca %struct.bdc*, align 8
  %speed = alloca i32, align 4
  %temp = alloca i32, align 4
  %usppms = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  call void @llvm.dbg.declare(metadata i32* %speed, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !5715, metadata !DIExpression()), !dbg !5716
  call void @llvm.dbg.declare(metadata i32* %usppms, metadata !5717, metadata !DIExpression()), !dbg !5718
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5721
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %0, i32 0, i32 8, !dbg !5722
  %1 = load i8*, i8** %regs, align 8, !dbg !5722
  %call = call i32 @bdc_readl(i8* %1, i32 32) #8, !dbg !5723
  store i32 %call, i32* %temp, align 4, !dbg !5724
  %2 = load i32, i32* %temp, align 4, !dbg !5725
  %and = and i32 %2, 7340032, !dbg !5725
  %shr = lshr i32 %and, 20, !dbg !5725
  store i32 %shr, i32* %speed, align 4, !dbg !5726
  %3 = load i32, i32* %speed, align 4, !dbg !5727
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb8
    i32 1, label %sw.bb17
    i32 2, label %sw.bb26
  ], !dbg !5728

sw.bb:                                            ; preds = %entry
  store i16 512, i16* getelementptr inbounds (%struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, i32 0, i32 4), align 1, !dbg !5729
  %4 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5731
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %4, i32 0, i32 0, !dbg !5732
  %ep0 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget, i32 0, i32 3, !dbg !5733
  %5 = load %struct.usb_ep*, %struct.usb_ep** %ep0, align 8, !dbg !5733
  %maxpacket = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %5, i32 0, i32 7, !dbg !5734
  %6 = bitcast [7 x i8]* %maxpacket to i56*, !dbg !5734
  %bf.load = load i56, i56* %6, align 2, !dbg !5735
  %bf.clear = and i56 %bf.load, -65536, !dbg !5735
  %bf.set = or i56 %bf.clear, 512, !dbg !5735
  store i56 %bf.set, i56* %6, align 2, !dbg !5735
  %7 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5736
  %gadget1 = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 0, !dbg !5737
  %speed2 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget1, i32 0, i32 5, !dbg !5738
  store i32 5, i32* %speed2, align 8, !dbg !5739
  %8 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5740
  %regs3 = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 8, !dbg !5741
  %9 = load i8*, i8** %regs3, align 8, !dbg !5741
  %call4 = call i32 @bdc_readl(i8* %9, i32 40) #8, !dbg !5742
  store i32 %call4, i32* %usppms, align 4, !dbg !5743
  %10 = load i32, i32* %usppms, align 4, !dbg !5744
  %and5 = and i32 %10, -256, !dbg !5744
  store i32 %and5, i32* %usppms, align 4, !dbg !5744
  %11 = load i32, i32* %usppms, align 4, !dbg !5745
  %or = or i32 %11, 248, !dbg !5745
  store i32 %or, i32* %usppms, align 4, !dbg !5745
  %12 = load i32, i32* %usppms, align 4, !dbg !5746
  %or6 = or i32 %12, 131072, !dbg !5746
  store i32 %or6, i32* %usppms, align 4, !dbg !5746
  %13 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5747
  %regs7 = getelementptr inbounds %struct.bdc, %struct.bdc* %13, i32 0, i32 8, !dbg !5748
  %14 = load i8*, i8** %regs7, align 8, !dbg !5748
  %15 = load i32, i32* %usppms, align 4, !dbg !5749
  call void @bdc_writel(i8* %14, i32 40, i32 %15) #8, !dbg !5750
  br label %sw.epilog, !dbg !5751

sw.bb8:                                           ; preds = %entry
  store i16 64, i16* getelementptr inbounds (%struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, i32 0, i32 4), align 1, !dbg !5752
  %16 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5753
  %gadget9 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 0, !dbg !5754
  %ep010 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget9, i32 0, i32 3, !dbg !5755
  %17 = load %struct.usb_ep*, %struct.usb_ep** %ep010, align 8, !dbg !5755
  %maxpacket11 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %17, i32 0, i32 7, !dbg !5756
  %18 = bitcast [7 x i8]* %maxpacket11 to i56*, !dbg !5756
  %bf.load12 = load i56, i56* %18, align 2, !dbg !5757
  %bf.clear13 = and i56 %bf.load12, -65536, !dbg !5757
  %bf.set14 = or i56 %bf.clear13, 64, !dbg !5757
  store i56 %bf.set14, i56* %18, align 2, !dbg !5757
  %19 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5758
  %gadget15 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 0, !dbg !5759
  %speed16 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget15, i32 0, i32 5, !dbg !5760
  store i32 3, i32* %speed16, align 8, !dbg !5761
  br label %sw.epilog, !dbg !5762

sw.bb17:                                          ; preds = %entry
  store i16 64, i16* getelementptr inbounds (%struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, i32 0, i32 4), align 1, !dbg !5763
  %20 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5764
  %gadget18 = getelementptr inbounds %struct.bdc, %struct.bdc* %20, i32 0, i32 0, !dbg !5765
  %ep019 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget18, i32 0, i32 3, !dbg !5766
  %21 = load %struct.usb_ep*, %struct.usb_ep** %ep019, align 8, !dbg !5766
  %maxpacket20 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %21, i32 0, i32 7, !dbg !5767
  %22 = bitcast [7 x i8]* %maxpacket20 to i56*, !dbg !5767
  %bf.load21 = load i56, i56* %22, align 2, !dbg !5768
  %bf.clear22 = and i56 %bf.load21, -65536, !dbg !5768
  %bf.set23 = or i56 %bf.clear22, 64, !dbg !5768
  store i56 %bf.set23, i56* %22, align 2, !dbg !5768
  %23 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5769
  %gadget24 = getelementptr inbounds %struct.bdc, %struct.bdc* %23, i32 0, i32 0, !dbg !5770
  %speed25 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget24, i32 0, i32 5, !dbg !5771
  store i32 2, i32* %speed25, align 8, !dbg !5772
  br label %sw.epilog, !dbg !5773

sw.bb26:                                          ; preds = %entry
  store i16 8, i16* getelementptr inbounds (%struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, i32 0, i32 4), align 1, !dbg !5774
  %24 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5775
  %gadget27 = getelementptr inbounds %struct.bdc, %struct.bdc* %24, i32 0, i32 0, !dbg !5776
  %ep028 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget27, i32 0, i32 3, !dbg !5777
  %25 = load %struct.usb_ep*, %struct.usb_ep** %ep028, align 8, !dbg !5777
  %maxpacket29 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %25, i32 0, i32 7, !dbg !5778
  %26 = bitcast [7 x i8]* %maxpacket29 to i56*, !dbg !5778
  %bf.load30 = load i56, i56* %26, align 2, !dbg !5779
  %bf.clear31 = and i56 %bf.load30, -65536, !dbg !5779
  %bf.set32 = or i56 %bf.clear31, 8, !dbg !5779
  store i56 %bf.set32, i56* %26, align 2, !dbg !5779
  %27 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5780
  %gadget33 = getelementptr inbounds %struct.bdc, %struct.bdc* %27, i32 0, i32 0, !dbg !5781
  %speed34 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget33, i32 0, i32 5, !dbg !5782
  store i32 1, i32* %speed34, align 8, !dbg !5783
  br label %sw.epilog, !dbg !5784

sw.default:                                       ; preds = %entry
  %28 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5785
  %dev = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 2, !dbg !5785
  %29 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5785
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5785
  br label %return, !dbg !5786

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb17, %sw.bb8, %sw.bb
  %30 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5787
  %bdc_ep_array = getelementptr inbounds %struct.bdc, %struct.bdc* %30, i32 0, i32 7, !dbg !5788
  %31 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array, align 8, !dbg !5788
  %arrayidx = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %31, i64 1, !dbg !5787
  %32 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx, align 8, !dbg !5787
  %desc = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %32, i32 0, i32 7, !dbg !5789
  store %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !5790
  %33 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5791
  %34 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5792
  %bdc_ep_array35 = getelementptr inbounds %struct.bdc, %struct.bdc* %34, i32 0, i32 7, !dbg !5793
  %35 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array35, align 8, !dbg !5793
  %arrayidx36 = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %35, i64 1, !dbg !5792
  %36 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx36, align 8, !dbg !5792
  %call37 = call i32 @bdc_config_ep(%struct.bdc* %33, %struct.bdc_ep* %36) #8, !dbg !5794
  store i32 %call37, i32* %ret, align 4, !dbg !5795
  %37 = load i32, i32* %ret, align 4, !dbg !5796
  %tobool = icmp ne i32 %37, 0, !dbg !5796
  br i1 %tobool, label %if.then, label %if.end, !dbg !5798

if.then:                                          ; preds = %sw.epilog
  %38 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5799
  %dev38 = getelementptr inbounds %struct.bdc, %struct.bdc* %38, i32 0, i32 2, !dbg !5799
  %39 = load %struct.device*, %struct.device** %dev38, align 8, !dbg !5799
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !5799
  br label %if.end, !dbg !5799

if.end:                                           ; preds = %if.then, %sw.epilog
  %40 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5800
  %bdc_ep_array39 = getelementptr inbounds %struct.bdc, %struct.bdc* %40, i32 0, i32 7, !dbg !5801
  %41 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array39, align 8, !dbg !5801
  %arrayidx40 = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %41, i64 1, !dbg !5800
  %42 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx40, align 8, !dbg !5800
  %usb_ep = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %42, i32 0, i32 0, !dbg !5802
  %desc41 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %usb_ep, i32 0, i32 9, !dbg !5803
  store %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, %struct.usb_endpoint_descriptor** %desc41, align 8, !dbg !5804
  %43 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5805
  %bdc_ep_array42 = getelementptr inbounds %struct.bdc, %struct.bdc* %43, i32 0, i32 7, !dbg !5806
  %44 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array42, align 8, !dbg !5806
  %arrayidx43 = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %44, i64 1, !dbg !5805
  %45 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx43, align 8, !dbg !5805
  %flags = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %45, i32 0, i32 8, !dbg !5807
  %46 = load i32, i32* %flags, align 8, !dbg !5808
  %or44 = or i32 %46, 1, !dbg !5808
  store i32 %or44, i32* %flags, align 8, !dbg !5808
  %47 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5809
  %gadget45 = getelementptr inbounds %struct.bdc, %struct.bdc* %47, i32 0, i32 0, !dbg !5810
  call void @usb_gadget_set_state(%struct.usb_gadget* %gadget45, i32 5) #8, !dbg !5811
  br label %return, !dbg !5812

return:                                           ; preds = %if.end, %sw.default
  ret void, !dbg !5812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bdc_writel(i8* %base, i32 %offset, i32 %value) #0 !dbg !5813 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  %0 = load i32, i32* %value.addr, align 4, !dbg !5822
  %1 = load i8*, i8** %base.addr, align 8, !dbg !5823
  %2 = load i32, i32* %offset.addr, align 4, !dbg !5824
  %idx.ext = zext i32 %2 to i64, !dbg !5825
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !5825
  call void @writel(i32 %0, i8* %add.ptr) #8, !dbg !5826
  ret void, !dbg !5827
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bdc_udc_init(%struct.bdc* %bdc) #0 !dbg !5828 {
entry:
  %retval = alloca i32, align 4
  %bdc.addr = alloca %struct.bdc*, align 8
  %temp = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !5833, metadata !DIExpression()), !dbg !5834
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5835, metadata !DIExpression()), !dbg !5836
  %0 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5837
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %0, i32 0, i32 0, !dbg !5838
  %ops = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget, i32 0, i32 2, !dbg !5839
  store %struct.usb_gadget_ops* @bdc_gadget_ops, %struct.usb_gadget_ops** %ops, align 8, !dbg !5840
  %1 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5841
  %gadget1 = getelementptr inbounds %struct.bdc, %struct.bdc* %1, i32 0, i32 0, !dbg !5842
  %max_speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget1, i32 0, i32 6, !dbg !5843
  store i32 5, i32* %max_speed, align 4, !dbg !5844
  %2 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5845
  %gadget2 = getelementptr inbounds %struct.bdc, %struct.bdc* %2, i32 0, i32 0, !dbg !5846
  %speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget2, i32 0, i32 5, !dbg !5847
  store i32 0, i32* %speed, align 8, !dbg !5848
  %3 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5849
  %dev = getelementptr inbounds %struct.bdc, %struct.bdc* %3, i32 0, i32 2, !dbg !5850
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5850
  %5 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5851
  %gadget3 = getelementptr inbounds %struct.bdc, %struct.bdc* %5, i32 0, i32 0, !dbg !5852
  %dev4 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget3, i32 0, i32 9, !dbg !5853
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 1, !dbg !5854
  store %struct.device* %4, %struct.device** %parent, align 8, !dbg !5855
  %6 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5856
  %gadget5 = getelementptr inbounds %struct.bdc, %struct.bdc* %6, i32 0, i32 0, !dbg !5857
  %sg_supported = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget5, i32 0, i32 15, !dbg !5858
  %7 = bitcast i24* %sg_supported to i32*, !dbg !5858
  %bf.load = load i32, i32* %7, align 8, !dbg !5859
  %bf.clear = and i32 %bf.load, -2, !dbg !5859
  store i32 %bf.clear, i32* %7, align 8, !dbg !5859
  %8 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5860
  %gadget6 = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 0, !dbg !5861
  %name = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget6, i32 0, i32 8, !dbg !5862
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !5863
  %9 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5864
  %dev7 = getelementptr inbounds %struct.bdc, %struct.bdc* %9, i32 0, i32 2, !dbg !5865
  %10 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !5865
  %11 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5866
  %irq = getelementptr inbounds %struct.bdc, %struct.bdc* %11, i32 0, i32 21, !dbg !5867
  %12 = load i32, i32* %irq, align 4, !dbg !5867
  %13 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5868
  %14 = bitcast %struct.bdc* %13 to i8*, !dbg !5868
  %call = call i32 @devm_request_irq(%struct.device* %10, i32 %12, i32 (i32, i8*)* @bdc_udc_interrupt, i64 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14) #8, !dbg !5869
  store i32 %call, i32* %ret, align 4, !dbg !5870
  %15 = load i32, i32* %ret, align 4, !dbg !5871
  %tobool = icmp ne i32 %15, 0, !dbg !5871
  br i1 %tobool, label %if.then, label %if.end, !dbg !5873

if.then:                                          ; preds = %entry
  %16 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5874
  %dev8 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 2, !dbg !5874
  %17 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !5874
  %18 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5874
  %irq9 = getelementptr inbounds %struct.bdc, %struct.bdc* %18, i32 0, i32 21, !dbg !5874
  %19 = load i32, i32* %irq9, align 4, !dbg !5874
  %20 = load i32, i32* %ret, align 4, !dbg !5874
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20) #10, !dbg !5874
  %21 = load i32, i32* %ret, align 4, !dbg !5876
  store i32 %21, i32* %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

if.end:                                           ; preds = %entry
  %22 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5878
  %call10 = call i32 @bdc_init_ep(%struct.bdc* %22) #8, !dbg !5879
  store i32 %call10, i32* %ret, align 4, !dbg !5880
  %23 = load i32, i32* %ret, align 4, !dbg !5881
  %tobool11 = icmp ne i32 %23, 0, !dbg !5881
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5883

if.then12:                                        ; preds = %if.end
  %24 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5884
  %dev13 = getelementptr inbounds %struct.bdc, %struct.bdc* %24, i32 0, i32 2, !dbg !5884
  %25 = load %struct.device*, %struct.device** %dev13, align 8, !dbg !5884
  %26 = load i32, i32* %ret, align 4, !dbg !5884
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %26) #10, !dbg !5884
  %27 = load i32, i32* %ret, align 4, !dbg !5886
  store i32 %27, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end14:                                         ; preds = %if.end
  %28 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5888
  %dev15 = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 2, !dbg !5889
  %29 = load %struct.device*, %struct.device** %dev15, align 8, !dbg !5889
  %30 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5890
  %gadget16 = getelementptr inbounds %struct.bdc, %struct.bdc* %30, i32 0, i32 0, !dbg !5891
  %call17 = call i32 @usb_add_gadget_udc(%struct.device* %29, %struct.usb_gadget* %gadget16) #8, !dbg !5892
  store i32 %call17, i32* %ret, align 4, !dbg !5893
  %31 = load i32, i32* %ret, align 4, !dbg !5894
  %tobool18 = icmp ne i32 %31, 0, !dbg !5894
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5896

if.then19:                                        ; preds = %if.end14
  %32 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5897
  %dev20 = getelementptr inbounds %struct.bdc, %struct.bdc* %32, i32 0, i32 2, !dbg !5897
  %33 = load %struct.device*, %struct.device** %dev20, align 8, !dbg !5897
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !5897
  br label %err0, !dbg !5899

if.end21:                                         ; preds = %if.end14
  %34 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5900
  %gadget22 = getelementptr inbounds %struct.bdc, %struct.bdc* %34, i32 0, i32 0, !dbg !5901
  call void @usb_gadget_set_state(%struct.usb_gadget* %gadget22, i32 0) #8, !dbg !5902
  %35 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5903
  %bdc_ep_array = getelementptr inbounds %struct.bdc, %struct.bdc* %35, i32 0, i32 7, !dbg !5904
  %36 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array, align 8, !dbg !5904
  %arrayidx = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %36, i64 1, !dbg !5903
  %37 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx, align 8, !dbg !5903
  %desc = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %37, i32 0, i32 7, !dbg !5905
  store %struct.usb_endpoint_descriptor* @bdc_gadget_ep0_desc, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !5906
  %38 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5907
  %bdc_ep_array23 = getelementptr inbounds %struct.bdc, %struct.bdc* %38, i32 0, i32 7, !dbg !5908
  %39 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array23, align 8, !dbg !5908
  %arrayidx24 = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %39, i64 1, !dbg !5907
  %40 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx24, align 8, !dbg !5907
  %call25 = call i32 @bdc_ep_enable(%struct.bdc_ep* %40) #8, !dbg !5909
  store i32 %call25, i32* %ret, align 4, !dbg !5910
  %41 = load i32, i32* %ret, align 4, !dbg !5911
  %tobool26 = icmp ne i32 %41, 0, !dbg !5911
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !5913

if.then27:                                        ; preds = %if.end21
  %42 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5914
  %dev28 = getelementptr inbounds %struct.bdc, %struct.bdc* %42, i32 0, i32 2, !dbg !5914
  %43 = load %struct.device*, %struct.device** %dev28, align 8, !dbg !5914
  %44 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5914
  %bdc_ep_array29 = getelementptr inbounds %struct.bdc, %struct.bdc* %44, i32 0, i32 7, !dbg !5914
  %45 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array29, align 8, !dbg !5914
  %arrayidx30 = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %45, i64 1, !dbg !5914
  %46 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx30, align 8, !dbg !5914
  %name31 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %46, i32 0, i32 9, !dbg !5914
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name31, i64 0, i64 0, !dbg !5914
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay) #10, !dbg !5914
  br label %err1, !dbg !5916

if.end32:                                         ; preds = %if.end21
  br label %do.body, !dbg !5917

do.body:                                          ; preds = %if.end32
  br label %do.body33, !dbg !5918

do.body33:                                        ; preds = %do.body
  %47 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5920
  %func_wake_notify = getelementptr inbounds %struct.bdc, %struct.bdc* %47, i32 0, i32 29, !dbg !5920
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %func_wake_notify, i32 0, i32 0, !dbg !5920
  call void @__init_work(%struct.work_struct* %work, i32 0) #8, !dbg !5920
  %48 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5920
  %func_wake_notify34 = getelementptr inbounds %struct.bdc, %struct.bdc* %48, i32 0, i32 29, !dbg !5920
  %work35 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %func_wake_notify34, i32 0, i32 0, !dbg !5920
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work35, i32 0, i32 0, !dbg !5920
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !5920
  store i64 68719476704, i64* %counter, align 8, !dbg !5920
  %49 = bitcast %struct.atomic64_t* %data to i8*, !dbg !5920
  %50 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !5920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false), !dbg !5920
  %51 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5920
  %func_wake_notify36 = getelementptr inbounds %struct.bdc, %struct.bdc* %51, i32 0, i32 29, !dbg !5920
  %work37 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %func_wake_notify36, i32 0, i32 0, !dbg !5920
  %entry38 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work37, i32 0, i32 1, !dbg !5920
  call void @INIT_LIST_HEAD(%struct.list_head* %entry38) #8, !dbg !5920
  %52 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5920
  %func_wake_notify39 = getelementptr inbounds %struct.bdc, %struct.bdc* %52, i32 0, i32 29, !dbg !5920
  %work40 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %func_wake_notify39, i32 0, i32 0, !dbg !5920
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work40, i32 0, i32 2, !dbg !5920
  store void (%struct.work_struct*)* @bdc_func_wake_timer, void (%struct.work_struct*)** %func, align 8, !dbg !5920
  br label %do.end, !dbg !5920

do.end:                                           ; preds = %do.body33
  %53 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5918
  %func_wake_notify41 = getelementptr inbounds %struct.bdc, %struct.bdc* %53, i32 0, i32 29, !dbg !5918
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %func_wake_notify41, i32 0, i32 1, !dbg !5918
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #8, !dbg !5918
  br label %do.end42, !dbg !5918

do.end42:                                         ; preds = %do.end
  %54 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5922
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %54, i32 0, i32 8, !dbg !5923
  %55 = load i8*, i8** %regs, align 8, !dbg !5923
  %call43 = call i32 @bdc_readl(i8* %55, i32 64) #8, !dbg !5924
  store i32 %call43, i32* %temp, align 4, !dbg !5925
  %56 = load i32, i32* %temp, align 4, !dbg !5926
  %or = or i32 %56, 2, !dbg !5926
  store i32 %or, i32* %temp, align 4, !dbg !5926
  %57 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5927
  %regs44 = getelementptr inbounds %struct.bdc, %struct.bdc* %57, i32 0, i32 8, !dbg !5928
  %58 = load i8*, i8** %regs44, align 8, !dbg !5928
  %59 = load i32, i32* %temp, align 4, !dbg !5929
  call void @bdc_writel(i8* %58, i32 64, i32 %59) #8, !dbg !5930
  store i32 0, i32* %retval, align 4, !dbg !5931
  br label %return, !dbg !5931

err1:                                             ; preds = %if.then27
  call void @llvm.dbg.label(metadata !5932), !dbg !5933
  %60 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5934
  %gadget45 = getelementptr inbounds %struct.bdc, %struct.bdc* %60, i32 0, i32 0, !dbg !5935
  call void @usb_del_gadget_udc(%struct.usb_gadget* %gadget45) #8, !dbg !5936
  br label %err0, !dbg !5936

err0:                                             ; preds = %err1, %if.then19
  call void @llvm.dbg.label(metadata !5937), !dbg !5938
  %61 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !5939
  call void @bdc_free_ep(%struct.bdc* %61) #8, !dbg !5940
  %62 = load i32, i32* %ret, align 4, !dbg !5941
  store i32 %62, i32* %retval, align 4, !dbg !5942
  br label %return, !dbg !5942

return:                                           ; preds = %err0, %do.end42, %if.then12, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !5943
  ret i32 %63, !dbg !5943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #0 !dbg !5944 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5965
  %1 = load i32, i32* %irq.addr, align 4, !dbg !5966
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !5967
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !5968
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !5969
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !5970
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #8, !dbg !5971
  ret i32 %call, !dbg !5972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_interrupt(i32 %irq, i8* %_bdc) #0 !dbg !5973 {
entry:
  %lock.addr.i56 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i56, metadata !5524, metadata !DIExpression()), !dbg !5974
  %lock.addr.i54 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i54, metadata !5524, metadata !DIExpression()), !dbg !5976
  %lock.addr.i52 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i52, metadata !5524, metadata !DIExpression()), !dbg !5980
  %lock.addr.i50 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i50, metadata !5524, metadata !DIExpression()), !dbg !5984
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5515, metadata !DIExpression()), !dbg !5988
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %_bdc.addr = alloca i8*, align 8
  %eqp_index = alloca i32, align 4
  %dqp_index = alloca i32, align 4
  %sr_type = alloca i32, align 4
  %srr_int = alloca i32, align 4
  %sreport = alloca %struct.bdc_sr*, align 8
  %bdc = alloca %struct.bdc*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  store i8* %_bdc, i8** %_bdc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_bdc.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  call void @llvm.dbg.declare(metadata i32* %eqp_index, metadata !5994, metadata !DIExpression()), !dbg !5995
  call void @llvm.dbg.declare(metadata i32* %dqp_index, metadata !5996, metadata !DIExpression()), !dbg !5997
  call void @llvm.dbg.declare(metadata i32* %sr_type, metadata !5998, metadata !DIExpression()), !dbg !5999
  call void @llvm.dbg.declare(metadata i32* %srr_int, metadata !6000, metadata !DIExpression()), !dbg !6001
  call void @llvm.dbg.declare(metadata %struct.bdc_sr** %sreport, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6004, metadata !DIExpression()), !dbg !6005
  %0 = load i8*, i8** %_bdc.addr, align 8, !dbg !6006
  %1 = bitcast i8* %0 to %struct.bdc*, !dbg !6006
  store %struct.bdc* %1, %struct.bdc** %bdc, align 8, !dbg !6005
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6007, metadata !DIExpression()), !dbg !6008
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6009, metadata !DIExpression()), !dbg !6010
  %2 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6011
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %2, i32 0, i32 3, !dbg !6012
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6013, !srcloc !5569
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6014
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !6014
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !6014
  %5 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6015
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %5, i32 0, i32 8, !dbg !6016
  %6 = load i8*, i8** %regs, align 8, !dbg !6016
  %call = call i32 @bdc_readl(i8* %6, i32 64) #8, !dbg !6017
  store i32 %call, i32* %status, align 4, !dbg !6018
  %7 = load i32, i32* %status, align 4, !dbg !6019
  %and = and i32 %7, 1, !dbg !6020
  %tobool = icmp ne i32 %and, 0, !dbg !6020
  br i1 %tobool, label %if.end, label %if.then, !dbg !6021

if.then:                                          ; preds = %entry
  %8 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6022
  %lock1 = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 3, !dbg !6023
  store %struct.spinlock* %lock1, %struct.spinlock** %lock.addr.i50, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6024, !srcloc !5557
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i50, align 8, !dbg !6025
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !6025
  %rlock.i51 = bitcast %union.anon.1* %10 to %struct.raw_spinlock*, !dbg !6025
  store i32 0, i32* %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

if.end:                                           ; preds = %entry
  %11 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6027
  %regs2 = getelementptr inbounds %struct.bdc, %struct.bdc* %11, i32 0, i32 8, !dbg !6028
  %12 = load i8*, i8** %regs2, align 8, !dbg !6028
  %call3 = call i32 @bdc_readl(i8* %12, i32 520) #8, !dbg !6029
  store i32 %call3, i32* %srr_int, align 4, !dbg !6030
  %13 = load i32, i32* %srr_int, align 4, !dbg !6031
  %and4 = and i32 %13, 1, !dbg !6032
  %tobool5 = icmp ne i32 %and4, 0, !dbg !6032
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !6033

if.then6:                                         ; preds = %if.end
  %14 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6034
  %dev = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 2, !dbg !6034
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6034
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !6034
  %16 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6035
  %lock7 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 3, !dbg !6036
  store %struct.spinlock* %lock7, %struct.spinlock** %lock.addr.i52, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6037, !srcloc !5557
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i52, align 8, !dbg !6038
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !6038
  %rlock.i53 = bitcast %union.anon.1* %18 to %struct.raw_spinlock*, !dbg !6038
  store i32 0, i32* %retval, align 4, !dbg !6039
  br label %return, !dbg !6039

if.end8:                                          ; preds = %if.end
  %19 = load i32, i32* %srr_int, align 4, !dbg !6040
  %and9 = and i32 %19, -16777216, !dbg !6040
  %shr = lshr i32 %and9, 24, !dbg !6040
  store i32 %shr, i32* %eqp_index, align 4, !dbg !6041
  %20 = load i32, i32* %srr_int, align 4, !dbg !6042
  %and10 = and i32 %20, 16711680, !dbg !6042
  %shr11 = lshr i32 %and10, 16, !dbg !6042
  store i32 %shr11, i32* %dqp_index, align 4, !dbg !6043
  %21 = load i32, i32* %eqp_index, align 4, !dbg !6044
  %22 = load i32, i32* %dqp_index, align 4, !dbg !6045
  %cmp = icmp eq i32 %21, %22, !dbg !6046
  br i1 %cmp, label %if.then12, label %if.end14, !dbg !6047

if.then12:                                        ; preds = %if.end8
  %23 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6048
  %lock13 = getelementptr inbounds %struct.bdc, %struct.bdc* %23, i32 0, i32 3, !dbg !6049
  store %struct.spinlock* %lock13, %struct.spinlock** %lock.addr.i54, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6050, !srcloc !5557
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i54, align 8, !dbg !6051
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !6051
  %rlock.i55 = bitcast %union.anon.1* %25 to %struct.raw_spinlock*, !dbg !6051
  store i32 1, i32* %retval, align 4, !dbg !6052
  br label %return, !dbg !6052

if.end14:                                         ; preds = %if.end8
  br label %while.cond, !dbg !6053

while.cond:                                       ; preds = %sw.epilog, %if.end14
  %26 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6054
  %srr = getelementptr inbounds %struct.bdc, %struct.bdc* %26, i32 0, i32 11, !dbg !6055
  %dqp_index15 = getelementptr inbounds %struct.srr, %struct.srr* %srr, i32 0, i32 2, !dbg !6056
  %27 = load i16, i16* %dqp_index15, align 2, !dbg !6056
  %conv = zext i16 %27 to i32, !dbg !6054
  %28 = load i32, i32* %eqp_index, align 4, !dbg !6057
  %cmp16 = icmp ne i32 %conv, %28, !dbg !6058
  br i1 %cmp16, label %while.body, label %while.end, !dbg !6053

while.body:                                       ; preds = %while.cond
  %29 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6059
  %srr18 = getelementptr inbounds %struct.bdc, %struct.bdc* %29, i32 0, i32 11, !dbg !6061
  %sr_bds = getelementptr inbounds %struct.srr, %struct.srr* %srr18, i32 0, i32 0, !dbg !6062
  %30 = load %struct.bdc_sr*, %struct.bdc_sr** %sr_bds, align 8, !dbg !6062
  %31 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6063
  %srr19 = getelementptr inbounds %struct.bdc, %struct.bdc* %31, i32 0, i32 11, !dbg !6064
  %dqp_index20 = getelementptr inbounds %struct.srr, %struct.srr* %srr19, i32 0, i32 2, !dbg !6065
  %32 = load i16, i16* %dqp_index20, align 2, !dbg !6065
  %idxprom = zext i16 %32 to i64, !dbg !6059
  %arrayidx = getelementptr %struct.bdc_sr, %struct.bdc_sr* %30, i64 %idxprom, !dbg !6059
  store %struct.bdc_sr* %arrayidx, %struct.bdc_sr** %sreport, align 8, !dbg !6066
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6067, !srcloc !6068
  %33 = load %struct.bdc_sr*, %struct.bdc_sr** %sreport, align 8, !dbg !6069
  %offset = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %33, i32 0, i32 0, !dbg !6069
  %arrayidx21 = getelementptr [4 x i32], [4 x i32]* %offset, i64 0, i64 3, !dbg !6069
  %34 = load i32, i32* %arrayidx21, align 4, !dbg !6069
  %and22 = and i32 %34, 15, !dbg !6070
  store i32 %and22, i32* %sr_type, align 4, !dbg !6071
  br label %do.body, !dbg !6072

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !6073

do.end:                                           ; preds = %do.body
  %35 = load i32, i32* %sr_type, align 4, !dbg !6075
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb25
  ], !dbg !6076

sw.bb:                                            ; preds = %do.end
  %36 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6077
  %sr_handler = getelementptr inbounds %struct.bdc, %struct.bdc* %36, i32 0, i32 26, !dbg !6079
  %sr_handler23 = bitcast [2 x {}*]* %sr_handler to [2 x void (%struct.bdc*, %struct.bdc_sr*)*]*, !dbg !6079
  %arrayidx24 = getelementptr [2 x void (%struct.bdc*, %struct.bdc_sr*)*], [2 x void (%struct.bdc*, %struct.bdc_sr*)*]* %sr_handler23, i64 0, i64 0, !dbg !6077
  %37 = load void (%struct.bdc*, %struct.bdc_sr*)*, void (%struct.bdc*, %struct.bdc_sr*)** %arrayidx24, align 8, !dbg !6077
  %38 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6080
  %39 = load %struct.bdc_sr*, %struct.bdc_sr** %sreport, align 8, !dbg !6081
  call void %37(%struct.bdc* %38, %struct.bdc_sr* %39) #8, !dbg !6077
  br label %sw.epilog, !dbg !6082

sw.bb25:                                          ; preds = %do.end
  %40 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6083
  %sr_handler26 = getelementptr inbounds %struct.bdc, %struct.bdc* %40, i32 0, i32 26, !dbg !6084
  %sr_handler27 = bitcast [2 x {}*]* %sr_handler26 to [2 x void (%struct.bdc*, %struct.bdc_sr*)*]*, !dbg !6084
  %arrayidx28 = getelementptr [2 x void (%struct.bdc*, %struct.bdc_sr*)*], [2 x void (%struct.bdc*, %struct.bdc_sr*)*]* %sr_handler27, i64 0, i64 1, !dbg !6083
  %41 = load void (%struct.bdc*, %struct.bdc_sr*)*, void (%struct.bdc*, %struct.bdc_sr*)** %arrayidx28, align 8, !dbg !6083
  %42 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6085
  %43 = load %struct.bdc_sr*, %struct.bdc_sr** %sreport, align 8, !dbg !6086
  call void %41(%struct.bdc* %42, %struct.bdc_sr* %43) #8, !dbg !6083
  br label %sw.epilog, !dbg !6087

sw.default:                                       ; preds = %do.end
  %44 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6088
  %dev29 = getelementptr inbounds %struct.bdc, %struct.bdc* %44, i32 0, i32 2, !dbg !6088
  %45 = load %struct.device*, %struct.device** %dev29, align 8, !dbg !6088
  %46 = load i32, i32* %sr_type, align 4, !dbg !6088
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %46) #10, !dbg !6088
  br label %sw.epilog, !dbg !6089

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb
  %47 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6090
  call void @srr_dqp_index_advc(%struct.bdc* %47, i32 0) #8, !dbg !6091
  br label %while.cond, !dbg !6053, !llvm.loop !6092

while.end:                                        ; preds = %while.cond
  %48 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6094
  %regs30 = getelementptr inbounds %struct.bdc, %struct.bdc* %48, i32 0, i32 8, !dbg !6095
  %49 = load i8*, i8** %regs30, align 8, !dbg !6095
  %call31 = call i32 @bdc_readl(i8* %49, i32 520) #8, !dbg !6096
  store i32 %call31, i32* %srr_int, align 4, !dbg !6097
  %50 = load i32, i32* %srr_int, align 4, !dbg !6098
  %and32 = and i32 %50, -16711681, !dbg !6098
  store i32 %and32, i32* %srr_int, align 4, !dbg !6098
  %51 = load i32, i32* %srr_int, align 4, !dbg !6099
  %and33 = and i32 %51, -29, !dbg !6099
  store i32 %and33, i32* %srr_int, align 4, !dbg !6099
  %52 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6100
  %srr34 = getelementptr inbounds %struct.bdc, %struct.bdc* %52, i32 0, i32 11, !dbg !6101
  %dqp_index35 = getelementptr inbounds %struct.srr, %struct.srr* %srr34, i32 0, i32 2, !dbg !6102
  %53 = load i16, i16* %dqp_index35, align 2, !dbg !6102
  %conv36 = zext i16 %53 to i32, !dbg !6103
  %shl = shl i32 %conv36, 16, !dbg !6104
  %54 = load i32, i32* %srr_int, align 4, !dbg !6105
  %or = or i32 %54, %shl, !dbg !6105
  store i32 %or, i32* %srr_int, align 4, !dbg !6105
  %55 = load i32, i32* %srr_int, align 4, !dbg !6106
  %or37 = or i32 %55, 1, !dbg !6106
  store i32 %or37, i32* %srr_int, align 4, !dbg !6106
  %56 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6107
  %regs38 = getelementptr inbounds %struct.bdc, %struct.bdc* %56, i32 0, i32 8, !dbg !6108
  %57 = load i8*, i8** %regs38, align 8, !dbg !6108
  %58 = load i32, i32* %srr_int, align 4, !dbg !6109
  call void @bdc_writel(i8* %57, i32 520, i32 %58) #8, !dbg !6110
  %59 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6111
  %regs39 = getelementptr inbounds %struct.bdc, %struct.bdc* %59, i32 0, i32 8, !dbg !6112
  %60 = load i8*, i8** %regs39, align 8, !dbg !6112
  %call40 = call i32 @bdc_readl(i8* %60, i32 520) #8, !dbg !6113
  store i32 %call40, i32* %srr_int, align 4, !dbg !6114
  %61 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6115
  %reinit = getelementptr inbounds %struct.bdc, %struct.bdc* %61, i32 0, i32 18, !dbg !6117
  %62 = load i8, i8* %reinit, align 2, !dbg !6117
  %tobool41 = trunc i8 %62 to i1, !dbg !6117
  br i1 %tobool41, label %if.then42, label %if.end48, !dbg !6118

if.then42:                                        ; preds = %while.end
  %63 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6119
  %call43 = call i32 @bdc_reinit(%struct.bdc* %63) #8, !dbg !6121
  store i32 %call43, i32* %ret, align 4, !dbg !6122
  %64 = load i32, i32* %ret, align 4, !dbg !6123
  %tobool44 = icmp ne i32 %64, 0, !dbg !6123
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !6125

if.then45:                                        ; preds = %if.then42
  %65 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6126
  %dev46 = getelementptr inbounds %struct.bdc, %struct.bdc* %65, i32 0, i32 2, !dbg !6126
  %66 = load %struct.device*, %struct.device** %dev46, align 8, !dbg !6126
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !6126
  br label %if.end47, !dbg !6126

if.end47:                                         ; preds = %if.then45, %if.then42
  br label %if.end48, !dbg !6127

if.end48:                                         ; preds = %if.end47, %while.end
  %67 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6128
  %lock49 = getelementptr inbounds %struct.bdc, %struct.bdc* %67, i32 0, i32 3, !dbg !6129
  store %struct.spinlock* %lock49, %struct.spinlock** %lock.addr.i56, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6130, !srcloc !5557
  %68 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i56, align 8, !dbg !6131
  %69 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %68, i32 0, i32 0, !dbg !6131
  %rlock.i57 = bitcast %union.anon.1* %69 to %struct.raw_spinlock*, !dbg !6131
  store i32 1, i32* %retval, align 4, !dbg !6132
  br label %return, !dbg !6132

return:                                           ; preds = %if.end48, %if.then12, %if.then6, %if.then
  %70 = load i32, i32* %retval, align 4, !dbg !6133
  ret i32 %70, !dbg !6133
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @bdc_init_ep(%struct.bdc*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_add_gadget_udc(%struct.device*, %struct.usb_gadget*) #2

; Function Attrs: noredzone
declare dso_local i32 @bdc_ep_enable(%struct.bdc_ep*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !6134 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  ret void, !dbg !6141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !6142 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  br label %do.body, !dbg !6148

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6149

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6151

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6149

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6153
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6153
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6153
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6153
  br label %do.end3, !dbg !6153

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6149

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6155
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6156
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6157
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6158
  ret void, !dbg !6159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bdc_func_wake_timer(%struct.work_struct* %work) #0 !dbg !6160 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5594, metadata !DIExpression()), !dbg !6161
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !6165, metadata !DIExpression()), !dbg !6169
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6172
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6178
  %work.addr = alloca %struct.work_struct*, align 8
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6187, metadata !DIExpression()), !dbg !6188
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6189, metadata !DIExpression()), !dbg !6191
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6191
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !6191
  store i8* %1, i8** %__mptr, align 8, !dbg !6191
  br label %do.body, !dbg !6191

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6192

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6191
  %add.ptr = getelementptr i8, i8* %2, i64 -1336, !dbg !6191
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6191
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6192
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6191
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6188
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6194, metadata !DIExpression()), !dbg !6195
  br label %do.body1, !dbg !6196

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !6197

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6198, metadata !DIExpression()), !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6201, metadata !DIExpression()), !dbg !6200
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6200
  %conv = zext i1 %cmp to i32, !dbg !6200
  store i32 1, i32* %tmp3, align 4, !dbg !6200
  %5 = load i32, i32* %tmp3, align 4, !dbg !6200
  br label %do.body4, !dbg !6202

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !6203

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6204

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6206, metadata !DIExpression()), !dbg !6209
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6210, metadata !DIExpression()), !dbg !6209
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6209
  %conv10 = zext i1 %cmp9 to i32, !dbg !6209
  store i32 1, i32* %tmp11, align 4, !dbg !6209
  %6 = load i32, i32* %tmp11, align 4, !dbg !6209
  %call = call i64 @arch_local_irq_save() #8, !dbg !6211
  store i64 %call, i64* %flags, align 8, !dbg !6211
  br label %do.end12, !dbg !6211

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !6204

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !6203

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6212, !srcloc !6213
  br label %do.body15, !dbg !6212

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6214
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 3, !dbg !6214
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6215
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !6216
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !6216
  br label %do.end17, !dbg !6214

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6212

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6203

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6202

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6197

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6217
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %10, i32 0, i32 20, !dbg !6218
  %11 = load i32, i32* %devstatus, align 8, !dbg !6218
  %and = and i32 %11, 262144, !dbg !6219
  %tobool = icmp ne i32 %and, 0, !dbg !6219
  br i1 %tobool, label %if.then, label %if.end, !dbg !6220

if.then:                                          ; preds = %do.end21
  %12 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6221
  %call22 = call i32 @bdc_function_wake_fh(%struct.bdc* %12, i8 zeroext 0) #8, !dbg !6222
  %13 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6223
  %func_wake_notify = getelementptr inbounds %struct.bdc, %struct.bdc* %13, i32 0, i32 29, !dbg !6224
  store i32 2500, i32* %m.addr.i, align 4
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !6225
  %15 = call i1 @llvm.is.constant.i32(i32 %14) #7, !dbg !6226
  br i1 %15, label %if.then.i, label %if.else.i, !dbg !6227

if.then.i:                                        ; preds = %if.then
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !6228
  %cmp.i = icmp slt i32 %16, 0, !dbg !6229
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6230

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6231
  br label %msecs_to_jiffies.exit, !dbg !6231

if.end.i:                                         ; preds = %if.then.i
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !6232
  %call.i = call i64 @_msecs_to_jiffies(i32 %17) #9, !dbg !6233
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6234
  br label %msecs_to_jiffies.exit, !dbg !6234

if.else.i:                                        ; preds = %if.then
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !6235
  %call2.i = call i64 @__msecs_to_jiffies(i32 %18) #9, !dbg !6236
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6237
  br label %msecs_to_jiffies.exit, !dbg !6237

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %19 = load i64, i64* %retval.i, align 8, !dbg !6238
  %call24 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %func_wake_notify, i64 %19) #8, !dbg !6239
  br label %if.end, !dbg !6240

if.end:                                           ; preds = %msecs_to_jiffies.exit, %do.end21
  %20 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6241
  %lock25 = getelementptr inbounds %struct.bdc, %struct.bdc* %20, i32 0, i32 3, !dbg !6242
  %21 = load i64, i64* %flags, align 8, !dbg !6243
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6247
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6247
  store i32 1, i32* %tmp.i, align 4, !dbg !6247
  %22 = load i32, i32* %tmp.i, align 4, !dbg !6247
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6254
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6254
  store i32 1, i32* %tmp8.i, align 4, !dbg !6254
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !6254
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !6256
  call void @arch_local_irq_restore(i64 %24) #9, !dbg !6256
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6257, !srcloc !6259
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !6260
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !6260
  %rlock.i27 = bitcast %union.anon.1* %26 to %struct.raw_spinlock*, !dbg !6260
  ret void, !dbg !6262
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @usb_del_gadget_udc(%struct.usb_gadget*) #2

; Function Attrs: noredzone
declare dso_local void @bdc_free_ep(%struct.bdc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bdc_udc_exit(%struct.bdc* %bdc) #0 !dbg !6263 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !6165, metadata !DIExpression()), !dbg !6264
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6266
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6267
  %bdc.addr = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6276, metadata !DIExpression()), !dbg !6277
  br label %do.body, !dbg !6278

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6279

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6280, metadata !DIExpression()), !dbg !6282
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6283, metadata !DIExpression()), !dbg !6282
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6282
  %conv = zext i1 %cmp to i32, !dbg !6282
  store i32 1, i32* %tmp, align 4, !dbg !6282
  %0 = load i32, i32* %tmp, align 4, !dbg !6282
  br label %do.body2, !dbg !6284

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6285

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6286

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6288, metadata !DIExpression()), !dbg !6291
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6292, metadata !DIExpression()), !dbg !6291
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6291
  %conv8 = zext i1 %cmp7 to i32, !dbg !6291
  store i32 1, i32* %tmp9, align 4, !dbg !6291
  %1 = load i32, i32* %tmp9, align 4, !dbg !6291
  %call = call i64 @arch_local_irq_save() #8, !dbg !6293
  store i64 %call, i64* %flags, align 8, !dbg !6293
  br label %do.end, !dbg !6293

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6286

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6285

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6294, !srcloc !6295
  br label %do.body12, !dbg !6294

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6296
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %2, i32 0, i32 3, !dbg !6296
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6297
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !6298
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !6298
  br label %do.end14, !dbg !6296

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6294

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6285

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6284

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6279

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6299
  %bdc_ep_array = getelementptr inbounds %struct.bdc, %struct.bdc* %5, i32 0, i32 7, !dbg !6300
  %6 = load %struct.bdc_ep**, %struct.bdc_ep*** %bdc_ep_array, align 8, !dbg !6300
  %arrayidx = getelementptr %struct.bdc_ep*, %struct.bdc_ep** %6, i64 1, !dbg !6299
  %7 = load %struct.bdc_ep*, %struct.bdc_ep** %arrayidx, align 8, !dbg !6299
  %call19 = call i32 @bdc_ep_disable(%struct.bdc_ep* %7) #8, !dbg !6301
  %8 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6302
  %lock20 = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 3, !dbg !6303
  %9 = load i64, i64* %flags, align 8, !dbg !6304
  store %struct.spinlock* %lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6305
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6305
  store i32 1, i32* %tmp.i, align 4, !dbg !6305
  %10 = load i32, i32* %tmp.i, align 4, !dbg !6305
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6306
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6306
  store i32 1, i32* %tmp8.i, align 4, !dbg !6306
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !6306
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !6307
  call void @arch_local_irq_restore(i64 %12) #9, !dbg !6307
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6308, !srcloc !6259
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !6309
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !6309
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !6309
  %15 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6310
  %gadget = getelementptr inbounds %struct.bdc, %struct.bdc* %15, i32 0, i32 0, !dbg !6311
  call void @usb_del_gadget_udc(%struct.usb_gadget* %gadget) #8, !dbg !6312
  %16 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6313
  call void @bdc_free_ep(%struct.bdc* %16) #8, !dbg !6314
  ret void, !dbg !6315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6316 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6320, metadata !DIExpression()), !dbg !6321
  %call = call i64 @arch_local_save_flags() #8, !dbg !6322
  store i64 %call, i64* %f, align 8, !dbg !6323
  call void @arch_local_irq_disable() #8, !dbg !6324
  %0 = load i64, i64* %f, align 8, !dbg !6325
  ret i64 %0, !dbg !6326
}

; Function Attrs: noredzone
declare dso_local i32 @bdc_ep_disable(%struct.bdc_ep*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !6327 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6336, metadata !DIExpression()), !dbg !6335
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6335
  %1 = bitcast i8* %0 to i32*, !dbg !6335
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !6335, !srcloc !6337
  store i32 %2, i32* %ret, align 4, !dbg !6335
  %3 = load i32, i32* %ret, align 4, !dbg !6335
  ret i32 %3, !dbg !6335
}

; Function Attrs: noredzone
declare dso_local i32 @bdc_function_wake_fh(%struct.bdc*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #0 !dbg !6338 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6344, metadata !DIExpression()), !dbg !6345
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !6346
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6347
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6348
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !6349
  ret i1 %call, !dbg !6350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !6351 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6360
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6361
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6362
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !6363
  ret i1 %call, !dbg !6364
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6365 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load i32, i32* %m.addr, align 4, !dbg !6368
  %conv = zext i32 %0 to i64, !dbg !6368
  %add = add i64 %conv, 4, !dbg !6369
  %sub = sub i64 %add, 1, !dbg !6370
  %div = sdiv i64 %sub, 4, !dbg !6371
  ret i64 %div, !dbg !6372
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @bdc_config_ep(%struct.bdc*, %struct.bdc_ep*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !6373 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6377, metadata !DIExpression()), !dbg !6378
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6379, metadata !DIExpression()), !dbg !6378
  %0 = load i32, i32* %val.addr, align 4, !dbg !6378
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6378
  %2 = bitcast i8* %1 to i32*, !dbg !6378
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !6378, !srcloc !6380
  ret void, !dbg !6378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_wakeup(%struct.usb_gadget* %gadget) #0 !dbg !6381 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !6165, metadata !DIExpression()), !dbg !6382
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6384
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6385
  %retval = alloca i32, align 4
  %gadget.addr = alloca %struct.usb_gadget*, align 8
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %link_state = alloca i8, align 1
  %uspc = alloca i32, align 4
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.usb_gadget* %gadget, %struct.usb_gadget** %gadget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget.addr, metadata !6392, metadata !DIExpression()), !dbg !6393
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6394, metadata !DIExpression()), !dbg !6395
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6396, metadata !DIExpression()), !dbg !6398
  %0 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6398
  %1 = bitcast %struct.usb_gadget* %0 to i8*, !dbg !6398
  store i8* %1, i8** %__mptr, align 8, !dbg !6398
  br label %do.body, !dbg !6398

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6399

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6398
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6398
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6398
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6399
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6398
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6395
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6401, metadata !DIExpression()), !dbg !6402
  call void @llvm.dbg.declare(metadata i8* %link_state, metadata !6403, metadata !DIExpression()), !dbg !6404
  call void @llvm.dbg.declare(metadata i32* %uspc, metadata !6405, metadata !DIExpression()), !dbg !6406
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6407, metadata !DIExpression()), !dbg !6408
  store i32 0, i32* %ret, align 4, !dbg !6408
  %5 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6409
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %5, i32 0, i32 20, !dbg !6411
  %6 = load i32, i32* %devstatus, align 8, !dbg !6411
  %and = and i32 %6, 2, !dbg !6412
  %tobool = icmp ne i32 %and, 0, !dbg !6412
  br i1 %tobool, label %if.end, label %if.then, !dbg !6413

if.then:                                          ; preds = %do.end
  store i32 -95, i32* %retval, align 4, !dbg !6414
  br label %return, !dbg !6414

if.end:                                           ; preds = %do.end
  br label %do.body1, !dbg !6415

do.body1:                                         ; preds = %if.end
  br label %do.body2, !dbg !6416

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6417, metadata !DIExpression()), !dbg !6419
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6420, metadata !DIExpression()), !dbg !6419
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6419
  %conv = zext i1 %cmp to i32, !dbg !6419
  store i32 1, i32* %tmp3, align 4, !dbg !6419
  %7 = load i32, i32* %tmp3, align 4, !dbg !6419
  br label %do.body4, !dbg !6421

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !6422

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6423

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6425, metadata !DIExpression()), !dbg !6428
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6429, metadata !DIExpression()), !dbg !6428
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6428
  %conv10 = zext i1 %cmp9 to i32, !dbg !6428
  store i32 1, i32* %tmp11, align 4, !dbg !6428
  %8 = load i32, i32* %tmp11, align 4, !dbg !6428
  %call = call i64 @arch_local_irq_save() #8, !dbg !6430
  store i64 %call, i64* %flags, align 8, !dbg !6430
  br label %do.end12, !dbg !6430

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !6423

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !6422

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6431, !srcloc !6432
  br label %do.body15, !dbg !6431

do.body15:                                        ; preds = %do.body14
  %9 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6433
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %9, i32 0, i32 3, !dbg !6433
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6434
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !6435
  %rlock.i = bitcast %union.anon.1* %11 to %struct.raw_spinlock*, !dbg !6435
  br label %do.end17, !dbg !6433

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6431

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6422

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6421

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6416

do.end21:                                         ; preds = %do.end20
  %12 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6436
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 8, !dbg !6437
  %13 = load i8*, i8** %regs, align 8, !dbg !6437
  %call22 = call i32 @bdc_readl(i8* %13, i32 32) #8, !dbg !6438
  store i32 %call22, i32* %uspc, align 4, !dbg !6439
  %14 = load i32, i32* %uspc, align 4, !dbg !6440
  %and23 = and i32 %14, 15, !dbg !6440
  %conv24 = trunc i32 %and23 to i8, !dbg !6440
  store i8 %conv24, i8* %link_state, align 1, !dbg !6441
  %15 = load i8, i8* %link_state, align 1, !dbg !6442
  %conv25 = zext i8 %15 to i32, !dbg !6442
  %cmp26 = icmp ne i32 %conv25, 3, !dbg !6444
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !6445

if.then28:                                        ; preds = %do.end21
  %16 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6446
  %dev = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 2, !dbg !6446
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6446
  %18 = load i8, i8* %link_state, align 1, !dbg !6446
  %conv29 = zext i8 %18 to i32, !dbg !6446
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %conv29) #10, !dbg !6446
  store i32 -22, i32* %ret, align 4, !dbg !6448
  br label %out, !dbg !6449

if.end30:                                         ; preds = %do.end21
  %19 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6450
  %gadget31 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 0, !dbg !6452
  %speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget31, i32 0, i32 5, !dbg !6453
  %20 = load i32, i32* %speed, align 8, !dbg !6453
  %cmp32 = icmp eq i32 %20, 5, !dbg !6454
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !6455

if.then34:                                        ; preds = %if.end30
  %21 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6456
  %devstatus35 = getelementptr inbounds %struct.bdc, %struct.bdc* %21, i32 0, i32 20, !dbg !6457
  %22 = load i32, i32* %devstatus35, align 8, !dbg !6458
  %or = or i32 %22, 65536, !dbg !6458
  store i32 %or, i32* %devstatus35, align 8, !dbg !6458
  br label %if.end36, !dbg !6456

if.end36:                                         ; preds = %if.then34, %if.end30
  %23 = load i32, i32* %uspc, align 4, !dbg !6459
  %and37 = and i32 %23, -16, !dbg !6459
  store i32 %and37, i32* %uspc, align 4, !dbg !6459
  %24 = load i32, i32* %uspc, align 4, !dbg !6460
  %and38 = and i32 %24, -416, !dbg !6460
  store i32 %and38, i32* %uspc, align 4, !dbg !6460
  %25 = load i32, i32* %uspc, align 4, !dbg !6461
  store i32 %25, i32* %uspc, align 4, !dbg !6461
  %26 = load i32, i32* %uspc, align 4, !dbg !6462
  %or39 = or i32 %26, 16, !dbg !6462
  store i32 %or39, i32* %uspc, align 4, !dbg !6462
  %27 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6463
  %regs40 = getelementptr inbounds %struct.bdc, %struct.bdc* %27, i32 0, i32 8, !dbg !6464
  %28 = load i8*, i8** %regs40, align 8, !dbg !6464
  %29 = load i32, i32* %uspc, align 4, !dbg !6465
  call void @bdc_writel(i8* %28, i32 32, i32 %29) #8, !dbg !6466
  %30 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6467
  %regs41 = getelementptr inbounds %struct.bdc, %struct.bdc* %30, i32 0, i32 8, !dbg !6468
  %31 = load i8*, i8** %regs41, align 8, !dbg !6468
  %call42 = call i32 @bdc_readl(i8* %31, i32 32) #8, !dbg !6469
  store i32 %call42, i32* %uspc, align 4, !dbg !6470
  %32 = load i32, i32* %uspc, align 4, !dbg !6471
  %and43 = and i32 %32, 15, !dbg !6471
  %conv44 = trunc i32 %and43 to i8, !dbg !6471
  store i8 %conv44, i8* %link_state, align 1, !dbg !6472
  br label %out, !dbg !6473

out:                                              ; preds = %if.end36, %if.then28
  call void @llvm.dbg.label(metadata !6474), !dbg !6475
  %33 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6476
  %lock45 = getelementptr inbounds %struct.bdc, %struct.bdc* %33, i32 0, i32 3, !dbg !6477
  %34 = load i64, i64* %flags, align 8, !dbg !6478
  store %struct.spinlock* %lock45, %struct.spinlock** %lock.addr.i46, align 8
  store i64 %34, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6479
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6479
  store i32 1, i32* %tmp.i, align 4, !dbg !6479
  %35 = load i32, i32* %tmp.i, align 4, !dbg !6479
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6480
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6480
  store i32 1, i32* %tmp8.i, align 4, !dbg !6480
  %36 = load i32, i32* %tmp8.i, align 4, !dbg !6480
  %37 = load i64, i64* %flags.addr.i, align 8, !dbg !6481
  call void @arch_local_irq_restore(i64 %37) #9, !dbg !6481
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6482, !srcloc !6259
  %38 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !6483
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %38, i32 0, i32 0, !dbg !6483
  %rlock.i47 = bitcast %union.anon.1* %39 to %struct.raw_spinlock*, !dbg !6483
  %40 = load i32, i32* %ret, align 4, !dbg !6484
  store i32 %40, i32* %retval, align 4, !dbg !6485
  br label %return, !dbg !6485

return:                                           ; preds = %out, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !6486
  ret i32 %41, !dbg !6486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_set_selfpowered(%struct.usb_gadget* %gadget, i32 %is_self) #0 !dbg !6487 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !6165, metadata !DIExpression()), !dbg !6488
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6490
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6491
  %gadget.addr = alloca %struct.usb_gadget*, align 8
  %is_self.addr = alloca i32, align 4
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.usb_gadget* %gadget, %struct.usb_gadget** %gadget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  store i32 %is_self, i32* %is_self.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_self.addr, metadata !6500, metadata !DIExpression()), !dbg !6501
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6502, metadata !DIExpression()), !dbg !6503
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6504, metadata !DIExpression()), !dbg !6506
  %0 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6506
  %1 = bitcast %struct.usb_gadget* %0 to i8*, !dbg !6506
  store i8* %1, i8** %__mptr, align 8, !dbg !6506
  br label %do.body, !dbg !6506

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6507

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6506
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6506
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6506
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6507
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6506
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6503
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6509, metadata !DIExpression()), !dbg !6510
  %5 = load i32, i32* %is_self.addr, align 4, !dbg !6511
  %cmp = icmp ne i32 %5, 0, !dbg !6512
  %conv = zext i1 %cmp to i32, !dbg !6512
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6513
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %6, i32 0, i32 15, !dbg !6514
  %7 = bitcast i24* %is_selfpowered to i32*, !dbg !6514
  %bf.load = load i32, i32* %7, align 8, !dbg !6515
  %bf.value = and i32 %conv, 1, !dbg !6515
  %bf.shl = shl i32 %bf.value, 13, !dbg !6515
  %bf.clear = and i32 %bf.load, -8193, !dbg !6515
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !6515
  store i32 %bf.set, i32* %7, align 8, !dbg !6515
  br label %do.body1, !dbg !6516

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !6517

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6518, metadata !DIExpression()), !dbg !6520
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6521, metadata !DIExpression()), !dbg !6520
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !6520
  %conv4 = zext i1 %cmp3 to i32, !dbg !6520
  store i32 1, i32* %tmp5, align 4, !dbg !6520
  %8 = load i32, i32* %tmp5, align 4, !dbg !6520
  br label %do.body6, !dbg !6522

do.body6:                                         ; preds = %do.body2
  br label %do.body7, !dbg !6523

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !6524

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !6526, metadata !DIExpression()), !dbg !6529
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !6530, metadata !DIExpression()), !dbg !6529
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !6529
  %conv12 = zext i1 %cmp11 to i32, !dbg !6529
  store i32 1, i32* %tmp13, align 4, !dbg !6529
  %9 = load i32, i32* %tmp13, align 4, !dbg !6529
  %call = call i64 @arch_local_irq_save() #8, !dbg !6531
  store i64 %call, i64* %flags, align 8, !dbg !6531
  br label %do.end14, !dbg !6531

do.end14:                                         ; preds = %do.body8
  br label %do.end15, !dbg !6524

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !6523

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6532, !srcloc !6533
  br label %do.body17, !dbg !6532

do.body17:                                        ; preds = %do.body16
  %10 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6534
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %10, i32 0, i32 3, !dbg !6534
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6535
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !6536
  %rlock.i = bitcast %union.anon.1* %12 to %struct.raw_spinlock*, !dbg !6536
  br label %do.end19, !dbg !6534

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !6532

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6523

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !6522

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !6517

do.end23:                                         ; preds = %do.end22
  %13 = load i32, i32* %is_self.addr, align 4, !dbg !6537
  %tobool = icmp ne i32 %13, 0, !dbg !6537
  br i1 %tobool, label %if.else, label %if.then, !dbg !6539

if.then:                                          ; preds = %do.end23
  %14 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6540
  %devstatus = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 20, !dbg !6541
  %15 = load i32, i32* %devstatus, align 8, !dbg !6542
  %or = or i32 %15, 1, !dbg !6542
  store i32 %or, i32* %devstatus, align 8, !dbg !6542
  br label %if.end, !dbg !6540

if.else:                                          ; preds = %do.end23
  %16 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6543
  %devstatus24 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 20, !dbg !6544
  %17 = load i32, i32* %devstatus24, align 8, !dbg !6545
  %and = and i32 %17, -2, !dbg !6545
  store i32 %and, i32* %devstatus24, align 8, !dbg !6545
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6546
  %lock25 = getelementptr inbounds %struct.bdc, %struct.bdc* %18, i32 0, i32 3, !dbg !6547
  %19 = load i64, i64* %flags, align 8, !dbg !6548
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6549
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6549
  store i32 1, i32* %tmp.i, align 4, !dbg !6549
  %20 = load i32, i32* %tmp.i, align 4, !dbg !6549
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6550
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6550
  store i32 1, i32* %tmp8.i, align 4, !dbg !6550
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !6550
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !6551
  call void @arch_local_irq_restore(i64 %22) #9, !dbg !6551
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6552, !srcloc !6259
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !6553
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !6553
  %rlock.i27 = bitcast %union.anon.1* %24 to %struct.raw_spinlock*, !dbg !6553
  ret i32 0, !dbg !6554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_pullup(%struct.usb_gadget* %gadget, i32 %is_on) #0 !dbg !6555 {
entry:
  %lock.addr.i31 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i31, metadata !6165, metadata !DIExpression()), !dbg !6556
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6558
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6559
  %retval = alloca i32, align 4
  %gadget.addr = alloca %struct.usb_gadget*, align 8
  %is_on.addr = alloca i32, align 4
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %uspc = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.usb_gadget* %gadget, %struct.usb_gadget** %gadget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  store i32 %is_on, i32* %is_on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_on.addr, metadata !6568, metadata !DIExpression()), !dbg !6569
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6570, metadata !DIExpression()), !dbg !6571
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6572, metadata !DIExpression()), !dbg !6574
  %0 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6574
  %1 = bitcast %struct.usb_gadget* %0 to i8*, !dbg !6574
  store i8* %1, i8** %__mptr, align 8, !dbg !6574
  br label %do.body, !dbg !6574

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6575

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6574
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6574
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6574
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6575
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6574
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6571
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6577, metadata !DIExpression()), !dbg !6578
  call void @llvm.dbg.declare(metadata i32* %uspc, metadata !6579, metadata !DIExpression()), !dbg !6580
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6581
  %tobool = icmp ne %struct.usb_gadget* %5, null, !dbg !6581
  br i1 %tobool, label %if.end, label %if.then, !dbg !6583

if.then:                                          ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

if.end:                                           ; preds = %do.end
  br label %do.body1, !dbg !6585

do.body1:                                         ; preds = %if.end
  br label %do.body2, !dbg !6586

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6587, metadata !DIExpression()), !dbg !6589
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6590, metadata !DIExpression()), !dbg !6589
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6589
  %conv = zext i1 %cmp to i32, !dbg !6589
  store i32 1, i32* %tmp3, align 4, !dbg !6589
  %6 = load i32, i32* %tmp3, align 4, !dbg !6589
  br label %do.body4, !dbg !6591

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !6592

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6593

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6595, metadata !DIExpression()), !dbg !6598
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6599, metadata !DIExpression()), !dbg !6598
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6598
  %conv10 = zext i1 %cmp9 to i32, !dbg !6598
  store i32 1, i32* %tmp11, align 4, !dbg !6598
  %7 = load i32, i32* %tmp11, align 4, !dbg !6598
  %call = call i64 @arch_local_irq_save() #8, !dbg !6600
  store i64 %call, i64* %flags, align 8, !dbg !6600
  br label %do.end12, !dbg !6600

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !6593

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !6592

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6601, !srcloc !6602
  br label %do.body15, !dbg !6601

do.body15:                                        ; preds = %do.body14
  %8 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6603
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 3, !dbg !6603
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6604
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !6605
  %rlock.i = bitcast %union.anon.1* %10 to %struct.raw_spinlock*, !dbg !6605
  br label %do.end17, !dbg !6603

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6601

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6592

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6591

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6586

do.end21:                                         ; preds = %do.end20
  %11 = load i32, i32* %is_on.addr, align 4, !dbg !6606
  %tobool22 = icmp ne i32 %11, 0, !dbg !6606
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !6608

if.then23:                                        ; preds = %do.end21
  %12 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6609
  call void @bdc_softdisconn(%struct.bdc* %12) #8, !dbg !6611
  %13 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6612
  %pullup = getelementptr inbounds %struct.bdc, %struct.bdc* %13, i32 0, i32 19, !dbg !6613
  store i8 0, i8* %pullup, align 1, !dbg !6614
  br label %if.end29, !dbg !6615

if.else:                                          ; preds = %do.end21
  %14 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6616
  %pullup24 = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 19, !dbg !6618
  store i8 1, i8* %pullup24, align 1, !dbg !6619
  %15 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6620
  %regs = getelementptr inbounds %struct.bdc, %struct.bdc* %15, i32 0, i32 8, !dbg !6621
  %16 = load i8*, i8** %regs, align 8, !dbg !6621
  %call25 = call i32 @bdc_readl(i8* %16, i32 32) #8, !dbg !6622
  store i32 %call25, i32* %uspc, align 4, !dbg !6623
  %17 = load i32, i32* %uspc, align 4, !dbg !6624
  %and = and i32 %17, 33554432, !dbg !6626
  %tobool26 = icmp ne i32 %and, 0, !dbg !6626
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6627

if.then27:                                        ; preds = %if.else
  %18 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6628
  call void @bdc_softconn(%struct.bdc* %18) #8, !dbg !6629
  br label %if.end28, !dbg !6629

if.end28:                                         ; preds = %if.then27, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  %19 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6630
  %lock30 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 3, !dbg !6631
  %20 = load i64, i64* %flags, align 8, !dbg !6632
  store %struct.spinlock* %lock30, %struct.spinlock** %lock.addr.i31, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6633
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6633
  store i32 1, i32* %tmp.i, align 4, !dbg !6633
  %21 = load i32, i32* %tmp.i, align 4, !dbg !6633
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6634
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6634
  store i32 1, i32* %tmp8.i, align 4, !dbg !6634
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !6634
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !6635
  call void @arch_local_irq_restore(i64 %23) #9, !dbg !6635
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6636, !srcloc !6259
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i31, align 8, !dbg !6637
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !6637
  %rlock.i32 = bitcast %union.anon.1* %25 to %struct.raw_spinlock*, !dbg !6637
  store i32 0, i32* %retval, align 4, !dbg !6638
  br label %return, !dbg !6638

return:                                           ; preds = %if.end29, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !6639
  ret i32 %26, !dbg !6639
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_start(%struct.usb_gadget* %gadget, %struct.usb_gadget_driver* %driver) #0 !dbg !6640 {
entry:
  %lock.addr.i37 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i37, metadata !6165, metadata !DIExpression()), !dbg !6641
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6643
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6644
  %gadget.addr = alloca %struct.usb_gadget*, align 8
  %driver.addr = alloca %struct.usb_gadget_driver*, align 8
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.usb_gadget* %gadget, %struct.usb_gadget** %gadget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  store %struct.usb_gadget_driver* %driver, %struct.usb_gadget_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget_driver** %driver.addr, metadata !6653, metadata !DIExpression()), !dbg !6654
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6655, metadata !DIExpression()), !dbg !6656
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6657, metadata !DIExpression()), !dbg !6659
  %0 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6659
  %1 = bitcast %struct.usb_gadget* %0 to i8*, !dbg !6659
  store i8* %1, i8** %__mptr, align 8, !dbg !6659
  br label %do.body, !dbg !6659

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6659
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6659
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6659
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6660
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6659
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6656
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6662, metadata !DIExpression()), !dbg !6663
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6664, metadata !DIExpression()), !dbg !6665
  store i32 0, i32* %ret, align 4, !dbg !6665
  br label %do.body1, !dbg !6666

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !6667

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6668, metadata !DIExpression()), !dbg !6670
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6671, metadata !DIExpression()), !dbg !6670
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6670
  %conv = zext i1 %cmp to i32, !dbg !6670
  store i32 1, i32* %tmp3, align 4, !dbg !6670
  %5 = load i32, i32* %tmp3, align 4, !dbg !6670
  br label %do.body4, !dbg !6672

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !6673

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6674

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6676, metadata !DIExpression()), !dbg !6679
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6680, metadata !DIExpression()), !dbg !6679
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6679
  %conv10 = zext i1 %cmp9 to i32, !dbg !6679
  store i32 1, i32* %tmp11, align 4, !dbg !6679
  %6 = load i32, i32* %tmp11, align 4, !dbg !6679
  %call = call i64 @arch_local_irq_save() #8, !dbg !6681
  store i64 %call, i64* %flags, align 8, !dbg !6681
  br label %do.end12, !dbg !6681

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !6674

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !6673

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6682, !srcloc !6683
  br label %do.body15, !dbg !6682

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6684
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 3, !dbg !6684
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6685
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !6686
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !6686
  br label %do.end17, !dbg !6684

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6682

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6673

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6672

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6667

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6687
  %gadget_driver = getelementptr inbounds %struct.bdc, %struct.bdc* %10, i32 0, i32 1, !dbg !6689
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver, align 8, !dbg !6689
  %tobool = icmp ne %struct.usb_gadget_driver* %11, null, !dbg !6687
  br i1 %tobool, label %if.then, label %if.end, !dbg !6690

if.then:                                          ; preds = %do.end21
  %12 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6691
  %dev = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 2, !dbg !6691
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6691
  %14 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6691
  %gadget22 = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 0, !dbg !6691
  %name = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget22, i32 0, i32 8, !dbg !6691
  %15 = load i8*, i8** %name, align 8, !dbg !6691
  %16 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6691
  %gadget_driver23 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 1, !dbg !6691
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %gadget_driver23, align 8, !dbg !6691
  %driver24 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %17, i32 0, i32 9, !dbg !6691
  %name25 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver24, i32 0, i32 0, !dbg !6691
  %18 = load i8*, i8** %name25, align 8, !dbg !6691
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %15, i8* %18) #10, !dbg !6691
  store i32 -16, i32* %ret, align 4, !dbg !6693
  br label %err, !dbg !6694

if.end:                                           ; preds = %do.end21
  %19 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6695
  %call26 = call i32 @bdc_run(%struct.bdc* %19) #8, !dbg !6696
  store i32 %call26, i32* %ret, align 4, !dbg !6697
  %20 = load i32, i32* %ret, align 4, !dbg !6698
  %tobool27 = icmp ne i32 %20, 0, !dbg !6698
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6700

if.then28:                                        ; preds = %if.end
  %21 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6701
  %dev29 = getelementptr inbounds %struct.bdc, %struct.bdc* %21, i32 0, i32 2, !dbg !6701
  %22 = load %struct.device*, %struct.device** %dev29, align 8, !dbg !6701
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bdc_udc_start, i64 0, i64 0)) #10, !dbg !6701
  br label %err, !dbg !6703

if.end30:                                         ; preds = %if.end
  %23 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver.addr, align 8, !dbg !6704
  %24 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6705
  %gadget_driver31 = getelementptr inbounds %struct.bdc, %struct.bdc* %24, i32 0, i32 1, !dbg !6706
  store %struct.usb_gadget_driver* %23, %struct.usb_gadget_driver** %gadget_driver31, align 8, !dbg !6707
  %25 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver.addr, align 8, !dbg !6708
  %driver32 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %25, i32 0, i32 9, !dbg !6709
  %26 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6710
  %gadget33 = getelementptr inbounds %struct.bdc, %struct.bdc* %26, i32 0, i32 0, !dbg !6711
  %dev34 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget33, i32 0, i32 9, !dbg !6712
  %driver35 = getelementptr inbounds %struct.device, %struct.device* %dev34, i32 0, i32 6, !dbg !6713
  store %struct.device_driver* %driver32, %struct.device_driver** %driver35, align 8, !dbg !6714
  br label %err, !dbg !6710

err:                                              ; preds = %if.end30, %if.then28, %if.then
  call void @llvm.dbg.label(metadata !6715), !dbg !6716
  %27 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6717
  %lock36 = getelementptr inbounds %struct.bdc, %struct.bdc* %27, i32 0, i32 3, !dbg !6718
  %28 = load i64, i64* %flags, align 8, !dbg !6719
  store %struct.spinlock* %lock36, %struct.spinlock** %lock.addr.i37, align 8
  store i64 %28, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6720
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6720
  store i32 1, i32* %tmp.i, align 4, !dbg !6720
  %29 = load i32, i32* %tmp.i, align 4, !dbg !6720
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6721
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6721
  store i32 1, i32* %tmp8.i, align 4, !dbg !6721
  %30 = load i32, i32* %tmp8.i, align 4, !dbg !6721
  %31 = load i64, i64* %flags.addr.i, align 8, !dbg !6722
  call void @arch_local_irq_restore(i64 %31) #9, !dbg !6722
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6723, !srcloc !6259
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i37, align 8, !dbg !6724
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !6724
  %rlock.i38 = bitcast %union.anon.1* %33 to %struct.raw_spinlock*, !dbg !6724
  %34 = load i32, i32* %ret, align 4, !dbg !6725
  ret i32 %34, !dbg !6726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bdc_udc_stop(%struct.usb_gadget* %gadget) #0 !dbg !6727 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !6165, metadata !DIExpression()), !dbg !6728
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6171, metadata !DIExpression()), !dbg !6730
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6173, metadata !DIExpression()), !dbg !6731
  %gadget.addr = alloca %struct.usb_gadget*, align 8
  %bdc = alloca %struct.bdc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bdc*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.usb_gadget* %gadget, %struct.usb_gadget** %gadget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc, metadata !6740, metadata !DIExpression()), !dbg !6741
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6742, metadata !DIExpression()), !dbg !6744
  %0 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget.addr, align 8, !dbg !6744
  %1 = bitcast %struct.usb_gadget* %0 to i8*, !dbg !6744
  store i8* %1, i8** %__mptr, align 8, !dbg !6744
  br label %do.body, !dbg !6744

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6745

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6744
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6744
  %3 = bitcast i8* %add.ptr to %struct.bdc*, !dbg !6744
  store %struct.bdc* %3, %struct.bdc** %tmp, align 8, !dbg !6745
  %4 = load %struct.bdc*, %struct.bdc** %tmp, align 8, !dbg !6744
  store %struct.bdc* %4, %struct.bdc** %bdc, align 8, !dbg !6741
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6747, metadata !DIExpression()), !dbg !6748
  br label %do.body1, !dbg !6749

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !6750

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6751, metadata !DIExpression()), !dbg !6753
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6754, metadata !DIExpression()), !dbg !6753
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6753
  %conv = zext i1 %cmp to i32, !dbg !6753
  store i32 1, i32* %tmp3, align 4, !dbg !6753
  %5 = load i32, i32* %tmp3, align 4, !dbg !6753
  br label %do.body4, !dbg !6755

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !6756

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6757

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6759, metadata !DIExpression()), !dbg !6762
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6763, metadata !DIExpression()), !dbg !6762
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6762
  %conv10 = zext i1 %cmp9 to i32, !dbg !6762
  store i32 1, i32* %tmp11, align 4, !dbg !6762
  %6 = load i32, i32* %tmp11, align 4, !dbg !6762
  %call = call i64 @arch_local_irq_save() #8, !dbg !6764
  store i64 %call, i64* %flags, align 8, !dbg !6764
  br label %do.end12, !dbg !6764

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !6757

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !6756

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6765, !srcloc !6766
  br label %do.body15, !dbg !6765

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6767
  %lock = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 3, !dbg !6767
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6768
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !6769
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !6769
  br label %do.end17, !dbg !6767

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6765

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6756

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6755

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6750

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6770
  %call22 = call i32 @bdc_stop(%struct.bdc* %10) #8, !dbg !6771
  %11 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6772
  %gadget_driver = getelementptr inbounds %struct.bdc, %struct.bdc* %11, i32 0, i32 1, !dbg !6773
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %gadget_driver, align 8, !dbg !6774
  %12 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6775
  %gadget23 = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 0, !dbg !6776
  %dev = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %gadget23, i32 0, i32 9, !dbg !6777
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6778
  store %struct.device_driver* null, %struct.device_driver** %driver, align 8, !dbg !6779
  %13 = load %struct.bdc*, %struct.bdc** %bdc, align 8, !dbg !6780
  %lock24 = getelementptr inbounds %struct.bdc, %struct.bdc* %13, i32 0, i32 3, !dbg !6781
  %14 = load i64, i64* %flags, align 8, !dbg !6782
  store %struct.spinlock* %lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !395, metadata !6244, metadata !DIExpression()) #7, !dbg !6783
  call void @llvm.dbg.declare(metadata !395, metadata !6248, metadata !DIExpression()) #7, !dbg !6783
  store i32 1, i32* %tmp.i, align 4, !dbg !6783
  %15 = load i32, i32* %tmp.i, align 4, !dbg !6783
  call void @llvm.dbg.declare(metadata !395, metadata !6249, metadata !DIExpression()) #7, !dbg !6784
  call void @llvm.dbg.declare(metadata !395, metadata !6255, metadata !DIExpression()) #7, !dbg !6784
  store i32 1, i32* %tmp8.i, align 4, !dbg !6784
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !6784
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !6785
  call void @arch_local_irq_restore(i64 %17) #9, !dbg !6785
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6786, !srcloc !6259
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !6787
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !6787
  %rlock.i26 = bitcast %union.anon.1* %19 to %struct.raw_spinlock*, !dbg !6787
  ret i32 0, !dbg !6788
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @bdc_softdisconn(%struct.bdc*) #2

; Function Attrs: noredzone
declare dso_local i32 @bdc_run(%struct.bdc*) #2

; Function Attrs: noredzone
declare dso_local i32 @bdc_stop(%struct.bdc*) #2

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @srr_dqp_index_advc(%struct.bdc* %bdc, i32 %srr_num) #0 !dbg !6789 {
entry:
  %bdc.addr = alloca %struct.bdc*, align 8
  %srr_num.addr = alloca i32, align 4
  %srr = alloca %struct.srr*, align 8
  store %struct.bdc* %bdc, %struct.bdc** %bdc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bdc** %bdc.addr, metadata !6790, metadata !DIExpression()), !dbg !6791
  store i32 %srr_num, i32* %srr_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srr_num.addr, metadata !6792, metadata !DIExpression()), !dbg !6793
  call void @llvm.dbg.declare(metadata %struct.srr** %srr, metadata !6794, metadata !DIExpression()), !dbg !6796
  %0 = load %struct.bdc*, %struct.bdc** %bdc.addr, align 8, !dbg !6797
  %srr1 = getelementptr inbounds %struct.bdc, %struct.bdc* %0, i32 0, i32 11, !dbg !6798
  store %struct.srr* %srr1, %struct.srr** %srr, align 8, !dbg !6799
  br label %do.body, !dbg !6800

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6801

do.end:                                           ; preds = %do.body
  %1 = load %struct.srr*, %struct.srr** %srr, align 8, !dbg !6803
  %dqp_index = getelementptr inbounds %struct.srr, %struct.srr* %1, i32 0, i32 2, !dbg !6804
  %2 = load i16, i16* %dqp_index, align 2, !dbg !6805
  %inc = add i16 %2, 1, !dbg !6805
  store i16 %inc, i16* %dqp_index, align 2, !dbg !6805
  %3 = load %struct.srr*, %struct.srr** %srr, align 8, !dbg !6806
  %dqp_index2 = getelementptr inbounds %struct.srr, %struct.srr* %3, i32 0, i32 2, !dbg !6808
  %4 = load i16, i16* %dqp_index2, align 2, !dbg !6808
  %conv = zext i16 %4 to i32, !dbg !6806
  %cmp = icmp eq i32 %conv, 64, !dbg !6809
  br i1 %cmp, label %if.then, label %if.end, !dbg !6810

if.then:                                          ; preds = %do.end
  %5 = load %struct.srr*, %struct.srr** %srr, align 8, !dbg !6811
  %dqp_index4 = getelementptr inbounds %struct.srr, %struct.srr* %5, i32 0, i32 2, !dbg !6812
  store i16 0, i16* %dqp_index4, align 2, !dbg !6813
  br label %if.end, !dbg !6811

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !6814
}

; Function Attrs: noredzone
declare dso_local i32 @bdc_reinit(%struct.bdc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6815 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6816, metadata !DIExpression()), !dbg !6818
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6819, metadata !DIExpression()), !dbg !6818
  %0 = load i64, i64* %__edi, align 8, !dbg !6818
  store i64 %0, i64* %__edi, align 8, !dbg !6818
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6820, metadata !DIExpression()), !dbg !6818
  %1 = load i64, i64* %__esi, align 8, !dbg !6818
  store i64 %1, i64* %__esi, align 8, !dbg !6818
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6821, metadata !DIExpression()), !dbg !6818
  %2 = load i64, i64* %__edx, align 8, !dbg !6818
  store i64 %2, i64* %__edx, align 8, !dbg !6818
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6822, metadata !DIExpression()), !dbg !6818
  %3 = load i64, i64* %__ecx, align 8, !dbg !6818
  store i64 %3, i64* %__ecx, align 8, !dbg !6818
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6823, metadata !DIExpression()), !dbg !6818
  %4 = load i64, i64* %__eax, align 8, !dbg !6818
  store i64 %4, i64* %__eax, align 8, !dbg !6818
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6818
  %6 = call i64 @llvm.read_register.i64(metadata !5381), !dbg !6824
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6824, !srcloc !6827
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6824
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6824
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6824
  call void @llvm.write_register.i64(metadata !5381, i64 %asmresult1), !dbg !6824
  %8 = load i64, i64* %__eax, align 8, !dbg !6824
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6828, metadata !DIExpression()), !dbg !6830
  store i64 -1, i64* %__mask, align 8, !dbg !6830
  %9 = load i64, i64* %__mask, align 8, !dbg !6830
  store i64 %9, i64* %tmp, align 8, !dbg !6830
  %10 = load i64, i64* %tmp, align 8, !dbg !6830
  %and = and i64 %8, %10, !dbg !6824
  store i64 %and, i64* %__ret, align 8, !dbg !6824
  %11 = load i64, i64* %__ret, align 8, !dbg !6818
  store i64 %11, i64* %tmp2, align 8, !dbg !6831
  %12 = load i64, i64* %tmp2, align 8, !dbg !6818
  ret i64 %12, !dbg !6832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6833 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6834, metadata !DIExpression()), !dbg !6836
  %0 = load i64, i64* %__edi, align 8, !dbg !6836
  store i64 %0, i64* %__edi, align 8, !dbg !6836
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6837, metadata !DIExpression()), !dbg !6836
  %1 = load i64, i64* %__esi, align 8, !dbg !6836
  store i64 %1, i64* %__esi, align 8, !dbg !6836
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6838, metadata !DIExpression()), !dbg !6836
  %2 = load i64, i64* %__edx, align 8, !dbg !6836
  store i64 %2, i64* %__edx, align 8, !dbg !6836
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6839, metadata !DIExpression()), !dbg !6836
  %3 = load i64, i64* %__ecx, align 8, !dbg !6836
  store i64 %3, i64* %__ecx, align 8, !dbg !6836
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6840, metadata !DIExpression()), !dbg !6836
  %4 = load i64, i64* %__eax, align 8, !dbg !6836
  store i64 %4, i64* %__eax, align 8, !dbg !6836
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6836
  %6 = call i64 @llvm.read_register.i64(metadata !5381), !dbg !6836
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6836, !srcloc !6841
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6836
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6836
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6836
  call void @llvm.write_register.i64(metadata !5381, i64 %asmresult1), !dbg !6836
  ret void, !dbg !6842
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6843 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6846, metadata !DIExpression()), !dbg !6847
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6848, metadata !DIExpression()), !dbg !6850
  %0 = load i64, i64* %__edi, align 8, !dbg !6850
  store i64 %0, i64* %__edi, align 8, !dbg !6850
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6851, metadata !DIExpression()), !dbg !6850
  %1 = load i64, i64* %__esi, align 8, !dbg !6850
  store i64 %1, i64* %__esi, align 8, !dbg !6850
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6852, metadata !DIExpression()), !dbg !6850
  %2 = load i64, i64* %__edx, align 8, !dbg !6850
  store i64 %2, i64* %__edx, align 8, !dbg !6850
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6853, metadata !DIExpression()), !dbg !6850
  %3 = load i64, i64* %__ecx, align 8, !dbg !6850
  store i64 %3, i64* %__ecx, align 8, !dbg !6850
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6854, metadata !DIExpression()), !dbg !6850
  %4 = load i64, i64* %__eax, align 8, !dbg !6850
  store i64 %4, i64* %__eax, align 8, !dbg !6850
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6850
  %6 = call i64 @llvm.read_register.i64(metadata !5381), !dbg !6850
  %7 = load i64, i64* %f.addr, align 8, !dbg !6850
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6850, !srcloc !6855
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6850
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6850
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6850
  call void @llvm.write_register.i64(metadata !5381, i64 %asmresult1), !dbg !6850
  ret void, !dbg !6856
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5381}
!llvm.module.flags = !{!5382, !5383, !5384, !5385}
!llvm.ident = !{!5386}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bdc_gadget_ops", scope: !2, file: !3, line: 508, type: !281, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !231, globals: !5378, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/gadget/udc/bdc/bdc_udc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !16, !21, !28, !34, !41, !53, !60, !65, !71, !76, !82, !89, !95, !104, !112, !118, !125, !132, !138, !149, !172, !181, !186, !219, !225}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !6, line: 1146, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !17, line: 41, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !29, line: 118, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !35, line: 19, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !42, line: 49, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !54, line: 502, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !29, line: 315, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !66, line: 546, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !72, line: 65, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !77, line: 16, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !83, line: 59, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!88 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !90, line: 54, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!93 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !96, line: 296, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!102 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!103 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !105, line: 9, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !113, line: 26, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !119, line: 343, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !54, line: 524, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!131 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !133, line: 44, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !6, line: 1156, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148}
!140 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!148 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !150, line: 24, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!152 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!156 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!158 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!159 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!160 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!161 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!162 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!163 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!164 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!165 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!166 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!167 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!168 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!169 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!170 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!171 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bdc_ep0_state", file: !173, line: 386, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "drivers/usb/gadget/udc/bdc/bdc.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIEnumerator(name: "WAIT_FOR_SETUP", value: 0, isUnsigned: true)
!176 = !DIEnumerator(name: "WAIT_FOR_DATA_START", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "WAIT_FOR_DATA_XMIT", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "WAIT_FOR_STATUS_START", value: 3, isUnsigned: true)
!179 = !DIEnumerator(name: "WAIT_FOR_STATUS_XMIT", value: 4, isUnsigned: true)
!180 = !DIEnumerator(name: "STATUS_PENDING", value: 5, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 10, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185}
!184 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 30, baseType: !188, size: 64, elements: !189)
!187 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!190 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!191 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!192 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!193 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!194 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!195 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!196 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!197 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!198 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!199 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!200 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!201 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!202 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!203 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!204 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!205 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!206 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!207 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!208 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!209 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!210 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!211 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!212 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!213 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!214 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!215 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!216 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!217 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!218 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bdc_link_state", file: !173, line: 396, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224}
!221 = !DIEnumerator(name: "BDC_LINK_STATE_U0", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "BDC_LINK_STATE_U3", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "BDC_LINK_STATE_RX_DET", value: 5, isUnsigned: true)
!224 = !DIEnumerator(name: "BDC_LINK_STATE_RESUME", value: 15, isUnsigned: true)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !226, line: 11, baseType: !7, size: 32, elements: !227)
!226 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!229 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!231 = !{!232, !233, !235, !188, !236, !238, !241, !242, !560, !5305, !5376}
!232 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!235 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !237, line: 29, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !239, line: 24, baseType: !240)
!239 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc", file: !173, line: 404, size: 11456, elements: !244)
!244 = !{!245, !5174, !5175, !5176, !5177, !5273, !5274, !5275, !5313, !5314, !5320, !5321, !5332, !5333, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5362, !5363, !5368, !5370, !5372, !5373}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !243, file: !173, line: 405, baseType: !246, size: 6592)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget", file: !247, line: 400, size: 6592, elements: !248)
!247 = !DIFile(filename: "./include/linux/usb/gadget.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !276, !279, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !246, file: !247, line: 401, baseType: !250, size: 256)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !187, line: 102, size: 256, elements: !251)
!251 = !{!252, !264, !270}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !250, file: !187, line: 103, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !254, line: 13, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !256, line: 175, baseType: !257)
!256 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 173, size: 64, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !257, file: !256, line: 174, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !239, line: 30, baseType: !263)
!263 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !250, file: !187, line: 104, baseType: !265, size: 128, offset: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !256, line: 178, size: 128, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !256, line: 179, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !256, line: 179, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !250, file: !187, line: 105, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !187, line: 21, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !246, file: !247, line: 402, baseType: !277, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_udc", file: !247, line: 306, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !246, file: !247, line: 404, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_ops", file: !247, line: 311, size: 768, elements: !283)
!283 = !{!284, !289, !290, !294, !295, !299, !300, !304, !317, !5009, !5010, !5014}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame", scope: !282, file: !247, line: 312, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!235, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !282, file: !247, line: 313, baseType: !285, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "set_selfpowered", scope: !282, file: !247, line: 314, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!235, !288, !235}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_session", scope: !282, file: !247, line: 315, baseType: !291, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_draw", scope: !282, file: !247, line: 316, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!235, !288, !7}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pullup", scope: !282, file: !247, line: 317, baseType: !291, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !282, file: !247, line: 318, baseType: !301, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!235, !288, !7, !232}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get_config_params", scope: !282, file: !247, line: 320, baseType: !305, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !288, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dcd_config_params", file: !247, line: 293, size: 48, elements: !310)
!310 = !{!311, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !309, file: !247, line: 294, baseType: !312, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !239, line: 21, baseType: !313)
!313 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !309, file: !247, line: 296, baseType: !236, size: 16, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "besl_baseline", scope: !309, file: !247, line: 298, baseType: !312, size: 8, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "besl_deep", scope: !309, file: !247, line: 299, baseType: !312, size: 8, offset: 40)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "udc_start", scope: !282, file: !247, line: 322, baseType: !318, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!235, !288, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_driver", file: !247, line: 699, size: 1984, elements: !323)
!323 = !{!324, !327, !328, !329, !333, !346, !347, !348, !349, !350, !5006, !5007, !5008}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !322, file: !247, line: 700, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !322, file: !247, line: 701, baseType: !5, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !322, file: !247, line: 702, baseType: !318, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !322, file: !247, line: 704, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !288}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !322, file: !247, line: 705, baseType: !334, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!235, !288, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !6, line: 213, size: 64, elements: !340)
!340 = !{!341, !342, !343, !344, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !339, file: !6, line: 214, baseType: !312, size: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !339, file: !6, line: 215, baseType: !312, size: 8, offset: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !339, file: !6, line: 216, baseType: !236, size: 16, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !339, file: !6, line: 217, baseType: !236, size: 16, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !339, file: !6, line: 218, baseType: !236, size: 16, offset: 48)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !322, file: !247, line: 707, baseType: !330, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !322, file: !247, line: 708, baseType: !330, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !322, file: !247, line: 709, baseType: !330, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !322, file: !247, line: 710, baseType: !330, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !322, file: !247, line: 713, baseType: !351, size: 1152, offset: 576)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !133, line: 95, size: 1152, elements: !352)
!352 = !{!353, !356, !4963, !4964, !4965, !4966, !4967, !4980, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !133, line: 96, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !351, file: !133, line: 97, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !359, line: 82, size: 1408, elements: !360)
!359 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !362, !363, !4934, !4935, !4936, !4937, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4952, !4953, !4954, !4955, !4956, !4960, !4961, !4962}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !359, line: 83, baseType: !354, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !358, file: !359, line: 84, baseType: !354, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !358, file: !359, line: 85, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !119, line: 461, size: 5568, elements: !366)
!366 = !{!367, !4561, !4562, !4565, !4566, !4616, !4617, !4619, !4620, !4621, !4622, !4631, !4729, !4742, !4745, !4746, !4750, !4752, !4753, !4754, !4758, !4764, !4765, !4768, !4883, !4884, !4885, !4886, !4887, !4888, !4922, !4923, !4924, !4927, !4930, !4931, !4932, !4933}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !365, file: !119, line: 462, baseType: !368, size: 512)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !369, line: 64, size: 512, elements: !370)
!369 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !373, !375, !434, !4428, !4555, !4556, !4557, !4558, !4559, !4560}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !369, line: 65, baseType: !354, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !368, file: !369, line: 66, baseType: !265, size: 128, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !368, file: !369, line: 67, baseType: !374, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !368, file: !369, line: 68, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !369, line: 192, size: 704, elements: !378)
!378 = !{!379, !380, !396, !397}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !377, file: !369, line: 193, baseType: !265, size: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !377, file: !369, line: 194, baseType: !381, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !382, line: 83, baseType: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !382, line: 71, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !382, line: 72, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !382, line: 72, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !386, file: !382, line: 73, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !382, line: 20, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !389, file: !382, line: 21, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !393, line: 25, baseType: !394)
!393 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 25, elements: !395)
!395 = !{}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !377, file: !369, line: 195, baseType: !368, size: 512, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !377, file: !369, line: 196, baseType: !398, size: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !369, line: 156, size: 192, elements: !401)
!401 = !{!402, !407, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !400, file: !369, line: 157, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!235, !376, !374}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !369, line: 158, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!354, !376, !374}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !400, file: !369, line: 159, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!235, !376, !374, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !369, line: 148, size: 20736, elements: !419)
!419 = !{!420, !424, !428, !429, !433}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !418, file: !369, line: 149, baseType: !421, size: 192)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 3)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !418, file: !369, line: 150, baseType: !425, size: 4096, offset: 192)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 4096, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !418, file: !369, line: 151, baseType: !235, size: 32, offset: 4288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !418, file: !369, line: 152, baseType: !430, size: 16384, offset: 4320)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 16384, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 2048)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !418, file: !369, line: 153, baseType: !235, size: 32, offset: 20704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !368, file: !369, line: 69, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !369, line: 138, size: 448, elements: !437)
!437 = !{!438, !442, !469, !471, !4392, !4420, !4424}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !436, file: !369, line: 139, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !374}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !436, file: !369, line: 140, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !446, line: 230, size: 128, elements: !447)
!446 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !445, file: !446, line: 231, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !374, !456, !325}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !256, line: 60, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !454, line: 73, baseType: !455)
!454 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !454, line: 15, baseType: !188)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !446, line: 30, size: 128, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !446, line: 31, baseType: !354, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !457, file: !446, line: 32, baseType: !461, size: 16, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !256, line: 19, baseType: !240)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !445, file: !446, line: 232, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!452, !374, !456, !354, !466}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !256, line: 55, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !454, line: 72, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !454, line: 16, baseType: !232)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !436, file: !369, line: 141, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !436, file: !369, line: 142, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !446, line: 84, size: 320, elements: !476)
!476 = !{!477, !478, !482, !4389, !4390}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !446, line: 85, baseType: !354, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !475, file: !446, line: 86, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!461, !374, !456, !235}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !475, file: !446, line: 88, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!461, !374, !486, !235}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !446, line: 168, size: 448, elements: !488)
!488 = !{!489, !490, !491, !492, !4384, !4385}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !487, file: !446, line: 169, baseType: !457, size: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !487, file: !446, line: 170, baseType: !466, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !487, file: !446, line: 171, baseType: !241, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !487, file: !446, line: 172, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!452, !496, !374, !486, !325, !672, !466}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !96, line: 916, size: 1856, align: 32, elements: !498)
!498 = !{!499, !517, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4367, !4368, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !497, file: !96, line: 920, baseType: !500, size: 128)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !96, line: 917, size: 128, elements: !501)
!501 = !{!502, !508}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !500, file: !96, line: 918, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !504, line: 58, size: 64, elements: !505)
!504 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !504, line: 59, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !500, file: !96, line: 919, baseType: !509, size: 128, align: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !256, line: 216, size: 128, align: 64, elements: !510)
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !256, line: 217, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !509, file: !256, line: 218, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !512}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !497, file: !96, line: 921, baseType: !518, size: 128, offset: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !519, line: 8, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !518, file: !519, line: 9, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !524, line: 18, flags: DIFlagFwdDecl)
!524 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !518, file: !519, line: 10, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !524, line: 89, size: 1536, elements: !528)
!528 = !{!529, !530, !540, !548, !549, !569, !4317, !4319, !4331, !4332, !4333, !4334, !4335, !4341, !4342, !4343}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !527, file: !524, line: 91, baseType: !7, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !527, file: !524, line: 92, baseType: !531, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !532, line: 277, baseType: !533)
!532 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !532, line: 277, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !533, file: !532, line: 277, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !532, line: 70, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !532, line: 65, size: 32, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !537, file: !532, line: 66, baseType: !7, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !527, file: !524, line: 93, baseType: !541, size: 128, offset: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !542, line: 38, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !542, line: 39, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !541, file: !542, line: 39, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !527, file: !524, line: 94, baseType: !526, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !527, file: !524, line: 95, baseType: !550, size: 128, offset: 256)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !524, line: 47, size: 128, elements: !551)
!551 = !{!552, !566}
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !524, line: 48, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !524, line: 48, size: 64, elements: !554)
!554 = !{!555, !562}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !524, line: 49, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !524, line: 49, size: 64, elements: !557)
!557 = !{!558, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !556, file: !524, line: 50, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !239, line: 27, baseType: !7)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !556, file: !524, line: 50, baseType: !559, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !553, file: !524, line: 52, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !239, line: 31, baseType: !565)
!565 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !524, line: 54, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !527, file: !524, line: 96, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !96, line: 610, size: 4224, elements: !572)
!572 = !{!573, !574, !575, !583, !590, !591, !737, !4031, !4032, !4033, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4293, !4301, !4302, !4303, !4313, !4314, !4315, !4316}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !571, file: !96, line: 611, baseType: !461, size: 16)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !571, file: !96, line: 612, baseType: !240, size: 16, offset: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !571, file: !96, line: 613, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !577, line: 23, baseType: !578)
!577 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 21, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !578, file: !577, line: 22, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !256, line: 32, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !454, line: 49, baseType: !7)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !571, file: !96, line: 614, baseType: !584, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !577, line: 28, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 26, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !585, file: !577, line: 27, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !256, line: 33, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !454, line: 50, baseType: !7)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !571, file: !96, line: 615, baseType: !7, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !571, file: !96, line: 622, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !96, line: 1864, size: 1536, align: 512, elements: !595)
!595 = !{!596, !600, !613, !617, !623, !627, !633, !637, !641, !645, !649, !650, !656, !660, !684, !713, !717, !723, !728, !732, !733}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !594, file: !96, line: 1865, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!526, !570, !526, !7}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !594, file: !96, line: 1866, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!354, !526, !570, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !606, line: 10, size: 128, elements: !607)
!606 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !612}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !605, file: !606, line: 11, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !241}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !605, file: !606, line: 12, baseType: !241, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !594, file: !96, line: 1867, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!235, !570, !235}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !594, file: !96, line: 1868, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !570, !235}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !96, line: 581, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !594, file: !96, line: 1870, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!235, !526, !325, !235}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !594, file: !96, line: 1872, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!235, !570, !526, !461, !631}
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !256, line: 30, baseType: !632)
!632 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !594, file: !96, line: 1873, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!235, !526, !570, !526}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !594, file: !96, line: 1874, baseType: !638, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!235, !570, !526}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !594, file: !96, line: 1875, baseType: !642, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!235, !570, !526, !354}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !594, file: !96, line: 1876, baseType: !646, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!235, !570, !526, !461}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !594, file: !96, line: 1877, baseType: !638, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !594, file: !96, line: 1878, baseType: !651, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!235, !570, !526, !461, !654}
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !256, line: 16, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !256, line: 13, baseType: !559)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !594, file: !96, line: 1879, baseType: !657, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!235, !570, !526, !570, !526, !7}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !594, file: !96, line: 1881, baseType: !661, size: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!235, !526, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !96, line: 219, size: 640, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !674, !681, !682, !683}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !665, file: !96, line: 220, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !665, file: !96, line: 221, baseType: !461, size: 16, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !665, file: !96, line: 222, baseType: !576, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !665, file: !96, line: 223, baseType: !584, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !665, file: !96, line: 224, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !256, line: 46, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !454, line: 88, baseType: !263)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !665, file: !96, line: 225, baseType: !675, size: 128, offset: 192)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !676, line: 13, size: 128, elements: !677)
!676 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !675, file: !676, line: 14, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !676, line: 8, baseType: !262)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !675, file: !676, line: 15, baseType: !188, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !665, file: !96, line: 226, baseType: !675, size: 128, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !665, file: !96, line: 227, baseType: !675, size: 128, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !665, file: !96, line: 234, baseType: !496, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !594, file: !96, line: 1882, baseType: !685, size: 64, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!235, !688, !690, !559, !7}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !692, line: 22, size: 1152, elements: !693)
!692 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !696, !697, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !691, file: !692, line: 23, baseType: !559, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !691, file: !692, line: 24, baseType: !461, size: 16, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !691, file: !692, line: 25, baseType: !7, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !691, file: !692, line: 26, baseType: !698, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !256, line: 104, baseType: !559)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !691, file: !692, line: 27, baseType: !563, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !691, file: !692, line: 28, baseType: !563, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !691, file: !692, line: 37, baseType: !563, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !691, file: !692, line: 38, baseType: !654, size: 32, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !691, file: !692, line: 39, baseType: !654, size: 32, offset: 352)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !691, file: !692, line: 40, baseType: !576, size: 32, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !691, file: !692, line: 41, baseType: !584, size: 32, offset: 416)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !691, file: !692, line: 42, baseType: !672, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !691, file: !692, line: 43, baseType: !675, size: 128, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !691, file: !692, line: 44, baseType: !675, size: 128, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !691, file: !692, line: 45, baseType: !675, size: 128, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !691, file: !692, line: 46, baseType: !675, size: 128, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !691, file: !692, line: 47, baseType: !563, size: 64, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !691, file: !692, line: 48, baseType: !563, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !594, file: !96, line: 1883, baseType: !714, size: 64, offset: 960)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!452, !526, !325, !466}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !594, file: !96, line: 1884, baseType: !718, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!235, !570, !721, !563, !563}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !96, line: 50, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !594, file: !96, line: 1886, baseType: !724, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!235, !570, !727, !235}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !594, file: !96, line: 1887, baseType: !729, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!235, !570, !526, !496, !7, !461}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !594, file: !96, line: 1890, baseType: !646, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !594, file: !96, line: 1891, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!235, !570, !621, !235}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !571, file: !96, line: 623, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !96, line: 1416, size: 9472, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !796, !3645, !3727, !3810, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3826, !3830, !3831, !3832, !3833, !3836, !3837, !3838, !3879, !3905, !3906, !3907, !3908, !3909, !3910, !3913, !3914, !3921, !3922, !3923, !3924, !3925, !3984, !3985, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !739, file: !96, line: 1417, baseType: !265, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !739, file: !96, line: 1418, baseType: !654, size: 32, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !739, file: !96, line: 1419, baseType: !313, size: 8, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !739, file: !96, line: 1420, baseType: !232, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !739, file: !96, line: 1421, baseType: !672, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !739, file: !96, line: 1422, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !96, line: 2228, size: 576, elements: !749)
!749 = !{!750, !751, !752, !759, !763, !767, !771, !775, !776, !786, !789, !790, !791, !793, !794, !795}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !748, file: !96, line: 2229, baseType: !354, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !748, file: !96, line: 2230, baseType: !235, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !748, file: !96, line: 2238, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!235, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !758, line: 28, flags: DIFlagFwdDecl)
!758 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !748, file: !96, line: 2239, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !96, line: 70, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !748, file: !96, line: 2240, baseType: !764, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!526, !747, !235, !354, !241}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !748, file: !96, line: 2242, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !738}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !748, file: !96, line: 2243, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !774, line: 76, flags: DIFlagFwdDecl)
!774 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !96, line: 2244, baseType: !747, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !748, file: !96, line: 2245, baseType: !777, size: 64, offset: 512)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !256, line: 182, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !777, file: !256, line: 183, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !256, line: 186, size: 128, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !256, line: 187, baseType: !780, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !781, file: !256, line: 187, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !748, file: !96, line: 2247, baseType: !787, offset: 576)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !788, line: 187, elements: !395)
!788 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !748, file: !96, line: 2248, baseType: !787, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !748, file: !96, line: 2249, baseType: !787, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !748, file: !96, line: 2250, baseType: !792, offset: 576)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, elements: !422)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !748, file: !96, line: 2252, baseType: !787, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !748, file: !96, line: 2253, baseType: !787, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !748, file: !96, line: 2254, baseType: !787, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !739, file: !96, line: 1423, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !96, line: 1935, size: 1472, elements: !800)
!800 = !{!801, !805, !809, !810, !814, !834, !838, !839, !840, !844, !848, !849, !850, !851, !857, !862, !863, !912, !913, !914, !915, !3629, !3644}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !799, file: !96, line: 1936, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!570, !738}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !799, file: !96, line: 1937, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !570}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !799, file: !96, line: 1938, baseType: !806, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !799, file: !96, line: 1940, baseType: !811, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !570, !235}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !799, file: !96, line: 1941, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!235, !570, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !17, line: 51, size: 320, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !819, file: !17, line: 52, baseType: !188, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !819, file: !17, line: 54, baseType: !188, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !819, file: !17, line: 61, baseType: !672, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !819, file: !17, line: 62, baseType: !672, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !819, file: !17, line: 64, baseType: !16, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !819, file: !17, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !819, file: !17, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !819, file: !17, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !819, file: !17, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !819, file: !17, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !819, file: !17, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !819, file: !17, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !819, file: !17, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !799, file: !96, line: 1942, baseType: !835, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!235, !570}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !799, file: !96, line: 1943, baseType: !806, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !799, file: !96, line: 1944, baseType: !768, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !799, file: !96, line: 1945, baseType: !841, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!235, !738, !235}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !799, file: !96, line: 1946, baseType: !845, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!235, !738}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !799, file: !96, line: 1947, baseType: !845, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !799, file: !96, line: 1948, baseType: !845, size: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !799, file: !96, line: 1949, baseType: !845, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !799, file: !96, line: 1950, baseType: !852, size: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!235, !526, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !96, line: 57, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !799, file: !96, line: 1951, baseType: !858, size: 64, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!235, !738, !861, !325}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !799, file: !96, line: 1952, baseType: !768, size: 64, offset: 960)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !799, file: !96, line: 1954, baseType: !864, size: 64, offset: 1024)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!235, !867, !526}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !869, line: 16, size: 896, elements: !870)
!869 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !885, !907, !908, !911}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !868, file: !869, line: 17, baseType: !325, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !868, file: !869, line: 18, baseType: !466, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !868, file: !869, line: 19, baseType: !466, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !868, file: !869, line: 20, baseType: !466, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !868, file: !869, line: 21, baseType: !466, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !868, file: !869, line: 22, baseType: !672, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !868, file: !869, line: 23, baseType: !672, size: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !868, file: !869, line: 24, baseType: !879, size: 192, offset: 448)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !880, line: 53, size: 192, elements: !881)
!880 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !880, line: 54, baseType: !253, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !879, file: !880, line: 55, baseType: !381, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !879, file: !880, line: 59, baseType: !265, size: 128, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !868, file: !869, line: 25, baseType: !886, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !869, line: 31, size: 256, elements: !889)
!889 = !{!890, !895, !899, !903}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !888, file: !869, line: 32, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!241, !867, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !888, file: !869, line: 33, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !867, !241}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !869, line: 34, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!241, !867, !241, !894}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !888, file: !869, line: 35, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!235, !867, !241}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !868, file: !869, line: 26, baseType: !235, size: 32, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !868, file: !869, line: 27, baseType: !909, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !868, file: !869, line: 28, baseType: !241, size: 64, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !799, file: !96, line: 1955, baseType: !864, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !799, file: !96, line: 1956, baseType: !864, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !799, file: !96, line: 1957, baseType: !864, size: 64, offset: 1216)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !799, file: !96, line: 1963, baseType: !916, size: 64, offset: 1280)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!235, !738, !919, !942}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !921, line: 68, size: 512, align: 128, elements: !922)
!921 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!922 = !{!923, !924, !3621, !3628}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !921, line: 69, baseType: !232, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !921, line: 77, baseType: !925, size: 320, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !921, line: 77, size: 320, elements: !926)
!926 = !{!927, !2048, !2053, !2079, !2087, !2093, !3572, !3620}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 78, baseType: !928, size: 320)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 78, size: 320, elements: !929)
!929 = !{!930, !931, !2046, !2047}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !928, file: !921, line: 84, baseType: !265, size: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !928, file: !921, line: 86, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !96, line: 451, size: 1216, align: 64, elements: !934)
!934 = !{!935, !936, !944, !945, !950, !965, !974, !975, !976, !977, !2039, !2040, !2043, !2044, !2045}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !933, file: !96, line: 452, baseType: !570, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !933, file: !96, line: 453, baseType: !937, size: 128, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !938, line: 292, size: 128, elements: !939)
!938 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!939 = !{!940, !941, !943}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !937, file: !938, line: 293, baseType: !381)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !937, file: !938, line: 295, baseType: !942, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !256, line: 148, baseType: !7)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !937, file: !938, line: 296, baseType: !241, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !933, file: !96, line: 454, baseType: !942, size: 32, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !933, file: !96, line: 455, baseType: !946, size: 32, offset: 224)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !256, line: 168, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 166, size: 32, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !947, file: !256, line: 167, baseType: !235, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !933, file: !96, line: 460, baseType: !951, size: 128, offset: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !952, line: 125, size: 128, elements: !953)
!952 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !964}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !951, file: !952, line: 126, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !952, line: 31, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !955, file: !952, line: 32, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !952, line: 24, size: 192, align: 64, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !959, file: !952, line: 25, baseType: !232, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !959, file: !952, line: 26, baseType: !958, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !959, file: !952, line: 27, baseType: !958, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !951, file: !952, line: 127, baseType: !958, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !933, file: !96, line: 461, baseType: !966, size: 256, offset: 384)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !967, line: 35, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !970, !971, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !966, file: !967, line: 36, baseType: !253, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !966, file: !967, line: 42, baseType: !253, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !966, file: !967, line: 46, baseType: !972, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !382, line: 29, baseType: !389)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !966, file: !967, line: 47, baseType: !265, size: 128, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !933, file: !96, line: 462, baseType: !232, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !933, file: !96, line: 463, baseType: !232, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !933, file: !96, line: 464, baseType: !232, size: 64, offset: 768)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !933, file: !96, line: 465, baseType: !978, size: 64, offset: 832)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !96, line: 367, size: 1408, elements: !981)
!981 = !{!982, !986, !990, !994, !998, !1002, !1015, !1021, !1025, !1030, !1034, !1038, !1042, !1086, !1090, !1096, !1097, !1098, !1102, !1107, !1111, !2035}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !980, file: !96, line: 368, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!235, !919, !818}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !980, file: !96, line: 369, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!235, !496, !919}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !980, file: !96, line: 372, baseType: !991, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!235, !932, !818}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !980, file: !96, line: 375, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!235, !919}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !980, file: !96, line: 381, baseType: !999, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!235, !496, !932, !268, !7}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !980, file: !96, line: 383, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1008, line: 795, size: 256, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1007, file: !1008, line: 796, baseType: !496, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1007, file: !1008, line: 797, baseType: !932, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1007, file: !1008, line: 799, baseType: !232, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1007, file: !1008, line: 800, baseType: !7, size: 32, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1007, file: !1008, line: 801, baseType: !7, size: 32, offset: 224)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !980, file: !96, line: 385, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!235, !496, !932, !672, !7, !7, !1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !980, file: !96, line: 388, baseType: !1022, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!235, !496, !932, !672, !7, !7, !919, !241}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !980, file: !96, line: 393, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1029, !932, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !256, line: 125, baseType: !563)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !980, file: !96, line: 394, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !919, !7, !7}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !980, file: !96, line: 395, baseType: !1035, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!235, !919, !942}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !980, file: !96, line: 396, baseType: !1039, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !919}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !980, file: !96, line: 397, baseType: !1043, size: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!452, !1046, !1084}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !96, line: 320, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1055, !1056, !1057, !1059, !1060}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1047, file: !96, line: 321, baseType: !496, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1047, file: !96, line: 326, baseType: !672, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1047, file: !96, line: 327, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1046, !188, !188}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1047, file: !96, line: 328, baseType: !241, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1047, file: !96, line: 329, baseType: !235, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1047, file: !96, line: 330, baseType: !1058, size: 16, offset: 288)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !238)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1047, file: !96, line: 331, baseType: !1058, size: 16, offset: 304)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !96, line: 332, baseType: !1061, size: 64, offset: 320)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !96, line: 332, size: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1061, file: !96, line: 333, baseType: !7, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1061, file: !96, line: 334, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1008, line: 569, size: 448, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1066, file: !1008, line: 570, baseType: !919, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1066, file: !1008, line: 571, baseType: !235, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1066, file: !1008, line: 572, baseType: !1071, size: 320, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1072, line: 14, baseType: !1073)
!1072 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1072, line: 29, size: 320, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1083}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !1072, line: 30, baseType: !7, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1073, file: !1072, line: 31, baseType: !241, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1073, file: !1072, line: 32, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1072, line: 16, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!235, !1082, !7, !235, !241}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1073, file: !1072, line: 33, baseType: !265, size: 128, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !96, line: 64, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !980, file: !96, line: 402, baseType: !1087, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!235, !932, !919, !919, !21}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !980, file: !96, line: 404, baseType: !1091, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!631, !919, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1095, line: 305, baseType: !7)
!1095 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !980, file: !96, line: 405, baseType: !1039, size: 64, offset: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !980, file: !96, line: 406, baseType: !995, size: 64, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !980, file: !96, line: 407, baseType: !1099, size: 64, offset: 1088)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!235, !919, !232, !232}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !980, file: !96, line: 409, baseType: !1103, size: 64, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !919, !1106, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !980, file: !96, line: 410, baseType: !1108, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!235, !932, !919}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !980, file: !96, line: 413, baseType: !1112, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!235, !1115, !496, !2034}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1117, line: 240, size: 1600, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1120, !1122, !1129, !1131, !1132, !1134, !1141, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1154, !1160, !1161, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 241, baseType: !232, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1116, file: !1117, line: 242, baseType: !1121, size: 16, offset: 64)
!1121 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1116, file: !1117, line: 243, baseType: !1123, size: 320, offset: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1124, line: 83, size: 320, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1123, file: !1124, line: 84, baseType: !235, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1123, file: !1124, line: 85, baseType: !265, size: 128, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1123, file: !1124, line: 86, baseType: !265, size: 128, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !1117, line: 244, baseType: !1130, size: 8, offset: 448)
!1130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1116, file: !1117, line: 245, baseType: !7, size: 32, offset: 480)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1116, file: !1117, line: 246, baseType: !1133, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1116, file: !1117, line: 247, baseType: !1135, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1117, line: 208, size: 32, elements: !1137)
!1137 = !{!1138, !1139, !1140}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !1117, line: 209, baseType: !381)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1136, file: !1117, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1117, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1116, file: !1117, line: 248, baseType: !1142, size: 64, offset: 640)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1117, line: 232, size: 64, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1142, file: !1117, line: 233, baseType: !1136, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1142, file: !1117, line: 234, baseType: !1136, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1116, file: !1117, line: 249, baseType: !7, size: 32, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1116, file: !1117, line: 250, baseType: !7, size: 32, offset: 736)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1116, file: !1117, line: 251, baseType: !7, size: 32, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1116, file: !1117, line: 252, baseType: !7, size: 32, offset: 800)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1116, file: !1117, line: 253, baseType: !7, size: 32, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1116, file: !1117, line: 254, baseType: !7, size: 32, offset: 864)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1116, file: !1117, line: 255, baseType: !1153, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1116, file: !1117, line: 256, baseType: !1155, size: 64, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1117, line: 227, size: 64, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1156, file: !1117, line: 228, baseType: !1136, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1156, file: !1117, line: 229, baseType: !7, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1116, file: !1117, line: 257, baseType: !955, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1116, file: !1117, line: 258, baseType: !1162, size: 64, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1164, line: 22, size: 1344, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1179, !1233, !1234, !1235, !2023, !2024, !2025}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1163, file: !1164, line: 23, baseType: !654, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1163, file: !1164, line: 24, baseType: !235, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1163, file: !1164, line: 25, baseType: !570, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1163, file: !1164, line: 26, baseType: !738, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1163, file: !1164, line: 27, baseType: !879, size: 192, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1163, file: !1164, line: 28, baseType: !241, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1163, file: !1164, line: 29, baseType: !241, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1163, file: !1164, line: 30, baseType: !235, size: 32, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1163, file: !1164, line: 31, baseType: !631, size: 8, offset: 544)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1163, file: !1164, line: 33, baseType: !265, size: 128, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1163, file: !1164, line: 35, baseType: !1162, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1163, file: !1164, line: 36, baseType: !1178, size: 8, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !312)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1163, file: !1164, line: 37, baseType: !1180, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1182, line: 53, size: 6592, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186, !1187, !1190, !1211, !1212, !1213, !1214, !1215, !1225}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1181, file: !1182, line: 54, baseType: !1029, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1181, file: !1182, line: 60, baseType: !1029, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1181, file: !1182, line: 64, baseType: !232, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1181, file: !1182, line: 65, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1182, line: 65, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1181, file: !1182, line: 66, baseType: !1191, size: 128, offset: 256)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1192, line: 105, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1191, file: !1192, line: 110, baseType: !232, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1191, file: !1192, line: 118, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1192, line: 95, size: 448, elements: !1198)
!1198 = !{!1199, !1200, !1206, !1207, !1208, !1209, !1210}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1197, file: !1192, line: 96, baseType: !253, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1197, file: !1192, line: 97, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1192, line: 60, baseType: !1203)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1197, file: !1192, line: 98, baseType: !1201, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1197, file: !1192, line: 99, baseType: !631, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1197, file: !1192, line: 100, baseType: !631, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1197, file: !1192, line: 101, baseType: !509, size: 128, align: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1197, file: !1192, line: 102, baseType: !1205, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1181, file: !1182, line: 68, baseType: !365, size: 5568, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1181, file: !1182, line: 69, baseType: !374, size: 64, offset: 5952)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1181, file: !1182, line: 70, baseType: !235, size: 32, offset: 6016)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1181, file: !1182, line: 70, baseType: !235, size: 32, offset: 6048)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1181, file: !1182, line: 71, baseType: !1216, size: 64, offset: 6080)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1182, line: 48, size: 808, elements: !1218)
!1218 = !{!1219, !1223}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1217, file: !1182, line: 49, baseType: !1220, size: 296)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 296, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 37)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1217, file: !1182, line: 50, baseType: !1224, size: 512, offset: 296)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 512, elements: !426)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1181, file: !1182, line: 75, baseType: !1226, size: 448, offset: 6144)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !187, line: 124, size: 448, elements: !1227)
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1226, file: !187, line: 125, baseType: !250, size: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1226, file: !187, line: 126, baseType: !509, size: 128, align: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1226, file: !187, line: 129, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !187, line: 18, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1163, file: !1164, line: 39, baseType: !7, size: 32, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1163, file: !1164, line: 41, baseType: !381, offset: 928)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1163, file: !1164, line: 42, baseType: !1236, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1182, line: 167, size: 8512, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1246, !1247, !1248, !1259, !1260, !1450, !2004, !2005, !2006, !2007, !2008, !2009, !2012, !2013, !2016, !2017, !2018, !2021}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1237, file: !1182, line: 171, baseType: !235, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1237, file: !1182, line: 172, baseType: !235, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1237, file: !1182, line: 173, baseType: !235, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1237, file: !1182, line: 176, baseType: !1243, size: 256, offset: 96)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1237, file: !1182, line: 178, baseType: !240, size: 16, offset: 352)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1237, file: !1182, line: 179, baseType: !240, size: 16, offset: 368)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1237, file: !1182, line: 186, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1182, line: 149, size: 256, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1250, file: !1182, line: 150, baseType: !509, size: 128, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1250, file: !1182, line: 151, baseType: !235, size: 32, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1250, file: !1182, line: 152, baseType: !1180, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1250, file: !1182, line: 153, baseType: !1256, offset: 256)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: -1)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1237, file: !1182, line: 187, baseType: !1181, size: 6592, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1237, file: !1182, line: 189, baseType: !1261, size: 64, offset: 7040)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !29, line: 1844, size: 960, elements: !1264)
!1264 = !{!1265, !1372, !1377, !1381, !1385, !1389, !1390, !1394, !1398, !1402, !1408, !1412, !1440, !1445, !1446}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1263, file: !29, line: 1845, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1164, line: 515, baseType: !7)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1164, line: 203, size: 832, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1281, !1282, !1283, !1291, !1296, !1297, !1322, !1323, !1324, !1325, !1326, !1371}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1271, file: !1164, line: 204, baseType: !1270, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1271, file: !1164, line: 205, baseType: !1236, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1271, file: !1164, line: 206, baseType: !7, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1271, file: !1164, line: 210, baseType: !240, size: 16, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1271, file: !1164, line: 211, baseType: !240, size: 16, offset: 176)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1271, file: !1164, line: 212, baseType: !240, size: 16, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1271, file: !1164, line: 213, baseType: !1280, size: 8, offset: 208)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1164, line: 58, baseType: !1178)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1271, file: !1164, line: 214, baseType: !1178, size: 8, offset: 216)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1271, file: !1164, line: 215, baseType: !946, size: 32, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1271, file: !1164, line: 217, baseType: !1284, size: 192, offset: 256)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1285, line: 37, size: 192, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1286 = !{!1287, !1288, !1289, !1290}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1284, file: !1285, line: 38, baseType: !1029, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1284, file: !1285, line: 40, baseType: !7, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1284, file: !1285, line: 42, baseType: !7, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1284, file: !1285, line: 44, baseType: !7, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1271, file: !1164, line: 219, baseType: !1292, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1164, line: 19, baseType: !1294)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1270}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1271, file: !1164, line: 221, baseType: !241, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1164, line: 240, baseType: !1298, size: 64, offset: 576)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1164, line: 240, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1298, file: !1164, line: 242, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1303, line: 313, size: 832, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1320}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1302, file: !1303, line: 314, baseType: !1270, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1302, file: !1303, line: 316, baseType: !1284, size: 192, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1302, file: !1303, line: 318, baseType: !240, size: 16, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1302, file: !1303, line: 319, baseType: !240, size: 16, offset: 272)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1302, file: !1303, line: 320, baseType: !240, size: 16, offset: 288)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1302, file: !1303, line: 321, baseType: !240, size: 16, offset: 304)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1302, file: !1303, line: 323, baseType: !1284, size: 192, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1302, file: !1303, line: 325, baseType: !250, size: 256, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1302, file: !1303, line: 327, baseType: !1314, size: 64, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1285, line: 31, size: 128, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1315, file: !1285, line: 32, baseType: !919, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1315, file: !1285, line: 33, baseType: !7, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1315, file: !1285, line: 34, baseType: !7, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1302, file: !1303, line: 328, baseType: !1321, offset: 832)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, elements: !1257)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1271, file: !1164, line: 246, baseType: !240, size: 16, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1271, file: !1164, line: 252, baseType: !240, size: 16, offset: 656)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1271, file: !1164, line: 254, baseType: !946, size: 32, offset: 672)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1271, file: !1164, line: 256, baseType: !1314, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1271, file: !1164, line: 258, baseType: !1327, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1303, line: 682, size: 2368, elements: !1329)
!1329 = !{!1330, !1333, !1334, !1360, !1361, !1362, !1363, !1364, !1369, !1370}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1328, file: !1303, line: 683, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !921, line: 117, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1328, file: !1303, line: 684, baseType: !7, size: 32, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1328, file: !1303, line: 686, baseType: !1335, size: 448, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1336, line: 26, baseType: !1337)
!1336 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1336, line: 16, size: 448, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1349, !1354}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !1336, line: 17, baseType: !381)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1337, file: !1336, line: 18, baseType: !235, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1337, file: !1336, line: 19, baseType: !235, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1337, file: !1336, line: 20, baseType: !1020, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1337, file: !1336, line: 22, baseType: !241, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1337, file: !1336, line: 23, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1336, line: 13, baseType: !1347)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!241, !942, !241}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1337, file: !1336, line: 24, baseType: !1350, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1336, line: 14, baseType: !1352)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !241, !241}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1337, file: !1336, line: 25, baseType: !1355, size: 128, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1072, line: 40, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1072, line: 36, size: 128, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !1072, line: 37, baseType: !381)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1356, file: !1072, line: 38, baseType: !265, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1328, file: !1303, line: 687, baseType: !1335, size: 448, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1328, file: !1303, line: 689, baseType: !1335, size: 448, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1328, file: !1303, line: 690, baseType: !1335, size: 448, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1328, file: !1303, line: 697, baseType: !381, offset: 1920)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1328, file: !1303, line: 698, baseType: !1365, size: 128, offset: 1920)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1303, line: 554, size: 128, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1365, file: !1303, line: 555, baseType: !1270, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1365, file: !1303, line: 556, baseType: !1270, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1328, file: !1303, line: 699, baseType: !250, size: 256, offset: 2048)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1328, file: !1303, line: 700, baseType: !1231, size: 64, offset: 2304)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1271, file: !1164, line: 265, baseType: !1321, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1263, file: !29, line: 1846, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!235, !1162, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !256, line: 150, baseType: !7)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1263, file: !29, line: 1847, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1236, !1376}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1263, file: !29, line: 1848, baseType: !1382, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!235, !1162, !1029, !919, !7}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1263, file: !29, line: 1849, baseType: !1386, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!235, !1162, !1376, !7, !232}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1263, file: !29, line: 1850, baseType: !1386, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1263, file: !29, line: 1851, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!7, !1236, !7}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1263, file: !29, line: 1853, baseType: !1395, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1236}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1263, file: !29, line: 1854, baseType: !1399, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!235, !1236}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1263, file: !29, line: 1855, baseType: !1403, size: 64, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!235, !1162, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !96, line: 51, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1263, file: !29, line: 1857, baseType: !1409, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1162, !232}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1263, file: !29, line: 1858, baseType: !1413, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!235, !1236, !1029, !7, !1416, !241}
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !29, line: 354, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!235, !1420, !7, !241}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1422, line: 106, size: 512, elements: !1423)
!1422 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1435, !1436}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1421, file: !1422, line: 107, baseType: !564, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1421, file: !1422, line: 108, baseType: !564, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1421, file: !1422, line: 109, baseType: !564, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1421, file: !1422, line: 110, baseType: !312, size: 8, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1421, file: !1422, line: 111, baseType: !312, size: 8, offset: 200)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1421, file: !1422, line: 112, baseType: !312, size: 8, offset: 208)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1421, file: !1422, line: 113, baseType: !312, size: 8, offset: 216)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1421, file: !1422, line: 114, baseType: !1432, size: 32, offset: 224)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 32, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 4)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1421, file: !1422, line: 115, baseType: !564, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1421, file: !1422, line: 116, baseType: !1437, size: 192, offset: 320)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 192, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 24)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1263, file: !29, line: 1860, baseType: !1441, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!325, !1236, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1263, file: !29, line: 1861, baseType: !772, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1263, file: !29, line: 1862, baseType: !1447, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !29, line: 41, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1237, file: !1182, line: 190, baseType: !1451, size: 64, offset: 7104)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !29, line: 399, size: 14464, elements: !1453)
!1453 = !{!1454, !1590, !1712, !1713, !1716, !1719, !1723, !1724, !1725, !1727, !1728, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1865, !1876, !1877, !1878, !1879, !1880, !1910, !1911, !1912, !1913, !1914, !1915, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1989, !1990, !1991, !1992, !1995, !1996, !1997, !1998, !1999, !2000}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1452, file: !29, line: 400, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !29, line: 130, size: 2176, elements: !1457)
!1457 = !{!1458, !1459, !1462, !1465, !1466, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1480, !1487, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1553, !1554, !1555, !1588, !1589}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1456, file: !29, line: 131, baseType: !1451, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1456, file: !29, line: 132, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !29, line: 132, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1456, file: !29, line: 133, baseType: !1463, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !29, line: 133, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1456, file: !29, line: 135, baseType: !7, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1456, file: !29, line: 136, baseType: !1467, size: 32, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !29, line: 66, baseType: !560)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1456, file: !29, line: 138, baseType: !235, size: 32, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1456, file: !29, line: 139, baseType: !235, size: 32, offset: 288)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1456, file: !29, line: 142, baseType: !7, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1456, file: !29, line: 143, baseType: !1029, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1456, file: !29, line: 145, baseType: !1270, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1456, file: !29, line: 146, baseType: !1270, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1456, file: !29, line: 148, baseType: !265, size: 128, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !29, line: 157, baseType: !1476, size: 128, offset: 704)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !29, line: 157, size: 128, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1476, file: !29, line: 158, baseType: !781, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1476, file: !29, line: 159, baseType: !265, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !29, line: 167, baseType: !1481, size: 192, offset: 832)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !29, line: 167, size: 192, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1481, file: !29, line: 168, baseType: !959, size: 192, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1481, file: !29, line: 169, baseType: !1315, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1481, file: !29, line: 170, baseType: !241, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1481, file: !29, line: 171, baseType: !235, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !29, line: 180, baseType: !1488, size: 256, offset: 1024)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !29, line: 180, size: 256, elements: !1489)
!1489 = !{!1490, !1527}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1488, file: !29, line: 184, baseType: !1491, size: 192)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !29, line: 181, size: 192, elements: !1492)
!1492 = !{!1493, !1523}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1491, file: !29, line: 182, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1496, line: 73, size: 448, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1497 = !{!1498, !1499, !1512, !1517, !1522}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1495, file: !1496, line: 74, baseType: !1451, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1495, file: !1496, line: 75, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1496, line: 99, size: 704, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1501, file: !1496, line: 100, baseType: !253, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1501, file: !1496, line: 101, baseType: !946, size: 32, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1501, file: !1496, line: 102, baseType: !946, size: 32, offset: 96)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1496, line: 105, baseType: !381, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1501, file: !1496, line: 107, baseType: !240, size: 16, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1501, file: !1496, line: 109, baseType: !937, size: 128, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1501, file: !1496, line: 110, baseType: !1494, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1501, file: !1496, line: 111, baseType: !777, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1501, file: !1496, line: 113, baseType: !250, size: 256, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 83, baseType: !1513, size: 128, offset: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 83, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1513, file: !1496, line: 84, baseType: !265, size: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1513, file: !1496, line: 85, baseType: !1331, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 87, baseType: !1518, size: 128, offset: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 87, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1518, file: !1496, line: 88, baseType: !781, size: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1518, file: !1496, line: 89, baseType: !509, size: 128, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1495, file: !1496, line: 92, baseType: !7, size: 32, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1491, file: !29, line: 183, baseType: !1524, size: 128, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 2)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1488, file: !29, line: 190, baseType: !1528, size: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !29, line: 186, size: 256, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1528, file: !29, line: 187, baseType: !7, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1528, file: !29, line: 188, baseType: !265, size: 128, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1528, file: !29, line: 189, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !29, line: 62, baseType: !1535)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !1455, !1280}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1456, file: !29, line: 193, baseType: !1236, size: 64, offset: 1280)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1456, file: !29, line: 194, baseType: !1180, size: 64, offset: 1344)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1456, file: !29, line: 200, baseType: !563, size: 64, offset: 1408)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1456, file: !29, line: 202, baseType: !563, size: 64, offset: 1472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1456, file: !29, line: 212, baseType: !240, size: 16, offset: 1536)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1456, file: !29, line: 218, baseType: !240, size: 16, offset: 1552)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1456, file: !29, line: 221, baseType: !240, size: 16, offset: 1568)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1456, file: !29, line: 229, baseType: !240, size: 16, offset: 1584)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1456, file: !29, line: 230, baseType: !240, size: 16, offset: 1600)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1456, file: !29, line: 232, baseType: !28, size: 32, offset: 1632)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1456, file: !29, line: 233, baseType: !1548, size: 32, offset: 1664)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1549, line: 113, baseType: !1550)
!1549 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1549, line: 111, size: 32, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1550, file: !1549, line: 112, baseType: !946, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1456, file: !29, line: 235, baseType: !7, size: 32, offset: 1696)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1456, file: !29, line: 236, baseType: !232, size: 64, offset: 1728)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !29, line: 238, baseType: !1556, size: 256, offset: 1792)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !29, line: 238, size: 256, elements: !1557)
!1557 = !{!1558, !1587}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1556, file: !29, line: 239, baseType: !1559, size: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1560, line: 23, size: 256, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1584, !1586}
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 24, baseType: !1563, size: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 24, size: 128, elements: !1564)
!1564 = !{!1565, !1577}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1563, file: !1560, line: 25, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1567, line: 58, size: 128, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1570, !1575, !1576}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1566, file: !1567, line: 59, baseType: !503, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !1567, line: 60, baseType: !1571, size: 32, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !1567, line: 60, size: 32, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1571, file: !1567, line: 61, baseType: !7, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1571, file: !1567, line: 62, baseType: !946, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1566, file: !1567, line: 65, baseType: !1058, size: 16, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1566, file: !1567, line: 65, baseType: !1058, size: 16, offset: 112)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1560, line: 26, baseType: !1578, size: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1560, line: 26, size: 128, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1578, file: !1560, line: 27, baseType: !503, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1560, line: 28, baseType: !7, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1578, file: !1560, line: 30, baseType: !1058, size: 16, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1578, file: !1560, line: 30, baseType: !1058, size: 16, offset: 112)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1559, file: !1560, line: 34, baseType: !1585, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1560, line: 17, baseType: !609)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1559, file: !1560, line: 35, baseType: !241, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1556, file: !29, line: 240, baseType: !563, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1456, file: !29, line: 246, baseType: !1533, size: 64, offset: 2048)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1456, file: !29, line: 247, baseType: !241, size: 64, offset: 2112)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1452, file: !29, line: 401, baseType: !1591, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !35, line: 101, size: 4992, elements: !1593)
!1593 = !{!1594, !1706, !1707, !1708, !1709, !1710}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1592, file: !35, line: 103, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !35, line: 66, size: 2240, elements: !1597)
!1597 = !{!1598, !1599, !1681, !1682, !1683, !1696, !1697, !1698, !1700, !1701, !1705}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1596, file: !35, line: 69, baseType: !1331, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1596, file: !35, line: 72, baseType: !1600, size: 1408, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !35, line: 29, size: 1408, elements: !1601)
!1601 = !{!1602, !1606, !1610, !1614, !1618, !1622, !1626, !1630, !1635, !1639, !1643, !1649, !1653, !1654, !1658, !1662, !1666, !1670, !1671, !1675, !1676, !1680}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1600, file: !35, line: 30, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!235, !1451, !1595}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1600, file: !35, line: 31, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1591}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1600, file: !35, line: 32, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!235, !1463, !7}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1600, file: !35, line: 33, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1463, !7}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1600, file: !35, line: 34, baseType: !1619, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1463}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1600, file: !35, line: 36, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!631, !1451, !1455, !1270}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1600, file: !35, line: 37, baseType: !1627, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!631, !1463, !1270, !7}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1600, file: !35, line: 38, baseType: !1631, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!235, !1451, !1634, !1270}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1600, file: !35, line: 39, baseType: !1636, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1451, !1455, !34}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1600, file: !35, line: 40, baseType: !1640, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1451, !1455, !1455}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1600, file: !35, line: 41, baseType: !1644, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !7, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !35, line: 26, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1600, file: !35, line: 42, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1455}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1600, file: !35, line: 43, baseType: !1650, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1600, file: !35, line: 44, baseType: !1655, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !1463, !268, !631}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1600, file: !35, line: 45, baseType: !1659, size: 64, offset: 896)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1455, !1463}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1600, file: !35, line: 46, baseType: !1663, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!631, !1463}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1600, file: !35, line: 47, baseType: !1667, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !1455, !563}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1600, file: !35, line: 48, baseType: !1650, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1600, file: !35, line: 49, baseType: !1672, size: 64, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1455, !1451, !1455}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1600, file: !35, line: 50, baseType: !1672, size: 64, offset: 1216)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1600, file: !35, line: 51, baseType: !1677, size: 64, offset: 1280)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1494}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1600, file: !35, line: 52, baseType: !1677, size: 64, offset: 1344)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1596, file: !35, line: 74, baseType: !466, size: 64, offset: 1472)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1596, file: !35, line: 75, baseType: !466, size: 64, offset: 1536)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1596, file: !35, line: 76, baseType: !1684, size: 64, offset: 1600)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !35, line: 57, size: 256, elements: !1686)
!1686 = !{!1687, !1688, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1685, file: !35, line: 58, baseType: !457, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1685, file: !35, line: 59, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!452, !1591, !325}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1685, file: !35, line: 60, baseType: !1693, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!452, !1591, !354, !466}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1596, file: !35, line: 77, baseType: !354, size: 64, offset: 1664)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1596, file: !35, line: 78, baseType: !354, size: 64, offset: 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1596, file: !35, line: 79, baseType: !1699, size: 32, offset: 1792)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1596, file: !35, line: 80, baseType: !772, size: 64, offset: 1856)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1596, file: !35, line: 87, baseType: !1702, size: 176, offset: 1920)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 176, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 22)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1596, file: !35, line: 88, baseType: !265, size: 128, offset: 2112)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1592, file: !35, line: 104, baseType: !241, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1592, file: !35, line: 105, baseType: !368, size: 512, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1592, file: !35, line: 106, baseType: !879, size: 192, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1592, file: !35, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1592, file: !35, line: 108, baseType: !1711, size: 4096, offset: 896)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 4096, elements: !426)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1452, file: !29, line: 403, baseType: !1191, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1452, file: !29, line: 405, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !29, line: 43, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1452, file: !29, line: 406, baseType: !1717, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !29, line: 42, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1452, file: !29, line: 408, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !29, line: 408, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1452, file: !29, line: 411, baseType: !1460, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1452, file: !29, line: 413, baseType: !7, size: 32, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1452, file: !29, line: 416, baseType: !1726, size: 64, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1452, file: !29, line: 417, baseType: !7, size: 32, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1452, file: !29, line: 419, baseType: !1729, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !42, line: 165, size: 4672, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1742, !1743, !1744, !1745, !1746, !1747, !1803, !1804, !1805, !1806, !1808, !1809}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1730, file: !42, line: 166, baseType: !563, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1730, file: !42, line: 167, baseType: !959, size: 192, align: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1730, file: !42, line: 168, baseType: !265, size: 128, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1730, file: !42, line: 169, baseType: !232, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1730, file: !42, line: 170, baseType: !232, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1730, file: !42, line: 172, baseType: !1738, size: 32, offset: 512)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1739, line: 19, size: 32, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1738, file: !1739, line: 20, baseType: !1548, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1730, file: !42, line: 173, baseType: !7, size: 32, offset: 544)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1730, file: !42, line: 174, baseType: !7, size: 32, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1730, file: !42, line: 175, baseType: !7, size: 32, offset: 608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1730, file: !42, line: 175, baseType: !7, size: 32, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1730, file: !42, line: 181, baseType: !253, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1730, file: !42, line: 183, baseType: !1748, size: 2688, offset: 768)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !42, line: 107, size: 2688, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1779, !1780, !1781, !1782, !1783, !1801, !1802}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1748, file: !42, line: 108, baseType: !1729, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1748, file: !42, line: 110, baseType: !232, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1748, file: !42, line: 111, baseType: !232, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1748, file: !42, line: 113, baseType: !265, size: 128, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1748, file: !42, line: 114, baseType: !265, size: 128, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1748, file: !42, line: 115, baseType: !265, size: 128, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1748, file: !42, line: 116, baseType: !265, size: 128, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1748, file: !42, line: 117, baseType: !381, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1748, file: !42, line: 119, baseType: !1759, size: 256, offset: 704)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1760, size: 256, elements: !1433)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1761, line: 97, size: 64, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !1761, line: 98, baseType: !260, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1748, file: !42, line: 121, baseType: !232, size: 64, offset: 960)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1748, file: !42, line: 123, baseType: !232, size: 64, offset: 1024)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1748, file: !42, line: 124, baseType: !232, size: 64, offset: 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1748, file: !42, line: 125, baseType: !232, size: 64, offset: 1152)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1748, file: !42, line: 126, baseType: !232, size: 64, offset: 1216)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1748, file: !42, line: 127, baseType: !232, size: 64, offset: 1280)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1748, file: !42, line: 135, baseType: !232, size: 64, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1748, file: !42, line: 136, baseType: !232, size: 64, offset: 1408)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1748, file: !42, line: 138, baseType: !1773, size: 128, offset: 1472)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1774, line: 76, size: 128, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1773, file: !1774, line: 78, baseType: !1760, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1773, file: !1774, line: 80, baseType: !7, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1773, file: !1774, line: 81, baseType: !972, offset: 96)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1748, file: !42, line: 139, baseType: !235, size: 32, offset: 1600)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1748, file: !42, line: 140, baseType: !41, size: 32, offset: 1632)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1748, file: !42, line: 142, baseType: !381, offset: 1664)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1748, file: !42, line: 143, baseType: !265, size: 128, offset: 1664)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1748, file: !42, line: 144, baseType: !1784, size: 704, offset: 1792)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !187, line: 115, size: 704, elements: !1785)
!1785 = !{!1786, !1787, !1799, !1800}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1784, file: !187, line: 116, baseType: !250, size: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1784, file: !187, line: 117, baseType: !1788, size: 320, offset: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1789, line: 11, size: 320, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1789, line: 16, baseType: !781, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1788, file: !1789, line: 17, baseType: !232, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1788, file: !1789, line: 18, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1788, file: !1789, line: 19, baseType: !559, size: 32, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1784, file: !187, line: 120, baseType: !1231, size: 64, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1784, file: !187, line: 121, baseType: !235, size: 32, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1748, file: !42, line: 146, baseType: !232, size: 64, offset: 2496)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1748, file: !42, line: 148, baseType: !265, size: 128, offset: 2560)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1730, file: !42, line: 184, baseType: !265, size: 128, offset: 3456)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1730, file: !42, line: 190, baseType: !1355, size: 128, offset: 3584)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1730, file: !42, line: 192, baseType: !364, size: 64, offset: 3712)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1730, file: !42, line: 193, baseType: !1807, size: 512, offset: 3776)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 512, elements: !426)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1730, file: !42, line: 194, baseType: !364, size: 64, offset: 4288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1730, file: !42, line: 196, baseType: !1788, size: 320, offset: 4352)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1452, file: !29, line: 425, baseType: !241, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1452, file: !29, line: 430, baseType: !232, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1452, file: !29, line: 436, baseType: !946, size: 32, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1452, file: !29, line: 442, baseType: !235, size: 32, offset: 928)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1452, file: !29, line: 447, baseType: !942, size: 32, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1452, file: !29, line: 449, baseType: !381, offset: 992)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1452, file: !29, line: 454, baseType: !368, size: 512, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1452, file: !29, line: 459, baseType: !374, size: 64, offset: 1536)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1452, file: !29, line: 462, baseType: !1819, size: 128, offset: 1600)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1182, line: 159, size: 128, elements: !1820)
!1820 = !{!1821, !1850, !1851, !1852, !1853}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1819, file: !1182, line: 160, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !29, line: 1664, size: 320, elements: !1825)
!1825 = !{!1826, !1840, !1841, !1844, !1849}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1824, file: !29, line: 1665, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !29, line: 1660, baseType: !1829)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1280, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !29, line: 1651, size: 320, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1832, file: !29, line: 1652, baseType: !241, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1832, file: !29, line: 1653, baseType: !241, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1832, file: !29, line: 1654, baseType: !1029, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1832, file: !29, line: 1655, baseType: !7, size: 32, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1832, file: !29, line: 1656, baseType: !240, size: 16, offset: 224)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1832, file: !29, line: 1657, baseType: !354, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1824, file: !29, line: 1666, baseType: !1827, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1824, file: !29, line: 1667, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !29, line: 1661, baseType: !1651)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1824, file: !29, line: 1668, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !29, line: 1662, baseType: !1847)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1455, !7}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1824, file: !29, line: 1669, baseType: !354, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1819, file: !1182, line: 161, baseType: !313, size: 8, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1819, file: !1182, line: 162, baseType: !313, size: 8, offset: 72)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1819, file: !1182, line: 163, baseType: !313, size: 8, offset: 80)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1819, file: !1182, line: 164, baseType: !313, size: 8, offset: 88)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1452, file: !29, line: 466, baseType: !364, size: 64, offset: 1728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1452, file: !29, line: 467, baseType: !53, size: 32, offset: 1792)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1452, file: !29, line: 468, baseType: !7, size: 32, offset: 1824)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1452, file: !29, line: 474, baseType: !232, size: 64, offset: 1856)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1452, file: !29, line: 476, baseType: !7, size: 32, offset: 1920)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1452, file: !29, line: 477, baseType: !7, size: 32, offset: 1952)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1452, file: !29, line: 484, baseType: !7, size: 32, offset: 1984)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1452, file: !29, line: 485, baseType: !235, size: 32, offset: 2016)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1452, file: !29, line: 487, baseType: !1863, size: 64, offset: 2048)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !29, line: 44, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1452, file: !29, line: 488, baseType: !1866, size: 5120, offset: 2112)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, size: 5120, elements: !1874)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1164, line: 540, size: 320, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1867, file: !1164, line: 541, baseType: !563, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1867, file: !1164, line: 542, baseType: !563, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1867, file: !1164, line: 543, baseType: !563, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1867, file: !1164, line: 544, baseType: !559, size: 32, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1867, file: !1164, line: 545, baseType: !563, size: 64, offset: 256)
!1874 = !{!1875}
!1875 = !DISubrange(count: 16)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1452, file: !29, line: 490, baseType: !1788, size: 320, offset: 7232)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1452, file: !29, line: 491, baseType: !250, size: 256, offset: 7552)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1452, file: !29, line: 493, baseType: !946, size: 32, offset: 7808)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1452, file: !29, line: 495, baseType: !265, size: 128, offset: 7872)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1452, file: !29, line: 502, baseType: !1881, size: 896, offset: 8000)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !29, line: 321, size: 896, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1881, file: !29, line: 322, baseType: !232, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1881, file: !29, line: 323, baseType: !232, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1881, file: !29, line: 324, baseType: !232, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1881, file: !29, line: 326, baseType: !7, size: 32, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1881, file: !29, line: 327, baseType: !7, size: 32, offset: 224)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1881, file: !29, line: 328, baseType: !7, size: 32, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1881, file: !29, line: 329, baseType: !7, size: 32, offset: 288)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1881, file: !29, line: 330, baseType: !7, size: 32, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1881, file: !29, line: 331, baseType: !7, size: 32, offset: 352)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1881, file: !29, line: 332, baseType: !7, size: 32, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1881, file: !29, line: 333, baseType: !7, size: 32, offset: 416)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1881, file: !29, line: 334, baseType: !7, size: 32, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1881, file: !29, line: 335, baseType: !7, size: 32, offset: 480)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1881, file: !29, line: 336, baseType: !7, size: 32, offset: 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1881, file: !29, line: 337, baseType: !7, size: 32, offset: 544)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1881, file: !29, line: 338, baseType: !7, size: 32, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1881, file: !29, line: 339, baseType: !7, size: 32, offset: 608)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1881, file: !29, line: 340, baseType: !7, size: 32, offset: 640)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1881, file: !29, line: 341, baseType: !7, size: 32, offset: 672)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1881, file: !29, line: 342, baseType: !7, size: 32, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1881, file: !29, line: 344, baseType: !240, size: 16, offset: 736)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1881, file: !29, line: 345, baseType: !240, size: 16, offset: 752)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1881, file: !29, line: 346, baseType: !240, size: 16, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1881, file: !29, line: 348, baseType: !313, size: 8, offset: 784)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1881, file: !29, line: 349, baseType: !313, size: 8, offset: 792)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1881, file: !29, line: 350, baseType: !313, size: 8, offset: 800)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1881, file: !29, line: 351, baseType: !60, size: 32, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1452, file: !29, line: 504, baseType: !7, size: 32, offset: 8896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1452, file: !29, line: 534, baseType: !7, size: 32, offset: 8928)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1452, file: !29, line: 535, baseType: !7, size: 32, offset: 8960)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1452, file: !29, line: 536, baseType: !235, size: 32, offset: 8992)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1452, file: !29, line: 537, baseType: !879, size: 192, offset: 9024)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1452, file: !29, line: 544, baseType: !1916, size: 64, offset: 9216)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !29, line: 40, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1452, file: !29, line: 546, baseType: !265, size: 128, offset: 9280)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1452, file: !29, line: 547, baseType: !381, offset: 9408)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1452, file: !29, line: 548, baseType: !1784, size: 704, offset: 9408)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1452, file: !29, line: 550, baseType: !879, size: 192, offset: 10112)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1452, file: !29, line: 551, baseType: !879, size: 192, offset: 10304)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1452, file: !29, line: 557, baseType: !265, size: 128, offset: 10496)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1452, file: !29, line: 558, baseType: !381, offset: 10624)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1452, file: !29, line: 560, baseType: !235, size: 32, offset: 10624)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1452, file: !29, line: 563, baseType: !1927, size: 256, offset: 10688)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1928, line: 18, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1927, file: !1928, line: 19, baseType: !364, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1927, file: !1928, line: 20, baseType: !235, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1927, file: !1928, line: 21, baseType: !1451, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1927, file: !1928, line: 22, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1928, line: 10, size: 256, elements: !1937)
!1937 = !{!1938, !1980, !1984, !1988}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1936, file: !1928, line: 11, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!235, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1944, line: 22, size: 1280, elements: !1945)
!1944 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1943, file: !1944, line: 23, baseType: !1947, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !239, line: 26, baseType: !235)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1943, file: !1944, line: 24, baseType: !560, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1943, file: !1944, line: 25, baseType: !560, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1943, file: !1944, line: 28, baseType: !560, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1943, file: !1944, line: 29, baseType: !564, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1943, file: !1944, line: 30, baseType: !564, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1943, file: !1944, line: 31, baseType: !560, size: 32, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1943, file: !1944, line: 32, baseType: !560, size: 32, offset: 288)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1943, file: !1944, line: 33, baseType: !560, size: 32, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1943, file: !1944, line: 34, baseType: !560, size: 32, offset: 352)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1943, file: !1944, line: 35, baseType: !564, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1943, file: !1944, line: 38, baseType: !560, size: 32, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1943, file: !1944, line: 40, baseType: !560, size: 32, offset: 480)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1943, file: !1944, line: 41, baseType: !560, size: 32, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1943, file: !1944, line: 42, baseType: !560, size: 32, offset: 544)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1943, file: !1944, line: 43, baseType: !564, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1943, file: !1944, line: 44, baseType: !564, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1943, file: !1944, line: 46, baseType: !560, size: 32, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1944, line: 47, baseType: !560, size: 32, offset: 736)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1943, file: !1944, line: 48, baseType: !564, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1943, file: !1944, line: 49, baseType: !560, size: 32, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1943, file: !1944, line: 51, baseType: !560, size: 32, offset: 864)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1943, file: !1944, line: 52, baseType: !560, size: 32, offset: 896)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1943, file: !1944, line: 53, baseType: !560, size: 32, offset: 928)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1943, file: !1944, line: 54, baseType: !560, size: 32, offset: 960)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1943, file: !1944, line: 55, baseType: !560, size: 32, offset: 992)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1943, file: !1944, line: 56, baseType: !560, size: 32, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1943, file: !1944, line: 57, baseType: !560, size: 32, offset: 1056)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1943, file: !1944, line: 58, baseType: !1947, size: 32, offset: 1088)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1943, file: !1944, line: 59, baseType: !1947, size: 32, offset: 1120)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1943, file: !1944, line: 60, baseType: !564, size: 64, offset: 1152)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1943, file: !1944, line: 61, baseType: !560, size: 32, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1943, file: !1944, line: 63, baseType: !560, size: 32, offset: 1248)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1936, file: !1928, line: 12, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!235, !1455, !1942, !1376}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1936, file: !1928, line: 14, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!235, !1455, !1942}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1936, file: !1928, line: 15, baseType: !1650, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1452, file: !29, line: 570, baseType: !509, size: 128, align: 64, offset: 10944)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1452, file: !29, line: 571, baseType: !1355, size: 128, offset: 11072)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1452, file: !29, line: 576, baseType: !879, size: 192, offset: 11200)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1452, file: !29, line: 578, baseType: !1993, size: 64, offset: 11392)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !29, line: 578, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1452, file: !29, line: 579, baseType: !265, size: 128, offset: 11456)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1452, file: !29, line: 580, baseType: !1328, size: 2368, offset: 11584)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1452, file: !29, line: 582, baseType: !526, size: 64, offset: 13952)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1452, file: !29, line: 589, baseType: !631, size: 8, offset: 14016)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1452, file: !29, line: 591, baseType: !466, size: 64, offset: 14080)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1452, file: !29, line: 594, baseType: !2001, size: 320, offset: 14144)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 320, elements: !2002)
!2002 = !{!2003}
!2003 = !DISubrange(count: 5)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1237, file: !1182, line: 191, baseType: !241, size: 64, offset: 7168)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !1182, line: 193, baseType: !235, size: 32, offset: 7232)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1237, file: !1182, line: 194, baseType: !232, size: 64, offset: 7296)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1237, file: !1182, line: 196, baseType: !966, size: 256, offset: 7360)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1237, file: !1182, line: 197, baseType: !374, size: 64, offset: 7616)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1237, file: !1182, line: 199, baseType: !2010, size: 64, offset: 7680)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1182, line: 199, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1237, file: !1182, line: 200, baseType: !946, size: 32, offset: 7744)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1237, file: !1182, line: 201, baseType: !2014, size: 64, offset: 7808)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1182, line: 156, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1237, file: !1182, line: 203, baseType: !368, size: 512, offset: 7872)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1237, file: !1182, line: 208, baseType: !235, size: 32, offset: 8384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1237, file: !1182, line: 209, baseType: !2019, size: 64, offset: 8448)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1182, line: 157, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1237, file: !1182, line: 210, baseType: !2022, offset: 8512)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !788, line: 192, elements: !395)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1163, file: !1164, line: 43, baseType: !1729, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1163, file: !1164, line: 46, baseType: !235, size: 32, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1163, file: !1164, line: 48, baseType: !879, size: 192, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1116, file: !1117, line: 259, baseType: !496, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1116, file: !1117, line: 260, baseType: !7, size: 32, offset: 1216)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 265, baseType: !381, offset: 1248)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1116, file: !1117, line: 278, baseType: !381, offset: 1248)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1116, file: !1117, line: 282, baseType: !250, size: 256, offset: 1280)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1116, file: !1117, line: 283, baseType: !1142, size: 64, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1116, file: !1117, line: 284, baseType: !2033, offset: 1600)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, elements: !1257)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !980, file: !96, line: 415, baseType: !2036, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !496}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !96, line: 466, baseType: !232, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !933, file: !96, line: 467, baseType: !2041, size: 32, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2042, line: 8, baseType: !559)
!2042 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !933, file: !96, line: 468, baseType: !381, offset: 992)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !933, file: !96, line: 469, baseType: !265, size: 128, offset: 1024)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !933, file: !96, line: 470, baseType: !241, size: 64, offset: 1152)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !928, file: !921, line: 87, baseType: !232, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !928, file: !921, line: 94, baseType: !232, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 96, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 96, size: 64, elements: !2050)
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2049, file: !921, line: 101, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !256, line: 143, baseType: !563)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 103, baseType: !2054, size: 320)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 103, size: 320, elements: !2055)
!2055 = !{!2056, !2066, !2067, !2068}
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !921, line: 104, baseType: !2057, size: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !921, line: 104, size: 128, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2057, file: !921, line: 105, baseType: !265, size: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !921, line: 106, baseType: !2061, size: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !921, line: 106, size: 128, elements: !2062)
!2062 = !{!2063, !2064, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2061, file: !921, line: 107, baseType: !919, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2061, file: !921, line: 109, baseType: !235, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2061, file: !921, line: 110, baseType: !235, size: 32, offset: 96)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2054, file: !921, line: 117, baseType: !1331, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2054, file: !921, line: 119, baseType: !241, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !921, line: 120, baseType: !2069, size: 64, offset: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !921, line: 120, size: 64, elements: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2069, file: !921, line: 121, baseType: !241, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2069, file: !921, line: 122, baseType: !232, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !921, line: 123, baseType: !2074, size: 32)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !921, line: 123, size: 32, elements: !2075)
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2074, file: !921, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2074, file: !921, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2074, file: !921, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 130, baseType: !2080, size: 192)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 130, size: 192, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2080, file: !921, line: 131, baseType: !232, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2080, file: !921, line: 134, baseType: !313, size: 8, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2080, file: !921, line: 135, baseType: !313, size: 8, offset: 72)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2080, file: !921, line: 136, baseType: !946, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2080, file: !921, line: 137, baseType: !7, size: 32, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 139, baseType: !2088, size: 256)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 139, size: 256, elements: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2088, file: !921, line: 140, baseType: !232, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2088, file: !921, line: 141, baseType: !946, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2088, file: !921, line: 143, baseType: !265, size: 128, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 145, baseType: !2094, size: 256)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 145, size: 256, elements: !2095)
!2095 = !{!2096, !2097, !2100, !2101, !3571}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2094, file: !921, line: 146, baseType: !232, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2094, file: !921, line: 147, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2099, line: 509, baseType: !919)
!2099 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2094, file: !921, line: 148, baseType: !232, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !921, line: 149, baseType: !2102, size: 64, offset: 192)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !921, line: 149, size: 64, elements: !2103)
!2103 = !{!2104, !3570}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2102, file: !921, line: 150, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !921, line: 388, size: 7296, elements: !2107)
!2107 = !{!2108, !3568}
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !921, line: 389, baseType: !2109, size: 7296)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !921, line: 389, size: 7296, elements: !2110)
!2110 = !{!2111, !2229, !2230, !2231, !2235, !2236, !2237, !2238, !2239, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2280, !2286, !2289, !2328, !2329, !3552, !3553, !3556, !3557, !3558, !3561, !3562, !3563, !3566, !3567}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2109, file: !921, line: 390, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !921, line: 305, size: 1472, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2129, !2130, !2135, !2136, !2139, !2223, !2224, !2225, !2226, !2227}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2113, file: !921, line: 308, baseType: !232, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2113, file: !921, line: 309, baseType: !232, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2113, file: !921, line: 313, baseType: !2112, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2113, file: !921, line: 313, baseType: !2112, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2113, file: !921, line: 315, baseType: !959, size: 192, align: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2113, file: !921, line: 323, baseType: !232, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2113, file: !921, line: 327, baseType: !2105, size: 64, offset: 512)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2113, file: !921, line: 333, baseType: !2123, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2099, line: 284, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2099, line: 284, size: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2124, file: !2099, line: 284, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2128, line: 19, baseType: !232)
!2128 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2113, file: !921, line: 334, baseType: !232, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2113, file: !921, line: 343, baseType: !2131, size: 256, offset: 704)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2113, file: !921, line: 340, size: 256, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2131, file: !921, line: 341, baseType: !959, size: 192, align: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2131, file: !921, line: 342, baseType: !232, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2113, file: !921, line: 351, baseType: !265, size: 128, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2113, file: !921, line: 353, baseType: !2137, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !921, line: 353, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2113, file: !921, line: 356, baseType: !2140, size: 64, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !66, line: 557, size: 832, elements: !2143)
!2143 = !{!2144, !2148, !2149, !2153, !2157, !2197, !2201, !2205, !2209, !2210, !2211, !2215, !2219}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2142, file: !66, line: 558, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !2112}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2142, file: !66, line: 559, baseType: !2145, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2142, file: !66, line: 560, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!235, !2112, !232}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2142, file: !66, line: 561, baseType: !2154, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!235, !2112}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2142, file: !66, line: 562, baseType: !2158, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !921, line: 682, baseType: !7)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !66, line: 508, size: 768, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2177, !2184, !2190, !2191, !2192, !2194, !2196}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2163, file: !66, line: 509, baseType: !2112, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2163, file: !66, line: 510, baseType: !7, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2163, file: !66, line: 511, baseType: !942, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2163, file: !66, line: 512, baseType: !232, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2163, file: !66, line: 513, baseType: !232, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2163, file: !66, line: 514, baseType: !2171, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2099, line: 385, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2099, line: 385, size: 64, elements: !2174)
!2174 = !{!2175}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2173, file: !2099, line: 385, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2128, line: 15, baseType: !232)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2163, file: !66, line: 516, baseType: !2178, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2099, line: 359, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2099, line: 359, size: 64, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2180, file: !2099, line: 359, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2128, line: 16, baseType: !232)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2163, file: !66, line: 519, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2128, line: 21, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2128, line: 21, size: 64, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2186, file: !2128, line: 21, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2128, line: 14, baseType: !232)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2163, file: !66, line: 521, baseType: !919, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2163, file: !66, line: 522, baseType: !919, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2163, file: !66, line: 528, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2163, file: !66, line: 532, baseType: !2195, size: 64, offset: 640)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2163, file: !66, line: 536, baseType: !2098, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2142, file: !66, line: 563, baseType: !2198, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2161, !2162, !65}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2142, file: !66, line: 565, baseType: !2202, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2162, !232, !232}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2142, file: !66, line: 567, baseType: !2206, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!232, !2112}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2142, file: !66, line: 571, baseType: !2158, size: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2142, file: !66, line: 574, baseType: !2158, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2142, file: !66, line: 579, baseType: !2212, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!235, !2112, !232, !241, !235, !235}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2142, file: !66, line: 585, baseType: !2216, size: 64, offset: 704)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!354, !2112}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2142, file: !66, line: 615, baseType: !2220, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!919, !2112, !232}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2113, file: !921, line: 359, baseType: !232, size: 64, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2113, file: !921, line: 361, baseType: !496, size: 64, offset: 1280)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2113, file: !921, line: 362, baseType: !241, size: 64, offset: 1344)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2113, file: !921, line: 365, baseType: !253, size: 64, offset: 1408)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2113, file: !921, line: 373, baseType: !2228, offset: 1472)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !921, line: 296, elements: !395)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2109, file: !921, line: 391, baseType: !955, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2109, file: !921, line: 392, baseType: !563, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2109, file: !921, line: 394, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!232, !496, !232, !232, !232, !232}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2109, file: !921, line: 398, baseType: !232, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2109, file: !921, line: 399, baseType: !232, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2109, file: !921, line: 405, baseType: !232, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2109, file: !921, line: 406, baseType: !232, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2109, file: !921, line: 407, baseType: !2240, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2099, line: 286, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2099, line: 286, size: 64, elements: !2243)
!2243 = !{!2244}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2242, file: !2099, line: 286, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2128, line: 18, baseType: !232)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2109, file: !921, line: 416, baseType: !946, size: 32, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2109, file: !921, line: 428, baseType: !946, size: 32, offset: 608)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2109, file: !921, line: 437, baseType: !946, size: 32, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2109, file: !921, line: 447, baseType: !946, size: 32, offset: 672)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2109, file: !921, line: 450, baseType: !253, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2109, file: !921, line: 452, baseType: !235, size: 32, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2109, file: !921, line: 454, baseType: !381, offset: 800)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2109, file: !921, line: 457, baseType: !966, size: 256, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2109, file: !921, line: 459, baseType: !265, size: 128, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2109, file: !921, line: 466, baseType: !232, size: 64, offset: 1216)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2109, file: !921, line: 467, baseType: !232, size: 64, offset: 1280)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2109, file: !921, line: 469, baseType: !232, size: 64, offset: 1344)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2109, file: !921, line: 470, baseType: !232, size: 64, offset: 1408)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2109, file: !921, line: 471, baseType: !255, size: 64, offset: 1472)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2109, file: !921, line: 472, baseType: !232, size: 64, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2109, file: !921, line: 473, baseType: !232, size: 64, offset: 1600)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2109, file: !921, line: 474, baseType: !232, size: 64, offset: 1664)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2109, file: !921, line: 475, baseType: !232, size: 64, offset: 1728)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2109, file: !921, line: 477, baseType: !381, offset: 1792)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2109, file: !921, line: 478, baseType: !232, size: 64, offset: 1792)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2109, file: !921, line: 478, baseType: !232, size: 64, offset: 1856)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2109, file: !921, line: 478, baseType: !232, size: 64, offset: 1920)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2109, file: !921, line: 478, baseType: !232, size: 64, offset: 1984)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2109, file: !921, line: 479, baseType: !232, size: 64, offset: 2048)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2109, file: !921, line: 479, baseType: !232, size: 64, offset: 2112)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2109, file: !921, line: 479, baseType: !232, size: 64, offset: 2176)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2109, file: !921, line: 480, baseType: !232, size: 64, offset: 2240)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2109, file: !921, line: 480, baseType: !232, size: 64, offset: 2304)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2109, file: !921, line: 480, baseType: !232, size: 64, offset: 2368)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2109, file: !921, line: 480, baseType: !232, size: 64, offset: 2432)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2109, file: !921, line: 482, baseType: !2277, size: 2816, offset: 2496)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 2816, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 44)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2109, file: !921, line: 488, baseType: !2281, size: 256, offset: 5312)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2282, line: 60, size: 256, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2281, file: !2282, line: 61, baseType: !2285, size: 256)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !1433)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2109, file: !921, line: 490, baseType: !2287, size: 64, offset: 5568)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !921, line: 490, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2109, file: !921, line: 493, baseType: !2290, size: 896, offset: 5632)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2291, line: 53, baseType: !2292)
!2291 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2291, line: 13, size: 896, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2300, !2301, !2302, !2303, !2323, !2324, !2325}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2292, file: !2291, line: 18, baseType: !563, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2292, file: !2291, line: 28, baseType: !255, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2292, file: !2291, line: 31, baseType: !966, size: 256, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2292, file: !2291, line: 32, baseType: !2298, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2291, line: 32, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2292, file: !2291, line: 37, baseType: !240, size: 16, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2292, file: !2291, line: 40, baseType: !879, size: 192, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2292, file: !2291, line: 41, baseType: !241, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2292, file: !2291, line: 42, baseType: !2304, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2307, line: 13, size: 896, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2306, file: !2307, line: 14, baseType: !241, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2306, file: !2307, line: 15, baseType: !232, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2306, file: !2307, line: 17, baseType: !232, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2306, file: !2307, line: 17, baseType: !232, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2306, file: !2307, line: 19, baseType: !188, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2306, file: !2307, line: 21, baseType: !188, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2306, file: !2307, line: 22, baseType: !188, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2306, file: !2307, line: 23, baseType: !188, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2306, file: !2307, line: 24, baseType: !188, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2306, file: !2307, line: 25, baseType: !188, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2306, file: !2307, line: 26, baseType: !188, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2306, file: !2307, line: 27, baseType: !188, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2306, file: !2307, line: 28, baseType: !188, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2306, file: !2307, line: 29, baseType: !188, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2292, file: !2291, line: 44, baseType: !946, size: 32, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2292, file: !2291, line: 50, baseType: !1058, size: 16, offset: 864)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2292, file: !2291, line: 51, baseType: !2326, size: 16, offset: 880)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !239, line: 23, baseType: !1121)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !921, line: 495, baseType: !232, size: 64, offset: 6528)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2109, file: !921, line: 497, baseType: !2330, size: 64, offset: 6592)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !921, line: 381, size: 384, elements: !2332)
!2332 = !{!2333, !2334, !3551}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2331, file: !921, line: 382, baseType: !946, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2331, file: !921, line: 383, baseType: !2335, size: 128, offset: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !921, line: 376, size: 128, elements: !2336)
!2336 = !{!2337, !3549}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2335, file: !921, line: 377, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2340, line: 640, size: 48640, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !{!2342, !2348, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2363, !2381, !2392, !2475, !2476, !2477, !2488, !2489, !2491, !2492, !2493, !2494, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2572, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2604, !2606, !2607, !2608, !2620, !2621, !2622, !2623, !2624, !2625, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2649, !2654, !2976, !2977, !2978, !2979, !2981, !2984, !2987, !2990, !2993, !3029, !3130, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3176, !3177, !3178, !3179, !3180, !3185, !3186, !3187, !3190, !3191, !3193, !3202, !3207, !3208, !3209, !3212, !3213, !3292, !3293, !3296, !3297, !3300, !3301, !3302, !3306, !3307, !3308, !3321, !3322, !3323, !3333, !3338, !3341, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2339, file: !2340, line: 646, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2344, line: 56, size: 128, elements: !2345)
!2344 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !2344, line: 57, baseType: !232, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2343, file: !2344, line: 58, baseType: !559, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2339, file: !2340, line: 649, baseType: !2349, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2339, file: !2340, line: 657, baseType: !241, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2339, file: !2340, line: 658, baseType: !1548, size: 32, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !2340, line: 660, baseType: !7, size: 32, offset: 288)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2339, file: !2340, line: 661, baseType: !7, size: 32, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2339, file: !2340, line: 684, baseType: !235, size: 32, offset: 352)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2339, file: !2340, line: 686, baseType: !235, size: 32, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2339, file: !2340, line: 687, baseType: !235, size: 32, offset: 416)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2339, file: !2340, line: 688, baseType: !235, size: 32, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2339, file: !2340, line: 689, baseType: !7, size: 32, offset: 480)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2339, file: !2340, line: 691, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2340, line: 691, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2339, file: !2340, line: 692, baseType: !2364, size: 832, offset: 576)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2340, line: 451, size: 832, elements: !2365)
!2365 = !{!2366, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2364, file: !2340, line: 453, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2340, line: 325, size: 128, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2367, file: !2340, line: 326, baseType: !232, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2367, file: !2340, line: 327, baseType: !559, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2364, file: !2340, line: 454, baseType: !959, size: 192, align: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2364, file: !2340, line: 455, baseType: !265, size: 128, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2364, file: !2340, line: 456, baseType: !7, size: 32, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2364, file: !2340, line: 458, baseType: !563, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2364, file: !2340, line: 459, baseType: !563, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2364, file: !2340, line: 460, baseType: !563, size: 64, offset: 640)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2364, file: !2340, line: 461, baseType: !563, size: 64, offset: 704)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2364, file: !2340, line: 463, baseType: !563, size: 64, offset: 768)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2364, file: !2340, line: 465, baseType: !2380, offset: 832)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2340, line: 415, elements: !395)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2339, file: !2340, line: 693, baseType: !2382, size: 384, offset: 1408)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2340, line: 489, size: 384, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2382, file: !2340, line: 490, baseType: !265, size: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2382, file: !2340, line: 491, baseType: !232, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2382, file: !2340, line: 492, baseType: !232, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2382, file: !2340, line: 493, baseType: !7, size: 32, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2382, file: !2340, line: 494, baseType: !240, size: 16, offset: 288)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2382, file: !2340, line: 495, baseType: !240, size: 16, offset: 304)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2382, file: !2340, line: 497, baseType: !2391, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2339, file: !2340, line: 697, baseType: !2393, size: 1792, offset: 1792)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2340, line: 507, size: 1792, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2472, !2473}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2393, file: !2340, line: 508, baseType: !959, size: 192, align: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2393, file: !2340, line: 515, baseType: !563, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2393, file: !2340, line: 516, baseType: !563, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2393, file: !2340, line: 517, baseType: !563, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2393, file: !2340, line: 518, baseType: !563, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2393, file: !2340, line: 519, baseType: !563, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2393, file: !2340, line: 526, baseType: !260, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2393, file: !2340, line: 527, baseType: !563, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2393, file: !2340, line: 528, baseType: !7, size: 32, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2393, file: !2340, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2393, file: !2340, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2393, file: !2340, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2393, file: !2340, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2393, file: !2340, line: 563, baseType: !2409, size: 512, offset: 704)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !72, line: 118, size: 512, elements: !2410)
!2410 = !{!2411, !2419, !2420, !2425, !2468, !2469, !2470, !2471}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2409, file: !72, line: 119, baseType: !2412, size: 256)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2413, line: 9, size: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2412, file: !2413, line: 10, baseType: !959, size: 192, align: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2412, file: !2413, line: 11, baseType: !2417, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2418, line: 29, baseType: !260)
!2418 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2409, file: !72, line: 120, baseType: !2417, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2409, file: !72, line: 121, baseType: !2421, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!71, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2409, file: !72, line: 122, baseType: !2426, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !72, line: 159, size: 512, align: 512, elements: !2428)
!2428 = !{!2429, !2449, !2450, !2453, !2458, !2459, !2463, !2467}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2427, file: !72, line: 160, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !72, line: 214, size: 4608, align: 512, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2431, file: !72, line: 215, baseType: !972)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2431, file: !72, line: 216, baseType: !7, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2431, file: !72, line: 217, baseType: !7, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2431, file: !72, line: 218, baseType: !7, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2431, file: !72, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2431, file: !72, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2431, file: !72, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2431, file: !72, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2431, file: !72, line: 233, baseType: !2417, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2431, file: !72, line: 234, baseType: !2424, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2431, file: !72, line: 235, baseType: !2417, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2431, file: !72, line: 236, baseType: !2424, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2431, file: !72, line: 237, baseType: !2446, size: 4096, offset: 512)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 4096, elements: !2447)
!2447 = !{!2448}
!2448 = !DISubrange(count: 8)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2427, file: !72, line: 161, baseType: !7, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2427, file: !72, line: 162, baseType: !2451, size: 32, offset: 96)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !256, line: 27, baseType: !2452)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !454, line: 96, baseType: !235)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2427, file: !72, line: 163, baseType: !2454, size: 32, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !532, line: 276, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !532, line: 276, size: 32, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2455, file: !532, line: 276, baseType: !536, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2427, file: !72, line: 164, baseType: !2424, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2427, file: !72, line: 165, baseType: !2460, size: 128, offset: 256)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2413, line: 14, size: 128, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2460, file: !2413, line: 15, baseType: !951, size: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2427, file: !72, line: 166, baseType: !2464, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2417}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2427, file: !72, line: 167, baseType: !2417, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2409, file: !72, line: 123, baseType: !1178, size: 8, offset: 448)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2409, file: !72, line: 124, baseType: !1178, size: 8, offset: 456)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2409, file: !72, line: 125, baseType: !1178, size: 8, offset: 464)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2409, file: !72, line: 126, baseType: !1178, size: 8, offset: 472)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2393, file: !2340, line: 572, baseType: !2409, size: 512, offset: 1216)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2393, file: !2340, line: 580, baseType: !2474, size: 64, offset: 1728)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2339, file: !2340, line: 721, baseType: !7, size: 32, offset: 3584)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2339, file: !2340, line: 722, baseType: !235, size: 32, offset: 3616)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2339, file: !2340, line: 723, baseType: !2478, size: 64, offset: 3648)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2481, line: 17, baseType: !2482)
!2481 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2481, line: 17, size: 64, elements: !2483)
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2482, file: !2481, line: 17, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, elements: !2486)
!2486 = !{!2487}
!2487 = !DISubrange(count: 1)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2339, file: !2340, line: 724, baseType: !2480, size: 64, offset: 3712)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2339, file: !2340, line: 749, baseType: !2490, offset: 3776)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2340, line: 290, elements: !395)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2339, file: !2340, line: 751, baseType: !265, size: 128, offset: 3776)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2339, file: !2340, line: 757, baseType: !2105, size: 64, offset: 3904)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2339, file: !2340, line: 758, baseType: !2105, size: 64, offset: 3968)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2339, file: !2340, line: 761, baseType: !2495, size: 320, offset: 4032)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2282, line: 34, size: 320, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2495, file: !2282, line: 35, baseType: !563, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2495, file: !2282, line: 36, baseType: !2499, size: 256, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2112, size: 256, elements: !1433)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2339, file: !2340, line: 766, baseType: !235, size: 32, offset: 4352)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2339, file: !2340, line: 767, baseType: !235, size: 32, offset: 4384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2339, file: !2340, line: 768, baseType: !235, size: 32, offset: 4416)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2339, file: !2340, line: 770, baseType: !235, size: 32, offset: 4448)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2339, file: !2340, line: 772, baseType: !232, size: 64, offset: 4480)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2339, file: !2340, line: 775, baseType: !7, size: 32, offset: 4544)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2339, file: !2340, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2339, file: !2340, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2339, file: !2340, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2339, file: !2340, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2339, file: !2340, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2339, file: !2340, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2339, file: !2340, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2339, file: !2340, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2339, file: !2340, line: 831, baseType: !232, size: 64, offset: 4672)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2339, file: !2340, line: 833, baseType: !2516, size: 384, offset: 4736)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !77, line: 25, size: 384, elements: !2517)
!2517 = !{!2518, !2523}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2516, file: !77, line: 26, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!188, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !77, line: 27, baseType: !2524, size: 320, offset: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !77, line: 27, size: 320, elements: !2525)
!2525 = !{!2526, !2536, !2562}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2524, file: !77, line: 36, baseType: !2527, size: 320)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !77, line: 29, size: 320, elements: !2528)
!2528 = !{!2529, !2531, !2532, !2533, !2534, !2535}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2527, file: !77, line: 30, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2527, file: !77, line: 31, baseType: !559, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2527, file: !77, line: 32, baseType: !559, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2527, file: !77, line: 33, baseType: !559, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2527, file: !77, line: 34, baseType: !563, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2527, file: !77, line: 35, baseType: !2530, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2524, file: !77, line: 46, baseType: !2537, size: 192)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !77, line: 38, size: 192, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2561}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2537, file: !77, line: 39, baseType: !2451, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2537, file: !77, line: 40, baseType: !76, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !77, line: 41, baseType: !2542, size: 64, offset: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2537, file: !77, line: 41, size: 64, elements: !2543)
!2543 = !{!2544, !2552}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2542, file: !77, line: 42, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2547, line: 7, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2546, file: !2547, line: 8, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !454, line: 93, baseType: !263)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2546, file: !2547, line: 9, baseType: !263, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2542, file: !77, line: 43, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2555, line: 7, size: 64, elements: !2556)
!2555 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2556 = !{!2557, !2560}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2554, file: !2555, line: 8, baseType: !2558, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2555, line: 5, baseType: !2559)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !1947)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2554, file: !2555, line: 9, baseType: !2559, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2537, file: !77, line: 45, baseType: !563, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2524, file: !77, line: 54, baseType: !2563, size: 256)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !77, line: 48, size: 256, elements: !2564)
!2564 = !{!2565, !2568, !2569, !2570, !2571}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2563, file: !77, line: 49, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !77, line: 14, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2563, file: !77, line: 50, baseType: !235, size: 32, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2563, file: !77, line: 51, baseType: !235, size: 32, offset: 96)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2563, file: !77, line: 52, baseType: !232, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2563, file: !77, line: 53, baseType: !232, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2339, file: !2340, line: 835, baseType: !2573, size: 32, offset: 5120)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !256, line: 22, baseType: !2574)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !454, line: 28, baseType: !235)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2339, file: !2340, line: 836, baseType: !2573, size: 32, offset: 5152)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2339, file: !2340, line: 840, baseType: !232, size: 64, offset: 5184)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2339, file: !2340, line: 849, baseType: !2338, size: 64, offset: 5248)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2339, file: !2340, line: 852, baseType: !2338, size: 64, offset: 5312)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2339, file: !2340, line: 857, baseType: !265, size: 128, offset: 5376)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2339, file: !2340, line: 858, baseType: !265, size: 128, offset: 5504)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2339, file: !2340, line: 859, baseType: !2338, size: 64, offset: 5632)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2339, file: !2340, line: 867, baseType: !265, size: 128, offset: 5696)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2339, file: !2340, line: 868, baseType: !265, size: 128, offset: 5824)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2339, file: !2340, line: 871, baseType: !2585, size: 64, offset: 5952)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !105, line: 59, size: 768, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2593, !2594, !2595, !2596}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2586, file: !105, line: 61, baseType: !1548, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2586, file: !105, line: 62, baseType: !7, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2586, file: !105, line: 63, baseType: !381, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2586, file: !105, line: 65, baseType: !2592, size: 256, offset: 64)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 256, elements: !1433)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2586, file: !105, line: 66, baseType: !777, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2586, file: !105, line: 68, baseType: !1355, size: 128, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2586, file: !105, line: 69, baseType: !509, size: 128, align: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2586, file: !105, line: 70, baseType: !2597, size: 128, offset: 640)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2598, size: 128, elements: !2486)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !105, line: 54, size: 128, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2598, file: !105, line: 55, baseType: !235, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2598, file: !105, line: 56, baseType: !2602, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !105, line: 56, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2339, file: !2340, line: 872, baseType: !2605, size: 512, offset: 6016)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 512, elements: !1433)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2339, file: !2340, line: 873, baseType: !265, size: 128, offset: 6528)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2339, file: !2340, line: 874, baseType: !265, size: 128, offset: 6656)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2339, file: !2340, line: 876, baseType: !2609, size: 64, offset: 6784)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2611, line: 26, size: 192, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2610, file: !2611, line: 27, baseType: !7, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2610, file: !2611, line: 28, baseType: !2615, size: 128, offset: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2616, line: 43, size: 128, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2615, file: !2616, line: 44, baseType: !972)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2615, file: !2616, line: 45, baseType: !265, size: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2339, file: !2340, line: 879, baseType: !861, size: 64, offset: 6848)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2339, file: !2340, line: 882, baseType: !861, size: 64, offset: 6912)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2339, file: !2340, line: 884, baseType: !563, size: 64, offset: 6976)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2339, file: !2340, line: 885, baseType: !563, size: 64, offset: 7040)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2339, file: !2340, line: 890, baseType: !563, size: 64, offset: 7104)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2339, file: !2340, line: 891, baseType: !2626, size: 128, offset: 7168)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2340, line: 242, size: 128, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2626, file: !2340, line: 244, baseType: !563, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2626, file: !2340, line: 245, baseType: !563, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2626, file: !2340, line: 246, baseType: !972, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2339, file: !2340, line: 900, baseType: !232, size: 64, offset: 7296)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2339, file: !2340, line: 901, baseType: !232, size: 64, offset: 7360)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2339, file: !2340, line: 904, baseType: !563, size: 64, offset: 7424)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2339, file: !2340, line: 907, baseType: !563, size: 64, offset: 7488)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2339, file: !2340, line: 910, baseType: !232, size: 64, offset: 7552)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2339, file: !2340, line: 911, baseType: !232, size: 64, offset: 7616)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2339, file: !2340, line: 914, baseType: !2638, size: 640, offset: 7680)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2639, line: 123, size: 640, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2640 = !{!2641, !2647, !2648}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2638, file: !2639, line: 124, baseType: !2642, size: 576)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2643, size: 576, elements: !422)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2639, line: 108, size: 192, elements: !2644)
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2643, file: !2639, line: 109, baseType: !563, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2643, file: !2639, line: 110, baseType: !2460, size: 128, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2638, file: !2639, line: 125, baseType: !7, size: 32, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2638, file: !2639, line: 126, baseType: !7, size: 32, offset: 608)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2339, file: !2340, line: 917, baseType: !2650, size: 192, offset: 8320)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2639, line: 134, size: 192, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2650, file: !2639, line: 135, baseType: !509, size: 128, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2650, file: !2639, line: 136, baseType: !7, size: 32, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2339, file: !2340, line: 923, baseType: !2655, size: 64, offset: 8512)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2657)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2658, line: 111, size: 1280, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2677, !2678, !2679, !2680, !2681, !2682, !2789, !2790, !2791, !2792, !2818, !2961, !2971}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2657, file: !2658, line: 112, baseType: !946, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2657, file: !2658, line: 120, baseType: !576, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2657, file: !2658, line: 121, baseType: !584, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2657, file: !2658, line: 122, baseType: !576, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2657, file: !2658, line: 123, baseType: !584, size: 32, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2657, file: !2658, line: 124, baseType: !576, size: 32, offset: 160)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2657, file: !2658, line: 125, baseType: !584, size: 32, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2657, file: !2658, line: 126, baseType: !576, size: 32, offset: 224)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2657, file: !2658, line: 127, baseType: !584, size: 32, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2657, file: !2658, line: 128, baseType: !7, size: 32, offset: 288)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2657, file: !2658, line: 129, baseType: !2671, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2672, line: 26, baseType: !2673)
!2672 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2672, line: 24, size: 64, elements: !2674)
!2674 = !{!2675}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2673, file: !2672, line: 25, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !1525)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2657, file: !2658, line: 130, baseType: !2671, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2657, file: !2658, line: 131, baseType: !2671, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2657, file: !2658, line: 132, baseType: !2671, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2657, file: !2658, line: 133, baseType: !2671, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2657, file: !2658, line: 135, baseType: !313, size: 8, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2657, file: !2658, line: 137, baseType: !2683, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2685, line: 189, size: 1664, elements: !2686)
!2685 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !{!2687, !2688, !2691, !2696, !2697, !2700, !2701, !2706, !2707, !2708, !2709, !2711, !2712, !2713, !2714, !2715, !2753, !2774}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2684, file: !2685, line: 190, baseType: !1548, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2684, file: !2685, line: 191, baseType: !2689, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2685, line: 28, baseType: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !256, line: 98, baseType: !2559)
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !2685, line: 192, baseType: !2692, size: 192, offset: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !2685, line: 192, size: 192, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2692, file: !2685, line: 193, baseType: !265, size: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2692, file: !2685, line: 194, baseType: !959, size: 192, align: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2684, file: !2685, line: 199, baseType: !966, size: 256, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2684, file: !2685, line: 200, baseType: !2698, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2685, line: 200, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2684, file: !2685, line: 201, baseType: !241, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !2685, line: 202, baseType: !2702, size: 64, offset: 640)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !2685, line: 202, size: 64, elements: !2703)
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2702, file: !2685, line: 203, baseType: !679, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2702, file: !2685, line: 204, baseType: !679, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2684, file: !2685, line: 206, baseType: !679, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2684, file: !2685, line: 207, baseType: !576, size: 32, offset: 768)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2684, file: !2685, line: 208, baseType: !584, size: 32, offset: 800)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2684, file: !2685, line: 209, baseType: !2710, size: 32, offset: 832)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2685, line: 31, baseType: !698)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2684, file: !2685, line: 210, baseType: !240, size: 16, offset: 864)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2684, file: !2685, line: 211, baseType: !240, size: 16, offset: 880)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2684, file: !2685, line: 215, baseType: !1121, size: 16, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2684, file: !2685, line: 222, baseType: !232, size: 64, offset: 960)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !2685, line: 239, baseType: !2716, size: 320, offset: 1024)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !2685, line: 239, size: 320, elements: !2717)
!2717 = !{!2718, !2745}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2716, file: !2685, line: 240, baseType: !2719, size: 320)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2685, line: 108, size: 320, elements: !2720)
!2720 = !{!2721, !2722, !2734, !2737, !2744}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2719, file: !2685, line: 110, baseType: !232, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !2685, line: 111, baseType: !2723, size: 64, offset: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2719, file: !2685, line: 111, size: 64, elements: !2724)
!2724 = !{!2725, !2733}
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !2685, line: 112, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !2685, line: 112, size: 64, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2726, file: !2685, line: 114, baseType: !1058, size: 16)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2726, file: !2685, line: 115, baseType: !2730, size: 48, offset: 16)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 48, elements: !2731)
!2731 = !{!2732}
!2732 = !DISubrange(count: 6)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2723, file: !2685, line: 121, baseType: !232, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2719, file: !2685, line: 123, baseType: !2735, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2685, line: 96, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2719, file: !2685, line: 124, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2685, line: 102, size: 192, elements: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2739, file: !2685, line: 103, baseType: !509, size: 128, align: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2739, file: !2685, line: 104, baseType: !1548, size: 32, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2739, file: !2685, line: 105, baseType: !631, size: 8, offset: 160)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2719, file: !2685, line: 125, baseType: !354, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, scope: !2716, file: !2685, line: 241, baseType: !2746, size: 320)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2716, file: !2685, line: 241, size: 320, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751, !2752}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2746, file: !2685, line: 242, baseType: !232, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2746, file: !2685, line: 243, baseType: !232, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2746, file: !2685, line: 244, baseType: !2735, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2746, file: !2685, line: 245, baseType: !2738, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2746, file: !2685, line: 246, baseType: !325, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !2685, line: 254, baseType: !2754, size: 256, offset: 1344)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !2685, line: 254, size: 256, elements: !2755)
!2755 = !{!2756, !2762}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2754, file: !2685, line: 255, baseType: !2757, size: 256)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2685, line: 128, size: 256, elements: !2758)
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2757, file: !2685, line: 129, baseType: !241, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2757, file: !2685, line: 130, baseType: !2761, size: 256)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !1433)
!2762 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !2685, line: 256, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2754, file: !2685, line: 256, size: 256, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2763, file: !2685, line: 258, baseType: !265, size: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2763, file: !2685, line: 259, baseType: !2767, size: 128, offset: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2768, line: 22, size: 128, elements: !2769)
!2768 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2769 = !{!2770, !2773}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2767, file: !2768, line: 23, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2768, line: 23, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2767, file: !2768, line: 24, baseType: !232, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2684, file: !2685, line: 274, baseType: !2775, size: 64, offset: 1600)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2685, line: 170, size: 192, elements: !2777)
!2777 = !{!2778, !2787, !2788}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2776, file: !2685, line: 171, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2685, line: 165, baseType: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!235, !2683, !2783, !2785, !2683}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2776, file: !2685, line: 172, baseType: !2683, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2776, file: !2685, line: 173, baseType: !2735, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2657, file: !2658, line: 138, baseType: !2683, size: 64, offset: 768)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2657, file: !2658, line: 139, baseType: !2683, size: 64, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2657, file: !2658, line: 140, baseType: !2683, size: 64, offset: 896)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2657, file: !2658, line: 145, baseType: !2793, size: 64, offset: 960)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2795, line: 13, size: 896, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2794, file: !2795, line: 14, baseType: !1548, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2794, file: !2795, line: 15, baseType: !946, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2794, file: !2795, line: 16, baseType: !946, size: 32, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2794, file: !2795, line: 21, baseType: !253, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2794, file: !2795, line: 27, baseType: !232, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2794, file: !2795, line: 28, baseType: !232, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2794, file: !2795, line: 29, baseType: !253, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2794, file: !2795, line: 32, baseType: !781, size: 128, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2794, file: !2795, line: 33, baseType: !576, size: 32, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2794, file: !2795, line: 37, baseType: !253, size: 64, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2794, file: !2795, line: 44, baseType: !2808, size: 256, offset: 640)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2809, line: 15, size: 256, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !2809, line: 16, baseType: !972)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2808, file: !2809, line: 18, baseType: !235, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2808, file: !2809, line: 19, baseType: !235, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2808, file: !2809, line: 20, baseType: !235, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2808, file: !2809, line: 21, baseType: !235, size: 32, offset: 96)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2808, file: !2809, line: 22, baseType: !232, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2808, file: !2809, line: 23, baseType: !232, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2657, file: !2658, line: 146, baseType: !2819, size: 64, offset: 1024)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2821, line: 56, size: 4160, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2822 = !{!2823, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2860, !2861, !2862, !2863, !2864, !2865, !2946, !2947, !2959}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2820, file: !2821, line: 57, baseType: !2824, size: 576)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2821, line: 23, size: 576, elements: !2825)
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2824, file: !2821, line: 24, baseType: !559, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2824, file: !2821, line: 25, baseType: !2828, size: 512, offset: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2824, file: !2821, line: 25, size: 512, elements: !2829)
!2829 = !{!2830, !2837}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2828, file: !2821, line: 26, baseType: !2831, size: 480)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2832, size: 480, elements: !2002)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2821, line: 17, size: 96, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2832, file: !2821, line: 18, baseType: !559, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2832, file: !2821, line: 19, baseType: !559, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2832, file: !2821, line: 20, baseType: !559, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2821, line: 27, baseType: !2838, size: 128)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !2821, line: 27, size: 128, elements: !2839)
!2839 = !{!2840, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2838, file: !2821, line: 28, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2838, file: !2821, line: 29, baseType: !2841, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2820, file: !2821, line: 58, baseType: !2824, size: 576, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2820, file: !2821, line: 59, baseType: !2824, size: 576, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2820, file: !2821, line: 60, baseType: !946, size: 32, offset: 1728)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2820, file: !2821, line: 61, baseType: !2819, size: 64, offset: 1792)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2820, file: !2821, line: 62, baseType: !235, size: 32, offset: 1856)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2820, file: !2821, line: 63, baseType: !576, size: 32, offset: 1888)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2820, file: !2821, line: 64, baseType: !584, size: 32, offset: 1920)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2820, file: !2821, line: 65, baseType: !2851, size: 192, offset: 1984)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2852, line: 7, size: 192, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2853 = !{!2854, !2855, !2859}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2851, file: !2852, line: 8, baseType: !253, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2851, file: !2852, line: 9, baseType: !2856, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2858)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2852, line: 5, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2851, file: !2852, line: 10, baseType: !7, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2820, file: !2821, line: 66, baseType: !232, size: 64, offset: 2176)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2820, file: !2821, line: 74, baseType: !265, size: 128, offset: 2240)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2820, file: !2821, line: 75, baseType: !2683, size: 64, offset: 2368)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2820, file: !2821, line: 76, baseType: !966, size: 256, offset: 2432)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2820, file: !2821, line: 83, baseType: !250, size: 256, offset: 2688)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2820, file: !2821, line: 85, baseType: !2866, size: 768, offset: 2944)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2867, line: 156, size: 768, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !{!2869, !2874}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2866, file: !2867, line: 157, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!235, !2873}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2866, file: !2867, line: 158, baseType: !2875, size: 704, offset: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2867, line: 150, size: 704, elements: !2876)
!2876 = !{!2877, !2945}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2875, file: !2867, line: 152, baseType: !2878, size: 640)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2867, line: 131, size: 640, elements: !2879)
!2879 = !{!2880, !2913, !2914, !2915, !2935, !2936, !2938, !2944}
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !2867, line: 132, baseType: !2881, size: 192)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !2867, line: 132, size: 192, elements: !2882)
!2882 = !{!2883, !2912}
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2867, line: 133, baseType: !2884, size: 192)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2867, line: 133, size: 192, elements: !2885)
!2885 = !{!2886, !2909, !2910, !2911}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2884, file: !2867, line: 134, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2867, line: 112, size: 512, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2901, !2907, !2908}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2888, file: !2867, line: 113, baseType: !354, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2888, file: !2867, line: 114, baseType: !241, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2888, file: !2867, line: 115, baseType: !235, size: 32, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2888, file: !2867, line: 116, baseType: !461, size: 16, offset: 160)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2888, file: !2867, line: 117, baseType: !2887, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2888, file: !2867, line: 118, baseType: !2896, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2867, line: 47, baseType: !2898)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!235, !2887, !235, !241, !2900, !894}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2888, file: !2867, line: 119, baseType: !2902, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2867, line: 94, size: 192, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2903, file: !2867, line: 95, baseType: !946, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2903, file: !2867, line: 96, baseType: !1355, size: 128, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2888, file: !2867, line: 120, baseType: !241, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2888, file: !2867, line: 121, baseType: !241, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2884, file: !2867, line: 135, baseType: !235, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2884, file: !2867, line: 136, baseType: !235, size: 32, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2884, file: !2867, line: 137, baseType: !235, size: 32, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2881, file: !2867, line: 139, baseType: !509, size: 128, align: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2878, file: !2867, line: 141, baseType: !2609, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2878, file: !2867, line: 142, baseType: !2887, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2878, file: !2867, line: 143, baseType: !2916, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2867, line: 161, size: 960, elements: !2918)
!2918 = !{!2919, !2920, !2924, !2931}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2917, file: !2867, line: 162, baseType: !2866, size: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2917, file: !2867, line: 163, baseType: !2921, size: 64, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!2873, !2916}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2917, file: !2867, line: 164, baseType: !2925, size: 64, offset: 832)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2928, !2887, !2929, !2930}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2917, file: !2867, line: 167, baseType: !2932, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!235, !2928, !2887}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2878, file: !2867, line: 144, baseType: !2873, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2878, file: !2867, line: 145, baseType: !2937, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2878, file: !2867, line: 146, baseType: !2939, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2867, line: 124, size: 256, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2940, file: !2867, line: 125, baseType: !959, size: 192, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2940, file: !2867, line: 126, baseType: !2928, size: 64, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2878, file: !2867, line: 147, baseType: !777, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2875, file: !2867, line: 153, baseType: !955, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2820, file: !2821, line: 86, baseType: !2928, size: 64, offset: 3712)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2820, file: !2821, line: 88, baseType: !2948, size: 64, offset: 3776)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2821, line: 92, size: 576, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2949, file: !2821, line: 93, baseType: !781, size: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2949, file: !2821, line: 94, baseType: !2819, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2949, file: !2821, line: 95, baseType: !576, size: 32, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2949, file: !2821, line: 96, baseType: !235, size: 32, offset: 224)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2949, file: !2821, line: 97, baseType: !2956, size: 320, offset: 256)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 320, elements: !2957)
!2957 = !{!2958}
!2958 = !DISubrange(count: 10)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2820, file: !2821, line: 89, baseType: !2960, size: 320, offset: 3840)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 320, elements: !2957)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2657, file: !2658, line: 147, baseType: !2962, size: 64, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2658, line: 25, size: 64, elements: !2964)
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2963, file: !2658, line: 26, baseType: !946, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2963, file: !2658, line: 27, baseType: !235, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2963, file: !2658, line: 28, baseType: !2968, offset: 64)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, elements: !2969)
!2969 = !{!2970}
!2970 = !DISubrange(count: 0)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2658, line: 149, baseType: !2972, size: 128, offset: 1152)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !2658, line: 149, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2972, file: !2658, line: 150, baseType: !235, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2972, file: !2658, line: 151, baseType: !509, size: 128, align: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2339, file: !2340, line: 926, baseType: !2655, size: 64, offset: 8576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2339, file: !2340, line: 929, baseType: !2655, size: 64, offset: 8640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2339, file: !2340, line: 933, baseType: !2683, size: 64, offset: 8704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2339, file: !2340, line: 943, baseType: !2980, size: 128, offset: 8768)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 128, elements: !1874)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2339, file: !2340, line: 945, baseType: !2982, size: 64, offset: 8896)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2340, line: 49, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2339, file: !2340, line: 956, baseType: !2985, size: 64, offset: 8960)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2340, line: 45, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2339, file: !2340, line: 959, baseType: !2988, size: 64, offset: 9024)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2340, line: 959, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2339, file: !2340, line: 962, baseType: !2991, size: 64, offset: 9088)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2340, line: 66, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2339, file: !2340, line: 966, baseType: !2994, size: 64, offset: 9152)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2996, line: 31, size: 576, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !{!2998, !2999, !3002, !3005, !3008, !3009, !3012, !3015, !3016}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2995, file: !2996, line: 32, baseType: !946, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2995, file: !2996, line: 33, baseType: !3000, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2996, line: 9, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2995, file: !2996, line: 34, baseType: !3003, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2996, line: 10, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2995, file: !2996, line: 35, baseType: !3006, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2996, line: 8, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2995, file: !2996, line: 36, baseType: !2602, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2995, file: !2996, line: 37, baseType: !3010, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2685, line: 34, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2995, file: !2996, line: 38, baseType: !3013, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2996, line: 38, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2995, file: !2996, line: 39, baseType: !3013, size: 64, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2995, file: !2996, line: 40, baseType: !3017, size: 64, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3019, line: 856, size: 448, elements: !3020)
!3019 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!3020 = !{!3021, !3022, !3023, !3024, !3025}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !3019, line: 857, baseType: !1548, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3018, file: !3019, line: 858, baseType: !2851, size: 192, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3018, file: !3019, line: 859, baseType: !2819, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3018, file: !3019, line: 860, baseType: !2948, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3018, file: !3019, line: 861, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3028, line: 16, flags: DIFlagFwdDecl)
!3028 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2339, file: !2340, line: 969, baseType: !3030, size: 64, offset: 9216)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3032, line: 82, size: 7296, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3069, !3078, !3079, !3081, !3082, !3083, !3086, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3116, !3117, !3124, !3125, !3126, !3127, !3128, !3129}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3031, file: !3032, line: 83, baseType: !1548, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3031, file: !3032, line: 84, baseType: !946, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3031, file: !3032, line: 85, baseType: !235, size: 32, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3031, file: !3032, line: 86, baseType: !265, size: 128, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3031, file: !3032, line: 88, baseType: !1355, size: 128, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3031, file: !3032, line: 91, baseType: !2338, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3031, file: !3032, line: 94, baseType: !3041, size: 192, offset: 448)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3042, line: 30, size: 192, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3041, file: !3042, line: 31, baseType: !265, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3041, file: !3042, line: 32, baseType: !3046, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3047, line: 25, baseType: !3048)
!3047 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3047, line: 23, size: 64, elements: !3049)
!3049 = !{!3050}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3048, file: !3047, line: 24, baseType: !2485, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3031, file: !3032, line: 97, baseType: !777, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3031, file: !3032, line: 100, baseType: !235, size: 32, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3031, file: !3032, line: 106, baseType: !235, size: 32, offset: 736)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !3031, file: !3032, line: 107, baseType: !2338, size: 64, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3031, file: !3032, line: 110, baseType: !235, size: 32, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3031, file: !3032, line: 111, baseType: !7, size: 32, offset: 864)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3031, file: !3032, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3031, file: !3032, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !3031, file: !3032, line: 128, baseType: !235, size: 32, offset: 928)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3031, file: !3032, line: 129, baseType: !265, size: 128, offset: 960)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3031, file: !3032, line: 132, baseType: !2409, size: 512, offset: 1088)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3031, file: !3032, line: 133, baseType: !2417, size: 64, offset: 1600)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3031, file: !3032, line: 140, baseType: !3064, size: 256, offset: 1664)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3065, size: 256, elements: !1525)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3032, line: 38, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3065, file: !3032, line: 39, baseType: !563, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3065, file: !3032, line: 40, baseType: !563, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3031, file: !3032, line: 146, baseType: !3070, size: 192, offset: 1920)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3032, line: 66, size: 192, elements: !3071)
!3071 = !{!3072}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3070, file: !3032, line: 67, baseType: !3073, size: 192)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3032, line: 47, size: 192, elements: !3074)
!3074 = !{!3075, !3076, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3073, file: !3032, line: 48, baseType: !255, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3073, file: !3032, line: 49, baseType: !255, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3073, file: !3032, line: 50, baseType: !255, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3031, file: !3032, line: 150, baseType: !2638, size: 640, offset: 2112)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3031, file: !3032, line: 153, baseType: !3080, size: 256, offset: 2752)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2585, size: 256, elements: !1433)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3031, file: !3032, line: 159, baseType: !2585, size: 64, offset: 3008)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3031, file: !3032, line: 162, baseType: !235, size: 32, offset: 3072)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3031, file: !3032, line: 164, baseType: !3084, size: 64, offset: 3136)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3032, line: 164, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3031, file: !3032, line: 175, baseType: !3087, size: 32, offset: 3200)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !532, line: 805, baseType: !3088)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 798, size: 32, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3088, file: !532, line: 803, baseType: !531, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !532, line: 804, baseType: !381, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3031, file: !3032, line: 176, baseType: !563, size: 64, offset: 3264)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3031, file: !3032, line: 176, baseType: !563, size: 64, offset: 3328)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3031, file: !3032, line: 176, baseType: !563, size: 64, offset: 3392)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3031, file: !3032, line: 176, baseType: !563, size: 64, offset: 3456)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3031, file: !3032, line: 177, baseType: !563, size: 64, offset: 3520)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3031, file: !3032, line: 178, baseType: !563, size: 64, offset: 3584)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3031, file: !3032, line: 179, baseType: !2626, size: 128, offset: 3648)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3031, file: !3032, line: 180, baseType: !232, size: 64, offset: 3776)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3031, file: !3032, line: 180, baseType: !232, size: 64, offset: 3840)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3031, file: !3032, line: 180, baseType: !232, size: 64, offset: 3904)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3031, file: !3032, line: 180, baseType: !232, size: 64, offset: 3968)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3031, file: !3032, line: 181, baseType: !232, size: 64, offset: 4032)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3031, file: !3032, line: 181, baseType: !232, size: 64, offset: 4096)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3031, file: !3032, line: 181, baseType: !232, size: 64, offset: 4160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3031, file: !3032, line: 181, baseType: !232, size: 64, offset: 4224)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3031, file: !3032, line: 182, baseType: !232, size: 64, offset: 4288)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3031, file: !3032, line: 182, baseType: !232, size: 64, offset: 4352)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3031, file: !3032, line: 182, baseType: !232, size: 64, offset: 4416)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3031, file: !3032, line: 182, baseType: !232, size: 64, offset: 4480)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3031, file: !3032, line: 183, baseType: !232, size: 64, offset: 4544)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3031, file: !3032, line: 183, baseType: !232, size: 64, offset: 4608)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3031, file: !3032, line: 184, baseType: !3114, offset: 4672)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3115, line: 12, elements: !395)
!3115 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3031, file: !3032, line: 192, baseType: !565, size: 64, offset: 4672)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3031, file: !3032, line: 203, baseType: !3118, size: 2048, offset: 4736)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3119, size: 2048, elements: !1874)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3120, line: 43, size: 128, elements: !3121)
!3120 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3119, file: !3120, line: 44, baseType: !468, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3119, file: !3120, line: 45, baseType: !468, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3031, file: !3032, line: 220, baseType: !631, size: 8, offset: 6784)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3031, file: !3032, line: 221, baseType: !1121, size: 16, offset: 6800)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3031, file: !3032, line: 222, baseType: !1121, size: 16, offset: 6816)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3031, file: !3032, line: 224, baseType: !2105, size: 64, offset: 6848)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3031, file: !3032, line: 227, baseType: !879, size: 192, offset: 6912)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !3031, file: !3032, line: 233, baseType: !879, size: 192, offset: 7104)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2339, file: !2340, line: 970, baseType: !3131, size: 64, offset: 9280)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3032, line: 20, size: 16576, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3132, file: !3032, line: 21, baseType: !381)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3132, file: !3032, line: 22, baseType: !1548, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3132, file: !3032, line: 23, baseType: !1355, size: 128, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3132, file: !3032, line: 24, baseType: !3138, size: 16384, offset: 192)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3139, size: 16384, elements: !426)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3042, line: 49, size: 256, elements: !3140)
!3140 = !{!3141}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3139, file: !3042, line: 50, baseType: !3142, size: 256)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3042, line: 35, size: 256, elements: !3143)
!3143 = !{!3144, !3151, !3152, !3158}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3142, file: !3042, line: 37, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3146, line: 19, baseType: !3147)
!3146 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3146, line: 18, baseType: !3149)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !235}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3142, file: !3042, line: 38, baseType: !232, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3142, file: !3042, line: 44, baseType: !3153, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3146, line: 22, baseType: !3154)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3146, line: 21, baseType: !3156)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3142, file: !3042, line: 46, baseType: !3046, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2339, file: !2340, line: 971, baseType: !3046, size: 64, offset: 9344)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2339, file: !2340, line: 972, baseType: !3046, size: 64, offset: 9408)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2339, file: !2340, line: 974, baseType: !3046, size: 64, offset: 9472)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2339, file: !2340, line: 975, baseType: !3041, size: 192, offset: 9536)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2339, file: !2340, line: 976, baseType: !232, size: 64, offset: 9728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2339, file: !2340, line: 977, baseType: !466, size: 64, offset: 9792)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2339, file: !2340, line: 978, baseType: !7, size: 32, offset: 9856)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2339, file: !2340, line: 980, baseType: !512, size: 64, offset: 9920)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2339, file: !2340, line: 989, baseType: !3168, size: 128, offset: 9984)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3169, line: 35, size: 128, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3170 = !{!3171, !3172, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3168, file: !3169, line: 36, baseType: !235, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3168, file: !3169, line: 37, baseType: !946, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3168, file: !3169, line: 38, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3169, line: 23, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2339, file: !2340, line: 992, baseType: !563, size: 64, offset: 10112)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2339, file: !2340, line: 993, baseType: !563, size: 64, offset: 10176)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2339, file: !2340, line: 996, baseType: !381, offset: 10240)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2339, file: !2340, line: 999, baseType: !972, offset: 10240)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2339, file: !2340, line: 1001, baseType: !3181, size: 64, offset: 10240)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2340, line: 636, size: 64, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3181, file: !2340, line: 637, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2339, file: !2340, line: 1005, baseType: !951, size: 128, offset: 10304)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2339, file: !2340, line: 1007, baseType: !2338, size: 64, offset: 10432)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2339, file: !2340, line: 1009, baseType: !3188, size: 64, offset: 10496)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2340, line: 1009, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2339, file: !2340, line: 1043, baseType: !241, size: 64, offset: 10560)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2339, file: !2340, line: 1046, baseType: !3192, size: 64, offset: 10624)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2339, file: !2340, line: 1050, baseType: !3194, size: 64, offset: 10688)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !29, line: 1236, size: 320, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3195, file: !29, line: 1237, baseType: !265, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3195, file: !29, line: 1238, baseType: !265, size: 128, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3195, file: !29, line: 1239, baseType: !240, size: 16, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3195, file: !29, line: 1240, baseType: !631, size: 8, offset: 272)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3195, file: !29, line: 1241, baseType: !631, size: 8, offset: 280)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2339, file: !2340, line: 1054, baseType: !3203, size: 64, offset: 10752)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1117, line: 131, size: 64, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3204, file: !1117, line: 132, baseType: !232, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2339, file: !2340, line: 1056, baseType: !1729, size: 64, offset: 10816)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2339, file: !2340, line: 1058, baseType: !1500, size: 64, offset: 10880)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2339, file: !2340, line: 1061, baseType: !3210, size: 64, offset: 10944)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2340, line: 43, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2339, file: !2340, line: 1064, baseType: !232, size: 64, offset: 11008)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2339, file: !2340, line: 1065, baseType: !3214, size: 64, offset: 11072)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3042, line: 14, baseType: !3216)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3042, line: 12, size: 384, elements: !3217)
!3217 = !{!3218}
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !3216, file: !3042, line: 13, baseType: !3219, size: 384)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3042, line: 13, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3219, file: !3042, line: 13, baseType: !235, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3219, file: !3042, line: 13, baseType: !235, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3219, file: !3042, line: 13, baseType: !235, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3219, file: !3042, line: 13, baseType: !3225, size: 256, offset: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3226, line: 32, size: 256, elements: !3227)
!3226 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3227 = !{!3228, !3233, !3246, !3252, !3261, !3281, !3286}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3225, file: !3226, line: 37, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 34, size: 64, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3229, file: !3226, line: 35, baseType: !2574, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3229, file: !3226, line: 36, baseType: !582, size: 32, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3225, file: !3226, line: 45, baseType: !3234, size: 192)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 40, size: 192, elements: !3235)
!3235 = !{!3236, !3238, !3239, !3245}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3234, file: !3226, line: 41, baseType: !3237, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !454, line: 95, baseType: !235)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3234, file: !3226, line: 42, baseType: !235, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3234, file: !3226, line: 43, baseType: !3240, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3226, line: 11, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3226, line: 8, size: 64, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3241, file: !3226, line: 9, baseType: !235, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3241, file: !3226, line: 10, baseType: !241, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3234, file: !3226, line: 44, baseType: !235, size: 32, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3225, file: !3226, line: 52, baseType: !3247, size: 128)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 48, size: 128, elements: !3248)
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3247, file: !3226, line: 49, baseType: !2574, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3247, file: !3226, line: 50, baseType: !582, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3247, file: !3226, line: 51, baseType: !3240, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3225, file: !3226, line: 61, baseType: !3253, size: 256)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 55, size: 256, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3260}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3253, file: !3226, line: 56, baseType: !2574, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3253, file: !3226, line: 57, baseType: !582, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3253, file: !3226, line: 58, baseType: !235, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3253, file: !3226, line: 59, baseType: !3259, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !454, line: 94, baseType: !455)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3253, file: !3226, line: 60, baseType: !3259, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3225, file: !3226, line: 95, baseType: !3262, size: 256)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 64, size: 256, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3262, file: !3226, line: 65, baseType: !241, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !3226, line: 77, baseType: !3266, size: 192, offset: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !3226, line: 77, size: 192, elements: !3267)
!3267 = !{!3268, !3269, !3276}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3266, file: !3226, line: 82, baseType: !1121, size: 16)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3266, file: !3226, line: 88, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3266, file: !3226, line: 84, size: 192, elements: !3271)
!3271 = !{!3272, !3274, !3275}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3270, file: !3226, line: 85, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !2447)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3270, file: !3226, line: 86, baseType: !241, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3270, file: !3226, line: 87, baseType: !241, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3266, file: !3226, line: 93, baseType: !3277, size: 96)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3266, file: !3226, line: 90, size: 96, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3277, file: !3226, line: 91, baseType: !3273, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3277, file: !3226, line: 92, baseType: !560, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3225, file: !3226, line: 101, baseType: !3282, size: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 98, size: 128, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3282, file: !3226, line: 99, baseType: !188, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3282, file: !3226, line: 100, baseType: !235, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3225, file: !3226, line: 108, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3226, line: 104, size: 128, elements: !3288)
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3287, file: !3226, line: 105, baseType: !241, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3287, file: !3226, line: 106, baseType: !235, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3287, file: !3226, line: 107, baseType: !7, size: 32, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2339, file: !2340, line: 1067, baseType: !3114, offset: 11136)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2339, file: !2340, line: 1099, baseType: !3294, size: 64, offset: 11136)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2340, line: 56, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2339, file: !2340, line: 1103, baseType: !265, size: 128, offset: 11200)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2339, file: !2340, line: 1104, baseType: !3298, size: 64, offset: 11328)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2340, line: 46, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2339, file: !2340, line: 1105, baseType: !879, size: 192, offset: 11392)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2339, file: !2340, line: 1106, baseType: !7, size: 32, offset: 11584)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2339, file: !2340, line: 1109, baseType: !3303, size: 128, offset: 11648)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3304, size: 128, elements: !1525)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2340, line: 51, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2339, file: !2340, line: 1110, baseType: !879, size: 192, offset: 11776)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2339, file: !2340, line: 1111, baseType: !265, size: 128, offset: 11968)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2339, file: !2340, line: 1173, baseType: !3309, size: 64, offset: 12096)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3311, line: 62, size: 256, align: 256, elements: !3312)
!3311 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3312 = !{!3313, !3314, !3315, !3320}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3310, file: !3311, line: 75, baseType: !560, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3310, file: !3311, line: 90, baseType: !560, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3310, file: !3311, line: 124, baseType: !3316, size: 64, offset: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !3311, line: 109, size: 64, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3316, file: !3311, line: 110, baseType: !564, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3316, file: !3311, line: 112, baseType: !564, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3310, file: !3311, line: 144, baseType: !560, size: 32, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2339, file: !2340, line: 1174, baseType: !559, size: 32, offset: 12160)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2339, file: !2340, line: 1179, baseType: !232, size: 64, offset: 12224)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2339, file: !2340, line: 1182, baseType: !3324, size: 128, offset: 12288)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2282, line: 76, size: 128, elements: !3325)
!3325 = !{!3326, !3331, !3332}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3324, file: !2282, line: 85, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3328, line: 7, size: 64, elements: !3329)
!3328 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3327, file: !3328, line: 12, baseType: !2482, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3324, file: !2282, line: 88, baseType: !631, size: 8, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3324, file: !2282, line: 95, baseType: !631, size: 8, offset: 72)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !2340, line: 1184, baseType: !3334, size: 128, offset: 12416)
!3334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !2340, line: 1184, size: 128, elements: !3335)
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3334, file: !2340, line: 1185, baseType: !1548, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3334, file: !2340, line: 1186, baseType: !509, size: 128, align: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2339, file: !2340, line: 1190, baseType: !3339, size: 64, offset: 12544)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2340, line: 53, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2339, file: !2340, line: 1192, baseType: !3342, size: 128, offset: 12608)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2282, line: 64, size: 128, elements: !3343)
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3342, file: !2282, line: 65, baseType: !919, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3342, file: !2282, line: 67, baseType: !560, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3342, file: !2282, line: 68, baseType: !560, size: 32, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2339, file: !2340, line: 1206, baseType: !235, size: 32, offset: 12736)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2339, file: !2340, line: 1207, baseType: !235, size: 32, offset: 12768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2339, file: !2340, line: 1209, baseType: !232, size: 64, offset: 12800)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2339, file: !2340, line: 1219, baseType: !563, size: 64, offset: 12864)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2339, file: !2340, line: 1220, baseType: !563, size: 64, offset: 12928)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2339, file: !2340, line: 1317, baseType: !235, size: 32, offset: 12992)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2339, file: !2340, line: 1319, baseType: !2338, size: 64, offset: 13056)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2339, file: !2340, line: 1322, baseType: !3355, size: 64, offset: 13120)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3357, line: 56, size: 512, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3367}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3356, file: !3357, line: 57, baseType: !3355, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3356, file: !3357, line: 58, baseType: !241, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3356, file: !3357, line: 59, baseType: !232, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3356, file: !3357, line: 60, baseType: !232, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3356, file: !3357, line: 61, baseType: !1019, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3356, file: !3357, line: 62, baseType: !7, size: 32, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3356, file: !3357, line: 63, baseType: !3366, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !256, line: 153, baseType: !563)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3356, file: !3357, line: 64, baseType: !3368, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2339, file: !2340, line: 1326, baseType: !1548, size: 32, offset: 13184)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2339, file: !2340, line: 1342, baseType: !241, size: 64, offset: 13248)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2339, file: !2340, line: 1343, baseType: !564, size: 64, offset: 13312)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2339, file: !2340, line: 1344, baseType: !563, size: 64, offset: 13376)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2339, file: !2340, line: 1345, baseType: !564, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2339, file: !2340, line: 1346, baseType: !564, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2339, file: !2340, line: 1347, baseType: !564, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2339, file: !2340, line: 1348, baseType: !509, size: 128, align: 64, offset: 13504)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2339, file: !2340, line: 1358, baseType: !3379, size: 34816, offset: 13824)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3380, line: 485, size: 34816, elements: !3381)
!3380 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3381 = !{!3382, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3411, !3412, !3413, !3414, !3415, !3416, !3419, !3420, !3421}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3379, file: !3380, line: 487, baseType: !3383, size: 192)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3384, size: 192, elements: !422)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3385, line: 16, size: 64, elements: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3384, file: !3385, line: 17, baseType: !1058, size: 16)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3384, file: !3385, line: 18, baseType: !1058, size: 16, offset: 16)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3384, file: !3385, line: 19, baseType: !1058, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3384, file: !3385, line: 19, baseType: !1058, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3384, file: !3385, line: 19, baseType: !1058, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3384, file: !3385, line: 19, baseType: !1058, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3384, file: !3385, line: 19, baseType: !1058, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3384, file: !3385, line: 20, baseType: !1058, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3379, file: !3380, line: 491, baseType: !232, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3379, file: !3380, line: 495, baseType: !240, size: 16, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3379, file: !3380, line: 496, baseType: !240, size: 16, offset: 272)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3379, file: !3380, line: 497, baseType: !240, size: 16, offset: 288)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3379, file: !3380, line: 498, baseType: !240, size: 16, offset: 304)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3379, file: !3380, line: 502, baseType: !232, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3379, file: !3380, line: 503, baseType: !232, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3379, file: !3380, line: 514, baseType: !3408, size: 256, offset: 448)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3409, size: 256, elements: !1433)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3380, line: 483, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3379, file: !3380, line: 516, baseType: !232, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3379, file: !3380, line: 518, baseType: !232, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3379, file: !3380, line: 520, baseType: !232, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3379, file: !3380, line: 521, baseType: !232, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3379, file: !3380, line: 522, baseType: !232, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3379, file: !3380, line: 528, baseType: !3417, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3380, line: 10, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3379, file: !3380, line: 535, baseType: !232, size: 64, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3379, file: !3380, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3379, file: !3380, line: 540, baseType: !3422, size: 33280, offset: 1536)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3423, line: 317, size: 33280, elements: !3424)
!3423 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3424 = !{!3425, !3426, !3427}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3422, file: !3423, line: 330, baseType: !7, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3422, file: !3423, line: 337, baseType: !232, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3422, file: !3423, line: 348, baseType: !3428, size: 32768, offset: 512)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3423, line: 304, size: 32768, elements: !3429)
!3429 = !{!3430, !3445, !3482, !3532, !3545}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3428, file: !3423, line: 305, baseType: !3431, size: 896)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3423, line: 12, size: 896, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3444}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3431, file: !3423, line: 13, baseType: !559, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3431, file: !3423, line: 14, baseType: !559, size: 32, offset: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3431, file: !3423, line: 15, baseType: !559, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3431, file: !3423, line: 16, baseType: !559, size: 32, offset: 96)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3431, file: !3423, line: 17, baseType: !559, size: 32, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3431, file: !3423, line: 18, baseType: !559, size: 32, offset: 160)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3431, file: !3423, line: 19, baseType: !559, size: 32, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3431, file: !3423, line: 22, baseType: !3441, size: 640, offset: 224)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 640, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 20)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3431, file: !3423, line: 25, baseType: !559, size: 32, offset: 864)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3428, file: !3423, line: 306, baseType: !3446, size: 4096, align: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3423, line: 34, size: 4096, align: 128, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3467, !3468, !3469, !3471, !3473, !3477}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3446, file: !3423, line: 35, baseType: !1058, size: 16)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3446, file: !3423, line: 36, baseType: !1058, size: 16, offset: 16)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3446, file: !3423, line: 37, baseType: !1058, size: 16, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3446, file: !3423, line: 38, baseType: !1058, size: 16, offset: 48)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3446, file: !3423, line: 39, baseType: !3453, size: 128, offset: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !3423, line: 39, size: 128, elements: !3454)
!3454 = !{!3455, !3460}
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !3423, line: 40, baseType: !3456, size: 128)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3423, line: 40, size: 128, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3456, file: !3423, line: 41, baseType: !563, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3456, file: !3423, line: 42, baseType: !563, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !3423, line: 44, baseType: !3461, size: 128)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3423, line: 44, size: 128, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3461, file: !3423, line: 45, baseType: !559, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3461, file: !3423, line: 46, baseType: !559, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3461, file: !3423, line: 47, baseType: !559, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3461, file: !3423, line: 48, baseType: !559, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3446, file: !3423, line: 51, baseType: !559, size: 32, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3446, file: !3423, line: 52, baseType: !559, size: 32, offset: 224)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3446, file: !3423, line: 55, baseType: !3470, size: 1024, offset: 256)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 1024, elements: !1244)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3446, file: !3423, line: 58, baseType: !3472, size: 2048, offset: 1280)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 2048, elements: !426)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3446, file: !3423, line: 60, baseType: !3474, size: 384, offset: 3328)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 384, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 12)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3446, file: !3423, line: 62, baseType: !3478, size: 384, offset: 3712)
!3478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !3423, line: 62, size: 384, elements: !3479)
!3479 = !{!3480, !3481}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3478, file: !3423, line: 63, baseType: !3474, size: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3478, file: !3423, line: 64, baseType: !3474, size: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3428, file: !3423, line: 307, baseType: !3483, size: 1088)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3423, line: 79, size: 1088, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3531}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3483, file: !3423, line: 80, baseType: !559, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3483, file: !3423, line: 81, baseType: !559, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3483, file: !3423, line: 82, baseType: !559, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3483, file: !3423, line: 83, baseType: !559, size: 32, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3483, file: !3423, line: 84, baseType: !559, size: 32, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3483, file: !3423, line: 85, baseType: !559, size: 32, offset: 160)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3483, file: !3423, line: 86, baseType: !559, size: 32, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3483, file: !3423, line: 88, baseType: !3441, size: 640, offset: 224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3483, file: !3423, line: 89, baseType: !1178, size: 8, offset: 864)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3483, file: !3423, line: 90, baseType: !1178, size: 8, offset: 872)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3483, file: !3423, line: 91, baseType: !1178, size: 8, offset: 880)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3483, file: !3423, line: 92, baseType: !1178, size: 8, offset: 888)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3483, file: !3423, line: 93, baseType: !1178, size: 8, offset: 896)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3483, file: !3423, line: 94, baseType: !1178, size: 8, offset: 904)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3483, file: !3423, line: 95, baseType: !3500, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3502, line: 11, size: 128, elements: !3503)
!3502 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3501, file: !3502, line: 12, baseType: !188, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3501, file: !3502, line: 13, baseType: !3506, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3508, line: 56, size: 1344, elements: !3509)
!3508 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3507, file: !3508, line: 61, baseType: !232, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3507, file: !3508, line: 62, baseType: !232, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3507, file: !3508, line: 63, baseType: !232, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3507, file: !3508, line: 64, baseType: !232, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3507, file: !3508, line: 65, baseType: !232, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3507, file: !3508, line: 66, baseType: !232, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3507, file: !3508, line: 68, baseType: !232, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3507, file: !3508, line: 69, baseType: !232, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3507, file: !3508, line: 70, baseType: !232, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3507, file: !3508, line: 71, baseType: !232, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3507, file: !3508, line: 72, baseType: !232, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3507, file: !3508, line: 73, baseType: !232, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3507, file: !3508, line: 74, baseType: !232, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3507, file: !3508, line: 75, baseType: !232, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3507, file: !3508, line: 76, baseType: !232, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3507, file: !3508, line: 81, baseType: !232, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3507, file: !3508, line: 83, baseType: !232, size: 64, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3507, file: !3508, line: 84, baseType: !232, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3507, file: !3508, line: 85, baseType: !232, size: 64, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3507, file: !3508, line: 86, baseType: !232, size: 64, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3507, file: !3508, line: 87, baseType: !232, size: 64, offset: 1280)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3483, file: !3423, line: 96, baseType: !559, size: 32, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3428, file: !3423, line: 308, baseType: !3533, size: 4608, align: 512)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3423, line: 289, size: 4608, align: 512, elements: !3534)
!3534 = !{!3535, !3536, !3543}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3533, file: !3423, line: 290, baseType: !3446, size: 4096, align: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3533, file: !3423, line: 291, baseType: !3537, size: 512, offset: 4096)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3423, line: 268, size: 512, elements: !3538)
!3538 = !{!3539, !3540, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3537, file: !3423, line: 269, baseType: !563, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3537, file: !3423, line: 270, baseType: !563, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3537, file: !3423, line: 271, baseType: !3542, size: 384, offset: 128)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 384, elements: !2731)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3533, file: !3423, line: 292, baseType: !3544, offset: 4608)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, elements: !2969)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3428, file: !3423, line: 309, baseType: !3546, size: 32768)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 32768, elements: !3547)
!3547 = !{!3548}
!3548 = !DISubrange(count: 4096)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2335, file: !921, line: 378, baseType: !3550, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2331, file: !921, line: 384, baseType: !2610, size: 192, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2109, file: !921, line: 500, baseType: !381, offset: 6656)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2109, file: !921, line: 501, baseType: !3554, size: 64, offset: 6656)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !921, line: 387, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2109, file: !921, line: 516, baseType: !2819, size: 64, offset: 6720)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2109, file: !921, line: 519, baseType: !496, size: 64, offset: 6784)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2109, file: !921, line: 521, baseType: !3559, size: 64, offset: 6848)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !921, line: 521, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2109, file: !921, line: 545, baseType: !946, size: 32, offset: 6912)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2109, file: !921, line: 548, baseType: !631, size: 8, offset: 6944)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2109, file: !921, line: 550, baseType: !3564, offset: 6952)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3565, line: 142, elements: !395)
!3565 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2109, file: !921, line: 554, baseType: !250, size: 256, offset: 6976)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2109, file: !921, line: 557, baseType: !559, size: 32, offset: 7232)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2106, file: !921, line: 565, baseType: !3569, offset: 7296)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, elements: !1257)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2102, file: !921, line: 151, baseType: !946, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2094, file: !921, line: 156, baseType: !381, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !921, line: 159, baseType: !3573, size: 128)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !921, line: 159, size: 128, elements: !3574)
!3574 = !{!3575, !3619}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3573, file: !921, line: 161, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !83, line: 110, size: 1152, elements: !3578)
!3578 = !{!3579, !3589, !3590, !3591, !3592, !3593, !3594, !3606, !3607, !3608}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3577, file: !83, line: 111, baseType: !3580, size: 384)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !83, line: 19, size: 384, elements: !3581)
!3581 = !{!3582, !3584, !3585, !3586, !3587, !3588}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3580, file: !83, line: 20, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3580, file: !83, line: 21, baseType: !3583, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3580, file: !83, line: 22, baseType: !3583, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3580, file: !83, line: 23, baseType: !232, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3580, file: !83, line: 24, baseType: !232, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3580, file: !83, line: 25, baseType: !232, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3577, file: !83, line: 112, baseType: !1205, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3577, file: !83, line: 113, baseType: !1191, size: 128, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3577, file: !83, line: 114, baseType: !2610, size: 192, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3577, file: !83, line: 115, baseType: !82, size: 32, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !83, line: 116, baseType: !7, size: 32, offset: 800)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3577, file: !83, line: 117, baseType: !3595, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !83, line: 67, size: 256, elements: !3598)
!3598 = !{!3599, !3600, !3604, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3597, file: !83, line: 73, baseType: !1039, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3597, file: !83, line: 78, baseType: !3601, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3576}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3597, file: !83, line: 83, baseType: !3601, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3597, file: !83, line: 89, baseType: !2158, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3577, file: !83, line: 118, baseType: !241, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3577, file: !83, line: 119, baseType: !235, size: 32, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3577, file: !83, line: 120, baseType: !3609, size: 128, offset: 1024)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3577, file: !83, line: 120, size: 128, elements: !3610)
!3610 = !{!3611, !3617}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3609, file: !83, line: 121, baseType: !3612, size: 128)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3613, line: 6, size: 128, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3612, file: !3613, line: 7, baseType: !563, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3612, file: !3613, line: 8, baseType: !563, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3609, file: !83, line: 122, baseType: !3618)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3612, elements: !2969)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3573, file: !921, line: 162, baseType: !241, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !925, file: !921, line: 176, baseType: !509, size: 128, align: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !921, line: 179, baseType: !3622, size: 32, offset: 384)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !921, line: 179, size: 32, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3622, file: !921, line: 184, baseType: !946, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3622, file: !921, line: 192, baseType: !7, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3622, file: !921, line: 194, baseType: !7, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3622, file: !921, line: 195, baseType: !235, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !920, file: !921, line: 199, baseType: !946, size: 32, offset: 416)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !799, file: !96, line: 1964, baseType: !3630, size: 64, offset: 1344)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!188, !738, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3635, line: 12, size: 256, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !{!3637, !3638, !3639, !3640, !3641}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3634, file: !3635, line: 13, baseType: !942, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3634, file: !3635, line: 16, baseType: !235, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3634, file: !3635, line: 23, baseType: !232, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3634, file: !3635, line: 30, baseType: !232, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3634, file: !3635, line: 33, baseType: !3642, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !921, line: 27, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !799, file: !96, line: 1966, baseType: !3630, size: 64, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !739, file: !96, line: 1424, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !90, line: 322, size: 704, elements: !3649)
!3649 = !{!3650, !3696, !3700, !3704, !3705, !3706, !3707, !3708, !3713, !3718, !3722}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3648, file: !90, line: 323, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!235, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !90, line: 294, size: 1600, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3681, !3682, !3683}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3655, file: !90, line: 295, baseType: !781, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3655, file: !90, line: 296, baseType: !265, size: 128, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3655, file: !90, line: 297, baseType: !265, size: 128, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3655, file: !90, line: 298, baseType: !265, size: 128, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3655, file: !90, line: 299, baseType: !879, size: 192, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3655, file: !90, line: 300, baseType: !381, offset: 704)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3655, file: !90, line: 301, baseType: !946, size: 32, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3655, file: !90, line: 302, baseType: !738, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3655, file: !90, line: 303, baseType: !3666, size: 64, offset: 832)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !90, line: 68, size: 64, elements: !3667)
!3667 = !{!3668, !3680}
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3666, file: !90, line: 69, baseType: !3669, size: 32)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3666, file: !90, line: 69, size: 32, elements: !3670)
!3670 = !{!3671, !3672, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3669, file: !90, line: 70, baseType: !576, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3669, file: !90, line: 71, baseType: !584, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3669, file: !90, line: 72, baseType: !3674, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3675, line: 24, baseType: !3676)
!3675 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3675, line: 22, size: 32, elements: !3677)
!3677 = !{!3678}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3676, file: !3675, line: 23, baseType: !3679, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3675, line: 20, baseType: !582)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3666, file: !90, line: 74, baseType: !89, size: 32, offset: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3655, file: !90, line: 304, baseType: !672, size: 64, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3655, file: !90, line: 305, baseType: !232, size: 64, offset: 960)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3655, file: !90, line: 306, baseType: !3684, size: 576, offset: 1024)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !90, line: 205, size: 576, elements: !3685)
!3685 = !{!3686, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3684, file: !90, line: 206, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !90, line: 66, baseType: !263)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3684, file: !90, line: 207, baseType: !3687, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3684, file: !90, line: 208, baseType: !3687, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3684, file: !90, line: 209, baseType: !3687, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3684, file: !90, line: 210, baseType: !3687, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3684, file: !90, line: 211, baseType: !3687, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3684, file: !90, line: 212, baseType: !3687, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3684, file: !90, line: 213, baseType: !679, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3684, file: !90, line: 214, baseType: !679, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3648, file: !90, line: 324, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3654, !738, !235}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3648, file: !90, line: 325, baseType: !3701, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3654}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3648, file: !90, line: 326, baseType: !3651, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3648, file: !90, line: 327, baseType: !3651, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3648, file: !90, line: 328, baseType: !3651, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3648, file: !90, line: 329, baseType: !841, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3648, file: !90, line: 332, baseType: !3709, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!3712, !570}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3648, file: !90, line: 333, baseType: !3714, size: 64, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!235, !570, !3717}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3648, file: !90, line: 335, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!235, !570, !3712}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3648, file: !90, line: 337, baseType: !3723, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!235, !738, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !739, file: !96, line: 1425, baseType: !3728, size: 64, offset: 512)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3730)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !90, line: 428, size: 704, elements: !3731)
!3731 = !{!3732, !3736, !3737, !3741, !3742, !3743, !3758, !3781, !3785, !3786, !3809}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3730, file: !90, line: 429, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!235, !738, !235, !235, !688}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3730, file: !90, line: 430, baseType: !841, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3730, file: !90, line: 431, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!235, !738, !7}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3730, file: !90, line: 432, baseType: !3738, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3730, file: !90, line: 433, baseType: !841, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3730, file: !90, line: 434, baseType: !3744, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!235, !738, !235, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !90, line: 415, size: 256, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3748, file: !90, line: 416, baseType: !235, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3748, file: !90, line: 417, baseType: !7, size: 32, offset: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3748, file: !90, line: 418, baseType: !7, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3748, file: !90, line: 420, baseType: !7, size: 32, offset: 96)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3748, file: !90, line: 421, baseType: !7, size: 32, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3748, file: !90, line: 422, baseType: !7, size: 32, offset: 160)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3748, file: !90, line: 423, baseType: !7, size: 32, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3748, file: !90, line: 424, baseType: !7, size: 32, offset: 224)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3730, file: !90, line: 435, baseType: !3759, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!235, !738, !3666, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !90, line: 343, size: 960, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3763, file: !90, line: 344, baseType: !235, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3763, file: !90, line: 345, baseType: !563, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3763, file: !90, line: 346, baseType: !563, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3763, file: !90, line: 347, baseType: !563, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3763, file: !90, line: 348, baseType: !563, size: 64, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3763, file: !90, line: 349, baseType: !563, size: 64, offset: 320)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3763, file: !90, line: 350, baseType: !563, size: 64, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3763, file: !90, line: 351, baseType: !260, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3763, file: !90, line: 353, baseType: !260, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3763, file: !90, line: 354, baseType: !235, size: 32, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3763, file: !90, line: 355, baseType: !235, size: 32, offset: 608)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3763, file: !90, line: 356, baseType: !563, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3763, file: !90, line: 357, baseType: !563, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3763, file: !90, line: 358, baseType: !563, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3763, file: !90, line: 359, baseType: !260, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3763, file: !90, line: 360, baseType: !235, size: 32, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3730, file: !90, line: 436, baseType: !3782, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!235, !738, !3726, !3762}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3730, file: !90, line: 438, baseType: !3759, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3730, file: !90, line: 439, baseType: !3787, size: 64, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!235, !738, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !90, line: 409, size: 1408, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3791, file: !90, line: 410, baseType: !7, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3791, file: !90, line: 411, baseType: !3795, size: 1344, offset: 64)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3796, size: 1344, elements: !422)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !90, line: 395, size: 448, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3808}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3796, file: !90, line: 396, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3796, file: !90, line: 397, baseType: !7, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3796, file: !90, line: 399, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3796, file: !90, line: 400, baseType: !7, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3796, file: !90, line: 401, baseType: !7, size: 32, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3796, file: !90, line: 402, baseType: !7, size: 32, offset: 160)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3796, file: !90, line: 403, baseType: !7, size: 32, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3796, file: !90, line: 404, baseType: !565, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3796, file: !90, line: 405, baseType: !3807, size: 64, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !256, line: 126, baseType: !563)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3796, file: !90, line: 406, baseType: !3807, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3730, file: !90, line: 440, baseType: !3738, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !739, file: !96, line: 1426, baseType: !3811, size: 64, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3813)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !96, line: 49, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !739, file: !96, line: 1427, baseType: !232, size: 64, offset: 640)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !739, file: !96, line: 1428, baseType: !232, size: 64, offset: 704)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !739, file: !96, line: 1429, baseType: !232, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !739, file: !96, line: 1430, baseType: !526, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !739, file: !96, line: 1431, baseType: !966, size: 256, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !739, file: !96, line: 1432, baseType: !235, size: 32, offset: 1152)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !739, file: !96, line: 1433, baseType: !946, size: 32, offset: 1184)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !739, file: !96, line: 1437, baseType: !3822, size: 64, offset: 1216)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3825)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !96, line: 1437, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !739, file: !96, line: 1449, baseType: !3827, size: 64, offset: 1280)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !542, line: 34, size: 64, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3827, file: !542, line: 35, baseType: !545, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !739, file: !96, line: 1450, baseType: !265, size: 128, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !739, file: !96, line: 1451, baseType: !1162, size: 64, offset: 1472)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !739, file: !96, line: 1452, baseType: !1729, size: 64, offset: 1536)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !739, file: !96, line: 1453, baseType: !3834, size: 64, offset: 1600)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !96, line: 1453, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !739, file: !96, line: 1454, baseType: !781, size: 128, offset: 1664)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !739, file: !96, line: 1455, baseType: !7, size: 32, offset: 1792)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !739, file: !96, line: 1456, baseType: !3839, size: 2432, offset: 1856)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !90, line: 518, size: 2432, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3845, !3877}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3839, file: !90, line: 519, baseType: !7, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3839, file: !90, line: 520, baseType: !966, size: 256, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3839, file: !90, line: 521, baseType: !3844, size: 192, offset: 320)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 192, elements: !422)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3839, file: !90, line: 522, baseType: !3846, size: 1728, offset: 512)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3847, size: 1728, elements: !422)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !90, line: 222, size: 576, elements: !3848)
!3848 = !{!3849, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3847, file: !90, line: 223, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !90, line: 443, size: 256, elements: !3852)
!3852 = !{!3853, !3854, !3867, !3868}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3851, file: !90, line: 444, baseType: !235, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3851, file: !90, line: 445, baseType: !3855, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !90, line: 310, size: 512, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3857, file: !90, line: 311, baseType: !841, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3857, file: !90, line: 312, baseType: !841, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3857, file: !90, line: 313, baseType: !841, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3857, file: !90, line: 314, baseType: !841, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3857, file: !90, line: 315, baseType: !3651, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3857, file: !90, line: 316, baseType: !3651, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3857, file: !90, line: 317, baseType: !3651, size: 64, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3857, file: !90, line: 318, baseType: !3723, size: 64, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3851, file: !90, line: 446, baseType: !772, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3851, file: !90, line: 447, baseType: !3850, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3847, file: !90, line: 224, baseType: !235, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3847, file: !90, line: 226, baseType: !265, size: 128, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3847, file: !90, line: 227, baseType: !232, size: 64, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3847, file: !90, line: 228, baseType: !7, size: 32, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3847, file: !90, line: 229, baseType: !7, size: 32, offset: 352)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3847, file: !90, line: 230, baseType: !3687, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3847, file: !90, line: 231, baseType: !3687, size: 64, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3847, file: !90, line: 232, baseType: !241, size: 64, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3839, file: !90, line: 523, baseType: !3878, size: 192, offset: 2240)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3855, size: 192, elements: !422)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !739, file: !96, line: 1458, baseType: !3880, size: 2112, offset: 4288)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !96, line: 1410, size: 2112, elements: !3881)
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3880, file: !96, line: 1411, baseType: !235, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3880, file: !96, line: 1412, baseType: !1355, size: 128, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3880, file: !96, line: 1413, baseType: !3885, size: 1920, offset: 192)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3886, size: 1920, elements: !422)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3887, line: 12, size: 640, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3888 = !{!3889, !3897, !3898, !3903, !3904}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3886, file: !3887, line: 13, baseType: !3890, size: 320)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3891, line: 17, size: 320, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3890, file: !3891, line: 18, baseType: !235, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3890, file: !3891, line: 19, baseType: !235, size: 32, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3890, file: !3891, line: 20, baseType: !1355, size: 128, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3890, file: !3891, line: 22, baseType: !509, size: 128, align: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3886, file: !3887, line: 14, baseType: !1153, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3886, file: !3887, line: 15, baseType: !3899, size: 64, offset: 384)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3900, line: 16, size: 64, elements: !3901)
!3900 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3901 = !{!3902}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3899, file: !3900, line: 17, baseType: !2338, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3886, file: !3887, line: 16, baseType: !1355, size: 128, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3886, file: !3887, line: 17, baseType: !946, size: 32, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !739, file: !96, line: 1465, baseType: !241, size: 64, offset: 6400)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !739, file: !96, line: 1468, baseType: !559, size: 32, offset: 6464)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !739, file: !96, line: 1470, baseType: !679, size: 64, offset: 6528)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !739, file: !96, line: 1471, baseType: !679, size: 64, offset: 6592)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !739, file: !96, line: 1473, baseType: !560, size: 32, offset: 6656)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !739, file: !96, line: 1474, baseType: !3911, size: 64, offset: 6720)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !96, line: 603, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !739, file: !96, line: 1477, baseType: !1243, size: 256, offset: 6784)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !739, file: !96, line: 1478, baseType: !3915, size: 128, offset: 7040)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3916, line: 18, baseType: !3917)
!3916 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3916, line: 16, size: 128, elements: !3918)
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3917, file: !3916, line: 17, baseType: !3920, size: 128)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !1874)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !739, file: !96, line: 1480, baseType: !7, size: 32, offset: 7168)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !739, file: !96, line: 1481, baseType: !1376, size: 32, offset: 7200)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !739, file: !96, line: 1487, baseType: !879, size: 192, offset: 7232)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !739, file: !96, line: 1493, baseType: !354, size: 64, offset: 7424)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !739, file: !96, line: 1495, baseType: !3926, size: 64, offset: 7488)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !524, line: 135, size: 1024, align: 512, elements: !3929)
!3929 = !{!3930, !3934, !3935, !3942, !3948, !3952, !3956, !3960, !3961, !3965, !3969, !3974, !3978}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3928, file: !524, line: 136, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!235, !526, !7}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3928, file: !524, line: 137, baseType: !3931, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3928, file: !524, line: 138, baseType: !3936, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!235, !3939, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3928, file: !524, line: 139, baseType: !3943, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!235, !3939, !7, !354, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3928, file: !524, line: 141, baseType: !3949, size: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!235, !3939}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3928, file: !524, line: 142, baseType: !3953, size: 64, offset: 320)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!235, !526}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3928, file: !524, line: 143, baseType: !3957, size: 64, offset: 384)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !526}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3928, file: !524, line: 144, baseType: !3957, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3928, file: !524, line: 145, baseType: !3962, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !526, !570}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3928, file: !524, line: 146, baseType: !3966, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!325, !526, !325, !235}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3928, file: !524, line: 147, baseType: !3970, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!522, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3928, file: !524, line: 148, baseType: !3975, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!235, !688, !631}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3928, file: !524, line: 149, baseType: !3979, size: 64, offset: 768)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!526, !526, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !739, file: !96, line: 1500, baseType: !235, size: 32, offset: 7552)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !739, file: !96, line: 1502, baseType: !3986, size: 448, offset: 7616)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3635, line: 60, size: 448, elements: !3987)
!3987 = !{!3988, !3993, !3994, !3995, !3996, !3997, !3998}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3986, file: !3635, line: 61, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!232, !3992, !3633}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3986, file: !3635, line: 63, baseType: !3989, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3986, file: !3635, line: 66, baseType: !188, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3986, file: !3635, line: 67, baseType: !235, size: 32, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3986, file: !3635, line: 68, baseType: !7, size: 32, offset: 224)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3986, file: !3635, line: 71, baseType: !265, size: 128, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3986, file: !3635, line: 77, baseType: !3999, size: 64, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !739, file: !96, line: 1505, baseType: !253, size: 64, offset: 8064)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !739, file: !96, line: 1508, baseType: !253, size: 64, offset: 8128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !739, file: !96, line: 1511, baseType: !235, size: 32, offset: 8192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !739, file: !96, line: 1514, baseType: !2041, size: 32, offset: 8224)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !739, file: !96, line: 1517, baseType: !1231, size: 64, offset: 8256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !739, file: !96, line: 1518, baseType: !777, size: 64, offset: 8320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !739, file: !96, line: 1525, baseType: !2819, size: 64, offset: 8384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !739, file: !96, line: 1532, baseType: !4008, size: 64, offset: 8448)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4009, line: 52, size: 64, elements: !4010)
!4009 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4010 = !{!4011}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4008, file: !4009, line: 53, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4009, line: 40, size: 256, elements: !4014)
!4014 = !{!4015, !4016, !4021}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4013, file: !4009, line: 42, baseType: !381)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4013, file: !4009, line: 44, baseType: !4017, size: 192)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4009, line: 28, size: 192, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4017, file: !4009, line: 29, baseType: !265, size: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4017, file: !4009, line: 31, baseType: !188, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4013, file: !4009, line: 49, baseType: !188, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !739, file: !96, line: 1533, baseType: !4008, size: 64, offset: 8512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !739, file: !96, line: 1534, baseType: !509, size: 128, align: 64, offset: 8576)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !739, file: !96, line: 1535, baseType: !250, size: 256, offset: 8704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !739, file: !96, line: 1537, baseType: !879, size: 192, offset: 8960)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !739, file: !96, line: 1542, baseType: !235, size: 32, offset: 9152)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !739, file: !96, line: 1545, baseType: !381, offset: 9184)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !739, file: !96, line: 1546, baseType: !265, size: 128, offset: 9216)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !739, file: !96, line: 1548, baseType: !381, offset: 9344)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !739, file: !96, line: 1549, baseType: !265, size: 128, offset: 9344)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !571, file: !96, line: 624, baseType: !932, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !571, file: !96, line: 631, baseType: !232, size: 64, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !96, line: 639, baseType: !4034, size: 32, offset: 384)
!4034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !96, line: 639, size: 32, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4034, file: !96, line: 640, baseType: !1699, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4034, file: !96, line: 641, baseType: !7, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !571, file: !96, line: 643, baseType: !654, size: 32, offset: 416)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !571, file: !96, line: 644, baseType: !672, size: 64, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !571, file: !96, line: 645, baseType: !675, size: 128, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !571, file: !96, line: 646, baseType: !675, size: 128, offset: 640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !571, file: !96, line: 647, baseType: !675, size: 128, offset: 768)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !571, file: !96, line: 648, baseType: !381, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !571, file: !96, line: 649, baseType: !240, size: 16, offset: 896)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !571, file: !96, line: 650, baseType: !1178, size: 8, offset: 912)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !571, file: !96, line: 651, baseType: !1178, size: 8, offset: 920)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !571, file: !96, line: 652, baseType: !3807, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !571, file: !96, line: 659, baseType: !232, size: 64, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !571, file: !96, line: 660, baseType: !966, size: 256, offset: 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !571, file: !96, line: 662, baseType: !232, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !571, file: !96, line: 663, baseType: !232, size: 64, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !571, file: !96, line: 665, baseType: !781, size: 128, offset: 1472)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !571, file: !96, line: 666, baseType: !265, size: 128, offset: 1600)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !571, file: !96, line: 675, baseType: !265, size: 128, offset: 1728)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !571, file: !96, line: 676, baseType: !265, size: 128, offset: 1856)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !571, file: !96, line: 677, baseType: !265, size: 128, offset: 1984)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !96, line: 678, baseType: !4058, size: 128, offset: 2112)
!4058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !96, line: 678, size: 128, elements: !4059)
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4058, file: !96, line: 679, baseType: !777, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4058, file: !96, line: 680, baseType: !509, size: 128, align: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !571, file: !96, line: 682, baseType: !255, size: 64, offset: 2240)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !571, file: !96, line: 683, baseType: !255, size: 64, offset: 2304)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !571, file: !96, line: 684, baseType: !946, size: 32, offset: 2368)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !571, file: !96, line: 685, baseType: !946, size: 32, offset: 2400)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !571, file: !96, line: 686, baseType: !946, size: 32, offset: 2432)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !571, file: !96, line: 688, baseType: !946, size: 32, offset: 2464)
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !96, line: 690, baseType: !4069, size: 64, offset: 2496)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !96, line: 690, size: 64, elements: !4070)
!4070 = !{!4071, !4292}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4069, file: !96, line: 691, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !96, line: 1822, size: 2048, elements: !4075)
!4075 = !{!4076, !4077, !4081, !4085, !4089, !4090, !4091, !4095, !4108, !4109, !4116, !4120, !4121, !4125, !4126, !4130, !4135, !4136, !4140, !4144, !4252, !4256, !4257, !4261, !4262, !4266, !4270, !4275, !4279, !4283, !4287, !4291}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4074, file: !96, line: 1823, baseType: !772, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4074, file: !96, line: 1824, baseType: !4078, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!672, !496, !672, !235}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4074, file: !96, line: 1825, baseType: !4082, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!452, !496, !325, !466, !894}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4074, file: !96, line: 1826, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!452, !496, !354, !466, !894}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4074, file: !96, line: 1827, baseType: !1043, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4074, file: !96, line: 1828, baseType: !1043, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4074, file: !96, line: 1829, baseType: !4092, size: 64, offset: 384)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!235, !1046, !631}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4074, file: !96, line: 1830, baseType: !4096, size: 64, offset: 448)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!235, !496, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !96, line: 1776, size: 128, elements: !4101)
!4101 = !{!4102, !4107}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4100, file: !96, line: 1777, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !96, line: 1773, baseType: !4104)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!235, !4099, !354, !235, !672, !563, !7}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4100, file: !96, line: 1778, baseType: !672, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4074, file: !96, line: 1831, baseType: !4096, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4074, file: !96, line: 1832, baseType: !4110, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!4113, !496, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !237, line: 52, baseType: !7)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !758, line: 27, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4074, file: !96, line: 1833, baseType: !4117, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!188, !496, !7, !232}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4074, file: !96, line: 1834, baseType: !4117, size: 64, offset: 704)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4074, file: !96, line: 1835, baseType: !4122, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!235, !496, !2112}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4074, file: !96, line: 1836, baseType: !232, size: 64, offset: 832)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4074, file: !96, line: 1837, baseType: !4127, size: 64, offset: 896)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!235, !570, !496}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4074, file: !96, line: 1838, baseType: !4131, size: 64, offset: 960)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!235, !496, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !96, line: 1007, baseType: !241)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4074, file: !96, line: 1839, baseType: !4127, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4074, file: !96, line: 1840, baseType: !4137, size: 64, offset: 1088)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!235, !496, !672, !672, !235}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4074, file: !96, line: 1841, baseType: !4141, size: 64, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!235, !235, !496, !235}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4074, file: !96, line: 1842, baseType: !4145, size: 64, offset: 1216)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!235, !496, !235, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !96, line: 1062, size: 1664, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4182, !4183, !4184, !4197, !4228}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4149, file: !96, line: 1063, baseType: !4148, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4149, file: !96, line: 1064, baseType: !265, size: 128, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4149, file: !96, line: 1065, baseType: !781, size: 128, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4149, file: !96, line: 1066, baseType: !265, size: 128, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4149, file: !96, line: 1069, baseType: !265, size: 128, offset: 448)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4149, file: !96, line: 1072, baseType: !4134, size: 64, offset: 576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4149, file: !96, line: 1073, baseType: !7, size: 32, offset: 640)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4149, file: !96, line: 1074, baseType: !313, size: 8, offset: 672)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4149, file: !96, line: 1075, baseType: !7, size: 32, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4149, file: !96, line: 1076, baseType: !235, size: 32, offset: 736)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4149, file: !96, line: 1077, baseType: !1355, size: 128, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4149, file: !96, line: 1078, baseType: !496, size: 64, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4149, file: !96, line: 1079, baseType: !672, size: 64, offset: 960)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4149, file: !96, line: 1080, baseType: !672, size: 64, offset: 1024)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4149, file: !96, line: 1082, baseType: !4166, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !96, line: 1314, size: 320, elements: !4168)
!4168 = !{!4169, !4177, !4178, !4179, !4180, !4181}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4167, file: !96, line: 1315, baseType: !4170)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4171, line: 20, baseType: !4172)
!4171 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4171, line: 11, elements: !4173)
!4173 = !{!4174}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4172, file: !4171, line: 12, baseType: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !393, line: 33, baseType: !4176)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 31, elements: !395)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4167, file: !96, line: 1316, baseType: !235, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4167, file: !96, line: 1317, baseType: !235, size: 32, offset: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4167, file: !96, line: 1318, baseType: !4166, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4167, file: !96, line: 1319, baseType: !496, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4167, file: !96, line: 1320, baseType: !509, size: 128, align: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4149, file: !96, line: 1084, baseType: !232, size: 64, offset: 1152)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4149, file: !96, line: 1085, baseType: !232, size: 64, offset: 1216)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4149, file: !96, line: 1087, baseType: !4185, size: 64, offset: 1280)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4187)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !96, line: 1011, size: 128, elements: !4188)
!4188 = !{!4189, !4193}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4187, file: !96, line: 1012, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4148, !4148}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4187, file: !96, line: 1013, baseType: !4194, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4148}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4149, file: !96, line: 1088, baseType: !4198, size: 64, offset: 1344)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !96, line: 1016, size: 512, elements: !4201)
!4201 = !{!4202, !4206, !4210, !4211, !4215, !4219, !4223, !4227}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4200, file: !96, line: 1017, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!4134, !4134}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4200, file: !96, line: 1018, baseType: !4207, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !4134}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4200, file: !96, line: 1019, baseType: !4194, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4200, file: !96, line: 1020, baseType: !4212, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!235, !4148, !235}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4200, file: !96, line: 1021, baseType: !4216, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!631, !4148}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4200, file: !96, line: 1022, baseType: !4220, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!235, !4148, !235, !268}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4200, file: !96, line: 1023, baseType: !4224, size: 64, offset: 384)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !4148, !1020}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4200, file: !96, line: 1024, baseType: !4216, size: 64, offset: 448)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4149, file: !96, line: 1097, baseType: !4229, size: 256, offset: 1408)
!4229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4149, file: !96, line: 1089, size: 256, elements: !4230)
!4230 = !{!4231, !4240, !4246}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4229, file: !96, line: 1090, baseType: !4232, size: 256)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4233, line: 10, size: 256, elements: !4234)
!4233 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4234 = !{!4235, !4236, !4239}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4232, file: !4233, line: 11, baseType: !559, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4232, file: !4233, line: 12, baseType: !4237, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4233, line: 5, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4232, file: !4233, line: 13, baseType: !265, size: 128, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4229, file: !96, line: 1091, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4233, line: 17, size: 64, elements: !4242)
!4242 = !{!4243}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4241, file: !4233, line: 18, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4233, line: 16, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4229, file: !96, line: 1096, baseType: !4247, size: 192)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4229, file: !96, line: 1092, size: 192, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4247, file: !96, line: 1093, baseType: !265, size: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4247, file: !96, line: 1094, baseType: !235, size: 32, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4247, file: !96, line: 1095, baseType: !7, size: 32, offset: 160)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4074, file: !96, line: 1843, baseType: !4253, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!452, !496, !919, !235, !466, !894, !235}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4074, file: !96, line: 1844, baseType: !2232, size: 64, offset: 1344)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4074, file: !96, line: 1845, baseType: !4258, size: 64, offset: 1408)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!235, !235}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4074, file: !96, line: 1846, baseType: !4145, size: 64, offset: 1472)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4074, file: !96, line: 1847, baseType: !4263, size: 64, offset: 1536)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!452, !3339, !496, !894, !466, !7}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4074, file: !96, line: 1848, baseType: !4267, size: 64, offset: 1600)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!452, !496, !894, !3339, !466, !7}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4074, file: !96, line: 1849, baseType: !4271, size: 64, offset: 1664)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!235, !496, !188, !4274, !1020}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4074, file: !96, line: 1850, baseType: !4276, size: 64, offset: 1728)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!188, !496, !235, !672, !672}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4074, file: !96, line: 1852, baseType: !4280, size: 64, offset: 1792)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !867, !496}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4074, file: !96, line: 1856, baseType: !4284, size: 64, offset: 1856)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!452, !496, !672, !496, !672, !466, !7}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4074, file: !96, line: 1858, baseType: !4288, size: 64, offset: 1920)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!672, !496, !672, !496, !672, !672, !7}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4074, file: !96, line: 1861, baseType: !4137, size: 64, offset: 1984)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4069, file: !96, line: 692, baseType: !806, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !571, file: !96, line: 694, baseType: !4294, size: 64, offset: 2560)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !96, line: 1100, size: 384, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4295, file: !96, line: 1101, baseType: !381)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4295, file: !96, line: 1102, baseType: !265, size: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4295, file: !96, line: 1103, baseType: !265, size: 128, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4295, file: !96, line: 1104, baseType: !265, size: 128, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !571, file: !96, line: 695, baseType: !933, size: 1216, align: 64, offset: 2624)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !571, file: !96, line: 696, baseType: !265, size: 128, offset: 3840)
!4303 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !96, line: 697, baseType: !4304, size: 64, offset: 3968)
!4304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !96, line: 697, size: 64, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4311, !4312}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4304, file: !96, line: 698, baseType: !3339, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4304, file: !96, line: 699, baseType: !1162, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4304, file: !96, line: 700, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !96, line: 700, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4304, file: !96, line: 701, baseType: !325, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4304, file: !96, line: 702, baseType: !7, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !571, file: !96, line: 705, baseType: !560, size: 32, offset: 4032)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !571, file: !96, line: 708, baseType: !560, size: 32, offset: 4064)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !571, file: !96, line: 709, baseType: !3911, size: 64, offset: 4096)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !571, file: !96, line: 720, baseType: !241, size: 64, offset: 4160)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !527, file: !524, line: 98, baseType: !4318, size: 256, offset: 448)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !1244)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !527, file: !524, line: 101, baseType: !4320, size: 32, offset: 704)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4321, line: 25, size: 32, elements: !4322)
!4321 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4322 = !{!4323}
!4323 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !4321, line: 26, baseType: !4324, size: 32)
!4324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !4321, line: 26, size: 32, elements: !4325)
!4325 = !{!4326}
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4324, file: !4321, line: 30, baseType: !4327, size: 32)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4324, file: !4321, line: 30, size: 32, elements: !4328)
!4328 = !{!4329, !4330}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !4321, line: 31, baseType: !381)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4327, file: !4321, line: 32, baseType: !235, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !527, file: !524, line: 102, baseType: !3926, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !527, file: !524, line: 103, baseType: !738, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !527, file: !524, line: 104, baseType: !232, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !527, file: !524, line: 105, baseType: !241, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !524, line: 107, baseType: !4336, size: 128, offset: 1024)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !524, line: 107, size: 128, elements: !4337)
!4337 = !{!4338, !4339}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4336, file: !524, line: 108, baseType: !265, size: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4336, file: !524, line: 109, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !527, file: !524, line: 111, baseType: !265, size: 128, offset: 1152)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !527, file: !524, line: 112, baseType: !265, size: 128, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !527, file: !524, line: 120, baseType: !4344, size: 128, offset: 1408)
!4344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !524, line: 116, size: 128, elements: !4345)
!4345 = !{!4346, !4347, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4344, file: !524, line: 117, baseType: !781, size: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4344, file: !524, line: 118, baseType: !541, size: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4344, file: !524, line: 119, baseType: !509, size: 128, align: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !497, file: !96, line: 922, baseType: !570, size: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !497, file: !96, line: 923, baseType: !4072, size: 64, offset: 320)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !497, file: !96, line: 929, baseType: !381, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !497, file: !96, line: 930, baseType: !95, size: 32, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !497, file: !96, line: 931, baseType: !253, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !497, file: !96, line: 932, baseType: !7, size: 32, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !497, file: !96, line: 933, baseType: !1376, size: 32, offset: 544)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !497, file: !96, line: 934, baseType: !879, size: 192, offset: 576)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !497, file: !96, line: 935, baseType: !672, size: 64, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !497, file: !96, line: 936, baseType: !4359, size: 192, offset: 832)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !96, line: 885, size: 192, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4359, file: !96, line: 886, baseType: !4170)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4359, file: !96, line: 887, baseType: !2585, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4359, file: !96, line: 888, baseType: !104, size: 32, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4359, file: !96, line: 889, baseType: !576, size: 32, offset: 96)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4359, file: !96, line: 889, baseType: !576, size: 32, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4359, file: !96, line: 890, baseType: !235, size: 32, offset: 160)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !497, file: !96, line: 937, baseType: !2655, size: 64, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !497, file: !96, line: 938, baseType: !4369, size: 256, offset: 1088)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !96, line: 896, size: 256, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4369, file: !96, line: 897, baseType: !232, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4369, file: !96, line: 898, baseType: !7, size: 32, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4369, file: !96, line: 899, baseType: !7, size: 32, offset: 96)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4369, file: !96, line: 902, baseType: !7, size: 32, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4369, file: !96, line: 903, baseType: !7, size: 32, offset: 160)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4369, file: !96, line: 904, baseType: !672, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !497, file: !96, line: 940, baseType: !563, size: 64, offset: 1344)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !497, file: !96, line: 945, baseType: !241, size: 64, offset: 1408)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !497, file: !96, line: 949, baseType: !265, size: 128, offset: 1472)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !497, file: !96, line: 950, baseType: !265, size: 128, offset: 1600)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !497, file: !96, line: 952, baseType: !932, size: 64, offset: 1728)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !497, file: !96, line: 953, baseType: !2041, size: 32, offset: 1792)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !497, file: !96, line: 954, baseType: !2041, size: 32, offset: 1824)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !487, file: !446, line: 174, baseType: !493, size: 64, offset: 320)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !487, file: !446, line: 176, baseType: !4386, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!235, !496, !374, !486, !2112}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !475, file: !446, line: 90, baseType: !470, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !475, file: !446, line: 91, baseType: !4391, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !436, file: !369, line: 143, baseType: !4393, size: 64, offset: 256)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!4396, !374}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !113, line: 39, size: 384, elements: !4399)
!4399 = !{!4400, !4401, !4405, !4409, !4415, !4419}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4398, file: !113, line: 40, baseType: !112, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4398, file: !113, line: 41, baseType: !4402, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!631}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4398, file: !113, line: 42, baseType: !4406, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!241}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4398, file: !113, line: 43, baseType: !4410, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!3368, !4413}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !113, line: 19, flags: DIFlagFwdDecl)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4398, file: !113, line: 44, baseType: !4416, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!3368}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4398, file: !113, line: 45, baseType: !609, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !436, file: !369, line: 144, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!3368, !374}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !436, file: !369, line: 145, baseType: !4425, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !374, !2929, !2930}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !368, file: !369, line: 70, baseType: !4429, size: 64, offset: 384)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !758, line: 123, size: 1024, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4548, !4549, !4550, !4551, !4552}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4430, file: !758, line: 124, baseType: !946, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4430, file: !758, line: 125, baseType: !946, size: 32, offset: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4430, file: !758, line: 135, baseType: !4429, size: 64, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4430, file: !758, line: 136, baseType: !354, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4430, file: !758, line: 138, baseType: !959, size: 192, align: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4430, file: !758, line: 140, baseType: !3368, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4430, file: !758, line: 141, baseType: !7, size: 32, offset: 448)
!4439 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !758, line: 142, baseType: !4440, size: 256, offset: 512)
!4440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !758, line: 142, size: 256, elements: !4441)
!4441 = !{!4442, !4488, !4492}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4440, file: !758, line: 143, baseType: !4443, size: 192)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !758, line: 91, size: 192, elements: !4444)
!4444 = !{!4445, !4446, !4447}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4443, file: !758, line: 92, baseType: !232, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4443, file: !758, line: 94, baseType: !955, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4443, file: !758, line: 100, baseType: !4448, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !758, line: 180, size: 704, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4460, !4461, !4462, !4486, !4487}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4449, file: !758, line: 182, baseType: !4429, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4449, file: !758, line: 183, baseType: !7, size: 32, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4449, file: !758, line: 186, baseType: !4454, size: 192, offset: 128)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4455, line: 19, size: 192, elements: !4456)
!4455 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4456 = !{!4457, !4458, !4459}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4454, file: !4455, line: 20, baseType: !937, size: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4454, file: !4455, line: 21, baseType: !7, size: 32, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4454, file: !4455, line: 22, baseType: !7, size: 32, offset: 160)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4449, file: !758, line: 187, baseType: !559, size: 32, offset: 320)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4449, file: !758, line: 188, baseType: !559, size: 32, offset: 352)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4449, file: !758, line: 189, baseType: !4463, size: 64, offset: 384)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !758, line: 168, size: 320, elements: !4465)
!4465 = !{!4466, !4470, !4474, !4478, !4482}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4464, file: !758, line: 169, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!235, !867, !4448}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4464, file: !758, line: 171, baseType: !4471, size: 64, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!235, !4429, !354, !461}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4464, file: !758, line: 173, baseType: !4475, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!235, !4429}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4464, file: !758, line: 174, baseType: !4479, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!235, !4429, !4429, !354}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4464, file: !758, line: 176, baseType: !4483, size: 64, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!235, !867, !4429, !4448}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4449, file: !758, line: 192, baseType: !265, size: 128, offset: 448)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4449, file: !758, line: 194, baseType: !1355, size: 128, offset: 576)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4440, file: !758, line: 144, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !758, line: 103, size: 64, elements: !4490)
!4490 = !{!4491}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4489, file: !758, line: 104, baseType: !4429, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4440, file: !758, line: 145, baseType: !4493, size: 256)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !758, line: 107, size: 256, elements: !4494)
!4494 = !{!4495, !4543, !4546, !4547}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4493, file: !758, line: 108, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !758, line: 217, size: 768, elements: !4499)
!4499 = !{!4500, !4520, !4524, !4525, !4526, !4527, !4528, !4532, !4533, !4534, !4535, !4539}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4498, file: !758, line: 222, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!235, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !758, line: 197, size: 1088, elements: !4506)
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4505, file: !758, line: 199, baseType: !4429, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4505, file: !758, line: 200, baseType: !496, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4505, file: !758, line: 201, baseType: !867, size: 64, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4505, file: !758, line: 202, baseType: !241, size: 64, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4505, file: !758, line: 205, baseType: !879, size: 192, offset: 256)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4505, file: !758, line: 206, baseType: !879, size: 192, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4505, file: !758, line: 207, baseType: !235, size: 32, offset: 640)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4505, file: !758, line: 208, baseType: !265, size: 128, offset: 704)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4505, file: !758, line: 209, baseType: !325, size: 64, offset: 832)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4505, file: !758, line: 211, baseType: !466, size: 64, offset: 896)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4505, file: !758, line: 212, baseType: !631, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4505, file: !758, line: 213, baseType: !631, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4505, file: !758, line: 214, baseType: !2140, size: 64, offset: 1024)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4498, file: !758, line: 223, baseType: !4521, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !4504}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4498, file: !758, line: 236, baseType: !904, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4498, file: !758, line: 238, baseType: !891, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4498, file: !758, line: 239, baseType: !900, size: 64, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4498, file: !758, line: 240, baseType: !896, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4498, file: !758, line: 242, baseType: !4529, size: 64, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!452, !4504, !325, !466, !672}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4498, file: !758, line: 252, baseType: !466, size: 64, offset: 448)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4498, file: !758, line: 259, baseType: !631, size: 8, offset: 512)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4498, file: !758, line: 260, baseType: !4529, size: 64, offset: 576)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4498, file: !758, line: 263, baseType: !4536, size: 64, offset: 640)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!4113, !4504, !4114}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4498, file: !758, line: 266, baseType: !4540, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!235, !4504, !2112}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4493, file: !758, line: 109, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !758, line: 31, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4493, file: !758, line: 110, baseType: !672, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4493, file: !758, line: 111, baseType: !4429, size: 64, offset: 192)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4430, file: !758, line: 148, baseType: !241, size: 64, offset: 768)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4430, file: !758, line: 154, baseType: !563, size: 64, offset: 832)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4430, file: !758, line: 156, baseType: !240, size: 16, offset: 896)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4430, file: !758, line: 157, baseType: !461, size: 16, offset: 912)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4430, file: !758, line: 158, baseType: !4553, size: 64, offset: 960)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !758, line: 32, flags: DIFlagFwdDecl)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !368, file: !369, line: 71, baseType: !1738, size: 32, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !368, file: !369, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !368, file: !369, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !368, file: !369, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !368, file: !369, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !368, file: !369, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !119, line: 463, baseType: !364, size: 64, offset: 512)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !365, file: !119, line: 465, baseType: !4563, size: 64, offset: 576)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !119, line: 36, flags: DIFlagFwdDecl)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !365, file: !119, line: 467, baseType: !354, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !119, line: 468, baseType: !4567, size: 64, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !119, line: 87, size: 384, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4577, !4581, !4585}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4569, file: !119, line: 88, baseType: !354, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4569, file: !119, line: 89, baseType: !472, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4569, file: !119, line: 90, baseType: !4574, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!235, !364, !417}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4569, file: !119, line: 91, baseType: !4578, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!325, !364, !1444, !2929, !2930}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4569, file: !119, line: 93, baseType: !4582, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !364}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4569, file: !119, line: 95, baseType: !4586, size: 64, offset: 320)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !54, line: 278, size: 1472, elements: !4589)
!4589 = !{!4590, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4588, file: !54, line: 279, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!235, !364}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4588, file: !54, line: 280, baseType: !4582, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4588, file: !54, line: 281, baseType: !4591, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4588, file: !54, line: 282, baseType: !4591, size: 64, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4588, file: !54, line: 283, baseType: !4591, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4588, file: !54, line: 284, baseType: !4591, size: 64, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4588, file: !54, line: 285, baseType: !4591, size: 64, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4588, file: !54, line: 286, baseType: !4591, size: 64, offset: 448)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4588, file: !54, line: 287, baseType: !4591, size: 64, offset: 512)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4588, file: !54, line: 288, baseType: !4591, size: 64, offset: 576)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4588, file: !54, line: 289, baseType: !4591, size: 64, offset: 640)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4588, file: !54, line: 290, baseType: !4591, size: 64, offset: 704)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4588, file: !54, line: 291, baseType: !4591, size: 64, offset: 768)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4588, file: !54, line: 292, baseType: !4591, size: 64, offset: 832)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4588, file: !54, line: 293, baseType: !4591, size: 64, offset: 896)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4588, file: !54, line: 294, baseType: !4591, size: 64, offset: 960)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4588, file: !54, line: 295, baseType: !4591, size: 64, offset: 1024)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4588, file: !54, line: 296, baseType: !4591, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4588, file: !54, line: 297, baseType: !4591, size: 64, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4588, file: !54, line: 298, baseType: !4591, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4588, file: !54, line: 299, baseType: !4591, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4588, file: !54, line: 300, baseType: !4591, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4588, file: !54, line: 301, baseType: !4591, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !365, file: !119, line: 470, baseType: !357, size: 64, offset: 768)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !365, file: !119, line: 471, baseType: !4618, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !365, file: !119, line: 473, baseType: !241, size: 64, offset: 896)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !365, file: !119, line: 475, baseType: !241, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !365, file: !119, line: 480, baseType: !879, size: 192, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !365, file: !119, line: 484, baseType: !4623, size: 576, offset: 1216)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !119, line: 361, size: 576, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4623, file: !119, line: 362, baseType: !265, size: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4623, file: !119, line: 363, baseType: !265, size: 128, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4623, file: !119, line: 364, baseType: !265, size: 128, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4623, file: !119, line: 365, baseType: !265, size: 128, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4623, file: !119, line: 366, baseType: !631, size: 8, offset: 512)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4623, file: !119, line: 367, baseType: !118, size: 32, offset: 544)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !365, file: !119, line: 485, baseType: !4632, size: 2304, offset: 1792)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !54, line: 565, size: 2304, elements: !4633)
!4633 = !{!4634, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4722, !4726}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4632, file: !54, line: 566, baseType: !4635, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !54, line: 52, baseType: !4636)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !54, line: 50, size: 32, elements: !4637)
!4637 = !{!4638}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4636, file: !54, line: 51, baseType: !235, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4632, file: !54, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4632, file: !54, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4632, file: !54, line: 569, baseType: !631, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4632, file: !54, line: 570, baseType: !631, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4632, file: !54, line: 571, baseType: !631, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4632, file: !54, line: 572, baseType: !631, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4632, file: !54, line: 573, baseType: !631, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4632, file: !54, line: 574, baseType: !631, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4632, file: !54, line: 575, baseType: !631, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4632, file: !54, line: 576, baseType: !631, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4632, file: !54, line: 577, baseType: !559, size: 32, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4632, file: !54, line: 578, baseType: !381, offset: 96)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4632, file: !54, line: 580, baseType: !265, size: 128, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4632, file: !54, line: 581, baseType: !2610, size: 192, offset: 256)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4632, file: !54, line: 582, baseType: !4654, size: 64, offset: 448)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4656, line: 43, size: 1472, elements: !4657)
!4656 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4655, file: !4656, line: 44, baseType: !354, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4655, file: !4656, line: 45, baseType: !235, size: 32, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4655, file: !4656, line: 46, baseType: !265, size: 128, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4655, file: !4656, line: 47, baseType: !381, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4655, file: !4656, line: 48, baseType: !4663, size: 64, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !54, line: 533, flags: DIFlagFwdDecl)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4655, file: !4656, line: 49, baseType: !1788, size: 320, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4655, file: !4656, line: 50, baseType: !232, size: 64, offset: 640)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4655, file: !4656, line: 51, baseType: !2417, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4655, file: !4656, line: 52, baseType: !2417, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4655, file: !4656, line: 53, baseType: !2417, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4655, file: !4656, line: 54, baseType: !2417, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4655, file: !4656, line: 55, baseType: !2417, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4655, file: !4656, line: 56, baseType: !232, size: 64, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4655, file: !4656, line: 57, baseType: !232, size: 64, offset: 1088)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4655, file: !4656, line: 58, baseType: !232, size: 64, offset: 1152)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4655, file: !4656, line: 59, baseType: !232, size: 64, offset: 1216)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4655, file: !4656, line: 60, baseType: !232, size: 64, offset: 1280)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4655, file: !4656, line: 61, baseType: !364, size: 64, offset: 1344)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4655, file: !4656, line: 62, baseType: !631, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4655, file: !4656, line: 63, baseType: !631, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4632, file: !54, line: 583, baseType: !631, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4632, file: !54, line: 584, baseType: !631, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4632, file: !54, line: 585, baseType: !631, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4632, file: !54, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4632, file: !54, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4632, file: !54, line: 592, baseType: !2409, size: 512, offset: 576)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4632, file: !54, line: 593, baseType: !563, size: 64, offset: 1088)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4632, file: !54, line: 594, baseType: !250, size: 256, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4632, file: !54, line: 595, baseType: !1355, size: 128, offset: 1408)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4632, file: !54, line: 596, baseType: !4663, size: 64, offset: 1536)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4632, file: !54, line: 597, baseType: !946, size: 32, offset: 1600)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4632, file: !54, line: 598, baseType: !946, size: 32, offset: 1632)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4632, file: !54, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4632, file: !54, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4632, file: !54, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4632, file: !54, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4632, file: !54, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4632, file: !54, line: 604, baseType: !631, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4632, file: !54, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4632, file: !54, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4632, file: !54, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4632, file: !54, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4632, file: !54, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4632, file: !54, line: 610, baseType: !7, size: 32, offset: 1696)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4632, file: !54, line: 611, baseType: !125, size: 32, offset: 1728)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4632, file: !54, line: 612, baseType: !53, size: 32, offset: 1760)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4632, file: !54, line: 613, baseType: !235, size: 32, offset: 1792)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4632, file: !54, line: 614, baseType: !235, size: 32, offset: 1824)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4632, file: !54, line: 615, baseType: !563, size: 64, offset: 1856)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4632, file: !54, line: 616, baseType: !563, size: 64, offset: 1920)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4632, file: !54, line: 617, baseType: !563, size: 64, offset: 1984)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4632, file: !54, line: 618, baseType: !563, size: 64, offset: 2048)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4632, file: !54, line: 620, baseType: !4713, size: 64, offset: 2112)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !54, line: 536, size: 256, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4714, file: !54, line: 537, baseType: !381)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4714, file: !54, line: 538, baseType: !7, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4714, file: !54, line: 540, baseType: !265, size: 128, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4714, file: !54, line: 543, baseType: !4720, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !54, line: 534, flags: DIFlagFwdDecl)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4632, file: !54, line: 621, baseType: !4723, size: 64, offset: 2176)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !364, !2559}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4632, file: !54, line: 622, baseType: !4727, size: 64, offset: 2240)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 622, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !365, file: !119, line: 486, baseType: !4730, size: 64, offset: 4096)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !54, line: 642, size: 1792, elements: !4732)
!4732 = !{!4733, !4734, !4735, !4739, !4740, !4741}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4731, file: !54, line: 643, baseType: !4588, size: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4731, file: !54, line: 644, baseType: !4591, size: 64, offset: 1472)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4731, file: !54, line: 645, baseType: !4736, size: 64, offset: 1536)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !364, !631}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4731, file: !54, line: 646, baseType: !4591, size: 64, offset: 1600)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4731, file: !54, line: 647, baseType: !4582, size: 64, offset: 1664)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4731, file: !54, line: 648, baseType: !4582, size: 64, offset: 1728)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !365, file: !119, line: 493, baseType: !4743, size: 64, offset: 4160)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !119, line: 493, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !365, file: !119, line: 499, baseType: !265, size: 128, offset: 4224)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !365, file: !119, line: 502, baseType: !4747, size: 64, offset: 4352)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4749)
!4749 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !119, line: 502, flags: DIFlagFwdDecl)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !365, file: !119, line: 504, baseType: !4751, size: 64, offset: 4416)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !365, file: !119, line: 505, baseType: !563, size: 64, offset: 4480)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !365, file: !119, line: 510, baseType: !563, size: 64, offset: 4544)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !365, file: !119, line: 511, baseType: !4755, size: 64, offset: 4608)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4757)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !119, line: 511, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !365, file: !119, line: 513, baseType: !4759, size: 64, offset: 4672)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !119, line: 288, size: 128, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4760, file: !119, line: 293, baseType: !7, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4760, file: !119, line: 294, baseType: !232, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !365, file: !119, line: 515, baseType: !265, size: 128, offset: 4736)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !365, file: !119, line: 526, baseType: !4766, offset: 4864)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4767, line: 5, elements: !395)
!4767 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !365, file: !119, line: 528, baseType: !4769, size: 64, offset: 4864)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4771, line: 51, size: 1344, elements: !4772)
!4771 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4772 = !{!4773, !4774, !4776, !4777, !4867, !4876, !4877, !4878, !4879, !4880, !4881, !4882}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4770, file: !4771, line: 52, baseType: !354, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4770, file: !4771, line: 53, baseType: !4775, size: 32, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4771, line: 28, baseType: !559)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4770, file: !4771, line: 54, baseType: !354, size: 64, offset: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4770, file: !4771, line: 55, baseType: !4778, size: 192, offset: 192)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4779, line: 17, size: 192, elements: !4780)
!4779 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4780 = !{!4781, !4783, !4866}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4778, file: !4779, line: 18, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4778, file: !4779, line: 19, baseType: !4784, size: 64, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4779, line: 110, size: 1152, elements: !4787)
!4787 = !{!4788, !4792, !4796, !4802, !4808, !4812, !4816, !4821, !4825, !4826, !4830, !4834, !4838, !4849, !4850, !4851, !4852, !4862}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4786, file: !4779, line: 111, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!4782, !4782}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4786, file: !4779, line: 112, baseType: !4793, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !4782}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4786, file: !4779, line: 113, baseType: !4797, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!631, !4800}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4786, file: !4779, line: 114, baseType: !4803, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!3368, !4800, !4806}
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4786, file: !4779, line: 116, baseType: !4809, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!631, !4800, !354}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4786, file: !4779, line: 118, baseType: !4813, size: 64, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!235, !4800, !354, !7, !241, !466}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4786, file: !4779, line: 123, baseType: !4817, size: 64, offset: 384)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!235, !4800, !354, !4820, !466}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4786, file: !4779, line: 126, baseType: !4822, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!354, !4800}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4786, file: !4779, line: 127, baseType: !4822, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4786, file: !4779, line: 128, baseType: !4827, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!4782, !4800}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4786, file: !4779, line: 130, baseType: !4831, size: 64, offset: 640)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!4782, !4800, !4782}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4786, file: !4779, line: 133, baseType: !4835, size: 64, offset: 704)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!4782, !4800, !354}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4786, file: !4779, line: 135, baseType: !4839, size: 64, offset: 768)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!235, !4800, !354, !354, !7, !7, !4842}
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4779, line: 43, size: 640, elements: !4844)
!4844 = !{!4845, !4846, !4847}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4843, file: !4779, line: 44, baseType: !4782, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4843, file: !4779, line: 45, baseType: !7, size: 32, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4843, file: !4779, line: 46, baseType: !4848, size: 512, offset: 128)
!4848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 512, elements: !2447)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4786, file: !4779, line: 140, baseType: !4831, size: 64, offset: 832)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4786, file: !4779, line: 143, baseType: !4827, size: 64, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4786, file: !4779, line: 145, baseType: !4789, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4786, file: !4779, line: 146, baseType: !4853, size: 64, offset: 1024)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!235, !4800, !4856}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4779, line: 29, size: 128, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4857, file: !4779, line: 30, baseType: !7, size: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4857, file: !4779, line: 31, baseType: !7, size: 32, offset: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4857, file: !4779, line: 32, baseType: !4800, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4786, file: !4779, line: 148, baseType: !4863, size: 64, offset: 1088)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!235, !4800, !364}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4778, file: !4779, line: 20, baseType: !364, size: 64, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4770, file: !4771, line: 57, baseType: !4868, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4771, line: 31, size: 704, elements: !4870)
!4870 = !{!4871, !4872, !4873, !4874, !4875}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4869, file: !4771, line: 32, baseType: !325, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4869, file: !4771, line: 33, baseType: !235, size: 32, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4869, file: !4771, line: 34, baseType: !241, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4869, file: !4771, line: 35, baseType: !4868, size: 64, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4869, file: !4771, line: 43, baseType: !487, size: 448, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4770, file: !4771, line: 58, baseType: !4868, size: 64, offset: 448)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4770, file: !4771, line: 59, baseType: !4769, size: 64, offset: 512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4770, file: !4771, line: 60, baseType: !4769, size: 64, offset: 576)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4770, file: !4771, line: 61, baseType: !4769, size: 64, offset: 640)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4770, file: !4771, line: 63, baseType: !368, size: 512, offset: 704)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4770, file: !4771, line: 65, baseType: !232, size: 64, offset: 1216)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4770, file: !4771, line: 66, baseType: !241, size: 64, offset: 1280)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !365, file: !119, line: 529, baseType: !4782, size: 64, offset: 4928)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !365, file: !119, line: 534, baseType: !654, size: 32, offset: 4992)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !365, file: !119, line: 535, baseType: !559, size: 32, offset: 5024)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !365, file: !119, line: 537, baseType: !381, offset: 5056)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !365, file: !119, line: 538, baseType: !265, size: 128, offset: 5056)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !365, file: !119, line: 540, baseType: !4889, size: 64, offset: 5184)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4891, line: 54, size: 960, elements: !4892)
!4891 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4898, !4899, !4903, !4907, !4908, !4909, !4910, !4914, !4918, !4919}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4890, file: !4891, line: 55, baseType: !354, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4890, file: !4891, line: 56, baseType: !772, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4890, file: !4891, line: 58, baseType: !472, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4890, file: !4891, line: 59, baseType: !472, size: 64, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4890, file: !4891, line: 60, baseType: !374, size: 64, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4890, file: !4891, line: 62, baseType: !4574, size: 64, offset: 320)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4890, file: !4891, line: 63, baseType: !4900, size: 64, offset: 384)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!325, !364, !1444}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4890, file: !4891, line: 65, baseType: !4904, size: 64, offset: 448)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{null, !4889}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4890, file: !4891, line: 66, baseType: !4582, size: 64, offset: 512)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4890, file: !4891, line: 68, baseType: !4591, size: 64, offset: 576)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4890, file: !4891, line: 70, baseType: !4396, size: 64, offset: 640)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4890, file: !4891, line: 71, baseType: !4911, size: 64, offset: 704)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!3368, !364}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4890, file: !4891, line: 73, baseType: !4915, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{null, !364, !2929, !2930}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4890, file: !4891, line: 75, baseType: !4586, size: 64, offset: 832)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4890, file: !4891, line: 77, baseType: !4920, size: 64, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !359, line: 111, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !365, file: !119, line: 541, baseType: !472, size: 64, offset: 5248)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !365, file: !119, line: 543, baseType: !4582, size: 64, offset: 5312)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !365, file: !119, line: 544, baseType: !4925, size: 64, offset: 5376)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !119, line: 45, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !365, file: !119, line: 545, baseType: !4928, size: 64, offset: 5440)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !119, line: 47, flags: DIFlagFwdDecl)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !365, file: !119, line: 547, baseType: !631, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !365, file: !119, line: 548, baseType: !631, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !365, file: !119, line: 549, baseType: !631, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !365, file: !119, line: 550, baseType: !631, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !358, file: !359, line: 86, baseType: !472, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !358, file: !359, line: 87, baseType: !472, size: 64, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !358, file: !359, line: 88, baseType: !472, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !358, file: !359, line: 90, baseType: !4938, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!235, !364, !4618}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !358, file: !359, line: 91, baseType: !4574, size: 64, offset: 448)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !358, file: !359, line: 92, baseType: !4591, size: 64, offset: 512)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !358, file: !359, line: 93, baseType: !4582, size: 64, offset: 576)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !358, file: !359, line: 94, baseType: !4591, size: 64, offset: 640)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !358, file: !359, line: 95, baseType: !4582, size: 64, offset: 704)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !358, file: !359, line: 97, baseType: !4591, size: 64, offset: 768)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !358, file: !359, line: 98, baseType: !4591, size: 64, offset: 832)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !358, file: !359, line: 100, baseType: !4949, size: 64, offset: 896)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!235, !364, !4635}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !358, file: !359, line: 101, baseType: !4591, size: 64, offset: 960)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !358, file: !359, line: 103, baseType: !4591, size: 64, offset: 1024)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !358, file: !359, line: 105, baseType: !4591, size: 64, offset: 1088)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !358, file: !359, line: 107, baseType: !4586, size: 64, offset: 1152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !358, file: !359, line: 109, baseType: !4957, size: 64, offset: 1216)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4959)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !359, line: 109, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !358, file: !359, line: 111, baseType: !4920, size: 64, offset: 1280)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !358, file: !359, line: 112, baseType: !787, offset: 1344)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !358, file: !359, line: 114, baseType: !631, size: 8, offset: 1344)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !133, line: 99, baseType: !772, size: 64, offset: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !351, file: !133, line: 100, baseType: !354, size: 64, offset: 192)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !351, file: !133, line: 102, baseType: !631, size: 8, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !351, file: !133, line: 103, baseType: !132, size: 32, offset: 288)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !351, file: !133, line: 105, baseType: !4968, size: 64, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4970)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4971, line: 262, size: 1600, elements: !4972)
!4971 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4972 = !{!4973, !4974, !4975, !4979}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4970, file: !4971, line: 263, baseType: !1243, size: 256)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4970, file: !4971, line: 264, baseType: !1243, size: 256, offset: 256)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4970, file: !4971, line: 265, baseType: !4976, size: 1024, offset: 512)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1024, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4970, file: !4971, line: 266, baseType: !3368, size: 64, offset: 1536)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !351, file: !133, line: 106, baseType: !4981, size: 64, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4983)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4971, line: 210, size: 256, elements: !4984)
!4984 = !{!4985, !4989, !4991, !4992}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4983, file: !4971, line: 211, baseType: !4986, size: 72)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 72, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 9)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4983, file: !4971, line: 212, baseType: !4990, size: 64, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4971, line: 14, baseType: !232)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4983, file: !4971, line: 213, baseType: !560, size: 32, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4983, file: !4971, line: 214, baseType: !560, size: 32, offset: 224)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !351, file: !133, line: 108, baseType: !4591, size: 64, offset: 448)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !351, file: !133, line: 109, baseType: !4582, size: 64, offset: 512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !351, file: !133, line: 110, baseType: !4591, size: 64, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !351, file: !133, line: 111, baseType: !4582, size: 64, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !351, file: !133, line: 112, baseType: !4949, size: 64, offset: 704)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !351, file: !133, line: 113, baseType: !4591, size: 64, offset: 768)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !351, file: !133, line: 114, baseType: !472, size: 64, offset: 832)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !351, file: !133, line: 115, baseType: !472, size: 64, offset: 896)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !351, file: !133, line: 117, baseType: !4586, size: 64, offset: 960)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !351, file: !133, line: 118, baseType: !4582, size: 64, offset: 1024)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !351, file: !133, line: 120, baseType: !5004, size: 64, offset: 1088)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !133, line: 120, flags: DIFlagFwdDecl)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "udc_name", scope: !322, file: !247, line: 715, baseType: !325, size: 64, offset: 1728)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !322, file: !247, line: 716, baseType: !265, size: 128, offset: 1792)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "match_existing_only", scope: !322, file: !247, line: 717, baseType: !7, size: 1, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "udc_stop", scope: !282, file: !247, line: 324, baseType: !285, size: 64, offset: 576)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "udc_set_speed", scope: !282, file: !247, line: 325, baseType: !5011, size: 64, offset: 640)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{null, !288, !5}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "match_ep", scope: !282, file: !247, line: 326, baseType: !5015, size: 64, offset: 704)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!5018, !288, !5134, !5135}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep", file: !247, line: 226, size: 576, elements: !5020)
!5020 = !{!5021, !5022, !5023, !5105, !5106, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5019, file: !247, line: 227, baseType: !241, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5019, file: !247, line: 229, baseType: !354, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5019, file: !247, line: 230, baseType: !5024, size: 64, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5026)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_ops", file: !247, line: 136, size: 704, elements: !5027)
!5027 = !{!5028, !5044, !5048, !5052, !5089, !5090, !5094, !5098, !5102, !5103, !5104}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5026, file: !247, line: 137, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!235, !5018, !5032}
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5034)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !6, line: 407, size: 72, elements: !5035)
!5035 = !{!5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5034, file: !6, line: 408, baseType: !312, size: 8)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5034, file: !6, line: 409, baseType: !312, size: 8, offset: 8)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5034, file: !6, line: 411, baseType: !312, size: 8, offset: 16)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5034, file: !6, line: 412, baseType: !312, size: 8, offset: 24)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5034, file: !6, line: 413, baseType: !236, size: 16, offset: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5034, file: !6, line: 414, baseType: !312, size: 8, offset: 48)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5034, file: !6, line: 418, baseType: !312, size: 8, offset: 56)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5034, file: !6, line: 419, baseType: !312, size: 8, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5026, file: !247, line: 139, baseType: !5045, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!235, !5018}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !5026, file: !247, line: 140, baseType: !5049, size: 64, offset: 128)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !5018}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_request", scope: !5026, file: !247, line: 142, baseType: !5053, size: 64, offset: 192)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!5056, !5018, !942}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_request", file: !247, line: 100, size: 768, elements: !5058)
!5058 = !{!5059, !5060, !5061, !5062, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5084, !5085, !5086, !5087, !5088}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5057, file: !247, line: 101, baseType: !241, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5057, file: !247, line: 102, baseType: !7, size: 32, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5057, file: !247, line: 103, baseType: !2052, size: 64, offset: 128)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5057, file: !247, line: 105, baseType: !5063, size: 64, offset: 192)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5065, line: 11, size: 256, elements: !5066)
!5065 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!5066 = !{!5067, !5068, !5069, !5070, !5071}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5064, file: !5065, line: 12, baseType: !232, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5064, file: !5065, line: 13, baseType: !7, size: 32, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5064, file: !5065, line: 14, baseType: !7, size: 32, offset: 96)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5064, file: !5065, line: 15, baseType: !2052, size: 64, offset: 128)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5064, file: !5065, line: 17, baseType: !7, size: 32, offset: 192)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5057, file: !247, line: 106, baseType: !7, size: 32, offset: 256)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5057, file: !247, line: 107, baseType: !7, size: 32, offset: 288)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5057, file: !247, line: 109, baseType: !7, size: 16, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "is_last", scope: !5057, file: !247, line: 110, baseType: !7, size: 1, offset: 336, flags: DIFlagBitField, extraData: i64 320)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "no_interrupt", scope: !5057, file: !247, line: 111, baseType: !7, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !5057, file: !247, line: 112, baseType: !7, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "short_not_ok", scope: !5057, file: !247, line: 113, baseType: !7, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mapped", scope: !5057, file: !247, line: 114, baseType: !7, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5057, file: !247, line: 116, baseType: !5081, size: 64, offset: 384)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5018, !5056}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5057, file: !247, line: 118, baseType: !241, size: 64, offset: 448)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5057, file: !247, line: 119, baseType: !265, size: 128, offset: 512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "frame_number", scope: !5057, file: !247, line: 121, baseType: !7, size: 32, offset: 640)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5057, file: !247, line: 123, baseType: !235, size: 32, offset: 672)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "actual", scope: !5057, file: !247, line: 124, baseType: !7, size: 32, offset: 704)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !5026, file: !247, line: 144, baseType: !5081, size: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5026, file: !247, line: 146, baseType: !5091, size: 64, offset: 320)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!235, !5018, !5056, !942}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !5026, file: !247, line: 148, baseType: !5095, size: 64, offset: 384)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!235, !5018, !5056}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "set_halt", scope: !5026, file: !247, line: 150, baseType: !5099, size: 64, offset: 448)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!235, !5018, !235}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "set_wedge", scope: !5026, file: !247, line: 151, baseType: !5045, size: 64, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_status", scope: !5026, file: !247, line: 153, baseType: !5045, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_flush", scope: !5026, file: !247, line: 154, baseType: !5049, size: 64, offset: 640)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !5019, file: !247, line: 231, baseType: !265, size: 128, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !5019, file: !247, line: 232, baseType: !5107, size: 32, offset: 320)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_caps", file: !247, line: 166, size: 32, elements: !5108)
!5108 = !{!5109, !5110, !5111, !5112, !5113, !5114}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "type_control", scope: !5107, file: !247, line: 167, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "type_iso", scope: !5107, file: !247, line: 168, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "type_bulk", scope: !5107, file: !247, line: 169, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "type_int", scope: !5107, file: !247, line: 170, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "dir_in", scope: !5107, file: !247, line: 171, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "dir_out", scope: !5107, file: !247, line: 172, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !5019, file: !247, line: 233, baseType: !631, size: 8, offset: 352)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5019, file: !247, line: 234, baseType: !631, size: 8, offset: 360)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket", scope: !5019, file: !247, line: 235, baseType: !7, size: 16, offset: 368, flags: DIFlagBitField, extraData: i64 368)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket_limit", scope: !5019, file: !247, line: 236, baseType: !7, size: 16, offset: 384, flags: DIFlagBitField, extraData: i64 368)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "max_streams", scope: !5019, file: !247, line: 237, baseType: !7, size: 16, offset: 400, flags: DIFlagBitField, extraData: i64 368)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !5019, file: !247, line: 238, baseType: !7, size: 2, offset: 416, flags: DIFlagBitField, extraData: i64 368)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "maxburst", scope: !5019, file: !247, line: 239, baseType: !7, size: 5, offset: 418, flags: DIFlagBitField, extraData: i64 368)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5019, file: !247, line: 240, baseType: !1178, size: 8, offset: 424)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5019, file: !247, line: 241, baseType: !5032, size: 64, offset: 448)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "comp_desc", scope: !5019, file: !247, line: 242, baseType: !5125, size: 64, offset: 512)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5127)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !6, line: 689, size: 48, elements: !5128)
!5128 = !{!5129, !5130, !5131, !5132, !5133}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5127, file: !6, line: 690, baseType: !312, size: 8)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5127, file: !6, line: 691, baseType: !312, size: 8, offset: 8)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5127, file: !6, line: 693, baseType: !312, size: 8, offset: 16)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5127, file: !6, line: 694, baseType: !312, size: 8, offset: 24)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5127, file: !6, line: 695, baseType: !236, size: 16, offset: 32)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !246, file: !247, line: 405, baseType: !5018, size: 64, offset: 384)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !246, file: !247, line: 406, baseType: !265, size: 128, offset: 448)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !246, file: !247, line: 407, baseType: !5, size: 32, offset: 576)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !246, file: !247, line: 408, baseType: !5, size: 32, offset: 608)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !246, file: !247, line: 409, baseType: !138, size: 32, offset: 640)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !247, line: 410, baseType: !354, size: 64, offset: 704)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !246, file: !247, line: 411, baseType: !365, size: 5568, offset: 768)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "isoch_delay", scope: !246, file: !247, line: 412, baseType: !7, size: 32, offset: 6336)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "out_epnum", scope: !246, file: !247, line: 413, baseType: !7, size: 32, offset: 6368)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "in_epnum", scope: !246, file: !247, line: 414, baseType: !7, size: 32, offset: 6400)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mA", scope: !246, file: !247, line: 415, baseType: !7, size: 32, offset: 6432)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "otg_caps", scope: !246, file: !247, line: 416, baseType: !5148, size: 64, offset: 6464)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg_caps", file: !5150, line: 53, size: 48, elements: !5151)
!5150 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!5151 = !{!5152, !5153, !5154, !5155}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "otg_rev", scope: !5149, file: !5150, line: 54, baseType: !1058, size: 16)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_support", scope: !5149, file: !5150, line: 55, baseType: !631, size: 8, offset: 16)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "srp_support", scope: !5149, file: !5150, line: 56, baseType: !631, size: 8, offset: 24)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "adp_support", scope: !5149, file: !5150, line: 57, baseType: !631, size: 8, offset: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "sg_supported", scope: !246, file: !247, line: 418, baseType: !7, size: 1, offset: 6528, flags: DIFlagBitField, extraData: i64 6528)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "is_otg", scope: !246, file: !247, line: 419, baseType: !7, size: 1, offset: 6529, flags: DIFlagBitField, extraData: i64 6528)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "is_a_peripheral", scope: !246, file: !247, line: 420, baseType: !7, size: 1, offset: 6530, flags: DIFlagBitField, extraData: i64 6528)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !246, file: !247, line: 421, baseType: !7, size: 1, offset: 6531, flags: DIFlagBitField, extraData: i64 6528)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "a_hnp_support", scope: !246, file: !247, line: 422, baseType: !7, size: 1, offset: 6532, flags: DIFlagBitField, extraData: i64 6528)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "a_alt_hnp_support", scope: !246, file: !247, line: 423, baseType: !7, size: 1, offset: 6533, flags: DIFlagBitField, extraData: i64 6528)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_polling_support", scope: !246, file: !247, line: 424, baseType: !7, size: 1, offset: 6534, flags: DIFlagBitField, extraData: i64 6528)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "host_request_flag", scope: !246, file: !247, line: 425, baseType: !7, size: 1, offset: 6535, flags: DIFlagBitField, extraData: i64 6528)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_ep_out_aligned_size", scope: !246, file: !247, line: 426, baseType: !7, size: 1, offset: 6536, flags: DIFlagBitField, extraData: i64 6528)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_altset_not_supp", scope: !246, file: !247, line: 427, baseType: !7, size: 1, offset: 6537, flags: DIFlagBitField, extraData: i64 6528)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_stall_not_supp", scope: !246, file: !247, line: 428, baseType: !7, size: 1, offset: 6538, flags: DIFlagBitField, extraData: i64 6528)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_zlp_not_supp", scope: !246, file: !247, line: 429, baseType: !7, size: 1, offset: 6539, flags: DIFlagBitField, extraData: i64 6528)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_avoids_skb_reserve", scope: !246, file: !247, line: 430, baseType: !7, size: 1, offset: 6540, flags: DIFlagBitField, extraData: i64 6528)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "is_selfpowered", scope: !246, file: !247, line: 431, baseType: !7, size: 1, offset: 6541, flags: DIFlagBitField, extraData: i64 6528)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "deactivated", scope: !246, file: !247, line: 432, baseType: !7, size: 1, offset: 6542, flags: DIFlagBitField, extraData: i64 6528)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !246, file: !247, line: 433, baseType: !7, size: 1, offset: 6543, flags: DIFlagBitField, extraData: i64 6528)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !246, file: !247, line: 434, baseType: !7, size: 1, offset: 6544, flags: DIFlagBitField, extraData: i64 6528)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !246, file: !247, line: 435, baseType: !235, size: 32, offset: 6560)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "gadget_driver", scope: !243, file: !173, line: 406, baseType: !321, size: 64, offset: 6592)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !243, file: !173, line: 407, baseType: !364, size: 64, offset: 6656)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !243, file: !173, line: 409, baseType: !381, offset: 6720)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !243, file: !173, line: 412, baseType: !5178, size: 64, offset: 6720)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !150, line: 138, size: 6144, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5260, !5261, !5262, !5263, !5269}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5180, file: !150, line: 139, baseType: !365, size: 5568)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5180, file: !150, line: 140, baseType: !235, size: 32, offset: 5568)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5180, file: !150, line: 141, baseType: !5185, size: 64, offset: 5632)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !150, line: 72, size: 704, elements: !5188)
!5188 = !{!5189, !5193, !5194, !5195, !5196, !5200, !5249, !5253, !5254, !5255, !5259}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5187, file: !150, line: 73, baseType: !5190, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!235, !5179}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5187, file: !150, line: 74, baseType: !5190, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5187, file: !150, line: 75, baseType: !5190, size: 64, offset: 128)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5187, file: !150, line: 76, baseType: !5190, size: 64, offset: 192)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5187, file: !150, line: 77, baseType: !5197, size: 64, offset: 256)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!235, !5179, !149, !235}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5187, file: !150, line: 89, baseType: !5201, size: 64, offset: 320)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!235, !5179, !5204}
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !150, line: 55, size: 896, elements: !5206)
!5206 = !{!5207, !5236}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5205, file: !150, line: 56, baseType: !5208, size: 896)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5209, line: 15, size: 896, elements: !5210)
!5209 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5210 = !{!5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5208, file: !5209, line: 24, baseType: !7, size: 32)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5208, file: !5209, line: 36, baseType: !7, size: 32, offset: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5208, file: !5209, line: 47, baseType: !7, size: 32, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5208, file: !5209, line: 59, baseType: !7, size: 32, offset: 96)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5208, file: !5209, line: 71, baseType: !7, size: 32, offset: 128)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5208, file: !5209, line: 81, baseType: !7, size: 32, offset: 160)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5208, file: !5209, line: 92, baseType: !7, size: 32, offset: 192)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5208, file: !5209, line: 100, baseType: !7, size: 32, offset: 224)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5208, file: !5209, line: 110, baseType: !7, size: 32, offset: 256)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5208, file: !5209, line: 121, baseType: !7, size: 32, offset: 288)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5208, file: !5209, line: 131, baseType: !7, size: 32, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5208, file: !5209, line: 143, baseType: !7, size: 32, offset: 352)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5208, file: !5209, line: 155, baseType: !7, size: 32, offset: 384)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5208, file: !5209, line: 168, baseType: !7, size: 32, offset: 416)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5208, file: !5209, line: 180, baseType: !7, size: 32, offset: 448)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5208, file: !5209, line: 188, baseType: !7, size: 32, offset: 480)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5208, file: !5209, line: 198, baseType: !7, size: 32, offset: 512)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5208, file: !5209, line: 208, baseType: !7, size: 32, offset: 544)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5208, file: !5209, line: 219, baseType: !7, size: 32, offset: 576)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5208, file: !5209, line: 230, baseType: !7, size: 32, offset: 608)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5208, file: !5209, line: 242, baseType: !7, size: 32, offset: 640)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5208, file: !5209, line: 253, baseType: !7, size: 32, offset: 672)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5208, file: !5209, line: 260, baseType: !232, size: 64, offset: 704)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5208, file: !5209, line: 267, baseType: !232, size: 64, offset: 768)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5208, file: !5209, line: 275, baseType: !313, size: 8, offset: 832)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5205, file: !150, line: 57, baseType: !5237, size: 352)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5238, line: 17, size: 352, elements: !5239)
!5238 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5239 = !{!5240, !5241, !5242, !5244, !5245, !5246, !5247, !5248}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5237, file: !5238, line: 25, baseType: !7, size: 32)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5237, file: !5238, line: 35, baseType: !7, size: 32, offset: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5237, file: !5238, line: 46, baseType: !5243, size: 128, offset: 64)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1433)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5237, file: !5238, line: 56, baseType: !5243, size: 128, offset: 192)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5237, file: !5238, line: 64, baseType: !1178, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5237, file: !5238, line: 73, baseType: !1178, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5237, file: !5238, line: 82, baseType: !1178, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5237, file: !5238, line: 92, baseType: !1178, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5187, file: !150, line: 107, baseType: !5250, size: 64, offset: 384)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!235, !5179, !149, !235, !5204}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5187, file: !150, line: 109, baseType: !5190, size: 64, offset: 448)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5187, file: !150, line: 110, baseType: !5190, size: 64, offset: 512)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5187, file: !150, line: 111, baseType: !5256, size: 64, offset: 576)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !5179}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5187, file: !150, line: 112, baseType: !772, size: 64, offset: 640)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5180, file: !150, line: 142, baseType: !879, size: 192, offset: 5696)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5180, file: !150, line: 143, baseType: !235, size: 32, offset: 5888)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5180, file: !150, line: 144, baseType: !235, size: 32, offset: 5920)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5180, file: !150, line: 145, baseType: !5264, size: 96, offset: 5952)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !150, line: 121, size: 96, elements: !5265)
!5265 = !{!5266, !5267, !5268}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5264, file: !150, line: 122, baseType: !559, size: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5264, file: !150, line: 123, baseType: !559, size: 32, offset: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5264, file: !150, line: 124, baseType: !149, size: 32, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5180, file: !150, line: 146, baseType: !5270, size: 64, offset: 6080)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5272, line: 155, flags: DIFlagFwdDecl)
!5272 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "num_phys", scope: !243, file: !173, line: 413, baseType: !235, size: 32, offset: 6784)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "num_eps", scope: !243, file: !173, line: 415, baseType: !7, size: 32, offset: 6816)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "bdc_ep_array", scope: !243, file: !173, line: 420, baseType: !5276, size: 64, offset: 6848)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc_ep", file: !173, line: 350, size: 1472, elements: !5279)
!5279 = !{!5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5291, !5312}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "usb_ep", scope: !5278, file: !173, line: 351, baseType: !5019, size: 576)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5278, file: !173, line: 352, baseType: !265, size: 128, offset: 576)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bdc", scope: !5278, file: !173, line: 353, baseType: !242, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "ep_type", scope: !5278, file: !173, line: 354, baseType: !1178, size: 8, offset: 768)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5278, file: !173, line: 355, baseType: !1178, size: 8, offset: 776)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ep_num", scope: !5278, file: !173, line: 356, baseType: !1178, size: 8, offset: 784)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "comp_desc", scope: !5278, file: !173, line: 357, baseType: !5125, size: 64, offset: 832)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5278, file: !173, line: 358, baseType: !5032, size: 64, offset: 896)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5278, file: !173, line: 359, baseType: !7, size: 32, offset: 960)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5278, file: !173, line: 360, baseType: !5290, size: 160, offset: 992)
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 160, elements: !3442)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "bd_list", scope: !5278, file: !173, line: 362, baseType: !5292, size: 256, offset: 1152)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bd_list", file: !173, line: 301, size: 256, elements: !5293)
!5293 = !{!5294, !5307, !5308, !5309, !5310, !5311}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "bd_table_array", scope: !5292, file: !173, line: 303, baseType: !5295, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bd_table", file: !173, line: 289, size: 128, elements: !5298)
!5298 = !{!5299, !5306}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "start_bd", scope: !5297, file: !173, line: 290, baseType: !5300, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc_bd", file: !173, line: 279, size: 128, elements: !5302)
!5302 = !{!5303}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5301, file: !173, line: 280, baseType: !5304, size: 128)
!5304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5305, size: 128, elements: !1433)
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !237, line: 31, baseType: !560)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5297, file: !173, line: 292, baseType: !2052, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "num_tabs", scope: !5292, file: !173, line: 305, baseType: !235, size: 32, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "max_bdi", scope: !5292, file: !173, line: 307, baseType: !235, size: 32, offset: 96)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "eqp_bdi", scope: !5292, file: !173, line: 309, baseType: !235, size: 32, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "hwd_bdi", scope: !5292, file: !173, line: 311, baseType: !235, size: 32, offset: 160)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "num_bds_table", scope: !5292, file: !173, line: 313, baseType: !235, size: 32, offset: 192)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_next_sr", scope: !5278, file: !173, line: 367, baseType: !631, size: 8, offset: 1408)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !243, file: !173, line: 421, baseType: !241, size: 64, offset: 6912)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !243, file: !173, line: 422, baseType: !5315, size: 192, offset: 6976)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc_scratchpad", file: !173, line: 343, size: 192, elements: !5316)
!5316 = !{!5317, !5318, !5319}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "sp_dma", scope: !5315, file: !173, line: 344, baseType: !2052, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !5315, file: !173, line: 345, baseType: !241, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5315, file: !173, line: 346, baseType: !559, size: 32, offset: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "sp_buff_size", scope: !243, file: !173, line: 423, baseType: !559, size: 32, offset: 7168)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "srr", scope: !243, file: !173, line: 425, baseType: !5322, size: 192, offset: 7232)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srr", file: !173, line: 378, size: 192, elements: !5323)
!5323 = !{!5324, !5329, !5330, !5331}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sr_bds", scope: !5322, file: !173, line: 379, baseType: !5325, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc_sr", file: !173, line: 284, size: 128, elements: !5327)
!5327 = !{!5328}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5326, file: !173, line: 285, baseType: !5304, size: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "eqp_index", scope: !5322, file: !173, line: 380, baseType: !1058, size: 16, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "dqp_index", scope: !5322, file: !173, line: 381, baseType: !1058, size: 16, offset: 80)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5322, file: !173, line: 382, baseType: !2052, size: 64, offset: 128)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "setup_pkt", scope: !243, file: !173, line: 427, baseType: !339, size: 64, offset: 7424)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_req", scope: !243, file: !173, line: 428, baseType: !5334, size: 1216, offset: 7488)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdc_req", file: !173, line: 333, size: 1216, elements: !5335)
!5335 = !{!5336, !5337, !5338, !5339, !5347}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "usb_req", scope: !5334, file: !173, line: 334, baseType: !5057, size: 768)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5334, file: !173, line: 335, baseType: !265, size: 128, offset: 768)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5334, file: !173, line: 336, baseType: !5277, size: 64, offset: 896)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bd_xfr", scope: !5334, file: !173, line: 338, baseType: !5340, size: 192, offset: 960)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bd_transfer", file: !173, line: 319, size: 192, elements: !5341)
!5341 = !{!5342, !5344, !5345, !5346}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !5340, file: !173, line: 320, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "start_bdi", scope: !5340, file: !173, line: 322, baseType: !235, size: 32, offset: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "next_hwd_bdi", scope: !5340, file: !173, line: 324, baseType: !235, size: 32, offset: 96)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "num_bds", scope: !5340, file: !173, line: 326, baseType: !235, size: 32, offset: 128)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "epnum", scope: !5334, file: !173, line: 339, baseType: !235, size: 32, offset: 1152)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "status_req", scope: !243, file: !173, line: 429, baseType: !5334, size: 1216, offset: 8704)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_state", scope: !243, file: !173, line: 430, baseType: !172, size: 32, offset: 9920)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_status", scope: !243, file: !173, line: 431, baseType: !631, size: 8, offset: 9952)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "zlp_needed", scope: !243, file: !173, line: 432, baseType: !631, size: 8, offset: 9960)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "reinit", scope: !243, file: !173, line: 433, baseType: !631, size: 8, offset: 9968)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "pullup", scope: !243, file: !173, line: 434, baseType: !631, size: 8, offset: 9976)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "devstatus", scope: !243, file: !173, line: 436, baseType: !559, size: 32, offset: 9984)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !243, file: !173, line: 437, baseType: !235, size: 32, offset: 10016)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !243, file: !173, line: 438, baseType: !241, size: 64, offset: 10048)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr", scope: !243, file: !173, line: 439, baseType: !559, size: 32, offset: 10112)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "bd_table_pool", scope: !243, file: !173, line: 441, baseType: !5359, size: 64, offset: 10176)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !5361, line: 21, flags: DIFlagFwdDecl)
!5361 = !DIFile(filename: "./include/linux/dmapool.h", directory: "/home/lizy2001/genbc/linux")
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode", scope: !243, file: !173, line: 442, baseType: !1178, size: 8, offset: 10240)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "sr_handler", scope: !243, file: !173, line: 444, baseType: !5364, size: 128, offset: 10304)
!5364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5365, size: 128, elements: !1525)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{null, !242, !5325}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "sr_xsf_ep0", scope: !243, file: !173, line: 446, baseType: !5369, size: 192, offset: 10432)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5365, size: 192, elements: !422)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_response_buff", scope: !243, file: !173, line: 448, baseType: !5371, size: 48, offset: 10624)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 48, elements: !2731)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "func_wake_notify", scope: !243, file: !173, line: 454, baseType: !1784, size: 704, offset: 10688)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !243, file: !173, line: 455, baseType: !5374, size: 64, offset: 11392)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !173, line: 455, flags: DIFlagFwdDecl)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !268)
!5378 = !{!0, !5379}
!5379 = !DIGlobalVariableExpression(var: !5380, expr: !DIExpression())
!5380 = distinct !DIGlobalVariable(name: "bdc_gadget_ep0_desc", scope: !2, file: !3, line: 51, type: !5034, isLocal: true, isDefinition: true)
!5381 = !{!"rsp"}
!5382 = !{i32 7, !"Dwarf Version", i32 4}
!5383 = !{i32 2, !"Debug Info Version", i32 3}
!5384 = !{i32 1, !"wchar_size", i32 2}
!5385 = !{i32 1, !"Code Model", i32 2}
!5386 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5387 = distinct !DISubprogram(name: "bdc_sr_uspc", scope: !3, file: !3, line: 230, type: !5366, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5388 = !DILocalVariable(name: "bdc", arg: 1, scope: !5387, file: !3, line: 230, type: !242)
!5389 = !DILocation(line: 230, column: 30, scope: !5387)
!5390 = !DILocalVariable(name: "sreport", arg: 2, scope: !5387, file: !3, line: 230, type: !5325)
!5391 = !DILocation(line: 230, column: 50, scope: !5387)
!5392 = !DILocalVariable(name: "clear_flags", scope: !5387, file: !3, line: 232, type: !559)
!5393 = !DILocation(line: 232, column: 6, scope: !5387)
!5394 = !DILocalVariable(name: "uspc", scope: !5387, file: !3, line: 233, type: !559)
!5395 = !DILocation(line: 233, column: 6, scope: !5387)
!5396 = !DILocalVariable(name: "connected", scope: !5387, file: !3, line: 234, type: !631)
!5397 = !DILocation(line: 234, column: 7, scope: !5387)
!5398 = !DILocalVariable(name: "disconn", scope: !5387, file: !3, line: 235, type: !631)
!5399 = !DILocation(line: 235, column: 7, scope: !5387)
!5400 = !DILocation(line: 237, column: 19, scope: !5387)
!5401 = !DILocation(line: 237, column: 24, scope: !5387)
!5402 = !DILocation(line: 237, column: 9, scope: !5387)
!5403 = !DILocation(line: 237, column: 7, scope: !5387)
!5404 = !DILocation(line: 241, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 241, column: 6)
!5406 = !DILocation(line: 241, column: 11, scope: !5405)
!5407 = !DILocation(line: 241, column: 6, scope: !5387)
!5408 = !DILocation(line: 243, column: 8, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 243, column: 7)
!5410 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 241, column: 22)
!5411 = !DILocation(line: 243, column: 13, scope: !5409)
!5412 = !DILocation(line: 243, column: 24, scope: !5409)
!5413 = !DILocation(line: 243, column: 29, scope: !5409)
!5414 = !DILocation(line: 243, column: 34, scope: !5409)
!5415 = !DILocation(line: 243, column: 45, scope: !5409)
!5416 = !DILocation(line: 243, column: 50, scope: !5409)
!5417 = !DILocation(line: 243, column: 55, scope: !5409)
!5418 = !DILocation(line: 243, column: 7, scope: !5410)
!5419 = !DILocation(line: 244, column: 12, scope: !5409)
!5420 = !DILocation(line: 244, column: 4, scope: !5409)
!5421 = !DILocation(line: 245, column: 13, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 245, column: 12)
!5423 = !DILocation(line: 245, column: 18, scope: !5422)
!5424 = !DILocation(line: 245, column: 29, scope: !5422)
!5425 = !DILocation(line: 245, column: 33, scope: !5422)
!5426 = !DILocation(line: 245, column: 12, scope: !5409)
!5427 = !DILocation(line: 246, column: 14, scope: !5422)
!5428 = !DILocation(line: 246, column: 4, scope: !5422)
!5429 = !DILocation(line: 247, column: 15, scope: !5410)
!5430 = !DILocation(line: 248, column: 2, scope: !5410)
!5431 = !DILocation(line: 251, column: 7, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 251, column: 6)
!5433 = !DILocation(line: 251, column: 12, scope: !5432)
!5434 = !DILocation(line: 251, column: 23, scope: !5432)
!5435 = !DILocation(line: 251, column: 27, scope: !5432)
!5436 = !DILocation(line: 251, column: 32, scope: !5432)
!5437 = !DILocation(line: 251, column: 6, scope: !5387)
!5438 = !DILocation(line: 252, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 252, column: 7)
!5440 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 251, column: 44)
!5441 = !DILocation(line: 252, column: 12, scope: !5439)
!5442 = !DILocation(line: 252, column: 7, scope: !5440)
!5443 = !DILocation(line: 255, column: 17, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 252, column: 20)
!5445 = !DILocation(line: 255, column: 4, scope: !5444)
!5446 = !DILocation(line: 256, column: 26, scope: !5444)
!5447 = !DILocation(line: 256, column: 31, scope: !5444)
!5448 = !DILocation(line: 256, column: 4, scope: !5444)
!5449 = !DILocation(line: 257, column: 3, scope: !5444)
!5450 = !DILocation(line: 258, column: 15, scope: !5440)
!5451 = !DILocation(line: 259, column: 2, scope: !5440)
!5452 = !DILocation(line: 259, column: 14, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 259, column: 13)
!5454 = !DILocation(line: 259, column: 19, scope: !5453)
!5455 = !DILocation(line: 259, column: 30, scope: !5453)
!5456 = !DILocation(line: 259, column: 34, scope: !5453)
!5457 = !DILocation(line: 259, column: 39, scope: !5453)
!5458 = !DILocation(line: 259, column: 50, scope: !5453)
!5459 = !DILocation(line: 259, column: 53, scope: !5453)
!5460 = !DILocation(line: 259, column: 13, scope: !5432)
!5461 = !DILocation(line: 262, column: 25, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 259, column: 62)
!5463 = !DILocation(line: 262, column: 30, scope: !5462)
!5464 = !DILocation(line: 262, column: 3, scope: !5462)
!5465 = !DILocation(line: 263, column: 15, scope: !5462)
!5466 = !DILocation(line: 264, column: 2, scope: !5462)
!5467 = !DILocation(line: 264, column: 14, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 264, column: 13)
!5469 = !DILocation(line: 264, column: 19, scope: !5468)
!5470 = !DILocation(line: 264, column: 30, scope: !5468)
!5471 = !DILocation(line: 264, column: 34, scope: !5468)
!5472 = !DILocation(line: 264, column: 39, scope: !5468)
!5473 = !DILocation(line: 264, column: 13, scope: !5453)
!5474 = !DILocation(line: 266, column: 28, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 264, column: 51)
!5476 = !DILocation(line: 266, column: 33, scope: !5475)
!5477 = !DILocation(line: 266, column: 3, scope: !5475)
!5478 = !DILocation(line: 267, column: 15, scope: !5475)
!5479 = !DILocation(line: 268, column: 2, scope: !5475)
!5480 = !DILocation(line: 275, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 275, column: 6)
!5482 = !DILocation(line: 275, column: 6, scope: !5387)
!5483 = !DILocation(line: 278, column: 22, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 275, column: 17)
!5485 = !DILocation(line: 278, column: 3, scope: !5484)
!5486 = !DILocation(line: 279, column: 3, scope: !5484)
!5487 = !DILocation(line: 279, column: 8, scope: !5484)
!5488 = !DILocation(line: 279, column: 18, scope: !5484)
!5489 = !DILocation(line: 280, column: 2, scope: !5484)
!5490 = !DILocation(line: 281, column: 19, scope: !5387)
!5491 = !DILocation(line: 281, column: 24, scope: !5387)
!5492 = !DILocation(line: 281, column: 9, scope: !5387)
!5493 = !DILocation(line: 281, column: 7, scope: !5387)
!5494 = !DILocation(line: 282, column: 7, scope: !5387)
!5495 = !DILocation(line: 284, column: 13, scope: !5387)
!5496 = !DILocation(line: 284, column: 18, scope: !5387)
!5497 = !DILocation(line: 284, column: 34, scope: !5387)
!5498 = !DILocation(line: 284, column: 2, scope: !5387)
!5499 = !DILocation(line: 285, column: 1, scope: !5387)
!5500 = distinct !DISubprogram(name: "bdc_readl", scope: !173, file: !173, line: 458, type: !5501, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!559, !241, !559}
!5503 = !DILocalVariable(name: "base", arg: 1, scope: !5500, file: !173, line: 458, type: !241)
!5504 = !DILocation(line: 458, column: 43, scope: !5500)
!5505 = !DILocalVariable(name: "offset", arg: 2, scope: !5500, file: !173, line: 458, type: !559)
!5506 = !DILocation(line: 458, column: 53, scope: !5500)
!5507 = !DILocation(line: 460, column: 15, scope: !5500)
!5508 = !DILocation(line: 460, column: 22, scope: !5500)
!5509 = !DILocation(line: 460, column: 20, scope: !5500)
!5510 = !DILocation(line: 460, column: 9, scope: !5500)
!5511 = !DILocation(line: 460, column: 2, scope: !5500)
!5512 = distinct !DISubprogram(name: "bdc_uspc_disconnected", scope: !3, file: !3, line: 129, type: !5513, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !242, !631}
!5515 = !DILocalVariable(name: "lock", arg: 1, scope: !5516, file: !5517, line: 352, type: !2195)
!5516 = distinct !DISubprogram(name: "spin_lock", scope: !5517, file: !5517, line: 352, type: !5518, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5517 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5518 = !DISubroutineType(types: !5519)
!5519 = !{null, !2195}
!5520 = !DILocation(line: 352, column: 51, scope: !5516, inlinedAt: !5521)
!5521 = distinct !DILocation(line: 146, column: 3, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 143, column: 60)
!5523 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 143, column: 6)
!5524 = !DILocalVariable(name: "lock", arg: 1, scope: !5525, file: !5517, line: 392, type: !2195)
!5525 = distinct !DISubprogram(name: "spin_unlock", scope: !5517, file: !5517, line: 392, type: !5518, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5526 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5527)
!5527 = distinct !DILocation(line: 144, column: 3, scope: !5522)
!5528 = !DILocalVariable(name: "bdc", arg: 1, scope: !5512, file: !3, line: 129, type: !242)
!5529 = !DILocation(line: 129, column: 47, scope: !5512)
!5530 = !DILocalVariable(name: "reinit", arg: 2, scope: !5512, file: !3, line: 129, type: !631)
!5531 = !DILocation(line: 129, column: 57, scope: !5512)
!5532 = !DILocalVariable(name: "ep", scope: !5512, file: !3, line: 131, type: !5277)
!5533 = !DILocation(line: 131, column: 17, scope: !5512)
!5534 = !DILocation(line: 138, column: 7, scope: !5512)
!5535 = !DILocation(line: 138, column: 12, scope: !5512)
!5536 = !DILocation(line: 138, column: 5, scope: !5512)
!5537 = !DILocation(line: 139, column: 6, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 139, column: 6)
!5539 = !DILocation(line: 139, column: 9, scope: !5538)
!5540 = !DILocation(line: 139, column: 13, scope: !5538)
!5541 = !DILocation(line: 139, column: 17, scope: !5538)
!5542 = !DILocation(line: 139, column: 23, scope: !5538)
!5543 = !DILocation(line: 139, column: 6, scope: !5512)
!5544 = !DILocation(line: 141, column: 18, scope: !5538)
!5545 = !DILocation(line: 141, column: 3, scope: !5538)
!5546 = !DILocation(line: 143, column: 6, scope: !5523)
!5547 = !DILocation(line: 143, column: 11, scope: !5523)
!5548 = !DILocation(line: 143, column: 25, scope: !5523)
!5549 = !DILocation(line: 143, column: 28, scope: !5523)
!5550 = !DILocation(line: 143, column: 33, scope: !5523)
!5551 = !DILocation(line: 143, column: 48, scope: !5523)
!5552 = !DILocation(line: 143, column: 6, scope: !5512)
!5553 = !DILocation(line: 144, column: 16, scope: !5522)
!5554 = !DILocation(line: 144, column: 21, scope: !5522)
!5555 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5527)
!5556 = distinct !DILexicalBlock(scope: !5525, file: !5517, line: 394, column: 2)
!5557 = !{i32 -2145464536}
!5558 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5527)
!5559 = distinct !DILexicalBlock(scope: !5556, file: !5517, line: 394, column: 2)
!5560 = !DILocation(line: 145, column: 3, scope: !5522)
!5561 = !DILocation(line: 145, column: 8, scope: !5522)
!5562 = !DILocation(line: 145, column: 23, scope: !5522)
!5563 = !DILocation(line: 145, column: 35, scope: !5522)
!5564 = !DILocation(line: 145, column: 40, scope: !5522)
!5565 = !DILocation(line: 146, column: 14, scope: !5522)
!5566 = !DILocation(line: 146, column: 19, scope: !5522)
!5567 = !DILocation(line: 354, column: 2, scope: !5568, inlinedAt: !5521)
!5568 = distinct !DILexicalBlock(scope: !5516, file: !5517, line: 354, column: 2)
!5569 = !{i32 -2145466897}
!5570 = !DILocation(line: 354, column: 2, scope: !5571, inlinedAt: !5521)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !5517, line: 354, column: 2)
!5572 = !DILocation(line: 147, column: 2, scope: !5522)
!5573 = !DILocation(line: 149, column: 2, scope: !5512)
!5574 = !DILocation(line: 149, column: 7, scope: !5512)
!5575 = !DILocation(line: 149, column: 14, scope: !5512)
!5576 = !DILocation(line: 149, column: 20, scope: !5512)
!5577 = !DILocation(line: 150, column: 2, scope: !5512)
!5578 = !DILocation(line: 150, column: 7, scope: !5512)
!5579 = !DILocation(line: 150, column: 17, scope: !5512)
!5580 = !DILocation(line: 151, column: 2, scope: !5512)
!5581 = !DILocation(line: 151, column: 7, scope: !5512)
!5582 = !DILocation(line: 151, column: 22, scope: !5512)
!5583 = !DILocation(line: 152, column: 16, scope: !5512)
!5584 = !DILocation(line: 152, column: 2, scope: !5512)
!5585 = !DILocation(line: 152, column: 7, scope: !5512)
!5586 = !DILocation(line: 152, column: 14, scope: !5512)
!5587 = !DILocation(line: 153, column: 2, scope: !5512)
!5588 = !DILocation(line: 153, column: 7, scope: !5512)
!5589 = !DILocation(line: 153, column: 17, scope: !5512)
!5590 = !DILocation(line: 154, column: 1, scope: !5512)
!5591 = distinct !DISubprogram(name: "handle_link_state_change", scope: !3, file: !3, line: 179, type: !5592, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !242, !559}
!5594 = !DILocalVariable(name: "m", arg: 1, scope: !5595, file: !5596, line: 363, type: !1699)
!5595 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5596, file: !5596, line: 363, type: !5597, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5596 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!232, !1699}
!5599 = !DILocation(line: 363, column: 74, scope: !5595, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 211, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 199, column: 46)
!5602 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 199, column: 8)
!5603 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 197, column: 46)
!5604 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 197, column: 7)
!5605 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 185, column: 22)
!5606 = !DILocation(line: 352, column: 51, scope: !5516, inlinedAt: !5607)
!5607 = distinct !DILocation(line: 193, column: 4, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 188, column: 36)
!5609 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 187, column: 7)
!5610 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5611)
!5611 = distinct !DILocation(line: 190, column: 4, scope: !5608)
!5612 = !DILocalVariable(name: "bdc", arg: 1, scope: !5591, file: !3, line: 179, type: !242)
!5613 = !DILocation(line: 179, column: 50, scope: !5591)
!5614 = !DILocalVariable(name: "uspc", arg: 2, scope: !5591, file: !3, line: 179, type: !559)
!5615 = !DILocation(line: 179, column: 59, scope: !5591)
!5616 = !DILocalVariable(name: "link_state", scope: !5591, file: !3, line: 181, type: !559)
!5617 = !DILocation(line: 181, column: 6, scope: !5591)
!5618 = !DILocation(line: 184, column: 15, scope: !5591)
!5619 = !DILocation(line: 184, column: 13, scope: !5591)
!5620 = !DILocation(line: 185, column: 10, scope: !5591)
!5621 = !DILocation(line: 185, column: 2, scope: !5591)
!5622 = !DILocation(line: 187, column: 8, scope: !5609)
!5623 = !DILocation(line: 187, column: 13, scope: !5609)
!5624 = !DILocation(line: 187, column: 20, scope: !5609)
!5625 = !DILocation(line: 187, column: 26, scope: !5609)
!5626 = !DILocation(line: 187, column: 48, scope: !5609)
!5627 = !DILocation(line: 188, column: 7, scope: !5609)
!5628 = !DILocation(line: 188, column: 12, scope: !5609)
!5629 = !DILocation(line: 188, column: 27, scope: !5609)
!5630 = !DILocation(line: 187, column: 7, scope: !5605)
!5631 = !DILocation(line: 190, column: 17, scope: !5608)
!5632 = !DILocation(line: 190, column: 22, scope: !5608)
!5633 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5611)
!5634 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5611)
!5635 = !DILocation(line: 191, column: 4, scope: !5608)
!5636 = !DILocation(line: 191, column: 9, scope: !5608)
!5637 = !DILocation(line: 191, column: 19, scope: !5608)
!5638 = !DILocation(line: 192, column: 4, scope: !5608)
!5639 = !DILocation(line: 192, column: 9, scope: !5608)
!5640 = !DILocation(line: 192, column: 24, scope: !5608)
!5641 = !DILocation(line: 192, column: 33, scope: !5608)
!5642 = !DILocation(line: 192, column: 38, scope: !5608)
!5643 = !DILocation(line: 193, column: 15, scope: !5608)
!5644 = !DILocation(line: 193, column: 20, scope: !5608)
!5645 = !DILocation(line: 354, column: 2, scope: !5568, inlinedAt: !5607)
!5646 = !DILocation(line: 354, column: 2, scope: !5571, inlinedAt: !5607)
!5647 = !DILocation(line: 194, column: 3, scope: !5608)
!5648 = !DILocation(line: 195, column: 3, scope: !5605)
!5649 = !DILocation(line: 197, column: 7, scope: !5604)
!5650 = !DILocation(line: 197, column: 12, scope: !5604)
!5651 = !DILocation(line: 197, column: 22, scope: !5604)
!5652 = !DILocation(line: 197, column: 7, scope: !5605)
!5653 = !DILocation(line: 198, column: 4, scope: !5603)
!5654 = !DILocation(line: 198, column: 9, scope: !5603)
!5655 = !DILocation(line: 198, column: 19, scope: !5603)
!5656 = !DILocation(line: 199, column: 8, scope: !5602)
!5657 = !DILocation(line: 199, column: 13, scope: !5602)
!5658 = !DILocation(line: 199, column: 20, scope: !5602)
!5659 = !DILocation(line: 199, column: 26, scope: !5602)
!5660 = !DILocation(line: 199, column: 8, scope: !5603)
!5661 = !DILocation(line: 200, column: 26, scope: !5601)
!5662 = !DILocation(line: 200, column: 5, scope: !5601)
!5663 = !DILocation(line: 201, column: 5, scope: !5601)
!5664 = !DILocation(line: 201, column: 10, scope: !5601)
!5665 = !DILocation(line: 201, column: 20, scope: !5601)
!5666 = !DILocation(line: 210, column: 8, scope: !5601)
!5667 = !DILocation(line: 210, column: 13, scope: !5601)
!5668 = !DILocation(line: 365, column: 27, scope: !5669, inlinedAt: !5600)
!5669 = distinct !DILexicalBlock(scope: !5595, file: !5596, line: 365, column: 6)
!5670 = !DILocation(line: 365, column: 6, scope: !5669, inlinedAt: !5600)
!5671 = !DILocation(line: 365, column: 6, scope: !5595, inlinedAt: !5600)
!5672 = !DILocation(line: 366, column: 12, scope: !5673, inlinedAt: !5600)
!5673 = distinct !DILexicalBlock(scope: !5674, file: !5596, line: 366, column: 7)
!5674 = distinct !DILexicalBlock(scope: !5669, file: !5596, line: 365, column: 31)
!5675 = !DILocation(line: 366, column: 14, scope: !5673, inlinedAt: !5600)
!5676 = !DILocation(line: 366, column: 7, scope: !5674, inlinedAt: !5600)
!5677 = !DILocation(line: 367, column: 4, scope: !5673, inlinedAt: !5600)
!5678 = !DILocation(line: 368, column: 28, scope: !5674, inlinedAt: !5600)
!5679 = !DILocation(line: 368, column: 10, scope: !5674, inlinedAt: !5600)
!5680 = !DILocation(line: 368, column: 3, scope: !5674, inlinedAt: !5600)
!5681 = !DILocation(line: 370, column: 29, scope: !5682, inlinedAt: !5600)
!5682 = distinct !DILexicalBlock(scope: !5669, file: !5596, line: 369, column: 9)
!5683 = !DILocation(line: 370, column: 10, scope: !5682, inlinedAt: !5600)
!5684 = !DILocation(line: 370, column: 3, scope: !5682, inlinedAt: !5600)
!5685 = !DILocation(line: 372, column: 1, scope: !5595, inlinedAt: !5600)
!5686 = !DILocation(line: 209, column: 5, scope: !5601)
!5687 = !DILocation(line: 213, column: 4, scope: !5601)
!5688 = !DILocation(line: 214, column: 3, scope: !5603)
!5689 = !DILocation(line: 215, column: 3, scope: !5605)
!5690 = !DILocation(line: 219, column: 7, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 219, column: 7)
!5692 = !DILocation(line: 219, column: 12, scope: !5691)
!5693 = !DILocation(line: 219, column: 22, scope: !5691)
!5694 = !DILocation(line: 219, column: 7, scope: !5605)
!5695 = !DILocation(line: 220, column: 4, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 219, column: 42)
!5697 = !DILocation(line: 220, column: 9, scope: !5696)
!5698 = !DILocation(line: 220, column: 24, scope: !5696)
!5699 = !DILocation(line: 220, column: 32, scope: !5696)
!5700 = !DILocation(line: 220, column: 37, scope: !5696)
!5701 = !DILocation(line: 221, column: 4, scope: !5696)
!5702 = !DILocation(line: 221, column: 9, scope: !5696)
!5703 = !DILocation(line: 221, column: 19, scope: !5696)
!5704 = !DILocation(line: 222, column: 3, scope: !5696)
!5705 = !DILocation(line: 223, column: 3, scope: !5605)
!5706 = !DILocation(line: 226, column: 2, scope: !5605)
!5707 = !DILocation(line: 227, column: 1, scope: !5591)
!5708 = distinct !DISubprogram(name: "bdc_uspc_connected", scope: !3, file: !3, line: 73, type: !5709, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !242}
!5711 = !DILocalVariable(name: "bdc", arg: 1, scope: !5708, file: !3, line: 73, type: !242)
!5712 = !DILocation(line: 73, column: 44, scope: !5708)
!5713 = !DILocalVariable(name: "speed", scope: !5708, file: !3, line: 75, type: !559)
!5714 = !DILocation(line: 75, column: 6, scope: !5708)
!5715 = !DILocalVariable(name: "temp", scope: !5708, file: !3, line: 75, type: !559)
!5716 = !DILocation(line: 75, column: 13, scope: !5708)
!5717 = !DILocalVariable(name: "usppms", scope: !5708, file: !3, line: 76, type: !559)
!5718 = !DILocation(line: 76, column: 6, scope: !5708)
!5719 = !DILocalVariable(name: "ret", scope: !5708, file: !3, line: 77, type: !235)
!5720 = !DILocation(line: 77, column: 6, scope: !5708)
!5721 = !DILocation(line: 79, column: 19, scope: !5708)
!5722 = !DILocation(line: 79, column: 24, scope: !5708)
!5723 = !DILocation(line: 79, column: 9, scope: !5708)
!5724 = !DILocation(line: 79, column: 7, scope: !5708)
!5725 = !DILocation(line: 80, column: 10, scope: !5708)
!5726 = !DILocation(line: 80, column: 8, scope: !5708)
!5727 = !DILocation(line: 82, column: 10, scope: !5708)
!5728 = !DILocation(line: 82, column: 2, scope: !5708)
!5729 = !DILocation(line: 84, column: 38, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 82, column: 17)
!5731 = !DILocation(line: 86, column: 3, scope: !5730)
!5732 = !DILocation(line: 86, column: 8, scope: !5730)
!5733 = !DILocation(line: 86, column: 15, scope: !5730)
!5734 = !DILocation(line: 86, column: 20, scope: !5730)
!5735 = !DILocation(line: 86, column: 30, scope: !5730)
!5736 = !DILocation(line: 87, column: 3, scope: !5730)
!5737 = !DILocation(line: 87, column: 8, scope: !5730)
!5738 = !DILocation(line: 87, column: 15, scope: !5730)
!5739 = !DILocation(line: 87, column: 21, scope: !5730)
!5740 = !DILocation(line: 89, column: 23, scope: !5730)
!5741 = !DILocation(line: 89, column: 28, scope: !5730)
!5742 = !DILocation(line: 89, column: 13, scope: !5730)
!5743 = !DILocation(line: 89, column: 10, scope: !5730)
!5744 = !DILocation(line: 90, column: 10, scope: !5730)
!5745 = !DILocation(line: 91, column: 10, scope: !5730)
!5746 = !DILocation(line: 92, column: 10, scope: !5730)
!5747 = !DILocation(line: 93, column: 14, scope: !5730)
!5748 = !DILocation(line: 93, column: 19, scope: !5730)
!5749 = !DILocation(line: 93, column: 37, scope: !5730)
!5750 = !DILocation(line: 93, column: 3, scope: !5730)
!5751 = !DILocation(line: 94, column: 3, scope: !5730)
!5752 = !DILocation(line: 97, column: 38, scope: !5730)
!5753 = !DILocation(line: 98, column: 3, scope: !5730)
!5754 = !DILocation(line: 98, column: 8, scope: !5730)
!5755 = !DILocation(line: 98, column: 15, scope: !5730)
!5756 = !DILocation(line: 98, column: 20, scope: !5730)
!5757 = !DILocation(line: 98, column: 30, scope: !5730)
!5758 = !DILocation(line: 99, column: 3, scope: !5730)
!5759 = !DILocation(line: 99, column: 8, scope: !5730)
!5760 = !DILocation(line: 99, column: 15, scope: !5730)
!5761 = !DILocation(line: 99, column: 21, scope: !5730)
!5762 = !DILocation(line: 100, column: 3, scope: !5730)
!5763 = !DILocation(line: 103, column: 38, scope: !5730)
!5764 = !DILocation(line: 104, column: 3, scope: !5730)
!5765 = !DILocation(line: 104, column: 8, scope: !5730)
!5766 = !DILocation(line: 104, column: 15, scope: !5730)
!5767 = !DILocation(line: 104, column: 20, scope: !5730)
!5768 = !DILocation(line: 104, column: 30, scope: !5730)
!5769 = !DILocation(line: 105, column: 3, scope: !5730)
!5770 = !DILocation(line: 105, column: 8, scope: !5730)
!5771 = !DILocation(line: 105, column: 15, scope: !5730)
!5772 = !DILocation(line: 105, column: 21, scope: !5730)
!5773 = !DILocation(line: 106, column: 3, scope: !5730)
!5774 = !DILocation(line: 109, column: 38, scope: !5730)
!5775 = !DILocation(line: 110, column: 3, scope: !5730)
!5776 = !DILocation(line: 110, column: 8, scope: !5730)
!5777 = !DILocation(line: 110, column: 15, scope: !5730)
!5778 = !DILocation(line: 110, column: 20, scope: !5730)
!5779 = !DILocation(line: 110, column: 30, scope: !5730)
!5780 = !DILocation(line: 111, column: 3, scope: !5730)
!5781 = !DILocation(line: 111, column: 8, scope: !5730)
!5782 = !DILocation(line: 111, column: 15, scope: !5730)
!5783 = !DILocation(line: 111, column: 21, scope: !5730)
!5784 = !DILocation(line: 112, column: 3, scope: !5730)
!5785 = !DILocation(line: 114, column: 3, scope: !5730)
!5786 = !DILocation(line: 115, column: 3, scope: !5730)
!5787 = !DILocation(line: 119, column: 2, scope: !5708)
!5788 = !DILocation(line: 119, column: 7, scope: !5708)
!5789 = !DILocation(line: 119, column: 24, scope: !5708)
!5790 = !DILocation(line: 119, column: 29, scope: !5708)
!5791 = !DILocation(line: 120, column: 22, scope: !5708)
!5792 = !DILocation(line: 120, column: 27, scope: !5708)
!5793 = !DILocation(line: 120, column: 32, scope: !5708)
!5794 = !DILocation(line: 120, column: 8, scope: !5708)
!5795 = !DILocation(line: 120, column: 6, scope: !5708)
!5796 = !DILocation(line: 121, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 121, column: 6)
!5798 = !DILocation(line: 121, column: 6, scope: !5708)
!5799 = !DILocation(line: 122, column: 3, scope: !5797)
!5800 = !DILocation(line: 123, column: 2, scope: !5708)
!5801 = !DILocation(line: 123, column: 7, scope: !5708)
!5802 = !DILocation(line: 123, column: 24, scope: !5708)
!5803 = !DILocation(line: 123, column: 31, scope: !5708)
!5804 = !DILocation(line: 123, column: 36, scope: !5708)
!5805 = !DILocation(line: 124, column: 2, scope: !5708)
!5806 = !DILocation(line: 124, column: 7, scope: !5708)
!5807 = !DILocation(line: 124, column: 24, scope: !5708)
!5808 = !DILocation(line: 124, column: 30, scope: !5708)
!5809 = !DILocation(line: 125, column: 24, scope: !5708)
!5810 = !DILocation(line: 125, column: 29, scope: !5708)
!5811 = !DILocation(line: 125, column: 2, scope: !5708)
!5812 = !DILocation(line: 126, column: 1, scope: !5708)
!5813 = distinct !DISubprogram(name: "bdc_writel", scope: !173, file: !173, line: 463, type: !5814, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{null, !241, !559, !559}
!5816 = !DILocalVariable(name: "base", arg: 1, scope: !5813, file: !173, line: 463, type: !241)
!5817 = !DILocation(line: 463, column: 45, scope: !5813)
!5818 = !DILocalVariable(name: "offset", arg: 2, scope: !5813, file: !173, line: 463, type: !559)
!5819 = !DILocation(line: 463, column: 55, scope: !5813)
!5820 = !DILocalVariable(name: "value", arg: 3, scope: !5813, file: !173, line: 463, type: !559)
!5821 = !DILocation(line: 463, column: 67, scope: !5813)
!5822 = !DILocation(line: 465, column: 9, scope: !5813)
!5823 = !DILocation(line: 465, column: 16, scope: !5813)
!5824 = !DILocation(line: 465, column: 23, scope: !5813)
!5825 = !DILocation(line: 465, column: 21, scope: !5813)
!5826 = !DILocation(line: 465, column: 2, scope: !5813)
!5827 = !DILocation(line: 466, column: 1, scope: !5813)
!5828 = distinct !DISubprogram(name: "bdc_udc_init", scope: !3, file: !3, line: 517, type: !5829, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!235, !242}
!5831 = !DILocalVariable(name: "bdc", arg: 1, scope: !5828, file: !3, line: 517, type: !242)
!5832 = !DILocation(line: 517, column: 30, scope: !5828)
!5833 = !DILocalVariable(name: "temp", scope: !5828, file: !3, line: 519, type: !559)
!5834 = !DILocation(line: 519, column: 6, scope: !5828)
!5835 = !DILocalVariable(name: "ret", scope: !5828, file: !3, line: 520, type: !235)
!5836 = !DILocation(line: 520, column: 6, scope: !5828)
!5837 = !DILocation(line: 523, column: 2, scope: !5828)
!5838 = !DILocation(line: 523, column: 7, scope: !5828)
!5839 = !DILocation(line: 523, column: 14, scope: !5828)
!5840 = !DILocation(line: 523, column: 18, scope: !5828)
!5841 = !DILocation(line: 524, column: 2, scope: !5828)
!5842 = !DILocation(line: 524, column: 7, scope: !5828)
!5843 = !DILocation(line: 524, column: 14, scope: !5828)
!5844 = !DILocation(line: 524, column: 24, scope: !5828)
!5845 = !DILocation(line: 525, column: 2, scope: !5828)
!5846 = !DILocation(line: 525, column: 7, scope: !5828)
!5847 = !DILocation(line: 525, column: 14, scope: !5828)
!5848 = !DILocation(line: 525, column: 20, scope: !5828)
!5849 = !DILocation(line: 526, column: 27, scope: !5828)
!5850 = !DILocation(line: 526, column: 32, scope: !5828)
!5851 = !DILocation(line: 526, column: 2, scope: !5828)
!5852 = !DILocation(line: 526, column: 7, scope: !5828)
!5853 = !DILocation(line: 526, column: 14, scope: !5828)
!5854 = !DILocation(line: 526, column: 18, scope: !5828)
!5855 = !DILocation(line: 526, column: 25, scope: !5828)
!5856 = !DILocation(line: 528, column: 2, scope: !5828)
!5857 = !DILocation(line: 528, column: 7, scope: !5828)
!5858 = !DILocation(line: 528, column: 14, scope: !5828)
!5859 = !DILocation(line: 528, column: 27, scope: !5828)
!5860 = !DILocation(line: 531, column: 2, scope: !5828)
!5861 = !DILocation(line: 531, column: 7, scope: !5828)
!5862 = !DILocation(line: 531, column: 14, scope: !5828)
!5863 = !DILocation(line: 531, column: 19, scope: !5828)
!5864 = !DILocation(line: 532, column: 25, scope: !5828)
!5865 = !DILocation(line: 532, column: 30, scope: !5828)
!5866 = !DILocation(line: 532, column: 35, scope: !5828)
!5867 = !DILocation(line: 532, column: 40, scope: !5828)
!5868 = !DILocation(line: 533, column: 34, scope: !5828)
!5869 = !DILocation(line: 532, column: 8, scope: !5828)
!5870 = !DILocation(line: 532, column: 6, scope: !5828)
!5871 = !DILocation(line: 534, column: 6, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 534, column: 6)
!5873 = !DILocation(line: 534, column: 6, scope: !5828)
!5874 = !DILocation(line: 535, column: 3, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 534, column: 11)
!5876 = !DILocation(line: 538, column: 10, scope: !5875)
!5877 = !DILocation(line: 538, column: 3, scope: !5875)
!5878 = !DILocation(line: 541, column: 20, scope: !5828)
!5879 = !DILocation(line: 541, column: 8, scope: !5828)
!5880 = !DILocation(line: 541, column: 6, scope: !5828)
!5881 = !DILocation(line: 542, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 542, column: 6)
!5883 = !DILocation(line: 542, column: 6, scope: !5828)
!5884 = !DILocation(line: 543, column: 3, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 542, column: 11)
!5886 = !DILocation(line: 544, column: 10, scope: !5885)
!5887 = !DILocation(line: 544, column: 3, scope: !5885)
!5888 = !DILocation(line: 547, column: 27, scope: !5828)
!5889 = !DILocation(line: 547, column: 32, scope: !5828)
!5890 = !DILocation(line: 547, column: 38, scope: !5828)
!5891 = !DILocation(line: 547, column: 43, scope: !5828)
!5892 = !DILocation(line: 547, column: 8, scope: !5828)
!5893 = !DILocation(line: 547, column: 6, scope: !5828)
!5894 = !DILocation(line: 548, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 548, column: 6)
!5896 = !DILocation(line: 548, column: 6, scope: !5828)
!5897 = !DILocation(line: 549, column: 3, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 548, column: 11)
!5899 = !DILocation(line: 550, column: 3, scope: !5898)
!5900 = !DILocation(line: 552, column: 24, scope: !5828)
!5901 = !DILocation(line: 552, column: 29, scope: !5828)
!5902 = !DILocation(line: 552, column: 2, scope: !5828)
!5903 = !DILocation(line: 553, column: 2, scope: !5828)
!5904 = !DILocation(line: 553, column: 7, scope: !5828)
!5905 = !DILocation(line: 553, column: 24, scope: !5828)
!5906 = !DILocation(line: 553, column: 29, scope: !5828)
!5907 = !DILocation(line: 558, column: 22, scope: !5828)
!5908 = !DILocation(line: 558, column: 27, scope: !5828)
!5909 = !DILocation(line: 558, column: 8, scope: !5828)
!5910 = !DILocation(line: 558, column: 6, scope: !5828)
!5911 = !DILocation(line: 559, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 559, column: 6)
!5913 = !DILocation(line: 559, column: 6, scope: !5828)
!5914 = !DILocation(line: 560, column: 3, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 559, column: 11)
!5916 = !DILocation(line: 562, column: 3, scope: !5915)
!5917 = !DILocation(line: 564, column: 2, scope: !5828)
!5918 = !DILocation(line: 564, column: 2, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 564, column: 2)
!5920 = !DILocation(line: 564, column: 2, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 564, column: 2)
!5922 = !DILocation(line: 566, column: 19, scope: !5828)
!5923 = !DILocation(line: 566, column: 24, scope: !5828)
!5924 = !DILocation(line: 566, column: 9, scope: !5828)
!5925 = !DILocation(line: 566, column: 7, scope: !5828)
!5926 = !DILocation(line: 567, column: 7, scope: !5828)
!5927 = !DILocation(line: 568, column: 13, scope: !5828)
!5928 = !DILocation(line: 568, column: 18, scope: !5828)
!5929 = !DILocation(line: 568, column: 35, scope: !5828)
!5930 = !DILocation(line: 568, column: 2, scope: !5828)
!5931 = !DILocation(line: 569, column: 2, scope: !5828)
!5932 = !DILabel(scope: !5828, name: "err1", file: !3, line: 570)
!5933 = !DILocation(line: 570, column: 1, scope: !5828)
!5934 = !DILocation(line: 571, column: 22, scope: !5828)
!5935 = !DILocation(line: 571, column: 27, scope: !5828)
!5936 = !DILocation(line: 571, column: 2, scope: !5828)
!5937 = !DILabel(scope: !5828, name: "err0", file: !3, line: 572)
!5938 = !DILocation(line: 572, column: 1, scope: !5828)
!5939 = !DILocation(line: 573, column: 14, scope: !5828)
!5940 = !DILocation(line: 573, column: 2, scope: !5828)
!5941 = !DILocation(line: 575, column: 9, scope: !5828)
!5942 = !DILocation(line: 575, column: 2, scope: !5828)
!5943 = !DILocation(line: 576, column: 1, scope: !5828)
!5944 = distinct !DISubprogram(name: "devm_request_irq", scope: !5945, file: !5945, line: 203, type: !5946, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5945 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!235, !364, !7, !5948, !232, !354, !241}
!5948 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !5945, line: 92, baseType: !5949)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!5952, !235, !241}
!5952 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !226, line: 17, baseType: !225)
!5953 = !DILocalVariable(name: "dev", arg: 1, scope: !5944, file: !5945, line: 203, type: !364)
!5954 = !DILocation(line: 203, column: 33, scope: !5944)
!5955 = !DILocalVariable(name: "irq", arg: 2, scope: !5944, file: !5945, line: 203, type: !7)
!5956 = !DILocation(line: 203, column: 51, scope: !5944)
!5957 = !DILocalVariable(name: "handler", arg: 3, scope: !5944, file: !5945, line: 203, type: !5948)
!5958 = !DILocation(line: 203, column: 70, scope: !5944)
!5959 = !DILocalVariable(name: "irqflags", arg: 4, scope: !5944, file: !5945, line: 204, type: !232)
!5960 = !DILocation(line: 204, column: 18, scope: !5944)
!5961 = !DILocalVariable(name: "devname", arg: 5, scope: !5944, file: !5945, line: 204, type: !354)
!5962 = !DILocation(line: 204, column: 40, scope: !5944)
!5963 = !DILocalVariable(name: "dev_id", arg: 6, scope: !5944, file: !5945, line: 204, type: !241)
!5964 = !DILocation(line: 204, column: 55, scope: !5944)
!5965 = !DILocation(line: 206, column: 35, scope: !5944)
!5966 = !DILocation(line: 206, column: 40, scope: !5944)
!5967 = !DILocation(line: 206, column: 45, scope: !5944)
!5968 = !DILocation(line: 206, column: 60, scope: !5944)
!5969 = !DILocation(line: 207, column: 7, scope: !5944)
!5970 = !DILocation(line: 207, column: 16, scope: !5944)
!5971 = !DILocation(line: 206, column: 9, scope: !5944)
!5972 = !DILocation(line: 206, column: 2, scope: !5944)
!5973 = distinct !DISubprogram(name: "bdc_udc_interrupt", scope: !3, file: !3, line: 288, type: !5950, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!5974 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5975)
!5975 = distinct !DILocation(line: 356, column: 2, scope: !5973)
!5976 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5977)
!5977 = distinct !DILocation(line: 318, column: 3, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 316, column: 30)
!5979 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 316, column: 6)
!5980 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5981)
!5981 = distinct !DILocation(line: 306, column: 3, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 304, column: 31)
!5983 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 304, column: 6)
!5984 = !DILocation(line: 392, column: 53, scope: !5525, inlinedAt: !5985)
!5985 = distinct !DILocation(line: 299, column: 3, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 298, column: 27)
!5987 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 298, column: 6)
!5988 = !DILocation(line: 352, column: 51, scope: !5516, inlinedAt: !5989)
!5989 = distinct !DILocation(line: 296, column: 2, scope: !5973)
!5990 = !DILocalVariable(name: "irq", arg: 1, scope: !5973, file: !3, line: 288, type: !235)
!5991 = !DILocation(line: 288, column: 42, scope: !5973)
!5992 = !DILocalVariable(name: "_bdc", arg: 2, scope: !5973, file: !3, line: 288, type: !241)
!5993 = !DILocation(line: 288, column: 53, scope: !5973)
!5994 = !DILocalVariable(name: "eqp_index", scope: !5973, file: !3, line: 290, type: !559)
!5995 = !DILocation(line: 290, column: 6, scope: !5973)
!5996 = !DILocalVariable(name: "dqp_index", scope: !5973, file: !3, line: 290, type: !559)
!5997 = !DILocation(line: 290, column: 17, scope: !5973)
!5998 = !DILocalVariable(name: "sr_type", scope: !5973, file: !3, line: 290, type: !559)
!5999 = !DILocation(line: 290, column: 28, scope: !5973)
!6000 = !DILocalVariable(name: "srr_int", scope: !5973, file: !3, line: 290, type: !559)
!6001 = !DILocation(line: 290, column: 37, scope: !5973)
!6002 = !DILocalVariable(name: "sreport", scope: !5973, file: !3, line: 291, type: !5325)
!6003 = !DILocation(line: 291, column: 17, scope: !5973)
!6004 = !DILocalVariable(name: "bdc", scope: !5973, file: !3, line: 292, type: !242)
!6005 = !DILocation(line: 292, column: 14, scope: !5973)
!6006 = !DILocation(line: 292, column: 20, scope: !5973)
!6007 = !DILocalVariable(name: "status", scope: !5973, file: !3, line: 293, type: !559)
!6008 = !DILocation(line: 293, column: 6, scope: !5973)
!6009 = !DILocalVariable(name: "ret", scope: !5973, file: !3, line: 294, type: !235)
!6010 = !DILocation(line: 294, column: 6, scope: !5973)
!6011 = !DILocation(line: 296, column: 13, scope: !5973)
!6012 = !DILocation(line: 296, column: 18, scope: !5973)
!6013 = !DILocation(line: 354, column: 2, scope: !5568, inlinedAt: !5989)
!6014 = !DILocation(line: 354, column: 2, scope: !5571, inlinedAt: !5989)
!6015 = !DILocation(line: 297, column: 21, scope: !5973)
!6016 = !DILocation(line: 297, column: 26, scope: !5973)
!6017 = !DILocation(line: 297, column: 11, scope: !5973)
!6018 = !DILocation(line: 297, column: 9, scope: !5973)
!6019 = !DILocation(line: 298, column: 8, scope: !5987)
!6020 = !DILocation(line: 298, column: 15, scope: !5987)
!6021 = !DILocation(line: 298, column: 6, scope: !5973)
!6022 = !DILocation(line: 299, column: 16, scope: !5986)
!6023 = !DILocation(line: 299, column: 21, scope: !5986)
!6024 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5985)
!6025 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5985)
!6026 = !DILocation(line: 300, column: 3, scope: !5986)
!6027 = !DILocation(line: 302, column: 22, scope: !5973)
!6028 = !DILocation(line: 302, column: 27, scope: !5973)
!6029 = !DILocation(line: 302, column: 12, scope: !5973)
!6030 = !DILocation(line: 302, column: 10, scope: !5973)
!6031 = !DILocation(line: 304, column: 8, scope: !5983)
!6032 = !DILocation(line: 304, column: 16, scope: !5983)
!6033 = !DILocation(line: 304, column: 6, scope: !5973)
!6034 = !DILocation(line: 305, column: 3, scope: !5982)
!6035 = !DILocation(line: 306, column: 16, scope: !5982)
!6036 = !DILocation(line: 306, column: 21, scope: !5982)
!6037 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5981)
!6038 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5981)
!6039 = !DILocation(line: 307, column: 3, scope: !5982)
!6040 = !DILocation(line: 309, column: 14, scope: !5973)
!6041 = !DILocation(line: 309, column: 12, scope: !5973)
!6042 = !DILocation(line: 310, column: 14, scope: !5973)
!6043 = !DILocation(line: 310, column: 12, scope: !5973)
!6044 = !DILocation(line: 316, column: 6, scope: !5979)
!6045 = !DILocation(line: 316, column: 19, scope: !5979)
!6046 = !DILocation(line: 316, column: 16, scope: !5979)
!6047 = !DILocation(line: 316, column: 6, scope: !5973)
!6048 = !DILocation(line: 318, column: 16, scope: !5978)
!6049 = !DILocation(line: 318, column: 21, scope: !5978)
!6050 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5977)
!6051 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5977)
!6052 = !DILocation(line: 319, column: 3, scope: !5978)
!6053 = !DILocation(line: 322, column: 2, scope: !5973)
!6054 = !DILocation(line: 322, column: 9, scope: !5973)
!6055 = !DILocation(line: 322, column: 14, scope: !5973)
!6056 = !DILocation(line: 322, column: 18, scope: !5973)
!6057 = !DILocation(line: 322, column: 31, scope: !5973)
!6058 = !DILocation(line: 322, column: 28, scope: !5973)
!6059 = !DILocation(line: 323, column: 14, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 322, column: 42)
!6061 = !DILocation(line: 323, column: 19, scope: !6060)
!6062 = !DILocation(line: 323, column: 23, scope: !6060)
!6063 = !DILocation(line: 323, column: 30, scope: !6060)
!6064 = !DILocation(line: 323, column: 35, scope: !6060)
!6065 = !DILocation(line: 323, column: 39, scope: !6060)
!6066 = !DILocation(line: 323, column: 11, scope: !6060)
!6067 = !DILocation(line: 325, column: 3, scope: !6060)
!6068 = !{i32 -2140095205}
!6069 = !DILocation(line: 326, column: 13, scope: !6060)
!6070 = !DILocation(line: 326, column: 45, scope: !6060)
!6071 = !DILocation(line: 326, column: 11, scope: !6060)
!6072 = !DILocation(line: 327, column: 3, scope: !6060)
!6073 = !DILocation(line: 327, column: 3, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 327, column: 3)
!6075 = !DILocation(line: 328, column: 11, scope: !6060)
!6076 = !DILocation(line: 328, column: 3, scope: !6060)
!6077 = !DILocation(line: 330, column: 4, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 328, column: 20)
!6079 = !DILocation(line: 330, column: 9, scope: !6078)
!6080 = !DILocation(line: 330, column: 23, scope: !6078)
!6081 = !DILocation(line: 330, column: 28, scope: !6078)
!6082 = !DILocation(line: 331, column: 4, scope: !6078)
!6083 = !DILocation(line: 334, column: 4, scope: !6078)
!6084 = !DILocation(line: 334, column: 9, scope: !6078)
!6085 = !DILocation(line: 334, column: 23, scope: !6078)
!6086 = !DILocation(line: 334, column: 28, scope: !6078)
!6087 = !DILocation(line: 335, column: 4, scope: !6078)
!6088 = !DILocation(line: 337, column: 4, scope: !6078)
!6089 = !DILocation(line: 338, column: 3, scope: !6078)
!6090 = !DILocation(line: 340, column: 22, scope: !6060)
!6091 = !DILocation(line: 340, column: 3, scope: !6060)
!6092 = distinct !{!6092, !6053, !6093}
!6093 = !DILocation(line: 341, column: 2, scope: !5973)
!6094 = !DILocation(line: 343, column: 22, scope: !5973)
!6095 = !DILocation(line: 343, column: 27, scope: !5973)
!6096 = !DILocation(line: 343, column: 12, scope: !5973)
!6097 = !DILocation(line: 343, column: 10, scope: !5973)
!6098 = !DILocation(line: 344, column: 10, scope: !5973)
!6099 = !DILocation(line: 345, column: 10, scope: !5973)
!6100 = !DILocation(line: 346, column: 15, scope: !5973)
!6101 = !DILocation(line: 346, column: 20, scope: !5973)
!6102 = !DILocation(line: 346, column: 24, scope: !5973)
!6103 = !DILocation(line: 346, column: 14, scope: !5973)
!6104 = !DILocation(line: 346, column: 35, scope: !5973)
!6105 = !DILocation(line: 346, column: 10, scope: !5973)
!6106 = !DILocation(line: 347, column: 10, scope: !5973)
!6107 = !DILocation(line: 348, column: 13, scope: !5973)
!6108 = !DILocation(line: 348, column: 18, scope: !5973)
!6109 = !DILocation(line: 348, column: 39, scope: !5973)
!6110 = !DILocation(line: 348, column: 2, scope: !5973)
!6111 = !DILocation(line: 349, column: 22, scope: !5973)
!6112 = !DILocation(line: 349, column: 27, scope: !5973)
!6113 = !DILocation(line: 349, column: 12, scope: !5973)
!6114 = !DILocation(line: 349, column: 10, scope: !5973)
!6115 = !DILocation(line: 350, column: 6, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 350, column: 6)
!6117 = !DILocation(line: 350, column: 11, scope: !6116)
!6118 = !DILocation(line: 350, column: 6, scope: !5973)
!6119 = !DILocation(line: 351, column: 20, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 350, column: 19)
!6121 = !DILocation(line: 351, column: 9, scope: !6120)
!6122 = !DILocation(line: 351, column: 7, scope: !6120)
!6123 = !DILocation(line: 352, column: 7, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 352, column: 7)
!6125 = !DILocation(line: 352, column: 7, scope: !6120)
!6126 = !DILocation(line: 353, column: 4, scope: !6124)
!6127 = !DILocation(line: 354, column: 2, scope: !6120)
!6128 = !DILocation(line: 356, column: 15, scope: !5973)
!6129 = !DILocation(line: 356, column: 20, scope: !5973)
!6130 = !DILocation(line: 394, column: 2, scope: !5556, inlinedAt: !5975)
!6131 = !DILocation(line: 394, column: 2, scope: !5559, inlinedAt: !5975)
!6132 = !DILocation(line: 358, column: 2, scope: !5973)
!6133 = !DILocation(line: 359, column: 1, scope: !5973)
!6134 = distinct !DISubprogram(name: "__init_work", scope: !187, file: !187, line: 215, type: !6135, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{null, !275, !235}
!6137 = !DILocalVariable(name: "work", arg: 1, scope: !6134, file: !187, line: 215, type: !275)
!6138 = !DILocation(line: 215, column: 52, scope: !6134)
!6139 = !DILocalVariable(name: "onstack", arg: 2, scope: !6134, file: !187, line: 215, type: !235)
!6140 = !DILocation(line: 215, column: 62, scope: !6134)
!6141 = !DILocation(line: 215, column: 73, scope: !6134)
!6142 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6143, file: !6143, line: 33, type: !6144, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6143 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6144 = !DISubroutineType(types: !6145)
!6145 = !{null, !268}
!6146 = !DILocalVariable(name: "list", arg: 1, scope: !6142, file: !6143, line: 33, type: !268)
!6147 = !DILocation(line: 33, column: 53, scope: !6142)
!6148 = !DILocation(line: 35, column: 2, scope: !6142)
!6149 = !DILocation(line: 35, column: 2, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6142, file: !6143, line: 35, column: 2)
!6151 = !DILocation(line: 35, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6150, file: !6143, line: 35, column: 2)
!6153 = !DILocation(line: 35, column: 2, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6150, file: !6143, line: 35, column: 2)
!6155 = !DILocation(line: 36, column: 15, scope: !6142)
!6156 = !DILocation(line: 36, column: 2, scope: !6142)
!6157 = !DILocation(line: 36, column: 8, scope: !6142)
!6158 = !DILocation(line: 36, column: 13, scope: !6142)
!6159 = !DILocation(line: 37, column: 1, scope: !6142)
!6160 = distinct !DISubprogram(name: "bdc_func_wake_timer", scope: !3, file: !3, line: 157, type: !273, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6161 = !DILocation(line: 363, column: 74, scope: !5595, inlinedAt: !6162)
!6162 = distinct !DILocation(line: 173, column: 7, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 168, column: 41)
!6164 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 168, column: 6)
!6165 = !DILocalVariable(name: "lock", arg: 1, scope: !6166, file: !5517, line: 407, type: !2195)
!6166 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5517, file: !5517, line: 407, type: !6167, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{null, !2195, !232}
!6169 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6170)
!6170 = distinct !DILocation(line: 175, column: 2, scope: !6160)
!6171 = !DILocalVariable(name: "flags", arg: 2, scope: !6166, file: !5517, line: 407, type: !232)
!6172 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6170)
!6173 = !DILocalVariable(name: "lock", arg: 1, scope: !6174, file: !5517, line: 327, type: !2195)
!6174 = distinct !DISubprogram(name: "spinlock_check", scope: !5517, file: !5517, line: 327, type: !6175, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!6177, !2195}
!6177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!6178 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6179)
!6179 = distinct !DILocation(line: 163, column: 2, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 163, column: 2)
!6181 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 163, column: 2)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 163, column: 2)
!6183 = distinct !DILexicalBlock(scope: !6184, file: !3, line: 163, column: 2)
!6184 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 163, column: 2)
!6185 = !DILocalVariable(name: "work", arg: 1, scope: !6160, file: !3, line: 157, type: !275)
!6186 = !DILocation(line: 157, column: 53, scope: !6160)
!6187 = !DILocalVariable(name: "bdc", scope: !6160, file: !3, line: 159, type: !242)
!6188 = !DILocation(line: 159, column: 14, scope: !6160)
!6189 = !DILocalVariable(name: "__mptr", scope: !6190, file: !3, line: 159, type: !241)
!6190 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 159, column: 20)
!6191 = !DILocation(line: 159, column: 20, scope: !6190)
!6192 = !DILocation(line: 159, column: 20, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 159, column: 20)
!6194 = !DILocalVariable(name: "flags", scope: !6160, file: !3, line: 160, type: !232)
!6195 = !DILocation(line: 160, column: 16, scope: !6160)
!6196 = !DILocation(line: 163, column: 2, scope: !6160)
!6197 = !DILocation(line: 163, column: 2, scope: !6184)
!6198 = !DILocalVariable(name: "__dummy", scope: !6199, file: !3, line: 163, type: !232)
!6199 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 163, column: 2)
!6200 = !DILocation(line: 163, column: 2, scope: !6199)
!6201 = !DILocalVariable(name: "__dummy2", scope: !6199, file: !3, line: 163, type: !232)
!6202 = !DILocation(line: 163, column: 2, scope: !6183)
!6203 = !DILocation(line: 163, column: 2, scope: !6182)
!6204 = !DILocation(line: 163, column: 2, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 163, column: 2)
!6206 = !DILocalVariable(name: "__dummy", scope: !6207, file: !3, line: 163, type: !232)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 163, column: 2)
!6208 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 163, column: 2)
!6209 = !DILocation(line: 163, column: 2, scope: !6207)
!6210 = !DILocalVariable(name: "__dummy2", scope: !6207, file: !3, line: 163, type: !232)
!6211 = !DILocation(line: 163, column: 2, scope: !6208)
!6212 = !DILocation(line: 163, column: 2, scope: !6181)
!6213 = !{i32 -2140098346}
!6214 = !DILocation(line: 163, column: 2, scope: !6180)
!6215 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6179)
!6216 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6179)
!6217 = !DILocation(line: 168, column: 6, scope: !6164)
!6218 = !DILocation(line: 168, column: 11, scope: !6164)
!6219 = !DILocation(line: 168, column: 21, scope: !6164)
!6220 = !DILocation(line: 168, column: 6, scope: !6160)
!6221 = !DILocation(line: 171, column: 24, scope: !6163)
!6222 = !DILocation(line: 171, column: 3, scope: !6163)
!6223 = !DILocation(line: 172, column: 26, scope: !6163)
!6224 = !DILocation(line: 172, column: 31, scope: !6163)
!6225 = !DILocation(line: 365, column: 27, scope: !5669, inlinedAt: !6162)
!6226 = !DILocation(line: 365, column: 6, scope: !5669, inlinedAt: !6162)
!6227 = !DILocation(line: 365, column: 6, scope: !5595, inlinedAt: !6162)
!6228 = !DILocation(line: 366, column: 12, scope: !5673, inlinedAt: !6162)
!6229 = !DILocation(line: 366, column: 14, scope: !5673, inlinedAt: !6162)
!6230 = !DILocation(line: 366, column: 7, scope: !5674, inlinedAt: !6162)
!6231 = !DILocation(line: 367, column: 4, scope: !5673, inlinedAt: !6162)
!6232 = !DILocation(line: 368, column: 28, scope: !5674, inlinedAt: !6162)
!6233 = !DILocation(line: 368, column: 10, scope: !5674, inlinedAt: !6162)
!6234 = !DILocation(line: 368, column: 3, scope: !5674, inlinedAt: !6162)
!6235 = !DILocation(line: 370, column: 29, scope: !5682, inlinedAt: !6162)
!6236 = !DILocation(line: 370, column: 10, scope: !5682, inlinedAt: !6162)
!6237 = !DILocation(line: 370, column: 3, scope: !5682, inlinedAt: !6162)
!6238 = !DILocation(line: 372, column: 1, scope: !5595, inlinedAt: !6162)
!6239 = !DILocation(line: 172, column: 3, scope: !6163)
!6240 = !DILocation(line: 174, column: 2, scope: !6163)
!6241 = !DILocation(line: 175, column: 26, scope: !6160)
!6242 = !DILocation(line: 175, column: 31, scope: !6160)
!6243 = !DILocation(line: 175, column: 37, scope: !6160)
!6244 = !DILocalVariable(name: "__dummy", scope: !6245, file: !5517, line: 409, type: !232)
!6245 = distinct !DILexicalBlock(scope: !6246, file: !5517, line: 409, column: 2)
!6246 = distinct !DILexicalBlock(scope: !6166, file: !5517, line: 409, column: 2)
!6247 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6170)
!6248 = !DILocalVariable(name: "__dummy2", scope: !6245, file: !5517, line: 409, type: !232)
!6249 = !DILocalVariable(name: "__dummy", scope: !6250, file: !5517, line: 409, type: !232)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !5517, line: 409, column: 2)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !5517, line: 409, column: 2)
!6252 = distinct !DILexicalBlock(scope: !6253, file: !5517, line: 409, column: 2)
!6253 = distinct !DILexicalBlock(scope: !6246, file: !5517, line: 409, column: 2)
!6254 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6170)
!6255 = !DILocalVariable(name: "__dummy2", scope: !6250, file: !5517, line: 409, type: !232)
!6256 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6170)
!6257 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6170)
!6258 = distinct !DILexicalBlock(scope: !6253, file: !5517, line: 409, column: 2)
!6259 = !{i32 -2145462210}
!6260 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6170)
!6261 = distinct !DILexicalBlock(scope: !6258, file: !5517, line: 409, column: 2)
!6262 = !DILocation(line: 176, column: 1, scope: !6160)
!6263 = distinct !DISubprogram(name: "bdc_udc_exit", scope: !3, file: !3, line: 578, type: !5709, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6264 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6265)
!6265 = distinct !DILocation(line: 585, column: 2, scope: !6263)
!6266 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6265)
!6267 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6268)
!6268 = distinct !DILocation(line: 583, column: 2, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 583, column: 2)
!6270 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 583, column: 2)
!6271 = distinct !DILexicalBlock(scope: !6272, file: !3, line: 583, column: 2)
!6272 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 583, column: 2)
!6273 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 583, column: 2)
!6274 = !DILocalVariable(name: "bdc", arg: 1, scope: !6263, file: !3, line: 578, type: !242)
!6275 = !DILocation(line: 578, column: 31, scope: !6263)
!6276 = !DILocalVariable(name: "flags", scope: !6263, file: !3, line: 580, type: !232)
!6277 = !DILocation(line: 580, column: 16, scope: !6263)
!6278 = !DILocation(line: 583, column: 2, scope: !6263)
!6279 = !DILocation(line: 583, column: 2, scope: !6273)
!6280 = !DILocalVariable(name: "__dummy", scope: !6281, file: !3, line: 583, type: !232)
!6281 = distinct !DILexicalBlock(scope: !6272, file: !3, line: 583, column: 2)
!6282 = !DILocation(line: 583, column: 2, scope: !6281)
!6283 = !DILocalVariable(name: "__dummy2", scope: !6281, file: !3, line: 583, type: !232)
!6284 = !DILocation(line: 583, column: 2, scope: !6272)
!6285 = !DILocation(line: 583, column: 2, scope: !6271)
!6286 = !DILocation(line: 583, column: 2, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 583, column: 2)
!6288 = !DILocalVariable(name: "__dummy", scope: !6289, file: !3, line: 583, type: !232)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 583, column: 2)
!6290 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 583, column: 2)
!6291 = !DILocation(line: 583, column: 2, scope: !6289)
!6292 = !DILocalVariable(name: "__dummy2", scope: !6289, file: !3, line: 583, type: !232)
!6293 = !DILocation(line: 583, column: 2, scope: !6290)
!6294 = !DILocation(line: 583, column: 2, scope: !6270)
!6295 = !{i32 -2140077464}
!6296 = !DILocation(line: 583, column: 2, scope: !6269)
!6297 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6268)
!6298 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6268)
!6299 = !DILocation(line: 584, column: 17, scope: !6263)
!6300 = !DILocation(line: 584, column: 22, scope: !6263)
!6301 = !DILocation(line: 584, column: 2, scope: !6263)
!6302 = !DILocation(line: 585, column: 26, scope: !6263)
!6303 = !DILocation(line: 585, column: 31, scope: !6263)
!6304 = !DILocation(line: 585, column: 37, scope: !6263)
!6305 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6265)
!6306 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6265)
!6307 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6265)
!6308 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6265)
!6309 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6265)
!6310 = !DILocation(line: 587, column: 22, scope: !6263)
!6311 = !DILocation(line: 587, column: 27, scope: !6263)
!6312 = !DILocation(line: 587, column: 2, scope: !6263)
!6313 = !DILocation(line: 588, column: 14, scope: !6263)
!6314 = !DILocation(line: 588, column: 2, scope: !6263)
!6315 = !DILocation(line: 589, column: 1, scope: !6263)
!6316 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6317, file: !6317, line: 666, type: !6318, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6317 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!232}
!6320 = !DILocalVariable(name: "f", scope: !6316, file: !6317, line: 668, type: !232)
!6321 = !DILocation(line: 668, column: 16, scope: !6316)
!6322 = !DILocation(line: 670, column: 6, scope: !6316)
!6323 = !DILocation(line: 670, column: 4, scope: !6316)
!6324 = !DILocation(line: 671, column: 2, scope: !6316)
!6325 = !DILocation(line: 672, column: 9, scope: !6316)
!6326 = !DILocation(line: 672, column: 2, scope: !6316)
!6327 = distinct !DISubprogram(name: "readl", scope: !6328, file: !6328, line: 59, type: !6329, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6328 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!6329 = !DISubroutineType(types: !6330)
!6330 = !{!7, !6331}
!6331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6332, size: 64)
!6332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6333)
!6333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6334 = !DILocalVariable(name: "addr", arg: 1, scope: !6327, file: !6328, line: 59, type: !6331)
!6335 = !DILocation(line: 59, column: 1, scope: !6327)
!6336 = !DILocalVariable(name: "ret", scope: !6327, file: !6328, line: 59, type: !7)
!6337 = !{i32 -2143421029}
!6338 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !187, file: !187, line: 623, type: !6339, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!631, !6341, !232}
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!6342 = !DILocalVariable(name: "dwork", arg: 1, scope: !6338, file: !187, line: 623, type: !6341)
!6343 = !DILocation(line: 623, column: 63, scope: !6338)
!6344 = !DILocalVariable(name: "delay", arg: 2, scope: !6338, file: !187, line: 624, type: !232)
!6345 = !DILocation(line: 624, column: 21, scope: !6338)
!6346 = !DILocation(line: 626, column: 28, scope: !6338)
!6347 = !DILocation(line: 626, column: 39, scope: !6338)
!6348 = !DILocation(line: 626, column: 46, scope: !6338)
!6349 = !DILocation(line: 626, column: 9, scope: !6338)
!6350 = !DILocation(line: 626, column: 2, scope: !6338)
!6351 = distinct !DISubprogram(name: "queue_delayed_work", scope: !187, file: !187, line: 518, type: !6352, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!631, !1231, !6341, !232}
!6354 = !DILocalVariable(name: "wq", arg: 1, scope: !6351, file: !187, line: 518, type: !1231)
!6355 = !DILocation(line: 518, column: 64, scope: !6351)
!6356 = !DILocalVariable(name: "dwork", arg: 2, scope: !6351, file: !187, line: 519, type: !6341)
!6357 = !DILocation(line: 519, column: 32, scope: !6351)
!6358 = !DILocalVariable(name: "delay", arg: 3, scope: !6351, file: !187, line: 520, type: !232)
!6359 = !DILocation(line: 520, column: 25, scope: !6351)
!6360 = !DILocation(line: 522, column: 49, scope: !6351)
!6361 = !DILocation(line: 522, column: 53, scope: !6351)
!6362 = !DILocation(line: 522, column: 60, scope: !6351)
!6363 = !DILocation(line: 522, column: 9, scope: !6351)
!6364 = !DILocation(line: 522, column: 2, scope: !6351)
!6365 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5596, file: !5596, line: 308, type: !5597, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6366 = !DILocalVariable(name: "m", arg: 1, scope: !6365, file: !5596, line: 308, type: !1699)
!6367 = !DILocation(line: 308, column: 66, scope: !6365)
!6368 = !DILocation(line: 310, column: 10, scope: !6365)
!6369 = !DILocation(line: 310, column: 12, scope: !6365)
!6370 = !DILocation(line: 310, column: 34, scope: !6365)
!6371 = !DILocation(line: 310, column: 39, scope: !6365)
!6372 = !DILocation(line: 310, column: 2, scope: !6365)
!6373 = distinct !DISubprogram(name: "writel", scope: !6328, file: !6328, line: 67, type: !6374, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{null, !7, !6376}
!6376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6333, size: 64)
!6377 = !DILocalVariable(name: "val", arg: 1, scope: !6373, file: !6328, line: 67, type: !7)
!6378 = !DILocation(line: 67, column: 1, scope: !6373)
!6379 = !DILocalVariable(name: "addr", arg: 2, scope: !6373, file: !6328, line: 67, type: !6376)
!6380 = !{i32 -2143418636}
!6381 = distinct !DISubprogram(name: "bdc_udc_wakeup", scope: !3, file: !3, line: 465, type: !286, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6382 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6383)
!6383 = distinct !DILocation(line: 503, column: 2, scope: !6381)
!6384 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6383)
!6385 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6386)
!6386 = distinct !DILocation(line: 480, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 480, column: 2)
!6388 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 480, column: 2)
!6389 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 480, column: 2)
!6390 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 480, column: 2)
!6391 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 480, column: 2)
!6392 = !DILocalVariable(name: "gadget", arg: 1, scope: !6381, file: !3, line: 465, type: !288)
!6393 = !DILocation(line: 465, column: 46, scope: !6381)
!6394 = !DILocalVariable(name: "bdc", scope: !6381, file: !3, line: 467, type: !242)
!6395 = !DILocation(line: 467, column: 14, scope: !6381)
!6396 = !DILocalVariable(name: "__mptr", scope: !6397, file: !3, line: 467, type: !241)
!6397 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 467, column: 20)
!6398 = !DILocation(line: 467, column: 20, scope: !6397)
!6399 = !DILocation(line: 467, column: 20, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 467, column: 20)
!6401 = !DILocalVariable(name: "flags", scope: !6381, file: !3, line: 468, type: !232)
!6402 = !DILocation(line: 468, column: 17, scope: !6381)
!6403 = !DILocalVariable(name: "link_state", scope: !6381, file: !3, line: 469, type: !1178)
!6404 = !DILocation(line: 469, column: 5, scope: !6381)
!6405 = !DILocalVariable(name: "uspc", scope: !6381, file: !3, line: 470, type: !559)
!6406 = !DILocation(line: 470, column: 6, scope: !6381)
!6407 = !DILocalVariable(name: "ret", scope: !6381, file: !3, line: 471, type: !235)
!6408 = !DILocation(line: 471, column: 6, scope: !6381)
!6409 = !DILocation(line: 477, column: 8, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 477, column: 6)
!6411 = !DILocation(line: 477, column: 13, scope: !6410)
!6412 = !DILocation(line: 477, column: 23, scope: !6410)
!6413 = !DILocation(line: 477, column: 6, scope: !6381)
!6414 = !DILocation(line: 478, column: 3, scope: !6410)
!6415 = !DILocation(line: 480, column: 2, scope: !6381)
!6416 = !DILocation(line: 480, column: 2, scope: !6391)
!6417 = !DILocalVariable(name: "__dummy", scope: !6418, file: !3, line: 480, type: !232)
!6418 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 480, column: 2)
!6419 = !DILocation(line: 480, column: 2, scope: !6418)
!6420 = !DILocalVariable(name: "__dummy2", scope: !6418, file: !3, line: 480, type: !232)
!6421 = !DILocation(line: 480, column: 2, scope: !6390)
!6422 = !DILocation(line: 480, column: 2, scope: !6389)
!6423 = !DILocation(line: 480, column: 2, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 480, column: 2)
!6425 = !DILocalVariable(name: "__dummy", scope: !6426, file: !3, line: 480, type: !232)
!6426 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 480, column: 2)
!6427 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 480, column: 2)
!6428 = !DILocation(line: 480, column: 2, scope: !6426)
!6429 = !DILocalVariable(name: "__dummy2", scope: !6426, file: !3, line: 480, type: !232)
!6430 = !DILocation(line: 480, column: 2, scope: !6427)
!6431 = !DILocation(line: 480, column: 2, scope: !6388)
!6432 = !{i32 -2140081118}
!6433 = !DILocation(line: 480, column: 2, scope: !6387)
!6434 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6386)
!6435 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6386)
!6436 = !DILocation(line: 481, column: 19, scope: !6381)
!6437 = !DILocation(line: 481, column: 24, scope: !6381)
!6438 = !DILocation(line: 481, column: 9, scope: !6381)
!6439 = !DILocation(line: 481, column: 7, scope: !6381)
!6440 = !DILocation(line: 482, column: 15, scope: !6381)
!6441 = !DILocation(line: 482, column: 13, scope: !6381)
!6442 = !DILocation(line: 484, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 484, column: 6)
!6444 = !DILocation(line: 484, column: 17, scope: !6443)
!6445 = !DILocation(line: 484, column: 6, scope: !6381)
!6446 = !DILocation(line: 485, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 484, column: 39)
!6448 = !DILocation(line: 488, column: 7, scope: !6447)
!6449 = !DILocation(line: 489, column: 3, scope: !6447)
!6450 = !DILocation(line: 491, column: 6, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 491, column: 6)
!6452 = !DILocation(line: 491, column: 11, scope: !6451)
!6453 = !DILocation(line: 491, column: 18, scope: !6451)
!6454 = !DILocation(line: 491, column: 24, scope: !6451)
!6455 = !DILocation(line: 491, column: 6, scope: !6381)
!6456 = !DILocation(line: 492, column: 3, scope: !6451)
!6457 = !DILocation(line: 492, column: 8, scope: !6451)
!6458 = !DILocation(line: 492, column: 18, scope: !6451)
!6459 = !DILocation(line: 494, column: 7, scope: !6381)
!6460 = !DILocation(line: 495, column: 7, scope: !6381)
!6461 = !DILocation(line: 496, column: 7, scope: !6381)
!6462 = !DILocation(line: 497, column: 7, scope: !6381)
!6463 = !DILocation(line: 498, column: 13, scope: !6381)
!6464 = !DILocation(line: 498, column: 18, scope: !6381)
!6465 = !DILocation(line: 498, column: 34, scope: !6381)
!6466 = !DILocation(line: 498, column: 2, scope: !6381)
!6467 = !DILocation(line: 499, column: 19, scope: !6381)
!6468 = !DILocation(line: 499, column: 24, scope: !6381)
!6469 = !DILocation(line: 499, column: 9, scope: !6381)
!6470 = !DILocation(line: 499, column: 7, scope: !6381)
!6471 = !DILocation(line: 500, column: 15, scope: !6381)
!6472 = !DILocation(line: 500, column: 13, scope: !6381)
!6473 = !DILocation(line: 501, column: 2, scope: !6381)
!6474 = !DILabel(scope: !6381, name: "out", file: !3, line: 502)
!6475 = !DILocation(line: 502, column: 1, scope: !6381)
!6476 = !DILocation(line: 503, column: 26, scope: !6381)
!6477 = !DILocation(line: 503, column: 31, scope: !6381)
!6478 = !DILocation(line: 503, column: 37, scope: !6381)
!6479 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6383)
!6480 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6383)
!6481 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6383)
!6482 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6383)
!6483 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6383)
!6484 = !DILocation(line: 505, column: 9, scope: !6381)
!6485 = !DILocation(line: 505, column: 2, scope: !6381)
!6486 = !DILocation(line: 506, column: 1, scope: !6381)
!6487 = distinct !DISubprogram(name: "bdc_udc_set_selfpowered", scope: !3, file: !3, line: 446, type: !292, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6488 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6489)
!6489 = distinct !DILocation(line: 460, column: 2, scope: !6487)
!6490 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6489)
!6491 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6492)
!6492 = distinct !DILocation(line: 454, column: 2, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 454, column: 2)
!6494 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 454, column: 2)
!6495 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 454, column: 2)
!6496 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 454, column: 2)
!6497 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 454, column: 2)
!6498 = !DILocalVariable(name: "gadget", arg: 1, scope: !6487, file: !3, line: 446, type: !288)
!6499 = !DILocation(line: 446, column: 55, scope: !6487)
!6500 = !DILocalVariable(name: "is_self", arg: 2, scope: !6487, file: !3, line: 447, type: !235)
!6501 = !DILocation(line: 447, column: 7, scope: !6487)
!6502 = !DILocalVariable(name: "bdc", scope: !6487, file: !3, line: 449, type: !242)
!6503 = !DILocation(line: 449, column: 15, scope: !6487)
!6504 = !DILocalVariable(name: "__mptr", scope: !6505, file: !3, line: 449, type: !241)
!6505 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 449, column: 21)
!6506 = !DILocation(line: 449, column: 21, scope: !6505)
!6507 = !DILocation(line: 449, column: 21, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 449, column: 21)
!6509 = !DILocalVariable(name: "flags", scope: !6487, file: !3, line: 450, type: !232)
!6510 = !DILocation(line: 450, column: 26, scope: !6487)
!6511 = !DILocation(line: 453, column: 28, scope: !6487)
!6512 = !DILocation(line: 453, column: 36, scope: !6487)
!6513 = !DILocation(line: 453, column: 2, scope: !6487)
!6514 = !DILocation(line: 453, column: 10, scope: !6487)
!6515 = !DILocation(line: 453, column: 25, scope: !6487)
!6516 = !DILocation(line: 454, column: 2, scope: !6487)
!6517 = !DILocation(line: 454, column: 2, scope: !6497)
!6518 = !DILocalVariable(name: "__dummy", scope: !6519, file: !3, line: 454, type: !232)
!6519 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 454, column: 2)
!6520 = !DILocation(line: 454, column: 2, scope: !6519)
!6521 = !DILocalVariable(name: "__dummy2", scope: !6519, file: !3, line: 454, type: !232)
!6522 = !DILocation(line: 454, column: 2, scope: !6496)
!6523 = !DILocation(line: 454, column: 2, scope: !6495)
!6524 = !DILocation(line: 454, column: 2, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 454, column: 2)
!6526 = !DILocalVariable(name: "__dummy", scope: !6527, file: !3, line: 454, type: !232)
!6527 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 454, column: 2)
!6528 = distinct !DILexicalBlock(scope: !6525, file: !3, line: 454, column: 2)
!6529 = !DILocation(line: 454, column: 2, scope: !6527)
!6530 = !DILocalVariable(name: "__dummy2", scope: !6527, file: !3, line: 454, type: !232)
!6531 = !DILocation(line: 454, column: 2, scope: !6528)
!6532 = !DILocation(line: 454, column: 2, scope: !6494)
!6533 = !{i32 -2140083851}
!6534 = !DILocation(line: 454, column: 2, scope: !6493)
!6535 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6492)
!6536 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6492)
!6537 = !DILocation(line: 455, column: 7, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 455, column: 6)
!6539 = !DILocation(line: 455, column: 6, scope: !6487)
!6540 = !DILocation(line: 456, column: 3, scope: !6538)
!6541 = !DILocation(line: 456, column: 8, scope: !6538)
!6542 = !DILocation(line: 456, column: 18, scope: !6538)
!6543 = !DILocation(line: 458, column: 3, scope: !6538)
!6544 = !DILocation(line: 458, column: 8, scope: !6538)
!6545 = !DILocation(line: 458, column: 18, scope: !6538)
!6546 = !DILocation(line: 460, column: 26, scope: !6487)
!6547 = !DILocation(line: 460, column: 31, scope: !6487)
!6548 = !DILocation(line: 460, column: 37, scope: !6487)
!6549 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6489)
!6550 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6489)
!6551 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6489)
!6552 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6489)
!6553 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6489)
!6554 = !DILocation(line: 462, column: 2, scope: !6487)
!6555 = distinct !DISubprogram(name: "bdc_udc_pullup", scope: !3, file: !3, line: 411, type: !292, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6556 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6557)
!6557 = distinct !DILocation(line: 441, column: 2, scope: !6555)
!6558 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6557)
!6559 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6560)
!6560 = distinct !DILocation(line: 421, column: 2, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 421, column: 2)
!6562 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 421, column: 2)
!6563 = distinct !DILexicalBlock(scope: !6564, file: !3, line: 421, column: 2)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 421, column: 2)
!6565 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 421, column: 2)
!6566 = !DILocalVariable(name: "gadget", arg: 1, scope: !6555, file: !3, line: 411, type: !288)
!6567 = !DILocation(line: 411, column: 46, scope: !6555)
!6568 = !DILocalVariable(name: "is_on", arg: 2, scope: !6555, file: !3, line: 411, type: !235)
!6569 = !DILocation(line: 411, column: 58, scope: !6555)
!6570 = !DILocalVariable(name: "bdc", scope: !6555, file: !3, line: 413, type: !242)
!6571 = !DILocation(line: 413, column: 14, scope: !6555)
!6572 = !DILocalVariable(name: "__mptr", scope: !6573, file: !3, line: 413, type: !241)
!6573 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 413, column: 20)
!6574 = !DILocation(line: 413, column: 20, scope: !6573)
!6575 = !DILocation(line: 413, column: 20, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 413, column: 20)
!6577 = !DILocalVariable(name: "flags", scope: !6555, file: !3, line: 414, type: !232)
!6578 = !DILocation(line: 414, column: 16, scope: !6555)
!6579 = !DILocalVariable(name: "uspc", scope: !6555, file: !3, line: 415, type: !559)
!6580 = !DILocation(line: 415, column: 6, scope: !6555)
!6581 = !DILocation(line: 418, column: 7, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 418, column: 6)
!6583 = !DILocation(line: 418, column: 6, scope: !6555)
!6584 = !DILocation(line: 419, column: 3, scope: !6582)
!6585 = !DILocation(line: 421, column: 2, scope: !6555)
!6586 = !DILocation(line: 421, column: 2, scope: !6565)
!6587 = !DILocalVariable(name: "__dummy", scope: !6588, file: !3, line: 421, type: !232)
!6588 = distinct !DILexicalBlock(scope: !6564, file: !3, line: 421, column: 2)
!6589 = !DILocation(line: 421, column: 2, scope: !6588)
!6590 = !DILocalVariable(name: "__dummy2", scope: !6588, file: !3, line: 421, type: !232)
!6591 = !DILocation(line: 421, column: 2, scope: !6564)
!6592 = !DILocation(line: 421, column: 2, scope: !6563)
!6593 = !DILocation(line: 421, column: 2, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 421, column: 2)
!6595 = !DILocalVariable(name: "__dummy", scope: !6596, file: !3, line: 421, type: !232)
!6596 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 421, column: 2)
!6597 = distinct !DILexicalBlock(scope: !6594, file: !3, line: 421, column: 2)
!6598 = !DILocation(line: 421, column: 2, scope: !6596)
!6599 = !DILocalVariable(name: "__dummy2", scope: !6596, file: !3, line: 421, type: !232)
!6600 = !DILocation(line: 421, column: 2, scope: !6597)
!6601 = !DILocation(line: 421, column: 2, scope: !6562)
!6602 = !{i32 -2140086502}
!6603 = !DILocation(line: 421, column: 2, scope: !6561)
!6604 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6560)
!6605 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6560)
!6606 = !DILocation(line: 422, column: 7, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 422, column: 6)
!6608 = !DILocation(line: 422, column: 6, scope: !6555)
!6609 = !DILocation(line: 423, column: 19, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 422, column: 14)
!6611 = !DILocation(line: 423, column: 3, scope: !6610)
!6612 = !DILocation(line: 424, column: 3, scope: !6610)
!6613 = !DILocation(line: 424, column: 8, scope: !6610)
!6614 = !DILocation(line: 424, column: 15, scope: !6610)
!6615 = !DILocation(line: 425, column: 2, scope: !6610)
!6616 = !DILocation(line: 431, column: 3, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 425, column: 9)
!6618 = !DILocation(line: 431, column: 8, scope: !6617)
!6619 = !DILocation(line: 431, column: 15, scope: !6617)
!6620 = !DILocation(line: 437, column: 20, scope: !6617)
!6621 = !DILocation(line: 437, column: 25, scope: !6617)
!6622 = !DILocation(line: 437, column: 10, scope: !6617)
!6623 = !DILocation(line: 437, column: 8, scope: !6617)
!6624 = !DILocation(line: 438, column: 7, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6617, file: !3, line: 438, column: 7)
!6626 = !DILocation(line: 438, column: 12, scope: !6625)
!6627 = !DILocation(line: 438, column: 7, scope: !6617)
!6628 = !DILocation(line: 439, column: 17, scope: !6625)
!6629 = !DILocation(line: 439, column: 4, scope: !6625)
!6630 = !DILocation(line: 441, column: 26, scope: !6555)
!6631 = !DILocation(line: 441, column: 31, scope: !6555)
!6632 = !DILocation(line: 441, column: 37, scope: !6555)
!6633 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6557)
!6634 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6557)
!6635 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6557)
!6636 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6557)
!6637 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6557)
!6638 = !DILocation(line: 443, column: 2, scope: !6555)
!6639 = !DILocation(line: 444, column: 1, scope: !6555)
!6640 = distinct !DISubprogram(name: "bdc_udc_start", scope: !3, file: !3, line: 362, type: !319, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6641 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6642)
!6642 = distinct !DILocation(line: 391, column: 2, scope: !6640)
!6643 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6642)
!6644 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6645)
!6645 = distinct !DILocation(line: 370, column: 2, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 370, column: 2)
!6647 = distinct !DILexicalBlock(scope: !6648, file: !3, line: 370, column: 2)
!6648 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 370, column: 2)
!6649 = distinct !DILexicalBlock(scope: !6650, file: !3, line: 370, column: 2)
!6650 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 370, column: 2)
!6651 = !DILocalVariable(name: "gadget", arg: 1, scope: !6640, file: !3, line: 362, type: !288)
!6652 = !DILocation(line: 362, column: 45, scope: !6640)
!6653 = !DILocalVariable(name: "driver", arg: 2, scope: !6640, file: !3, line: 363, type: !321)
!6654 = !DILocation(line: 363, column: 31, scope: !6640)
!6655 = !DILocalVariable(name: "bdc", scope: !6640, file: !3, line: 365, type: !242)
!6656 = !DILocation(line: 365, column: 14, scope: !6640)
!6657 = !DILocalVariable(name: "__mptr", scope: !6658, file: !3, line: 365, type: !241)
!6658 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 365, column: 20)
!6659 = !DILocation(line: 365, column: 20, scope: !6658)
!6660 = !DILocation(line: 365, column: 20, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6658, file: !3, line: 365, column: 20)
!6662 = !DILocalVariable(name: "flags", scope: !6640, file: !3, line: 366, type: !232)
!6663 = !DILocation(line: 366, column: 16, scope: !6640)
!6664 = !DILocalVariable(name: "ret", scope: !6640, file: !3, line: 367, type: !235)
!6665 = !DILocation(line: 367, column: 6, scope: !6640)
!6666 = !DILocation(line: 370, column: 2, scope: !6640)
!6667 = !DILocation(line: 370, column: 2, scope: !6650)
!6668 = !DILocalVariable(name: "__dummy", scope: !6669, file: !3, line: 370, type: !232)
!6669 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 370, column: 2)
!6670 = !DILocation(line: 370, column: 2, scope: !6669)
!6671 = !DILocalVariable(name: "__dummy2", scope: !6669, file: !3, line: 370, type: !232)
!6672 = !DILocation(line: 370, column: 2, scope: !6649)
!6673 = !DILocation(line: 370, column: 2, scope: !6648)
!6674 = !DILocation(line: 370, column: 2, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6648, file: !3, line: 370, column: 2)
!6676 = !DILocalVariable(name: "__dummy", scope: !6677, file: !3, line: 370, type: !232)
!6677 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 370, column: 2)
!6678 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 370, column: 2)
!6679 = !DILocation(line: 370, column: 2, scope: !6677)
!6680 = !DILocalVariable(name: "__dummy2", scope: !6677, file: !3, line: 370, type: !232)
!6681 = !DILocation(line: 370, column: 2, scope: !6678)
!6682 = !DILocation(line: 370, column: 2, scope: !6647)
!6683 = !{i32 -2140092103}
!6684 = !DILocation(line: 370, column: 2, scope: !6646)
!6685 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6645)
!6686 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6645)
!6687 = !DILocation(line: 371, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 371, column: 6)
!6689 = !DILocation(line: 371, column: 11, scope: !6688)
!6690 = !DILocation(line: 371, column: 6, scope: !6640)
!6691 = !DILocation(line: 372, column: 3, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6688, file: !3, line: 371, column: 26)
!6693 = !DILocation(line: 375, column: 7, scope: !6692)
!6694 = !DILocation(line: 376, column: 3, scope: !6692)
!6695 = !DILocation(line: 383, column: 16, scope: !6640)
!6696 = !DILocation(line: 383, column: 8, scope: !6640)
!6697 = !DILocation(line: 383, column: 6, scope: !6640)
!6698 = !DILocation(line: 384, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 384, column: 6)
!6700 = !DILocation(line: 384, column: 6, scope: !6640)
!6701 = !DILocation(line: 385, column: 3, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 384, column: 11)
!6703 = !DILocation(line: 386, column: 3, scope: !6702)
!6704 = !DILocation(line: 388, column: 23, scope: !6640)
!6705 = !DILocation(line: 388, column: 2, scope: !6640)
!6706 = !DILocation(line: 388, column: 7, scope: !6640)
!6707 = !DILocation(line: 388, column: 21, scope: !6640)
!6708 = !DILocation(line: 389, column: 28, scope: !6640)
!6709 = !DILocation(line: 389, column: 36, scope: !6640)
!6710 = !DILocation(line: 389, column: 2, scope: !6640)
!6711 = !DILocation(line: 389, column: 7, scope: !6640)
!6712 = !DILocation(line: 389, column: 14, scope: !6640)
!6713 = !DILocation(line: 389, column: 18, scope: !6640)
!6714 = !DILocation(line: 389, column: 25, scope: !6640)
!6715 = !DILabel(scope: !6640, name: "err", file: !3, line: 390)
!6716 = !DILocation(line: 390, column: 1, scope: !6640)
!6717 = !DILocation(line: 391, column: 26, scope: !6640)
!6718 = !DILocation(line: 391, column: 31, scope: !6640)
!6719 = !DILocation(line: 391, column: 37, scope: !6640)
!6720 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6642)
!6721 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6642)
!6722 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6642)
!6723 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6642)
!6724 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6642)
!6725 = !DILocation(line: 393, column: 9, scope: !6640)
!6726 = !DILocation(line: 393, column: 2, scope: !6640)
!6727 = distinct !DISubprogram(name: "bdc_udc_stop", scope: !3, file: !3, line: 396, type: !286, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6728 = !DILocation(line: 407, column: 64, scope: !6166, inlinedAt: !6729)
!6729 = distinct !DILocation(line: 406, column: 2, scope: !6727)
!6730 = !DILocation(line: 407, column: 84, scope: !6166, inlinedAt: !6729)
!6731 = !DILocation(line: 327, column: 67, scope: !6174, inlinedAt: !6732)
!6732 = distinct !DILocation(line: 402, column: 2, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 402, column: 2)
!6734 = distinct !DILexicalBlock(scope: !6735, file: !3, line: 402, column: 2)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 402, column: 2)
!6736 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 402, column: 2)
!6737 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 402, column: 2)
!6738 = !DILocalVariable(name: "gadget", arg: 1, scope: !6727, file: !3, line: 396, type: !288)
!6739 = !DILocation(line: 396, column: 44, scope: !6727)
!6740 = !DILocalVariable(name: "bdc", scope: !6727, file: !3, line: 398, type: !242)
!6741 = !DILocation(line: 398, column: 14, scope: !6727)
!6742 = !DILocalVariable(name: "__mptr", scope: !6743, file: !3, line: 398, type: !241)
!6743 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 398, column: 20)
!6744 = !DILocation(line: 398, column: 20, scope: !6743)
!6745 = !DILocation(line: 398, column: 20, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 398, column: 20)
!6747 = !DILocalVariable(name: "flags", scope: !6727, file: !3, line: 399, type: !232)
!6748 = !DILocation(line: 399, column: 16, scope: !6727)
!6749 = !DILocation(line: 402, column: 2, scope: !6727)
!6750 = !DILocation(line: 402, column: 2, scope: !6737)
!6751 = !DILocalVariable(name: "__dummy", scope: !6752, file: !3, line: 402, type: !232)
!6752 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 402, column: 2)
!6753 = !DILocation(line: 402, column: 2, scope: !6752)
!6754 = !DILocalVariable(name: "__dummy2", scope: !6752, file: !3, line: 402, type: !232)
!6755 = !DILocation(line: 402, column: 2, scope: !6736)
!6756 = !DILocation(line: 402, column: 2, scope: !6735)
!6757 = !DILocation(line: 402, column: 2, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6735, file: !3, line: 402, column: 2)
!6759 = !DILocalVariable(name: "__dummy", scope: !6760, file: !3, line: 402, type: !232)
!6760 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 402, column: 2)
!6761 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 402, column: 2)
!6762 = !DILocation(line: 402, column: 2, scope: !6760)
!6763 = !DILocalVariable(name: "__dummy2", scope: !6760, file: !3, line: 402, type: !232)
!6764 = !DILocation(line: 402, column: 2, scope: !6761)
!6765 = !DILocation(line: 402, column: 2, scope: !6734)
!6766 = !{i32 -2140089190}
!6767 = !DILocation(line: 402, column: 2, scope: !6733)
!6768 = !DILocation(line: 329, column: 10, scope: !6174, inlinedAt: !6732)
!6769 = !DILocation(line: 329, column: 16, scope: !6174, inlinedAt: !6732)
!6770 = !DILocation(line: 403, column: 11, scope: !6727)
!6771 = !DILocation(line: 403, column: 2, scope: !6727)
!6772 = !DILocation(line: 404, column: 2, scope: !6727)
!6773 = !DILocation(line: 404, column: 7, scope: !6727)
!6774 = !DILocation(line: 404, column: 21, scope: !6727)
!6775 = !DILocation(line: 405, column: 2, scope: !6727)
!6776 = !DILocation(line: 405, column: 7, scope: !6727)
!6777 = !DILocation(line: 405, column: 14, scope: !6727)
!6778 = !DILocation(line: 405, column: 18, scope: !6727)
!6779 = !DILocation(line: 405, column: 25, scope: !6727)
!6780 = !DILocation(line: 406, column: 26, scope: !6727)
!6781 = !DILocation(line: 406, column: 31, scope: !6727)
!6782 = !DILocation(line: 406, column: 37, scope: !6727)
!6783 = !DILocation(line: 409, column: 2, scope: !6245, inlinedAt: !6729)
!6784 = !DILocation(line: 409, column: 2, scope: !6250, inlinedAt: !6729)
!6785 = !DILocation(line: 409, column: 2, scope: !6251, inlinedAt: !6729)
!6786 = !DILocation(line: 409, column: 2, scope: !6258, inlinedAt: !6729)
!6787 = !DILocation(line: 409, column: 2, scope: !6261, inlinedAt: !6729)
!6788 = !DILocation(line: 408, column: 2, scope: !6727)
!6789 = distinct !DISubprogram(name: "srr_dqp_index_advc", scope: !3, file: !3, line: 60, type: !5592, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6790 = !DILocalVariable(name: "bdc", arg: 1, scope: !6789, file: !3, line: 60, type: !242)
!6791 = !DILocation(line: 60, column: 44, scope: !6789)
!6792 = !DILocalVariable(name: "srr_num", arg: 2, scope: !6789, file: !3, line: 60, type: !559)
!6793 = !DILocation(line: 60, column: 53, scope: !6789)
!6794 = !DILocalVariable(name: "srr", scope: !6789, file: !3, line: 62, type: !6795)
!6795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!6796 = !DILocation(line: 62, column: 14, scope: !6789)
!6797 = !DILocation(line: 64, column: 9, scope: !6789)
!6798 = !DILocation(line: 64, column: 14, scope: !6789)
!6799 = !DILocation(line: 64, column: 6, scope: !6789)
!6800 = !DILocation(line: 65, column: 2, scope: !6789)
!6801 = !DILocation(line: 65, column: 2, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 65, column: 2)
!6803 = !DILocation(line: 66, column: 2, scope: !6789)
!6804 = !DILocation(line: 66, column: 7, scope: !6789)
!6805 = !DILocation(line: 66, column: 16, scope: !6789)
!6806 = !DILocation(line: 68, column: 6, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 68, column: 6)
!6808 = !DILocation(line: 68, column: 11, scope: !6807)
!6809 = !DILocation(line: 68, column: 21, scope: !6807)
!6810 = !DILocation(line: 68, column: 6, scope: !6789)
!6811 = !DILocation(line: 69, column: 3, scope: !6807)
!6812 = !DILocation(line: 69, column: 8, scope: !6807)
!6813 = !DILocation(line: 69, column: 18, scope: !6807)
!6814 = !DILocation(line: 70, column: 1, scope: !6789)
!6815 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6317, file: !6317, line: 646, type: !6318, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6816 = !DILocalVariable(name: "__ret", scope: !6817, file: !6317, line: 648, type: !232)
!6817 = distinct !DILexicalBlock(scope: !6815, file: !6317, line: 648, column: 9)
!6818 = !DILocation(line: 648, column: 9, scope: !6817)
!6819 = !DILocalVariable(name: "__edi", scope: !6817, file: !6317, line: 648, type: !232)
!6820 = !DILocalVariable(name: "__esi", scope: !6817, file: !6317, line: 648, type: !232)
!6821 = !DILocalVariable(name: "__edx", scope: !6817, file: !6317, line: 648, type: !232)
!6822 = !DILocalVariable(name: "__ecx", scope: !6817, file: !6317, line: 648, type: !232)
!6823 = !DILocalVariable(name: "__eax", scope: !6817, file: !6317, line: 648, type: !232)
!6824 = !DILocation(line: 648, column: 9, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6826, file: !6317, line: 648, column: 9)
!6826 = distinct !DILexicalBlock(scope: !6817, file: !6317, line: 648, column: 9)
!6827 = !{i32 -2145775779, i32 -2145773464, i32 -2145773230, i32 -2145773179, i32 -2145773151, i32 -2145773126, i32 -2145773442, i32 -2145773429, i32 -2145772991, i32 -2145772872, i32 -2145773337, i32 -2145773310, i32 -2145773282, i32 -2145773252}
!6828 = !DILocalVariable(name: "__mask", scope: !6829, file: !6317, line: 648, type: !232)
!6829 = distinct !DILexicalBlock(scope: !6825, file: !6317, line: 648, column: 9)
!6830 = !DILocation(line: 648, column: 9, scope: !6829)
!6831 = !DILocation(line: 648, column: 9, scope: !6826)
!6832 = !DILocation(line: 648, column: 2, scope: !6815)
!6833 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6317, file: !6317, line: 656, type: !3156, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6834 = !DILocalVariable(name: "__edi", scope: !6835, file: !6317, line: 658, type: !232)
!6835 = distinct !DILexicalBlock(scope: !6833, file: !6317, line: 658, column: 2)
!6836 = !DILocation(line: 658, column: 2, scope: !6835)
!6837 = !DILocalVariable(name: "__esi", scope: !6835, file: !6317, line: 658, type: !232)
!6838 = !DILocalVariable(name: "__edx", scope: !6835, file: !6317, line: 658, type: !232)
!6839 = !DILocalVariable(name: "__ecx", scope: !6835, file: !6317, line: 658, type: !232)
!6840 = !DILocalVariable(name: "__eax", scope: !6835, file: !6317, line: 658, type: !232)
!6841 = !{i32 -2145768685, i32 -2145767953, i32 -2145767719, i32 -2145767668, i32 -2145767640, i32 -2145767615, i32 -2145767931, i32 -2145767918, i32 -2145767480, i32 -2145767361, i32 -2145767826, i32 -2145767799, i32 -2145767771, i32 -2145767741}
!6842 = !DILocation(line: 659, column: 1, scope: !6833)
!6843 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6317, file: !6317, line: 651, type: !6844, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !395)
!6844 = !DISubroutineType(types: !6845)
!6845 = !{null, !232}
!6846 = !DILocalVariable(name: "f", arg: 1, scope: !6843, file: !6317, line: 651, type: !232)
!6847 = !DILocation(line: 651, column: 65, scope: !6843)
!6848 = !DILocalVariable(name: "__edi", scope: !6849, file: !6317, line: 653, type: !232)
!6849 = distinct !DILexicalBlock(scope: !6843, file: !6317, line: 653, column: 2)
!6850 = !DILocation(line: 653, column: 2, scope: !6849)
!6851 = !DILocalVariable(name: "__esi", scope: !6849, file: !6317, line: 653, type: !232)
!6852 = !DILocalVariable(name: "__edx", scope: !6849, file: !6317, line: 653, type: !232)
!6853 = !DILocalVariable(name: "__ecx", scope: !6849, file: !6317, line: 653, type: !232)
!6854 = !DILocalVariable(name: "__eax", scope: !6849, file: !6317, line: 653, type: !232)
!6855 = !{i32 -2145771312, i32 -2145770562, i32 -2145770328, i32 -2145770277, i32 -2145770249, i32 -2145770224, i32 -2145770540, i32 -2145770527, i32 -2145770089, i32 -2145769970, i32 -2145770435, i32 -2145770408, i32 -2145770380, i32 -2145770350}
!6856 = !DILocation(line: 654, column: 1, scope: !6843)
