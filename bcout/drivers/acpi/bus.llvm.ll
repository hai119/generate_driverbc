; ModuleID = '../bcout/drivers/acpi/bus.llvm.bc'
source_filename = "drivers/acpi/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_acpi_init4:\09\09\09"
module asm ".long\09acpi_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.acpi_buffer = type { i64, i8* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.76, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.76 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.9, %union.anon.64, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.64 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.65, i32 }
%union.anon.65 = type { %struct.kuid_t }
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
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.42, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.42 = type { %struct.bio_integrity_payload* }
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
%struct.__call_single_node = type { %struct.llist_node, %union.anon.86, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.86 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.43, %union.anon.44, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.23, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.29, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.30, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.31, %union.anon.35, %struct.key_restriction* }
%union.anon.29 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.30 = type { i64 }
%union.anon.31 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.32, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.32 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.35 = type { %union.key_payload }
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
%struct.kernel_siginfo = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.57 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.58, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.61 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { i64, i64 }
%union.anon.61 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38, [48 x i8] }
%struct.anon.38 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.69 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.69 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.77, i32, i32, %struct.list_head }
%struct.anon.77 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.78, i8, i8, i32 }
%struct.anon.78 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, {}*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { {}*, {}*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.88, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.88 = type { i64, [72 x i8] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_osc_context = type { i8*, i32, %struct.acpi_buffer, %struct.acpi_buffer }
%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { i32, i32, i8* }
%struct.anon = type { i32, i64 }
%struct.acpi_device_physical_node = type { i32, %struct.list_head, %struct.device*, i8 }
%struct.anon.2 = type { i32, i32, %union.acpi_object* }
%struct.anon.0 = type { i32, i32, i8* }
%struct.acpi_hardware_id = type { %struct.list_head, i8* }

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@__const.acpi_run_osc.output = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_OSC\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"_OSC evaluation returned wrong type\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"_OSC request failed\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"_OSC invalid UUID\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"_OSC invalid revision\00", align 1
@acpi_disabled = external dso_local global i32, align 4
@acpi_bus_type = dso_local global %struct.bus_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @acpi_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @acpi_device_uevent, i32 (%struct.device*)* @acpi_device_probe, void (%struct.device*)* null, i32 (%struct.device*)* @acpi_device_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@.str.6 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\016ACPI: Core revision %08x\0A\00", align 1
@acpi_strict = external dso_local global i32, align 4
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@acpi_permanent_mmap = external dso_local global i8, align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\013ACPI: Unable to reallocate ACPI tables\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\013ACPI: Unable to initialize the ACPI Interpreter\0A\00", align 1
@acpi_ioapic = external dso_local global i32, align 4
@acpi_sci_flags = external dso_local global i8, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_sci_override_gsi = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unable to enable ACPI\0A\00", align 1
@__UNIQUE_ID___addressable_acpi_init313 = internal global i8* bitcast (i32 ()* @acpi_init to i8*), section ".discard.addressable", align 8, !dbg !5270
@acpi_root = dso_local global %struct.acpi_device* null, align 8, !dbg !5272
@acpi_root_dir = dso_local global %struct.proc_dir_entry* null, align 8, !dbg !5274
@osc_sb_apei_support_acked = dso_local global i8 0, align 1, !dbg !5276
@osc_pc_lpi_support_confirmed = dso_local global i8 0, align 1, !dbg !5278
@acpi_kobj = dso_local global %struct.kobject* null, align 8, !dbg !5280
@.str.11 = private unnamed_addr constant [8 x i8] c"PRP0001\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"TOSHIBA Satellite\00", align 1
@dsdt_dmi_table = internal constant [2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @set_copy_dsdt, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Satellite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !5282
@.str.15 = private unnamed_addr constant [52 x i8] c"\015%s detected - force copy of DSDT to local memory\0A\00", align 1
@acpi_gbl_copy_dsdt_locally = external dso_local global i8, align 1
@acpi_pci_disabled = external dso_local global i32, align 4
@acpi_noirq = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"\016ACPI: Interpreter disabled.\0A\00", align 1
@firmware_kobj = external dso_local global %struct.kobject*, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"\014%s: kset create error\0A\00", align 1
@__func__.acpi_init = private unnamed_addr constant [10 x i8] c"acpi_init\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"\013ACPI: Unable to load the System Description Tables\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\013ACPI: Unable to start the ACPI Interpreter\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013ACPI: Unable to initialize ACPI objects\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"\016ACPI: Interpreter enabled\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"\013ACPI: Unable to register for device notifications\0A\00", align 1
@sb_uuid_str = internal global [37 x i8] c"0811B06E-4A27-44F9-8D60-3CBBC22E7B48\00", align 16, !dbg !5305
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1
@acpi_irq_model = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"PIC\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"IOAPIC\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"IOSAPIC\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"GIC\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"platform specific model\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\014ACPI: Unknown interrupt routing model\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\016ACPI: Using %s for interrupt routing\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"\\_PIC\00", align 1
@_acpi_module_name = internal constant [4 x i8] c"bus\00", align 1, !dbg !5308
@.str.32 = private unnamed_addr constant [16 x i8] c"Evaluating _PIC\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.34 = private unnamed_addr constant [57 x i8] c"Device cannot be configured due to a frequency mismatch\0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"Device cannot be configured due to a bus mode mismatch\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Device has suffered a power fault\0A\00", align 1
@acpi_sb_notify.acpi_sb_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @acpi_sb_notify.acpi_sb_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @acpi_sb_notify.acpi_sb_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @sb_notify_work }, align 8, !dbg !5311
@.str.37 = private unnamed_addr constant [44 x i8] c"\014event %x is not supported by \\_SB device\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"\016Graceful shutdown in progress.\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_init313 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_get_status_handle(i8* %handle, i64* %sta) #0 !dbg !5321 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %sta.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i64* %sta, i64** %sta.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %sta.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5331
  %1 = load i64*, i64** %sta.addr, align 8, !dbg !5332
  %call = call i32 @acpi_evaluate_integer(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* null, i64* %1) #7, !dbg !5333
  store i32 %call, i32* %status, align 4, !dbg !5334
  %2 = load i32, i32* %status, align 4, !dbg !5335
  %tobool = icmp ne i32 %2, 0, !dbg !5335
  br i1 %tobool, label %if.end, label %if.then, !dbg !5337

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5338
  br label %return, !dbg !5338

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !5339
  %cmp = icmp eq i32 %3, 5, !dbg !5341
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5342

if.then1:                                         ; preds = %if.end
  %4 = load i64*, i64** %sta.addr, align 8, !dbg !5343
  store i64 15, i64* %4, align 8, !dbg !5345
  store i32 0, i32* %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end2:                                          ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !5347
  store i32 %5, i32* %retval, align 4, !dbg !5348
  br label %return, !dbg !5348

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5349
  ret i32 %6, !dbg !5349
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_get_status(%struct.acpi_device* %device) #0 !dbg !5350 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %sta = alloca i64, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata i64* %sta, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5357
  %call = call zeroext i1 @acpi_device_always_present(%struct.acpi_device* %0) #7, !dbg !5359
  br i1 %call, label %if.then, label %if.end, !dbg !5360

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5361
  call void @acpi_set_device_status(%struct.acpi_device* %1, i32 15) #7, !dbg !5363
  store i32 0, i32* %retval, align 4, !dbg !5364
  br label %return, !dbg !5364

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5365
  %call1 = call zeroext i1 @acpi_device_is_battery(%struct.acpi_device* %2) #7, !dbg !5367
  br i1 %call1, label %land.lhs.true, label %if.end3, !dbg !5368

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5369
  %dep_unmet = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 23, !dbg !5370
  %4 = load i32, i32* %dep_unmet, align 4, !dbg !5370
  %tobool = icmp ne i32 %4, 0, !dbg !5369
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5371

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5372
  call void @acpi_set_device_status(%struct.acpi_device* %5, i32 0) #7, !dbg !5374
  store i32 0, i32* %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5376
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1, !dbg !5377
  %7 = load i8*, i8** %handle, align 8, !dbg !5377
  %call4 = call i32 @acpi_bus_get_status_handle(i8* %7, i64* %sta) #7, !dbg !5378
  store i32 %call4, i32* %status, align 4, !dbg !5379
  %8 = load i32, i32* %status, align 4, !dbg !5380
  %tobool5 = icmp ne i32 %8, 0, !dbg !5380
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5382

if.then6:                                         ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

if.end7:                                          ; preds = %if.end3
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5384
  %10 = load i64, i64* %sta, align 8, !dbg !5385
  %conv = trunc i64 %10 to i32, !dbg !5385
  call void @acpi_set_device_status(%struct.acpi_device* %9, i32 %conv) #7, !dbg !5386
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5387
  %status8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 8, !dbg !5389
  %12 = bitcast %struct.acpi_device_status* %status8 to i32*, !dbg !5390
  %bf.load = load i32, i32* %12, align 8, !dbg !5390
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5390
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5390
  %tobool9 = icmp ne i32 %bf.clear, 0, !dbg !5387
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !5391

land.lhs.true10:                                  ; preds = %if.end7
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5392
  %status11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 8, !dbg !5393
  %14 = bitcast %struct.acpi_device_status* %status11 to i32*, !dbg !5394
  %bf.load12 = load i32, i32* %14, align 8, !dbg !5394
  %bf.clear13 = and i32 %bf.load12, 1, !dbg !5394
  %tobool14 = icmp ne i32 %bf.clear13, 0, !dbg !5392
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5395

if.then15:                                        ; preds = %land.lhs.true10
  br label %if.end16, !dbg !5396

if.end16:                                         ; preds = %if.then15, %land.lhs.true10, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

return:                                           ; preds = %if.end16, %if.then6, %if.then2, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5399
  ret i32 %15, !dbg !5399
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_always_present(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_set_device_status(%struct.acpi_device* %adev, i32 %sta) #0 !dbg !5400 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %sta.addr = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i32 %sta, i32* %sta.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sta.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load i32, i32* %sta.addr, align 4, !dbg !5405
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5406
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 8, !dbg !5407
  %2 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !5408
  store i32 %0, i32* %2, align 8, !dbg !5409
  ret void, !dbg !5410
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_is_battery(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bus_private_data_handler(i8* %handle, i8* %context) #0 !dbg !5411 {
entry:
  %handle.addr = alloca i8*, align 8
  %context.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  ret void, !dbg !5418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_attach_private_data(i8* %handle, i8* %data) #0 !dbg !5419 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5426, metadata !DIExpression()), !dbg !5427
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5428
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5429
  %call = call i32 @acpi_attach_data(i8* %0, void (i8*, i8*)* @acpi_bus_private_data_handler, i8* %1) #7, !dbg !5430
  store i32 %call, i32* %status, align 4, !dbg !5431
  %2 = load i32, i32* %status, align 4, !dbg !5432
  %tobool = icmp ne i32 %2, 0, !dbg !5432
  br i1 %tobool, label %if.then, label %if.end, !dbg !5434

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !5435
  %3 = load i32, i32* %tmp, align 4, !dbg !5439
  store i32 -19, i32* %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5441
  br label %return, !dbg !5441

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5442
  ret i32 %4, !dbg !5442
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_attach_data(i8*, void (i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_get_private_data(i8* %handle, i8** %data) #0 !dbg !5443 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %data.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  store i8** %data, i8*** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %data.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5450, metadata !DIExpression()), !dbg !5451
  %0 = load i8**, i8*** %data.addr, align 8, !dbg !5452
  %tobool = icmp ne i8** %0, null, !dbg !5452
  br i1 %tobool, label %if.end, label %if.then, !dbg !5454

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !5456
  %2 = load i8**, i8*** %data.addr, align 8, !dbg !5457
  %call = call i32 @acpi_get_data(i8* %1, void (i8*, i8*)* @acpi_bus_private_data_handler, i8** %2) #7, !dbg !5458
  store i32 %call, i32* %status, align 4, !dbg !5459
  %3 = load i32, i32* %status, align 4, !dbg !5460
  %tobool1 = icmp ne i32 %3, 0, !dbg !5460
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5462

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !5463
  %4 = load i32, i32* %tmp, align 4, !dbg !5467
  store i32 -19, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5469
  br label %return, !dbg !5469

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5470
  ret i32 %5, !dbg !5470
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_data(i8*, void (i8*, i8*)*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bus_detach_private_data(i8* %handle) #0 !dbg !5471 {
entry:
  %handle.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5476
  %call = call i32 @acpi_detach_data(i8* %0, void (i8*, i8*)* @acpi_bus_private_data_handler) #7, !dbg !5477
  ret void, !dbg !5478
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_detach_data(i8*, void (i8*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_run_osc(i8* %handle, %struct.acpi_osc_context* %context) #0 !dbg !5479 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %context.addr = alloca %struct.acpi_osc_context*, align 8
  %status = alloca i32, align 4
  %input = alloca %struct.acpi_object_list, align 8
  %in_params = alloca [4 x %union.acpi_object], align 16
  %out_obj = alloca %union.acpi_object*, align 8
  %guid = alloca %struct.guid_t, align 1
  %errors = alloca i32, align 4
  %output = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  store %struct.acpi_osc_context* %context, %struct.acpi_osc_context** %context.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_osc_context** %context.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5498, metadata !DIExpression()), !dbg !5499
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %input, metadata !5500, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.declare(metadata [4 x %union.acpi_object]* %in_params, metadata !5506, metadata !DIExpression()), !dbg !5508
  call void @llvm.dbg.declare(metadata %union.acpi_object** %out_obj, metadata !5509, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.declare(metadata %struct.guid_t* %guid, metadata !5511, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata i32* %errors, metadata !5518, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %output, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = bitcast %struct.acpi_buffer* %output to i8*, !dbg !5521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_run_osc.output to i8*), i64 16, i1 false), !dbg !5521
  %1 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5522
  %tobool = icmp ne %struct.acpi_osc_context* %1, null, !dbg !5522
  br i1 %tobool, label %if.end, label %if.then, !dbg !5524

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5526
  %uuid_str = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 0, !dbg !5528
  %3 = load i8*, i8** %uuid_str, align 8, !dbg !5528
  %call = call i32 @guid_parse(i8* %3, %struct.guid_t* %guid) #7, !dbg !5529
  %tobool1 = icmp ne i32 %call, 0, !dbg !5529
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5530

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !5531
  br label %return, !dbg !5531

if.end3:                                          ; preds = %if.end
  %4 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5532
  %ret = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 3, !dbg !5533
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret, i32 0, i32 0, !dbg !5534
  store i64 -1, i64* %length, align 8, !dbg !5535
  %5 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5536
  %ret4 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %5, i32 0, i32 3, !dbg !5537
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret4, i32 0, i32 1, !dbg !5538
  store i8* null, i8** %pointer, align 8, !dbg !5539
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %input, i32 0, i32 0, !dbg !5540
  store i32 4, i32* %count, align 8, !dbg !5541
  %arraydecay = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 0, !dbg !5542
  %pointer5 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %input, i32 0, i32 1, !dbg !5543
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer5, align 8, !dbg !5544
  %arrayidx = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 0, !dbg !5545
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5546
  store i32 3, i32* %type, align 16, !dbg !5547
  %arrayidx6 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 0, !dbg !5548
  %buffer = bitcast %union.acpi_object* %arrayidx6 to %struct.anon.1*, !dbg !5549
  %length7 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !5550
  store i32 16, i32* %length7, align 4, !dbg !5551
  %6 = bitcast %struct.guid_t* %guid to i8*, !dbg !5552
  %arrayidx8 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 0, !dbg !5553
  %buffer9 = bitcast %union.acpi_object* %arrayidx8 to %struct.anon.1*, !dbg !5554
  %pointer10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer9, i32 0, i32 2, !dbg !5555
  store i8* %6, i8** %pointer10, align 8, !dbg !5556
  %arrayidx11 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 1, !dbg !5557
  %type12 = bitcast %union.acpi_object* %arrayidx11 to i32*, !dbg !5558
  store i32 1, i32* %type12, align 8, !dbg !5559
  %7 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5560
  %rev = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %7, i32 0, i32 1, !dbg !5561
  %8 = load i32, i32* %rev, align 8, !dbg !5561
  %conv = sext i32 %8 to i64, !dbg !5560
  %arrayidx13 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 1, !dbg !5562
  %integer = bitcast %union.acpi_object* %arrayidx13 to %struct.anon*, !dbg !5563
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !5564
  store i64 %conv, i64* %value, align 8, !dbg !5565
  %arrayidx14 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 2, !dbg !5566
  %type15 = bitcast %union.acpi_object* %arrayidx14 to i32*, !dbg !5567
  store i32 1, i32* %type15, align 16, !dbg !5568
  %9 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5569
  %cap = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %9, i32 0, i32 2, !dbg !5570
  %length16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 0, !dbg !5571
  %10 = load i64, i64* %length16, align 8, !dbg !5571
  %div = udiv i64 %10, 4, !dbg !5572
  %arrayidx17 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 2, !dbg !5573
  %integer18 = bitcast %union.acpi_object* %arrayidx17 to %struct.anon*, !dbg !5574
  %value19 = getelementptr inbounds %struct.anon, %struct.anon* %integer18, i32 0, i32 1, !dbg !5575
  store i64 %div, i64* %value19, align 8, !dbg !5576
  %arrayidx20 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 3, !dbg !5577
  %type21 = bitcast %union.acpi_object* %arrayidx20 to i32*, !dbg !5578
  store i32 3, i32* %type21, align 8, !dbg !5579
  %11 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5580
  %cap22 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %11, i32 0, i32 2, !dbg !5581
  %length23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap22, i32 0, i32 0, !dbg !5582
  %12 = load i64, i64* %length23, align 8, !dbg !5582
  %conv24 = trunc i64 %12 to i32, !dbg !5580
  %arrayidx25 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 3, !dbg !5583
  %buffer26 = bitcast %union.acpi_object* %arrayidx25 to %struct.anon.1*, !dbg !5584
  %length27 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer26, i32 0, i32 1, !dbg !5585
  store i32 %conv24, i32* %length27, align 4, !dbg !5586
  %13 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5587
  %cap28 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %13, i32 0, i32 2, !dbg !5588
  %pointer29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap28, i32 0, i32 1, !dbg !5589
  %14 = load i8*, i8** %pointer29, align 8, !dbg !5589
  %arrayidx30 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %in_params, i64 0, i64 3, !dbg !5590
  %buffer31 = bitcast %union.acpi_object* %arrayidx30 to %struct.anon.1*, !dbg !5591
  %pointer32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer31, i32 0, i32 2, !dbg !5592
  store i8* %14, i8** %pointer32, align 8, !dbg !5593
  %15 = load i8*, i8** %handle.addr, align 8, !dbg !5594
  %call33 = call i32 @acpi_evaluate_object(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* %input, %struct.acpi_buffer* %output) #7, !dbg !5595
  store i32 %call33, i32* %status, align 4, !dbg !5596
  %16 = load i32, i32* %status, align 4, !dbg !5597
  %tobool34 = icmp ne i32 %16, 0, !dbg !5597
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5599

if.then35:                                        ; preds = %if.end3
  %17 = load i32, i32* %status, align 4, !dbg !5600
  store i32 %17, i32* %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

if.end36:                                         ; preds = %if.end3
  %length37 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %output, i32 0, i32 0, !dbg !5602
  %18 = load i64, i64* %length37, align 8, !dbg !5602
  %tobool38 = icmp ne i64 %18, 0, !dbg !5604
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5605

if.then39:                                        ; preds = %if.end36
  store i32 9, i32* %retval, align 4, !dbg !5606
  br label %return, !dbg !5606

if.end40:                                         ; preds = %if.end36
  %pointer41 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %output, i32 0, i32 1, !dbg !5607
  %19 = load i8*, i8** %pointer41, align 8, !dbg !5607
  %20 = bitcast i8* %19 to %union.acpi_object*, !dbg !5608
  store %union.acpi_object* %20, %union.acpi_object** %out_obj, align 8, !dbg !5609
  %21 = load %union.acpi_object*, %union.acpi_object** %out_obj, align 8, !dbg !5610
  %type42 = bitcast %union.acpi_object* %21 to i32*, !dbg !5612
  %22 = load i32, i32* %type42, align 8, !dbg !5612
  %cmp = icmp ne i32 %22, 3, !dbg !5613
  br i1 %cmp, label %if.then51, label %lor.lhs.false, !dbg !5614

lor.lhs.false:                                    ; preds = %if.end40
  %23 = load %union.acpi_object*, %union.acpi_object** %out_obj, align 8, !dbg !5615
  %buffer44 = bitcast %union.acpi_object* %23 to %struct.anon.1*, !dbg !5616
  %length45 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer44, i32 0, i32 1, !dbg !5617
  %24 = load i32, i32* %length45, align 4, !dbg !5617
  %conv46 = zext i32 %24 to i64, !dbg !5615
  %25 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5618
  %cap47 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %25, i32 0, i32 2, !dbg !5619
  %length48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap47, i32 0, i32 0, !dbg !5620
  %26 = load i64, i64* %length48, align 8, !dbg !5620
  %cmp49 = icmp ne i64 %conv46, %26, !dbg !5621
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5622

if.then51:                                        ; preds = %lor.lhs.false, %if.end40
  %27 = load i8*, i8** %handle.addr, align 8, !dbg !5623
  %28 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5625
  call void @acpi_print_osc_error(i8* %27, %struct.acpi_osc_context* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !5626
  store i32 8, i32* %status, align 4, !dbg !5627
  br label %out_kfree, !dbg !5628

if.end52:                                         ; preds = %lor.lhs.false
  %29 = load %union.acpi_object*, %union.acpi_object** %out_obj, align 8, !dbg !5629
  %buffer53 = bitcast %union.acpi_object* %29 to %struct.anon.1*, !dbg !5630
  %pointer54 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer53, i32 0, i32 2, !dbg !5631
  %30 = load i8*, i8** %pointer54, align 8, !dbg !5631
  %31 = bitcast i8* %30 to i32*, !dbg !5632
  %32 = load i32, i32* %31, align 4, !dbg !5632
  %and = and i32 %32, -2, !dbg !5633
  store i32 %and, i32* %errors, align 4, !dbg !5634
  %33 = load i32, i32* %errors, align 4, !dbg !5635
  %tobool55 = icmp ne i32 %33, 0, !dbg !5635
  br i1 %tobool55, label %if.then56, label %if.end80, !dbg !5637

if.then56:                                        ; preds = %if.end52
  %34 = load i32, i32* %errors, align 4, !dbg !5638
  %and57 = and i32 %34, 2, !dbg !5641
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5641
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5642

if.then59:                                        ; preds = %if.then56
  %35 = load i8*, i8** %handle.addr, align 8, !dbg !5643
  %36 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5644
  call void @acpi_print_osc_error(i8* %35, %struct.acpi_osc_context* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !5645
  br label %if.end60, !dbg !5645

if.end60:                                         ; preds = %if.then59, %if.then56
  %37 = load i32, i32* %errors, align 4, !dbg !5646
  %and61 = and i32 %37, 4, !dbg !5648
  %tobool62 = icmp ne i32 %and61, 0, !dbg !5648
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !5649

if.then63:                                        ; preds = %if.end60
  %38 = load i8*, i8** %handle.addr, align 8, !dbg !5650
  %39 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5651
  call void @acpi_print_osc_error(i8* %38, %struct.acpi_osc_context* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !5652
  br label %if.end64, !dbg !5652

if.end64:                                         ; preds = %if.then63, %if.end60
  %40 = load i32, i32* %errors, align 4, !dbg !5653
  %and65 = and i32 %40, 8, !dbg !5655
  %tobool66 = icmp ne i32 %and65, 0, !dbg !5655
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !5656

if.then67:                                        ; preds = %if.end64
  %41 = load i8*, i8** %handle.addr, align 8, !dbg !5657
  %42 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5658
  call void @acpi_print_osc_error(i8* %41, %struct.acpi_osc_context* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !5659
  br label %if.end68, !dbg !5659

if.end68:                                         ; preds = %if.then67, %if.end64
  %43 = load i32, i32* %errors, align 4, !dbg !5660
  %and69 = and i32 %43, 16, !dbg !5662
  %tobool70 = icmp ne i32 %and69, 0, !dbg !5662
  br i1 %tobool70, label %if.then71, label %if.end79, !dbg !5663

if.then71:                                        ; preds = %if.end68
  %44 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5664
  %cap72 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %44, i32 0, i32 2, !dbg !5667
  %pointer73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap72, i32 0, i32 1, !dbg !5668
  %45 = load i8*, i8** %pointer73, align 8, !dbg !5668
  %46 = bitcast i8* %45 to i32*, !dbg !5669
  %arrayidx74 = getelementptr i32, i32* %46, i64 0, !dbg !5670
  %47 = load i32, i32* %arrayidx74, align 4, !dbg !5670
  %and75 = and i32 %47, 1, !dbg !5671
  %tobool76 = icmp ne i32 %and75, 0, !dbg !5671
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5672

if.then77:                                        ; preds = %if.then71
  br label %out_success, !dbg !5673

if.end78:                                         ; preds = %if.then71
  store i32 15, i32* %status, align 4, !dbg !5674
  br label %out_kfree, !dbg !5675

if.end79:                                         ; preds = %if.end68
  store i32 1, i32* %status, align 4, !dbg !5676
  br label %out_kfree, !dbg !5677

if.end80:                                         ; preds = %if.end52
  br label %out_success, !dbg !5635

out_success:                                      ; preds = %if.end80, %if.then77
  call void @llvm.dbg.label(metadata !5678), !dbg !5679
  %48 = load %union.acpi_object*, %union.acpi_object** %out_obj, align 8, !dbg !5680
  %buffer81 = bitcast %union.acpi_object* %48 to %struct.anon.1*, !dbg !5681
  %length82 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer81, i32 0, i32 1, !dbg !5682
  %49 = load i32, i32* %length82, align 4, !dbg !5682
  %conv83 = zext i32 %49 to i64, !dbg !5680
  %50 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5683
  %ret84 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %50, i32 0, i32 3, !dbg !5684
  %length85 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret84, i32 0, i32 0, !dbg !5685
  store i64 %conv83, i64* %length85, align 8, !dbg !5686
  %51 = load %union.acpi_object*, %union.acpi_object** %out_obj, align 8, !dbg !5687
  %buffer86 = bitcast %union.acpi_object* %51 to %struct.anon.1*, !dbg !5688
  %pointer87 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer86, i32 0, i32 2, !dbg !5689
  %52 = load i8*, i8** %pointer87, align 8, !dbg !5689
  %53 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5690
  %ret88 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %53, i32 0, i32 3, !dbg !5691
  %length89 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret88, i32 0, i32 0, !dbg !5692
  %54 = load i64, i64* %length89, align 8, !dbg !5692
  %call90 = call i8* @kmemdup(i8* %52, i64 %54, i32 3264) #7, !dbg !5693
  %55 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5694
  %ret91 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %55, i32 0, i32 3, !dbg !5695
  %pointer92 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret91, i32 0, i32 1, !dbg !5696
  store i8* %call90, i8** %pointer92, align 8, !dbg !5697
  %56 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5698
  %ret93 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %56, i32 0, i32 3, !dbg !5700
  %pointer94 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret93, i32 0, i32 1, !dbg !5701
  %57 = load i8*, i8** %pointer94, align 8, !dbg !5701
  %tobool95 = icmp ne i8* %57, null, !dbg !5698
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !5702

if.then96:                                        ; preds = %out_success
  store i32 4, i32* %status, align 4, !dbg !5703
  br label %out_kfree, !dbg !5705

if.end97:                                         ; preds = %out_success
  store i32 0, i32* %status, align 4, !dbg !5706
  br label %out_kfree, !dbg !5707

out_kfree:                                        ; preds = %if.end97, %if.then96, %if.end79, %if.end78, %if.then51
  call void @llvm.dbg.label(metadata !5708), !dbg !5709
  %pointer98 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %output, i32 0, i32 1, !dbg !5710
  %58 = load i8*, i8** %pointer98, align 8, !dbg !5710
  call void @kfree(i8* %58) #7, !dbg !5711
  %59 = load i32, i32* %status, align 4, !dbg !5712
  %cmp99 = icmp ne i32 %59, 0, !dbg !5714
  br i1 %cmp99, label %if.then101, label %if.end104, !dbg !5715

if.then101:                                       ; preds = %out_kfree
  %60 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5716
  %ret102 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %60, i32 0, i32 3, !dbg !5717
  %pointer103 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret102, i32 0, i32 1, !dbg !5718
  store i8* null, i8** %pointer103, align 8, !dbg !5719
  br label %if.end104, !dbg !5716

if.end104:                                        ; preds = %if.then101, %out_kfree
  %61 = load i32, i32* %status, align 4, !dbg !5720
  store i32 %61, i32* %retval, align 4, !dbg !5721
  br label %return, !dbg !5721

return:                                           ; preds = %if.end104, %if.then39, %if.then35, %if.then2, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !5722
  ret i32 %62, !dbg !5722
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @guid_parse(i8*, %struct.guid_t*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_print_osc_error(i8* %handle, %struct.acpi_osc_context* %context, i8* %error) #0 !dbg !5723 {
entry:
  %handle.addr = alloca i8*, align 8
  %context.addr = alloca %struct.acpi_osc_context*, align 8
  %error.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  store %struct.acpi_osc_context* %context, %struct.acpi_osc_context** %context.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_osc_context** %context.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  store i8* %error, i8** %error.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %error.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5732, metadata !DIExpression()), !dbg !5733
  store i32 0, i32* %tmp, align 4, !dbg !5734
  %0 = load i32, i32* %tmp, align 4, !dbg !5737
  store i32 0, i32* %tmp1, align 4, !dbg !5738
  %1 = load i32, i32* %tmp1, align 4, !dbg !5741
  store i32 0, i32* %i, align 4, !dbg !5742
  br label %for.cond, !dbg !5744

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5745
  %conv = sext i32 %2 to i64, !dbg !5745
  %3 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %context.addr, align 8, !dbg !5747
  %cap = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %3, i32 0, i32 2, !dbg !5748
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 0, !dbg !5749
  %4 = load i64, i64* %length, align 8, !dbg !5749
  %cmp = icmp ult i64 %conv, %4, !dbg !5750
  br i1 %cmp, label %for.body, label %for.end, !dbg !5751

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %tmp3, align 4, !dbg !5752
  %5 = load i32, i32* %tmp3, align 4, !dbg !5755
  br label %for.inc, !dbg !5756

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5757
  %conv4 = sext i32 %6 to i64, !dbg !5757
  %add = add i64 %conv4, 4, !dbg !5757
  %conv5 = trunc i64 %add to i32, !dbg !5757
  store i32 %conv5, i32* %i, align 4, !dbg !5757
  br label %for.cond, !dbg !5758, !llvm.loop !5759

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %tmp6, align 4, !dbg !5761
  %7 = load i32, i32* %tmp6, align 4, !dbg !5764
  ret void, !dbg !5765
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @acpi_get_first_physical_node(%struct.acpi_device* %adev) #0 !dbg !5766 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %physical_node_lock = alloca %struct.mutex*, align 8
  %phys_dev = alloca %struct.device*, align 8
  %node = alloca %struct.acpi_device_physical_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device_physical_node*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata %struct.mutex** %physical_node_lock, metadata !5771, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5774
  %physical_node_lock1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 25, !dbg !5775
  store %struct.mutex* %physical_node_lock1, %struct.mutex** %physical_node_lock, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata %struct.device** %phys_dev, metadata !5776, metadata !DIExpression()), !dbg !5777
  %1 = load %struct.mutex*, %struct.mutex** %physical_node_lock, align 8, !dbg !5778
  call void @mutex_lock(%struct.mutex* %1) #7, !dbg !5779
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5780
  %physical_node_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 24, !dbg !5782
  %call = call i32 @list_empty(%struct.list_head* %physical_node_list) #7, !dbg !5783
  %tobool = icmp ne i32 %call, 0, !dbg !5783
  br i1 %tobool, label %if.then, label %if.else, !dbg !5784

if.then:                                          ; preds = %entry
  store %struct.device* null, %struct.device** %phys_dev, align 8, !dbg !5785
  br label %if.end, !dbg !5787

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_device_physical_node** %node, metadata !5788, metadata !DIExpression()), !dbg !5792
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5793, metadata !DIExpression()), !dbg !5795
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5795
  %physical_node_list2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 24, !dbg !5795
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %physical_node_list2, i32 0, i32 0, !dbg !5795
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5795
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !5795
  store i8* %5, i8** %__mptr, align 8, !dbg !5795
  br label %do.body, !dbg !5795

do.body:                                          ; preds = %if.else
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !5795
  %add.ptr = getelementptr i8, i8* %6, i64 -8, !dbg !5795
  %7 = bitcast i8* %add.ptr to %struct.acpi_device_physical_node*, !dbg !5795
  store %struct.acpi_device_physical_node* %7, %struct.acpi_device_physical_node** %tmp, align 8, !dbg !5796
  %8 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %tmp, align 8, !dbg !5795
  store %struct.acpi_device_physical_node* %8, %struct.acpi_device_physical_node** %node, align 8, !dbg !5798
  %9 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %node, align 8, !dbg !5799
  %dev = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %9, i32 0, i32 2, !dbg !5800
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5800
  store %struct.device* %10, %struct.device** %phys_dev, align 8, !dbg !5801
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %11 = load %struct.mutex*, %struct.mutex** %physical_node_lock, align 8, !dbg !5802
  call void @mutex_unlock(%struct.mutex* %11) #7, !dbg !5803
  %12 = load %struct.device*, %struct.device** %phys_dev, align 8, !dbg !5804
  ret %struct.device* %12, !dbg !5805
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5806 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  br label %do.body, !dbg !5814

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5816

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5814
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5814
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5814
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5816
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5814
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5818
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5819
  %conv = zext i1 %cmp to i32, !dbg !5819
  ret i32 %conv, !dbg !5820
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_device_is_first_physical_node(%struct.acpi_device* %adev, %struct.device* %dev) #0 !dbg !5821 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5828
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5829
  %call = call %struct.acpi_device* @acpi_primary_dev_companion(%struct.acpi_device* %0, %struct.device* %1) #7, !dbg !5830
  %tobool = icmp ne %struct.acpi_device* %call, null, !dbg !5831
  %lnot = xor i1 %tobool, true, !dbg !5831
  %lnot1 = xor i1 %lnot, true, !dbg !5832
  ret i1 %lnot1, !dbg !5833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_device* @acpi_primary_dev_companion(%struct.acpi_device* %adev, %struct.device* %dev) #0 !dbg !5834 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %phys_dev = alloca %struct.device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata %struct.device** %phys_dev, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5843
  %call = call %struct.device* @acpi_get_first_physical_node(%struct.acpi_device* %0) #7, !dbg !5844
  store %struct.device* %call, %struct.device** %phys_dev, align 8, !dbg !5842
  %1 = load %struct.device*, %struct.device** %phys_dev, align 8, !dbg !5845
  %tobool = icmp ne %struct.device* %1, null, !dbg !5845
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !5846

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.device*, %struct.device** %phys_dev, align 8, !dbg !5847
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5848
  %cmp = icmp eq %struct.device* %2, %3, !dbg !5849
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5845

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5850
  br label %cond.end, !dbg !5845

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !5845

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.acpi_device* [ %4, %cond.true ], [ null, %cond.false ], !dbg !5845
  ret %struct.acpi_device* %cond, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device* @acpi_companion_match(%struct.device* %dev) #0 !dbg !5852 {
entry:
  %retval = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !5857, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !5859, metadata !DIExpression()), !dbg !5862
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5862
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !5862
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5862
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5862
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5862
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !5862
  br i1 %call, label %cond.true, label %cond.false, !dbg !5862

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5863, metadata !DIExpression()), !dbg !5865
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5865
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !5865
  store i8* %4, i8** %__mptr, align 8, !dbg !5865
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5866

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5865
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !5865
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5865
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !5866
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !5865
  br label %cond.end, !dbg !5862

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5862

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !5862
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !5862
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5862
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !5868
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5869
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !5869
  br i1 %tobool, label %if.end, label %if.then, !dbg !5871

if.then:                                          ; preds = %cond.end
  store %struct.acpi_device* null, %struct.acpi_device** %retval, align 8, !dbg !5872
  br label %return, !dbg !5872

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5873
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 10, !dbg !5875
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !5876
  %call2 = call i32 @list_empty(%struct.list_head* %ids) #7, !dbg !5877
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5877
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5878

if.then4:                                         ; preds = %if.end
  store %struct.acpi_device* null, %struct.acpi_device** %retval, align 8, !dbg !5879
  br label %return, !dbg !5879

if.end5:                                          ; preds = %if.end
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5880
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5881
  %call6 = call %struct.acpi_device* @acpi_primary_dev_companion(%struct.acpi_device* %11, %struct.device* %12) #7, !dbg !5882
  store %struct.acpi_device* %call6, %struct.acpi_device** %retval, align 8, !dbg !5883
  br label %return, !dbg !5883

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %13 = load %struct.acpi_device*, %struct.acpi_device** %retval, align 8, !dbg !5884
  ret %struct.acpi_device* %13, !dbg !5884
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_set_modalias(%struct.acpi_device* %adev, i8* %default_id, i8* %modalias, i64 %len) #0 !dbg !5885 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %default_id.addr = alloca i8*, align 8
  %modalias.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i8* %default_id, i8** %default_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %default_id.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  store i8* %modalias, i8** %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %modalias.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5896
  %1 = load i8*, i8** %modalias.addr, align 8, !dbg !5898
  %2 = load i64, i64* %len.addr, align 8, !dbg !5899
  %call = call zeroext i1 @acpi_of_modalias(%struct.acpi_device* %0, i8* %1, i64 %2) #7, !dbg !5900
  br i1 %call, label %if.end, label %if.then, !dbg !5901

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %modalias.addr, align 8, !dbg !5902
  %4 = load i8*, i8** %default_id.addr, align 8, !dbg !5903
  %5 = load i64, i64* %len.addr, align 8, !dbg !5904
  %call1 = call i64 @strlcpy(i8* %3, i8* %4, i64 %5) #7, !dbg !5905
  br label %if.end, !dbg !5905

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_of_modalias(%struct.acpi_device* %adev, i8* %modalias, i64 %len) #0 !dbg !5907 {
entry:
  %retval = alloca i1, align 1
  %adev.addr = alloca %struct.acpi_device*, align 8
  %modalias.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %of_compatible = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %str = alloca i8*, align 8
  %chr = alloca i8*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5910, metadata !DIExpression()), !dbg !5911
  store i8* %modalias, i8** %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %modalias.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5914, metadata !DIExpression()), !dbg !5915
  call void @llvm.dbg.declare(metadata %union.acpi_object** %of_compatible, metadata !5916, metadata !DIExpression()), !dbg !5917
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !5918, metadata !DIExpression()), !dbg !5919
  call void @llvm.dbg.declare(metadata i8** %str, metadata !5920, metadata !DIExpression()), !dbg !5921
  call void @llvm.dbg.declare(metadata i8** %chr, metadata !5922, metadata !DIExpression()), !dbg !5923
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5924
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 15, !dbg !5925
  %of_compatible1 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 2, !dbg !5926
  %1 = load %union.acpi_object*, %union.acpi_object** %of_compatible1, align 8, !dbg !5926
  store %union.acpi_object* %1, %union.acpi_object** %of_compatible, align 8, !dbg !5927
  %2 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !5928
  %tobool = icmp ne %union.acpi_object* %2, null, !dbg !5928
  br i1 %tobool, label %if.end, label %if.then, !dbg !5930

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5931
  br label %return, !dbg !5931

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !5932
  %type = bitcast %union.acpi_object* %3 to i32*, !dbg !5934
  %4 = load i32, i32* %type, align 8, !dbg !5934
  %cmp = icmp eq i32 %4, 4, !dbg !5935
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5936

if.then2:                                         ; preds = %if.end
  %5 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !5937
  %package = bitcast %union.acpi_object* %5 to %struct.anon.2*, !dbg !5938
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 2, !dbg !5939
  %6 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5939
  store %union.acpi_object* %6, %union.acpi_object** %obj, align 8, !dbg !5940
  br label %if.end3, !dbg !5941

if.else:                                          ; preds = %if.end
  %7 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !5942
  store %union.acpi_object* %7, %union.acpi_object** %obj, align 8, !dbg !5943
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %8 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !5944
  %string = bitcast %union.acpi_object* %8 to %struct.anon.0*, !dbg !5945
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !5946
  %9 = load i8*, i8** %pointer, align 8, !dbg !5946
  store i8* %9, i8** %str, align 8, !dbg !5947
  %10 = load i8*, i8** %str, align 8, !dbg !5948
  %call = call i8* @strchr(i8* %10, i32 44) #7, !dbg !5949
  store i8* %call, i8** %chr, align 8, !dbg !5950
  %11 = load i8*, i8** %modalias.addr, align 8, !dbg !5951
  %12 = load i8*, i8** %chr, align 8, !dbg !5952
  %tobool4 = icmp ne i8* %12, null, !dbg !5952
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !5952

cond.true:                                        ; preds = %if.end3
  %13 = load i8*, i8** %chr, align 8, !dbg !5953
  %add.ptr = getelementptr i8, i8* %13, i64 1, !dbg !5954
  br label %cond.end, !dbg !5952

cond.false:                                       ; preds = %if.end3
  %14 = load i8*, i8** %str, align 8, !dbg !5955
  br label %cond.end, !dbg !5952

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %14, %cond.false ], !dbg !5952
  %15 = load i64, i64* %len.addr, align 8, !dbg !5956
  %call5 = call i64 @strlcpy(i8* %11, i8* %cond, i64 %15) #7, !dbg !5957
  store i1 true, i1* %retval, align 1, !dbg !5958
  br label %return, !dbg !5958

return:                                           ; preds = %cond.end, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !5959
  ret i1 %16, !dbg !5959
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device_id* @acpi_match_device(%struct.acpi_device_id* %ids, %struct.device* %dev) #0 !dbg !5960 {
entry:
  %ids.addr = alloca %struct.acpi_device_id*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id = alloca %struct.acpi_device_id*, align 8
  store %struct.acpi_device_id* %ids, %struct.acpi_device_id** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %ids.addr, metadata !5963, metadata !DIExpression()), !dbg !5964
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5965, metadata !DIExpression()), !dbg !5966
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id, metadata !5967, metadata !DIExpression()), !dbg !5968
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %id, align 8, !dbg !5968
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5969
  %call = call %struct.acpi_device* @acpi_companion_match(%struct.device* %0) #7, !dbg !5970
  %1 = load %struct.acpi_device_id*, %struct.acpi_device_id** %ids.addr, align 8, !dbg !5971
  %call1 = call zeroext i1 @__acpi_match_device(%struct.acpi_device* %call, %struct.acpi_device_id* %1, %struct.of_device_id* null, %struct.acpi_device_id** %id, %struct.of_device_id** null) #7, !dbg !5972
  %2 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !5973
  ret %struct.acpi_device_id* %2, !dbg !5974
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__acpi_match_device(%struct.acpi_device* %device, %struct.acpi_device_id* %acpi_ids, %struct.of_device_id* %of_ids, %struct.acpi_device_id** %acpi_id, %struct.of_device_id** %of_id) #0 !dbg !5975 {
entry:
  %retval = alloca i1, align 1
  %device.addr = alloca %struct.acpi_device*, align 8
  %acpi_ids.addr = alloca %struct.acpi_device_id*, align 8
  %of_ids.addr = alloca %struct.of_device_id*, align 8
  %acpi_id.addr = alloca %struct.acpi_device_id**, align 8
  %of_id.addr = alloca %struct.of_device_id**, align 8
  %id = alloca %struct.acpi_device_id*, align 8
  %hwid = alloca %struct.acpi_hardware_id*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hardware_id*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  store %struct.acpi_device_id* %acpi_ids, %struct.acpi_device_id** %acpi_ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %acpi_ids.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  store %struct.of_device_id* %of_ids, %struct.of_device_id** %of_ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %of_ids.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  store %struct.acpi_device_id** %acpi_id, %struct.acpi_device_id*** %acpi_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id*** %acpi_id.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  store %struct.of_device_id** %of_id, %struct.of_device_id*** %of_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id*** %of_id.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id, metadata !5989, metadata !DIExpression()), !dbg !5990
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %hwid, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5993
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !5993
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5995

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5996
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 8, !dbg !5997
  %2 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !5998
  %bf.load = load i32, i32* %2, align 8, !dbg !5998
  %bf.clear = and i32 %bf.load, 1, !dbg !5998
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !5996
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5999

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !6000
  br label %return, !dbg !6000

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6001, metadata !DIExpression()), !dbg !6004
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6004
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 10, !dbg !6004
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !6004
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ids, i32 0, i32 0, !dbg !6004
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6004
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !6004
  store i8* %5, i8** %__mptr, align 8, !dbg !6004
  br label %do.body, !dbg !6004

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6005

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !6004
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !6004
  %7 = bitcast i8* %add.ptr to %struct.acpi_hardware_id*, !dbg !6004
  store %struct.acpi_hardware_id* %7, %struct.acpi_hardware_id** %tmp, align 8, !dbg !6005
  %8 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp, align 8, !dbg !6004
  store %struct.acpi_hardware_id* %8, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6007
  br label %for.cond, !dbg !6007

for.cond:                                         ; preds = %do.end39, %do.end
  %9 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6008
  %list = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %9, i32 0, i32 0, !dbg !6008
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6008
  %pnp2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 10, !dbg !6008
  %ids3 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp2, i32 0, i32 4, !dbg !6008
  %cmp = icmp eq %struct.list_head* %list, %ids3, !dbg !6008
  %lnot = xor i1 %cmp, true, !dbg !6008
  br i1 %lnot, label %for.body, label %for.end42, !dbg !6007

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_ids.addr, align 8, !dbg !6010
  %tobool4 = icmp ne %struct.acpi_device_id* %11, null, !dbg !6010
  br i1 %tobool4, label %if.then5, label %if.end27, !dbg !6013

if.then5:                                         ; preds = %for.body
  %12 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_ids.addr, align 8, !dbg !6014
  store %struct.acpi_device_id* %12, %struct.acpi_device_id** %id, align 8, !dbg !6017
  br label %for.cond6, !dbg !6018

for.cond6:                                        ; preds = %for.inc, %if.then5
  %13 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6019
  %id7 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %13, i32 0, i32 0, !dbg !6021
  %arrayidx = getelementptr [9 x i8], [9 x i8]* %id7, i64 0, i64 0, !dbg !6019
  %14 = load i8, i8* %arrayidx, align 8, !dbg !6019
  %conv = zext i8 %14 to i32, !dbg !6019
  %tobool8 = icmp ne i32 %conv, 0, !dbg !6019
  br i1 %tobool8, label %lor.end, label %lor.rhs, !dbg !6022

lor.rhs:                                          ; preds = %for.cond6
  %15 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6023
  %cls = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %15, i32 0, i32 2, !dbg !6024
  %16 = load i32, i32* %cls, align 8, !dbg !6024
  %tobool9 = icmp ne i32 %16, 0, !dbg !6022
  br label %lor.end, !dbg !6022

lor.end:                                          ; preds = %lor.rhs, %for.cond6
  %17 = phi i1 [ true, %for.cond6 ], [ %tobool9, %lor.rhs ]
  br i1 %17, label %for.body10, label %for.end, !dbg !6025

for.body10:                                       ; preds = %lor.end
  %18 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6026
  %id11 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %18, i32 0, i32 0, !dbg !6029
  %arrayidx12 = getelementptr [9 x i8], [9 x i8]* %id11, i64 0, i64 0, !dbg !6026
  %19 = load i8, i8* %arrayidx12, align 8, !dbg !6026
  %conv13 = zext i8 %19 to i32, !dbg !6026
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !6026
  br i1 %tobool14, label %land.lhs.true, label %if.end19, !dbg !6030

land.lhs.true:                                    ; preds = %for.body10
  %20 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6031
  %id15 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %20, i32 0, i32 0, !dbg !6032
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %id15, i64 0, i64 0, !dbg !6031
  %21 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6033
  %id16 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %21, i32 0, i32 1, !dbg !6034
  %22 = load i8*, i8** %id16, align 8, !dbg !6034
  %call = call i32 @strcmp(i8* %arraydecay, i8* %22) #7, !dbg !6035
  %tobool17 = icmp ne i32 %call, 0, !dbg !6035
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6036

if.then18:                                        ; preds = %land.lhs.true
  br label %out_acpi_match, !dbg !6037

if.end19:                                         ; preds = %land.lhs.true, %for.body10
  %23 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6038
  %cls20 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %23, i32 0, i32 2, !dbg !6040
  %24 = load i32, i32* %cls20, align 8, !dbg !6040
  %tobool21 = icmp ne i32 %24, 0, !dbg !6038
  br i1 %tobool21, label %land.lhs.true22, label %if.end26, !dbg !6041

land.lhs.true22:                                  ; preds = %if.end19
  %25 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6042
  %26 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6043
  %call23 = call zeroext i1 @__acpi_match_device_cls(%struct.acpi_device_id* %25, %struct.acpi_hardware_id* %26) #7, !dbg !6044
  br i1 %call23, label %if.then25, label %if.end26, !dbg !6045

if.then25:                                        ; preds = %land.lhs.true22
  br label %out_acpi_match, !dbg !6046

if.end26:                                         ; preds = %land.lhs.true22, %if.end19
  br label %for.inc, !dbg !6047

for.inc:                                          ; preds = %if.end26
  %27 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6048
  %incdec.ptr = getelementptr %struct.acpi_device_id, %struct.acpi_device_id* %27, i32 1, !dbg !6048
  store %struct.acpi_device_id* %incdec.ptr, %struct.acpi_device_id** %id, align 8, !dbg !6048
  br label %for.cond6, !dbg !6049, !llvm.loop !6050

for.end:                                          ; preds = %lor.end
  br label %if.end27, !dbg !6052

if.end27:                                         ; preds = %for.end, %for.body
  %28 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6053
  %id28 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %28, i32 0, i32 1, !dbg !6055
  %29 = load i8*, i8** %id28, align 8, !dbg !6055
  %call29 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %29) #7, !dbg !6056
  %tobool30 = icmp ne i32 %call29, 0, !dbg !6056
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !6057

if.then31:                                        ; preds = %if.end27
  %30 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6058
  %31 = load %struct.of_device_id*, %struct.of_device_id** %of_ids.addr, align 8, !dbg !6059
  %32 = load %struct.of_device_id**, %struct.of_device_id*** %of_id.addr, align 8, !dbg !6060
  %call32 = call zeroext i1 @acpi_of_match_device(%struct.acpi_device* %30, %struct.of_device_id* %31, %struct.of_device_id** %32) #7, !dbg !6061
  store i1 %call32, i1* %retval, align 1, !dbg !6062
  br label %return, !dbg !6062

if.end33:                                         ; preds = %if.end27
  br label %for.inc34, !dbg !6063

for.inc34:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !6064, metadata !DIExpression()), !dbg !6066
  %33 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6066
  %list36 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %33, i32 0, i32 0, !dbg !6066
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %list36, i32 0, i32 0, !dbg !6066
  %34 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !6066
  %35 = bitcast %struct.list_head* %34 to i8*, !dbg !6066
  store i8* %35, i8** %__mptr35, align 8, !dbg !6066
  br label %do.body38, !dbg !6066

do.body38:                                        ; preds = %for.inc34
  br label %do.end39, !dbg !6067

do.end39:                                         ; preds = %do.body38
  %36 = load i8*, i8** %__mptr35, align 8, !dbg !6066
  %add.ptr41 = getelementptr i8, i8* %36, i64 0, !dbg !6066
  %37 = bitcast i8* %add.ptr41 to %struct.acpi_hardware_id*, !dbg !6066
  store %struct.acpi_hardware_id* %37, %struct.acpi_hardware_id** %tmp40, align 8, !dbg !6067
  %38 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp40, align 8, !dbg !6066
  store %struct.acpi_hardware_id* %38, %struct.acpi_hardware_id** %hwid, align 8, !dbg !6008
  br label %for.cond, !dbg !6008, !llvm.loop !6069

for.end42:                                        ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !6071
  br label %return, !dbg !6071

out_acpi_match:                                   ; preds = %if.then25, %if.then18
  call void @llvm.dbg.label(metadata !6072), !dbg !6073
  %39 = load %struct.acpi_device_id**, %struct.acpi_device_id*** %acpi_id.addr, align 8, !dbg !6074
  %tobool43 = icmp ne %struct.acpi_device_id** %39, null, !dbg !6074
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6076

if.then44:                                        ; preds = %out_acpi_match
  %40 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id, align 8, !dbg !6077
  %41 = load %struct.acpi_device_id**, %struct.acpi_device_id*** %acpi_id.addr, align 8, !dbg !6078
  store %struct.acpi_device_id* %40, %struct.acpi_device_id** %41, align 8, !dbg !6079
  br label %if.end45, !dbg !6080

if.end45:                                         ; preds = %if.then44, %out_acpi_match
  store i1 true, i1* %retval, align 1, !dbg !6081
  br label %return, !dbg !6081

return:                                           ; preds = %if.end45, %for.end42, %if.then31, %if.then
  %42 = load i1, i1* %retval, align 1, !dbg !6082
  ret i1 %42, !dbg !6082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_device_get_match_data(%struct.device* %dev) #0 !dbg !6083 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %match = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %match, metadata !6088, metadata !DIExpression()), !dbg !6089
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6090
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !6092
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6092
  %acpi_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %1, i32 0, i32 7, !dbg !6093
  %2 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_match_table, align 8, !dbg !6093
  %tobool = icmp ne %struct.acpi_device_id* %2, null, !dbg !6090
  br i1 %tobool, label %if.end, label %if.then, !dbg !6094

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6095
  %call = call i8* @acpi_of_device_get_match_data(%struct.device* %3) #7, !dbg !6096
  store i8* %call, i8** %retval, align 8, !dbg !6097
  br label %return, !dbg !6097

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6098
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 6, !dbg !6099
  %5 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !6099
  %acpi_match_table2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %5, i32 0, i32 7, !dbg !6100
  %6 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_match_table2, align 8, !dbg !6100
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6101
  %call3 = call %struct.acpi_device_id* @acpi_match_device(%struct.acpi_device_id* %6, %struct.device* %7) #7, !dbg !6102
  store %struct.acpi_device_id* %call3, %struct.acpi_device_id** %match, align 8, !dbg !6103
  %8 = load %struct.acpi_device_id*, %struct.acpi_device_id** %match, align 8, !dbg !6104
  %tobool4 = icmp ne %struct.acpi_device_id* %8, null, !dbg !6104
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6106

if.then5:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !6107
  br label %return, !dbg !6107

if.end6:                                          ; preds = %if.end
  %9 = load %struct.acpi_device_id*, %struct.acpi_device_id** %match, align 8, !dbg !6108
  %driver_data = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %9, i32 0, i32 1, !dbg !6109
  %10 = load i64, i64* %driver_data, align 8, !dbg !6109
  %11 = inttoptr i64 %10 to i8*, !dbg !6110
  store i8* %11, i8** %retval, align 8, !dbg !6111
  br label %return, !dbg !6111

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !6112
  ret i8* %12, !dbg !6112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_of_device_get_match_data(%struct.device* %dev) #0 !dbg !6113 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %match = alloca %struct.of_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6116, metadata !DIExpression()), !dbg !6117
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6118, metadata !DIExpression()), !dbg !6120
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6120
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6120
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6120
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6120
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6120
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !6120
  br i1 %call, label %cond.true, label %cond.false, !dbg !6120

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6121, metadata !DIExpression()), !dbg !6123
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6123
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6123
  store i8* %4, i8** %__mptr, align 8, !dbg !6123
  br label %do.body, !dbg !6123

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6124

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6123
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6123
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6123
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6124
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6123
  br label %cond.end, !dbg !6120

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6120

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6120
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6120
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6120
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6117
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %match, metadata !6126, metadata !DIExpression()), !dbg !6127
  store %struct.of_device_id* null, %struct.of_device_id** %match, align 8, !dbg !6127
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6128
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6130
  %driver = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 6, !dbg !6131
  %11 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6131
  %of_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %11, i32 0, i32 6, !dbg !6132
  %12 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8, !dbg !6132
  %call2 = call zeroext i1 @acpi_of_match_device(%struct.acpi_device* %9, %struct.of_device_id* %12, %struct.of_device_id** %match) #7, !dbg !6133
  br i1 %call2, label %if.end, label %if.then, !dbg !6134

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval, align 8, !dbg !6135
  br label %return, !dbg !6135

if.end:                                           ; preds = %cond.end
  %13 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !6136
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %13, i32 0, i32 3, !dbg !6137
  %14 = load i8*, i8** %data, align 8, !dbg !6137
  store i8* %14, i8** %retval, align 8, !dbg !6138
  br label %return, !dbg !6138

return:                                           ; preds = %if.end, %if.then
  %15 = load i8*, i8** %retval, align 8, !dbg !6139
  ret i8* %15, !dbg !6139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_match_device_ids(%struct.acpi_device* %device, %struct.acpi_device_id* %ids) #0 !dbg !6140 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %ids.addr = alloca %struct.acpi_device_id*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !6141, metadata !DIExpression()), !dbg !6142
  store %struct.acpi_device_id* %ids, %struct.acpi_device_id** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %ids.addr, metadata !6143, metadata !DIExpression()), !dbg !6144
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6145
  %1 = load %struct.acpi_device_id*, %struct.acpi_device_id** %ids.addr, align 8, !dbg !6146
  %call = call zeroext i1 @__acpi_match_device(%struct.acpi_device* %0, %struct.acpi_device_id* %1, %struct.of_device_id* null, %struct.acpi_device_id** null, %struct.of_device_id** null) #7, !dbg !6147
  %2 = zext i1 %call to i64, !dbg !6147
  %cond = select i1 %call, i32 0, i32 -2, !dbg !6147
  ret i32 %cond, !dbg !6148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_driver_match_device(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !6149 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6158
  %acpi_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 7, !dbg !6160
  %1 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_match_table, align 8, !dbg !6160
  %tobool = icmp ne %struct.acpi_device_id* %1, null, !dbg !6158
  br i1 %tobool, label %if.end, label %if.then, !dbg !6161

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6162, metadata !DIExpression()), !dbg !6164
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6164
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !6164
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6164
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6164
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6164
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #7, !dbg !6164
  br i1 %call, label %cond.true, label %cond.false, !dbg !6164

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6165, metadata !DIExpression()), !dbg !6167
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6167
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !6167
  store i8* %6, i8** %__mptr, align 8, !dbg !6167
  br label %do.body, !dbg !6167

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6168

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !6167
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !6167
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6167
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp1, align 8, !dbg !6168
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6167
  br label %cond.end, !dbg !6164

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !6164

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !6164
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6164
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6164
  %11 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6170
  %of_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %11, i32 0, i32 6, !dbg !6171
  %12 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8, !dbg !6171
  %call2 = call zeroext i1 @acpi_of_match_device(%struct.acpi_device* %10, %struct.of_device_id* %12, %struct.of_device_id** null) #7, !dbg !6172
  store i1 %call2, i1* %retval, align 1, !dbg !6173
  br label %return, !dbg !6173

if.end:                                           ; preds = %entry
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6174
  %call3 = call %struct.acpi_device* @acpi_companion_match(%struct.device* %13) #7, !dbg !6175
  %14 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6176
  %acpi_match_table4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %14, i32 0, i32 7, !dbg !6177
  %15 = load %struct.acpi_device_id*, %struct.acpi_device_id** %acpi_match_table4, align 8, !dbg !6177
  %16 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6178
  %of_match_table5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %16, i32 0, i32 6, !dbg !6179
  %17 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table5, align 8, !dbg !6179
  %call6 = call zeroext i1 @__acpi_match_device(%struct.acpi_device* %call3, %struct.acpi_device_id* %15, %struct.of_device_id* %17, %struct.acpi_device_id** null, %struct.of_device_id** null) #7, !dbg !6180
  store i1 %call6, i1* %retval, align 1, !dbg !6181
  br label %return, !dbg !6181

return:                                           ; preds = %if.end, %cond.end
  %18 = load i1, i1* %retval, align 1, !dbg !6182
  ret i1 %18, !dbg !6182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_of_match_device(%struct.acpi_device* %adev, %struct.of_device_id* %of_match_table, %struct.of_device_id** %of_id) #0 !dbg !6183 {
entry:
  %retval = alloca i1, align 1
  %adev.addr = alloca %struct.acpi_device*, align 8
  %of_match_table.addr = alloca %struct.of_device_id*, align 8
  %of_id.addr = alloca %struct.of_device_id**, align 8
  %of_compatible = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %i = alloca i32, align 4
  %nval = alloca i32, align 4
  %id = alloca %struct.of_device_id*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6186, metadata !DIExpression()), !dbg !6187
  store %struct.of_device_id* %of_match_table, %struct.of_device_id** %of_match_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %of_match_table.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  store %struct.of_device_id** %of_id, %struct.of_device_id*** %of_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id*** %of_id.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  call void @llvm.dbg.declare(metadata %union.acpi_object** %of_compatible, metadata !6192, metadata !DIExpression()), !dbg !6193
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !6194, metadata !DIExpression()), !dbg !6195
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6196, metadata !DIExpression()), !dbg !6197
  call void @llvm.dbg.declare(metadata i32* %nval, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6200
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !6200
  br i1 %tobool, label %if.end, label %if.then, !dbg !6202

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !6203
  br label %return, !dbg !6203

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6204
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !6205
  %of_compatible1 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 2, !dbg !6206
  %2 = load %union.acpi_object*, %union.acpi_object** %of_compatible1, align 8, !dbg !6206
  store %union.acpi_object* %2, %union.acpi_object** %of_compatible, align 8, !dbg !6207
  %3 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table.addr, align 8, !dbg !6208
  %tobool2 = icmp ne %struct.of_device_id* %3, null, !dbg !6208
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !6210

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !6211
  %tobool3 = icmp ne %union.acpi_object* %4, null, !dbg !6211
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6212

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, i1* %retval, align 1, !dbg !6213
  br label %return, !dbg !6213

if.end5:                                          ; preds = %lor.lhs.false
  %5 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !6214
  %type = bitcast %union.acpi_object* %5 to i32*, !dbg !6216
  %6 = load i32, i32* %type, align 8, !dbg !6216
  %cmp = icmp eq i32 %6, 4, !dbg !6217
  br i1 %cmp, label %if.then6, label %if.else, !dbg !6218

if.then6:                                         ; preds = %if.end5
  %7 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !6219
  %package = bitcast %union.acpi_object* %7 to %struct.anon.2*, !dbg !6221
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !6222
  %8 = load i32, i32* %count, align 4, !dbg !6222
  store i32 %8, i32* %nval, align 4, !dbg !6223
  %9 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !6224
  %package7 = bitcast %union.acpi_object* %9 to %struct.anon.2*, !dbg !6225
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package7, i32 0, i32 2, !dbg !6226
  %10 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !6226
  store %union.acpi_object* %10, %union.acpi_object** %obj, align 8, !dbg !6227
  br label %if.end8, !dbg !6228

if.else:                                          ; preds = %if.end5
  store i32 1, i32* %nval, align 4, !dbg !6229
  %11 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !6231
  store %union.acpi_object* %11, %union.acpi_object** %obj, align 8, !dbg !6232
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  store i32 0, i32* %i, align 4, !dbg !6233
  br label %for.cond, !dbg !6235

for.cond:                                         ; preds = %for.inc20, %if.end8
  %12 = load i32, i32* %i, align 4, !dbg !6236
  %13 = load i32, i32* %nval, align 4, !dbg !6238
  %cmp9 = icmp slt i32 %12, %13, !dbg !6239
  br i1 %cmp9, label %for.body, label %for.end22, !dbg !6240

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %id, metadata !6241, metadata !DIExpression()), !dbg !6243
  %14 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table.addr, align 8, !dbg !6244
  store %struct.of_device_id* %14, %struct.of_device_id** %id, align 8, !dbg !6246
  br label %for.cond10, !dbg !6247

for.cond10:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.of_device_id*, %struct.of_device_id** %id, align 8, !dbg !6248
  %compatible = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %15, i32 0, i32 2, !dbg !6250
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %compatible, i64 0, i64 0, !dbg !6248
  %16 = load i8, i8* %arrayidx, align 8, !dbg !6248
  %tobool11 = icmp ne i8 %16, 0, !dbg !6251
  br i1 %tobool11, label %for.body12, label %for.end, !dbg !6251

for.body12:                                       ; preds = %for.cond10
  %17 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !6252
  %string = bitcast %union.acpi_object* %17 to %struct.anon.0*, !dbg !6254
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !6255
  %18 = load i8*, i8** %pointer, align 8, !dbg !6255
  %19 = load %struct.of_device_id*, %struct.of_device_id** %id, align 8, !dbg !6256
  %compatible13 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %19, i32 0, i32 2, !dbg !6257
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %compatible13, i64 0, i64 0, !dbg !6256
  %call = call i32 @strcasecmp(i8* %18, i8* %arraydecay) #7, !dbg !6258
  %tobool14 = icmp ne i32 %call, 0, !dbg !6258
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !6259

if.then15:                                        ; preds = %for.body12
  %20 = load %struct.of_device_id**, %struct.of_device_id*** %of_id.addr, align 8, !dbg !6260
  %tobool16 = icmp ne %struct.of_device_id** %20, null, !dbg !6260
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6263

if.then17:                                        ; preds = %if.then15
  %21 = load %struct.of_device_id*, %struct.of_device_id** %id, align 8, !dbg !6264
  %22 = load %struct.of_device_id**, %struct.of_device_id*** %of_id.addr, align 8, !dbg !6265
  store %struct.of_device_id* %21, %struct.of_device_id** %22, align 8, !dbg !6266
  br label %if.end18, !dbg !6267

if.end18:                                         ; preds = %if.then17, %if.then15
  store i1 true, i1* %retval, align 1, !dbg !6268
  br label %return, !dbg !6268

if.end19:                                         ; preds = %for.body12
  br label %for.inc, !dbg !6269

for.inc:                                          ; preds = %if.end19
  %23 = load %struct.of_device_id*, %struct.of_device_id** %id, align 8, !dbg !6270
  %incdec.ptr = getelementptr %struct.of_device_id, %struct.of_device_id* %23, i32 1, !dbg !6270
  store %struct.of_device_id* %incdec.ptr, %struct.of_device_id** %id, align 8, !dbg !6270
  br label %for.cond10, !dbg !6271, !llvm.loop !6272

for.end:                                          ; preds = %for.cond10
  br label %for.inc20, !dbg !6274

for.inc20:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !6275
  %inc = add i32 %24, 1, !dbg !6275
  store i32 %inc, i32* %i, align 4, !dbg !6275
  %25 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !6276
  %incdec.ptr21 = getelementptr %union.acpi_object, %union.acpi_object* %25, i32 1, !dbg !6276
  store %union.acpi_object* %incdec.ptr21, %union.acpi_object** %obj, align 8, !dbg !6276
  br label %for.cond, !dbg !6277, !llvm.loop !6278

for.end22:                                        ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !6280
  br label %return, !dbg !6280

return:                                           ; preds = %for.end22, %if.end18, %if.then4, %if.then
  %26 = load i1, i1* %retval, align 1, !dbg !6281
  ret i1 %26, !dbg !6281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver* %driver) #0 !dbg !6282 {
entry:
  %retval = alloca i32, align 4
  %driver.addr = alloca %struct.acpi_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_driver* %driver, %struct.acpi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %driver.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !6289
  %tobool = icmp ne i32 %0, 0, !dbg !6289
  br i1 %tobool, label %if.then, label %if.end, !dbg !6291

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !6292
  br label %return, !dbg !6292

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6293
  %name = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %1, i32 0, i32 0, !dbg !6294
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0, !dbg !6293
  %2 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6295
  %drv = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %2, i32 0, i32 5, !dbg !6296
  %name1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i32 0, i32 0, !dbg !6297
  store i8* %arraydecay, i8** %name1, align 8, !dbg !6298
  %3 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6299
  %drv2 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %3, i32 0, i32 5, !dbg !6300
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv2, i32 0, i32 1, !dbg !6301
  store %struct.bus_type* @acpi_bus_type, %struct.bus_type** %bus, align 8, !dbg !6302
  %4 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6303
  %owner = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %4, i32 0, i32 6, !dbg !6304
  %5 = load %struct.module*, %struct.module** %owner, align 8, !dbg !6304
  %6 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6305
  %drv3 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %6, i32 0, i32 5, !dbg !6306
  %owner4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv3, i32 0, i32 2, !dbg !6307
  store %struct.module* %5, %struct.module** %owner4, align 8, !dbg !6308
  %7 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6309
  %drv5 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %7, i32 0, i32 5, !dbg !6310
  %call = call i32 @driver_register(%struct.device_driver* %drv5) #7, !dbg !6311
  store i32 %call, i32* %ret, align 4, !dbg !6312
  %8 = load i32, i32* %ret, align 4, !dbg !6313
  store i32 %8, i32* %retval, align 4, !dbg !6314
  br label %return, !dbg !6314

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6315
  ret i32 %9, !dbg !6315
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bus_unregister_driver(%struct.acpi_driver* %driver) #0 !dbg !6316 {
entry:
  %driver.addr = alloca %struct.acpi_driver*, align 8
  store %struct.acpi_driver* %driver, %struct.acpi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %driver.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  %0 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !6321
  %drv = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %0, i32 0, i32 5, !dbg !6322
  call void @driver_unregister(%struct.device_driver* %drv) #7, !dbg !6323
  ret void, !dbg !6324
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !6325 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %acpi_drv = alloca %struct.acpi_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !6330, metadata !DIExpression()), !dbg !6331
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6332, metadata !DIExpression()), !dbg !6334
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6334
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6334
  store i8* %1, i8** %__mptr, align 8, !dbg !6334
  br label %do.body, !dbg !6334

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6335

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6334
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !6334
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6334
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !6335
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6334
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !6331
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %acpi_drv, metadata !6337, metadata !DIExpression()), !dbg !6338
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !6339, metadata !DIExpression()), !dbg !6341
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6341
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !6341
  store i8* %6, i8** %__mptr1, align 8, !dbg !6341
  br label %do.body2, !dbg !6341

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6342

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !6341
  %add.ptr5 = getelementptr i8, i8* %7, i64 -200, !dbg !6341
  %8 = bitcast i8* %add.ptr5 to %struct.acpi_driver*, !dbg !6341
  store %struct.acpi_driver* %8, %struct.acpi_driver** %tmp4, align 8, !dbg !6342
  %9 = load %struct.acpi_driver*, %struct.acpi_driver** %tmp4, align 8, !dbg !6341
  store %struct.acpi_driver* %9, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6338
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6344
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 9, !dbg !6345
  %11 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !6346
  %bf.load = load i32, i32* %11, align 4, !dbg !6346
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !6346
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6346
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !6344
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6347

land.rhs:                                         ; preds = %do.end3
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6348
  %13 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6349
  %ids = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %13, i32 0, i32 2, !dbg !6350
  %14 = load %struct.acpi_device_id*, %struct.acpi_device_id** %ids, align 8, !dbg !6350
  %call = call i32 @acpi_match_device_ids(%struct.acpi_device* %12, %struct.acpi_device_id* %14) #7, !dbg !6351
  %tobool6 = icmp ne i32 %call, 0, !dbg !6352
  %lnot = xor i1 %tobool6, true, !dbg !6352
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end3
  %15 = phi i1 [ false, %do.end3 ], [ %lnot, %land.rhs ], !dbg !6353
  %land.ext = zext i1 %15 to i32, !dbg !6347
  ret i32 %land.ext, !dbg !6354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !6355 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6360, metadata !DIExpression()), !dbg !6362
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6362
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6362
  store i8* %1, i8** %__mptr, align 8, !dbg !6362
  br label %do.body, !dbg !6362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6363

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6362
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !6362
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6362
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !6363
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6362
  %5 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !6365
  %call = call i32 @__acpi_device_uevent_modalias(%struct.acpi_device* %4, %struct.kobj_uevent_env* %5) #7, !dbg !6366
  ret i32 %call, !dbg !6367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_probe(%struct.device* %dev) #0 !dbg !6368 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %acpi_drv = alloca %struct.acpi_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !6371, metadata !DIExpression()), !dbg !6372
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6373, metadata !DIExpression()), !dbg !6375
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6375
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6375
  store i8* %1, i8** %__mptr, align 8, !dbg !6375
  br label %do.body, !dbg !6375

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6376

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6375
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !6375
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6375
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !6376
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6375
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !6372
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %acpi_drv, metadata !6378, metadata !DIExpression()), !dbg !6379
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !6380, metadata !DIExpression()), !dbg !6382
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6382
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !6382
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6382
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !6382
  store i8* %7, i8** %__mptr1, align 8, !dbg !6382
  br label %do.body2, !dbg !6382

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6383

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !6382
  %add.ptr5 = getelementptr i8, i8* %8, i64 -200, !dbg !6382
  %9 = bitcast i8* %add.ptr5 to %struct.acpi_driver*, !dbg !6382
  store %struct.acpi_driver* %9, %struct.acpi_driver** %tmp4, align 8, !dbg !6383
  %10 = load %struct.acpi_driver*, %struct.acpi_driver** %tmp4, align 8, !dbg !6382
  store %struct.acpi_driver* %10, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6379
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6385, metadata !DIExpression()), !dbg !6386
  %11 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6387
  %handler = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 16, !dbg !6389
  %12 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler, align 8, !dbg !6389
  %tobool = icmp ne %struct.acpi_scan_handler* %12, null, !dbg !6387
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6390

land.lhs.true:                                    ; preds = %do.end3
  %13 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6391
  %call = call zeroext i1 @acpi_is_pnp_device(%struct.acpi_device* %13) #7, !dbg !6392
  br i1 %call, label %if.end, label %if.then, !dbg !6393

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !6394
  br label %return, !dbg !6394

if.end:                                           ; preds = %land.lhs.true, %do.end3
  %14 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6395
  %ops = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %14, i32 0, i32 4, !dbg !6397
  %add = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops, i32 0, i32 0, !dbg !6398
  %add6 = bitcast {}** %add to i32 (%struct.acpi_device*)**, !dbg !6398
  %15 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %add6, align 8, !dbg !6398
  %tobool7 = icmp ne i32 (%struct.acpi_device*)* %15, null, !dbg !6395
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6399

if.then8:                                         ; preds = %if.end
  store i32 -38, i32* %retval, align 4, !dbg !6400
  br label %return, !dbg !6400

if.end9:                                          ; preds = %if.end
  %16 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6401
  %ops10 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %16, i32 0, i32 4, !dbg !6402
  %add11 = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops10, i32 0, i32 0, !dbg !6403
  %add12 = bitcast {}** %add11 to i32 (%struct.acpi_device*)**, !dbg !6403
  %17 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %add12, align 8, !dbg !6403
  %18 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6404
  %call13 = call i32 %17(%struct.acpi_device* %18) #7, !dbg !6401
  store i32 %call13, i32* %ret, align 4, !dbg !6405
  %19 = load i32, i32* %ret, align 4, !dbg !6406
  %tobool14 = icmp ne i32 %19, 0, !dbg !6406
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6408

if.then15:                                        ; preds = %if.end9
  %20 = load i32, i32* %ret, align 4, !dbg !6409
  store i32 %20, i32* %retval, align 4, !dbg !6410
  br label %return, !dbg !6410

if.end16:                                         ; preds = %if.end9
  %21 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6411
  %22 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6412
  %driver17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 18, !dbg !6413
  store %struct.acpi_driver* %21, %struct.acpi_driver** %driver17, align 8, !dbg !6414
  %23 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6415
  %ops18 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %23, i32 0, i32 4, !dbg !6417
  %notify = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops18, i32 0, i32 2, !dbg !6418
  %24 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %notify, align 8, !dbg !6418
  %tobool19 = icmp ne void (%struct.acpi_device*, i32)* %24, null, !dbg !6415
  br i1 %tobool19, label %if.then20, label %if.end35, !dbg !6419

if.then20:                                        ; preds = %if.end16
  %25 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6420
  %call21 = call i32 @acpi_device_install_notify_handler(%struct.acpi_device* %25) #7, !dbg !6422
  store i32 %call21, i32* %ret, align 4, !dbg !6423
  %26 = load i32, i32* %ret, align 4, !dbg !6424
  %tobool22 = icmp ne i32 %26, 0, !dbg !6424
  br i1 %tobool22, label %if.then23, label %if.end34, !dbg !6426

if.then23:                                        ; preds = %if.then20
  %27 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6427
  %ops24 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %27, i32 0, i32 4, !dbg !6430
  %remove = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops24, i32 0, i32 1, !dbg !6431
  %remove25 = bitcast {}** %remove to i32 (%struct.acpi_device*)**, !dbg !6431
  %28 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %remove25, align 8, !dbg !6431
  %tobool26 = icmp ne i32 (%struct.acpi_device*)* %28, null, !dbg !6427
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !6432

if.then27:                                        ; preds = %if.then23
  %29 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6433
  %ops28 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %29, i32 0, i32 4, !dbg !6434
  %remove29 = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops28, i32 0, i32 1, !dbg !6435
  %remove30 = bitcast {}** %remove29 to i32 (%struct.acpi_device*)**, !dbg !6435
  %30 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %remove30, align 8, !dbg !6435
  %31 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6436
  %call31 = call i32 %30(%struct.acpi_device* %31) #7, !dbg !6433
  br label %if.end32, !dbg !6433

if.end32:                                         ; preds = %if.then27, %if.then23
  %32 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6437
  %driver33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 18, !dbg !6438
  store %struct.acpi_driver* null, %struct.acpi_driver** %driver33, align 8, !dbg !6439
  %33 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6440
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 20, !dbg !6441
  store i8* null, i8** %driver_data, align 8, !dbg !6442
  %34 = load i32, i32* %ret, align 4, !dbg !6443
  store i32 %34, i32* %retval, align 4, !dbg !6444
  br label %return, !dbg !6444

if.end34:                                         ; preds = %if.then20
  br label %if.end35, !dbg !6445

if.end35:                                         ; preds = %if.end34, %if.end16
  %35 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6446
  %call36 = call %struct.device* @get_device(%struct.device* %35) #7, !dbg !6447
  store i32 0, i32* %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

return:                                           ; preds = %if.end35, %if.end32, %if.then15, %if.then8, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !6449
  ret i32 %36, !dbg !6449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_remove(%struct.device* %dev) #0 !dbg !6450 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %acpi_drv = alloca %struct.acpi_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !6453, metadata !DIExpression()), !dbg !6454
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6455, metadata !DIExpression()), !dbg !6457
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6457
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6457
  store i8* %1, i8** %__mptr, align 8, !dbg !6457
  br label %do.body, !dbg !6457

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6458

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6457
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !6457
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6457
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !6458
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6457
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !6454
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %acpi_drv, metadata !6460, metadata !DIExpression()), !dbg !6461
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6462
  %driver = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 18, !dbg !6463
  %6 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !6463
  store %struct.acpi_driver* %6, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6461
  %7 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6464
  %tobool = icmp ne %struct.acpi_driver* %7, null, !dbg !6464
  br i1 %tobool, label %if.then, label %if.end11, !dbg !6466

if.then:                                          ; preds = %do.end
  %8 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6467
  %ops = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %8, i32 0, i32 4, !dbg !6470
  %notify = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops, i32 0, i32 2, !dbg !6471
  %9 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %notify, align 8, !dbg !6471
  %tobool1 = icmp ne void (%struct.acpi_device*, i32)* %9, null, !dbg !6467
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6472

if.then2:                                         ; preds = %if.then
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6473
  call void @acpi_device_remove_notify_handler(%struct.acpi_device* %10) #7, !dbg !6474
  br label %if.end, !dbg !6474

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6475
  %ops3 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %11, i32 0, i32 4, !dbg !6477
  %remove = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops3, i32 0, i32 1, !dbg !6478
  %remove4 = bitcast {}** %remove to i32 (%struct.acpi_device*)**, !dbg !6478
  %12 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %remove4, align 8, !dbg !6478
  %tobool5 = icmp ne i32 (%struct.acpi_device*)* %12, null, !dbg !6475
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !6479

if.then6:                                         ; preds = %if.end
  %13 = load %struct.acpi_driver*, %struct.acpi_driver** %acpi_drv, align 8, !dbg !6480
  %ops7 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %13, i32 0, i32 4, !dbg !6481
  %remove8 = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops7, i32 0, i32 1, !dbg !6482
  %remove9 = bitcast {}** %remove8 to i32 (%struct.acpi_device*)**, !dbg !6482
  %14 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %remove9, align 8, !dbg !6482
  %15 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6483
  %call = call i32 %14(%struct.acpi_device* %15) #7, !dbg !6480
  br label %if.end10, !dbg !6480

if.end10:                                         ; preds = %if.then6, %if.end
  br label %if.end11, !dbg !6484

if.end11:                                         ; preds = %if.end10, %do.end
  %16 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6485
  %driver12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 18, !dbg !6486
  store %struct.acpi_driver* null, %struct.acpi_driver** %driver12, align 8, !dbg !6487
  %17 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !6488
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 20, !dbg !6489
  store i8* null, i8** %driver_data, align 8, !dbg !6490
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6491
  call void @put_device(%struct.device* %18) #7, !dbg !6492
  ret i32 0, !dbg !6493
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_early_init() #4 section ".init.text" !dbg !6494 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6495, metadata !DIExpression()), !dbg !6496
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !6497
  %tobool = icmp ne i32 %0, 0, !dbg !6497
  br i1 %tobool, label %if.then, label %if.end, !dbg !6499

if.then:                                          ; preds = %entry
  br label %return, !dbg !6500

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 538970405) #8, !dbg !6501
  %1 = load i32, i32* @acpi_strict, align 4, !dbg !6502
  %tobool1 = icmp ne i32 %1, 0, !dbg !6502
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6504

if.then2:                                         ; preds = %if.end
  store i8 1, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !6505
  br label %if.end3, !dbg !6506

if.end3:                                          ; preds = %if.then2, %if.end
  store i8 1, i8* @acpi_permanent_mmap, align 1, !dbg !6507
  %call4 = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* bitcast ([2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @dsdt_dmi_table to [2 x %struct.dmi_system_id]*), i64 0, i64 0)) #7, !dbg !6508
  %call5 = call i32 @acpi_reallocate_root_table() #8, !dbg !6509
  store i32 %call5, i32* %status, align 4, !dbg !6510
  %2 = load i32, i32* %status, align 4, !dbg !6511
  %tobool6 = icmp ne i32 %2, 0, !dbg !6511
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6513

if.then7:                                         ; preds = %if.end3
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !6514
  br label %error0, !dbg !6516

if.end9:                                          ; preds = %if.end3
  %call10 = call i32 @acpi_initialize_subsystem() #8, !dbg !6517
  store i32 %call10, i32* %status, align 4, !dbg !6518
  %3 = load i32, i32* %status, align 4, !dbg !6519
  %tobool11 = icmp ne i32 %3, 0, !dbg !6519
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !6521

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !6522
  br label %error0, !dbg !6524

if.end14:                                         ; preds = %if.end9
  %4 = load i32, i32* @acpi_ioapic, align 4, !dbg !6525
  %tobool15 = icmp ne i32 %4, 0, !dbg !6525
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !6527

if.then16:                                        ; preds = %if.end14
  %5 = load i8, i8* @acpi_sci_flags, align 1, !dbg !6528
  %conv = zext i8 %5 to i32, !dbg !6528
  %and = and i32 %conv, 12, !dbg !6531
  %tobool17 = icmp ne i32 %and, 0, !dbg !6531
  br i1 %tobool17, label %if.end24, label %if.then18, !dbg !6532

if.then18:                                        ; preds = %if.then16
  %6 = load i8, i8* @acpi_sci_flags, align 1, !dbg !6533
  %conv19 = zext i8 %6 to i32, !dbg !6533
  %and20 = and i32 %conv19, -13, !dbg !6533
  %conv21 = trunc i32 %and20 to i8, !dbg !6533
  store i8 %conv21, i8* @acpi_sci_flags, align 1, !dbg !6533
  %7 = load i8, i8* @acpi_sci_flags, align 1, !dbg !6535
  %conv22 = zext i8 %7 to i32, !dbg !6535
  %or = or i32 %conv22, 12, !dbg !6535
  %conv23 = trunc i32 %or to i8, !dbg !6535
  store i8 %conv23, i8* @acpi_sci_flags, align 1, !dbg !6535
  br label %if.end24, !dbg !6536

if.end24:                                         ; preds = %if.then18, %if.then16
  %8 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !6537
  %conv25 = zext i16 %8 to i32, !dbg !6538
  %9 = load i8, i8* @acpi_sci_flags, align 1, !dbg !6539
  %conv26 = zext i8 %9 to i32, !dbg !6539
  %and27 = and i32 %conv26, 12, !dbg !6540
  %shr = ashr i32 %and27, 2, !dbg !6541
  %conv28 = trunc i32 %shr to i16, !dbg !6542
  call void @acpi_pic_sci_set_trigger(i32 %conv25, i16 zeroext %conv28) #7, !dbg !6543
  br label %if.end30, !dbg !6544

if.else:                                          ; preds = %if.end14
  %10 = load i32, i32* @acpi_sci_override_gsi, align 4, !dbg !6545
  %conv29 = trunc i32 %10 to i16, !dbg !6545
  store i16 %conv29, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !6547
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end24
  br label %return, !dbg !6548

error0:                                           ; preds = %if.then12, %if.then7
  call void @llvm.dbg.label(metadata !6549), !dbg !6550
  call void @disable_acpi() #7, !dbg !6551
  br label %return, !dbg !6552

return:                                           ; preds = %error0, %if.end30, %if.then
  ret void, !dbg !6552
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_reallocate_root_table() #5 section ".init.text"

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_initialize_subsystem() #5 section ".init.text"

; Function Attrs: noredzone
declare dso_local void @acpi_pic_sci_set_trigger(i32, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @disable_acpi() #0 !dbg !6553 {
entry:
  store i32 1, i32* @acpi_disabled, align 4, !dbg !6555
  store i32 1, i32* @acpi_pci_disabled, align 4, !dbg !6556
  store i32 1, i32* @acpi_noirq, align 4, !dbg !6557
  ret void, !dbg !6558
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_subsystem_init() #4 section ".init.text" !dbg !6559 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6560, metadata !DIExpression()), !dbg !6561
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !6562
  %tobool = icmp ne i32 %0, 0, !dbg !6562
  br i1 %tobool, label %if.then, label %if.end, !dbg !6564

if.then:                                          ; preds = %entry
  br label %if.end4, !dbg !6565

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_enable_subsystem(i32 -3) #8, !dbg !6566
  store i32 %call, i32* %status, align 4, !dbg !6567
  %1 = load i32, i32* %status, align 4, !dbg !6568
  %tobool1 = icmp ne i32 %1, 0, !dbg !6568
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !6570

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !6571
  call void @disable_acpi() #7, !dbg !6573
  br label %if.end4, !dbg !6574

if.else:                                          ; preds = %if.end
  call void @regulator_has_full_constraints() #7, !dbg !6575
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %if.then2
  ret void, !dbg !6577
}

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_enable_subsystem(i32) #5 section ".init.text"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @regulator_has_full_constraints() #0 !dbg !6578 {
entry:
  ret void, !dbg !6580
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_init() #4 section ".init.text" !dbg !6581 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6584, metadata !DIExpression()), !dbg !6585
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !6586
  %tobool = icmp ne i32 %0, 0, !dbg !6586
  br i1 %tobool, label %if.then, label %if.end, !dbg !6588

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !6589
  store i32 -19, i32* %retval, align 4, !dbg !6591
  br label %return, !dbg !6591

if.end:                                           ; preds = %entry
  %1 = load %struct.kobject*, %struct.kobject** @firmware_kobj, align 8, !dbg !6592
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.kobject* %1) #7, !dbg !6593
  store %struct.kobject* %call1, %struct.kobject** @acpi_kobj, align 8, !dbg !6594
  %2 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !6595
  %tobool2 = icmp ne %struct.kobject* %2, null, !dbg !6595
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6597

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.acpi_init, i64 0, i64 0)) #8, !dbg !6598
  store %struct.kobject* null, %struct.kobject** @acpi_kobj, align 8, !dbg !6600
  br label %if.end5, !dbg !6601

if.end5:                                          ; preds = %if.then3, %if.end
  %call6 = call i32 @acpi_bus_init() #8, !dbg !6602
  store i32 %call6, i32* %result, align 4, !dbg !6603
  %3 = load i32, i32* %result, align 4, !dbg !6604
  %tobool7 = icmp ne i32 %3, 0, !dbg !6604
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6606

if.then8:                                         ; preds = %if.end5
  call void @disable_acpi() #7, !dbg !6607
  %4 = load i32, i32* %result, align 4, !dbg !6609
  store i32 %4, i32* %retval, align 4, !dbg !6610
  br label %return, !dbg !6610

if.end9:                                          ; preds = %if.end5
  call void @pci_mmcfg_late_init() #8, !dbg !6611
  call void @acpi_iort_init() #7, !dbg !6612
  %call10 = call i32 @acpi_scan_init() #7, !dbg !6613
  call void @acpi_ec_init() #7, !dbg !6614
  call void @acpi_debugfs_init() #7, !dbg !6615
  call void @acpi_sleep_proc_init() #7, !dbg !6616
  %call11 = call i32 @acpi_wakeup_device_init() #7, !dbg !6617
  %call12 = call i32 @acpi_debugger_init() #7, !dbg !6618
  %call13 = call i32 @acpi_setup_sb_notify_handler() #8, !dbg !6619
  store i32 0, i32* %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6621
  ret i32 %5, !dbg !6621
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__acpi_match_device_cls(%struct.acpi_device_id* %id, %struct.acpi_hardware_id* %hwid) #0 !dbg !6622 {
entry:
  %retval = alloca i1, align 1
  %id.addr = alloca %struct.acpi_device_id*, align 8
  %hwid.addr = alloca %struct.acpi_hardware_id*, align 8
  %i = alloca i32, align 4
  %msk = alloca i32, align 4
  %byte_shift = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  store %struct.acpi_device_id* %id, %struct.acpi_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  store %struct.acpi_hardware_id* %hwid, %struct.acpi_hardware_id** %hwid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %hwid.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6629, metadata !DIExpression()), !dbg !6630
  call void @llvm.dbg.declare(metadata i32* %msk, metadata !6631, metadata !DIExpression()), !dbg !6632
  call void @llvm.dbg.declare(metadata i32* %byte_shift, metadata !6633, metadata !DIExpression()), !dbg !6634
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !6635, metadata !DIExpression()), !dbg !6637
  %0 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id.addr, align 8, !dbg !6638
  %cls = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %0, i32 0, i32 2, !dbg !6640
  %1 = load i32, i32* %cls, align 8, !dbg !6640
  %tobool = icmp ne i32 %1, 0, !dbg !6638
  br i1 %tobool, label %if.end, label %if.then, !dbg !6641

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !6642
  br label %return, !dbg !6642

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4, !dbg !6643
  br label %for.cond, !dbg !6645

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !6646
  %cmp = icmp sle i32 %2, 3, !dbg !6648
  br i1 %cmp, label %for.body, label %for.end, !dbg !6649

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !6650
  %sub = sub i32 3, %3, !dbg !6652
  %mul = mul i32 8, %sub, !dbg !6653
  store i32 %mul, i32* %byte_shift, align 4, !dbg !6654
  %4 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id.addr, align 8, !dbg !6655
  %cls_msk = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %4, i32 0, i32 3, !dbg !6656
  %5 = load i32, i32* %cls_msk, align 4, !dbg !6656
  %6 = load i32, i32* %byte_shift, align 4, !dbg !6657
  %shr = lshr i32 %5, %6, !dbg !6658
  %and = and i32 %shr, 255, !dbg !6659
  store i32 %and, i32* %msk, align 4, !dbg !6660
  %7 = load i32, i32* %msk, align 4, !dbg !6661
  %tobool1 = icmp ne i32 %7, 0, !dbg !6661
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6663

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !6664

if.end3:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6665
  %8 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id.addr, align 8, !dbg !6666
  %cls4 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %8, i32 0, i32 2, !dbg !6667
  %9 = load i32, i32* %cls4, align 8, !dbg !6667
  %10 = load i32, i32* %byte_shift, align 4, !dbg !6668
  %shr5 = lshr i32 %9, %10, !dbg !6669
  %11 = load i32, i32* %msk, align 4, !dbg !6670
  %and6 = and i32 %shr5, %11, !dbg !6671
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %and6) #7, !dbg !6672
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6673
  %12 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid.addr, align 8, !dbg !6675
  %id8 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %12, i32 0, i32 1, !dbg !6676
  %13 = load i8*, i8** %id8, align 8, !dbg !6676
  %14 = load i32, i32* %i, align 4, !dbg !6677
  %sub9 = sub i32 %14, 1, !dbg !6678
  %mul10 = mul i32 %sub9, 2, !dbg !6679
  %idxprom = sext i32 %mul10 to i64, !dbg !6675
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6675
  %call11 = call i32 @strncmp(i8* %arraydecay7, i8* %arrayidx, i64 2) #7, !dbg !6680
  %tobool12 = icmp ne i32 %call11, 0, !dbg !6680
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6681

if.then13:                                        ; preds = %if.end3
  store i1 false, i1* %retval, align 1, !dbg !6682
  br label %return, !dbg !6682

if.end14:                                         ; preds = %if.end3
  br label %for.inc, !dbg !6683

for.inc:                                          ; preds = %if.end14, %if.then2
  %15 = load i32, i32* %i, align 4, !dbg !6684
  %inc = add i32 %15, 1, !dbg !6684
  store i32 %inc, i32* %i, align 4, !dbg !6684
  br label %for.cond, !dbg !6685, !llvm.loop !6686

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !6688
  br label %return, !dbg !6688

return:                                           ; preds = %for.end, %if.then13, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !6689
  ret i1 %16, !dbg !6689
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @__acpi_device_uevent_modalias(%struct.acpi_device*, %struct.kobj_uevent_env*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_is_pnp_device(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_install_notify_handler(%struct.acpi_device* %device) #0 !dbg !6690 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !6691, metadata !DIExpression()), !dbg !6692
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6693, metadata !DIExpression()), !dbg !6694
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6695
  %device_type = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 0, !dbg !6697
  %1 = load i32, i32* %device_type, align 8, !dbg !6697
  %cmp = icmp eq i32 %1, 4, !dbg !6698
  br i1 %cmp, label %if.then, label %if.else, !dbg !6699

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6700
  %3 = bitcast %struct.acpi_device* %2 to i8*, !dbg !6700
  %call = call i32 @acpi_install_fixed_event_handler(i32 2, i32 (i8*)* @acpi_device_fixed_event, i8* %3) #7, !dbg !6701
  store i32 %call, i32* %status, align 4, !dbg !6702
  br label %if.end7, !dbg !6703

if.else:                                          ; preds = %entry
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6704
  %device_type1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 0, !dbg !6706
  %5 = load i32, i32* %device_type1, align 8, !dbg !6706
  %cmp2 = icmp eq i32 %5, 5, !dbg !6707
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !6708

if.then3:                                         ; preds = %if.else
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6709
  %7 = bitcast %struct.acpi_device* %6 to i8*, !dbg !6709
  %call4 = call i32 @acpi_install_fixed_event_handler(i32 3, i32 (i8*)* @acpi_device_fixed_event, i8* %7) #7, !dbg !6710
  store i32 %call4, i32* %status, align 4, !dbg !6711
  br label %if.end, !dbg !6712

if.else5:                                         ; preds = %if.else
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6713
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 1, !dbg !6714
  %9 = load i8*, i8** %handle, align 8, !dbg !6714
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6715
  %11 = bitcast %struct.acpi_device* %10 to i8*, !dbg !6715
  %call6 = call i32 @acpi_install_notify_handler(i8* %9, i32 2, void (i8*, i32, i8*)* @acpi_device_notify, i8* %11) #7, !dbg !6716
  store i32 %call6, i32* %status, align 4, !dbg !6717
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* %status, align 4, !dbg !6718
  %tobool = icmp ne i32 %12, 0, !dbg !6718
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !6720

if.then8:                                         ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

if.end9:                                          ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

return:                                           ; preds = %if.end9, %if.then8
  %13 = load i32, i32* %retval, align 4, !dbg !6723
  ret i32 %13, !dbg !6723
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_fixed_event_handler(i32, i32 (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_fixed_event(i8* %data) #0 !dbg !6724 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6727, metadata !DIExpression()), !dbg !6728
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6729
  %call = call i32 @acpi_os_execute(i32 1, void (i8*)* @acpi_device_notify_fixed, i8* %0) #7, !dbg !6730
  ret i32 1, !dbg !6731
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_device_notify(i8* %handle, i32 %event, i8* %data) #0 !dbg !6732 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !6733, metadata !DIExpression()), !dbg !6734
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !6735, metadata !DIExpression()), !dbg !6736
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6737, metadata !DIExpression()), !dbg !6738
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !6739, metadata !DIExpression()), !dbg !6740
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6741
  %1 = bitcast i8* %0 to %struct.acpi_device*, !dbg !6741
  store %struct.acpi_device* %1, %struct.acpi_device** %device, align 8, !dbg !6740
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !6742
  %driver = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 18, !dbg !6743
  %3 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !6743
  %ops = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %3, i32 0, i32 4, !dbg !6744
  %notify = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops, i32 0, i32 2, !dbg !6745
  %4 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %notify, align 8, !dbg !6745
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !6746
  %6 = load i32, i32* %event.addr, align 4, !dbg !6747
  call void %4(%struct.acpi_device* %5, i32 %6) #7, !dbg !6742
  ret void, !dbg !6748
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_execute(i32, void (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_device_notify_fixed(i8* %data) #0 !dbg !6749 {
entry:
  %data.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6750, metadata !DIExpression()), !dbg !6751
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !6752, metadata !DIExpression()), !dbg !6753
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6754
  %1 = bitcast i8* %0 to %struct.acpi_device*, !dbg !6754
  store %struct.acpi_device* %1, %struct.acpi_device** %device, align 8, !dbg !6753
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !6755
  %3 = bitcast %struct.acpi_device* %2 to i8*, !dbg !6755
  call void @acpi_device_notify(i8* null, i32 256, i8* %3) #7, !dbg !6756
  ret void, !dbg !6757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_device_remove_notify_handler(%struct.acpi_device* %device) #0 !dbg !6758 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !6759, metadata !DIExpression()), !dbg !6760
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6761
  %device_type = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 0, !dbg !6763
  %1 = load i32, i32* %device_type, align 8, !dbg !6763
  %cmp = icmp eq i32 %1, 4, !dbg !6764
  br i1 %cmp, label %if.then, label %if.else, !dbg !6765

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_remove_fixed_event_handler(i32 2, i32 (i8*)* @acpi_device_fixed_event) #7, !dbg !6766
  br label %if.end7, !dbg !6766

if.else:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6767
  %device_type1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 0, !dbg !6769
  %3 = load i32, i32* %device_type1, align 8, !dbg !6769
  %cmp2 = icmp eq i32 %3, 5, !dbg !6770
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !6771

if.then3:                                         ; preds = %if.else
  %call4 = call i32 @acpi_remove_fixed_event_handler(i32 3, i32 (i8*)* @acpi_device_fixed_event) #7, !dbg !6772
  br label %if.end, !dbg !6772

if.else5:                                         ; preds = %if.else
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6773
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !6774
  %5 = load i8*, i8** %handle, align 8, !dbg !6774
  %call6 = call i32 @acpi_remove_notify_handler(i8* %5, i32 2, void (i8*, i32, i8*)* @acpi_device_notify) #7, !dbg !6775
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !6776
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_fixed_event_handler(i32, i32 (i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_copy_dsdt(%struct.dmi_system_id* %id) #0 !dbg !6777 {
entry:
  %id.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %id, %struct.dmi_system_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %id.addr, metadata !6778, metadata !DIExpression()), !dbg !6779
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %id.addr, align 8, !dbg !6780
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !6781
  %1 = load i8*, i8** %ident, align 8, !dbg !6781
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i8* %1) #8, !dbg !6782
  store i8 1, i8* @acpi_gbl_copy_dsdt_locally, align 1, !dbg !6783
  ret i32 0, !dbg !6784
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_bus_init() #4 section ".init.text" !dbg !6785 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6786, metadata !DIExpression()), !dbg !6787
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6788, metadata !DIExpression()), !dbg !6789
  %call = call i32 @acpi_os_initialize1() #7, !dbg !6790
  %call1 = call i32 @acpi_load_tables() #8, !dbg !6791
  store i32 %call1, i32* %status, align 4, !dbg !6792
  %0 = load i32, i32* %status, align 4, !dbg !6793
  %tobool = icmp ne i32 %0, 0, !dbg !6793
  br i1 %tobool, label %if.then, label %if.end, !dbg !6795

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !6796
  br label %error1, !dbg !6798

if.end:                                           ; preds = %entry
  call void @acpi_ec_ecdt_probe() #7, !dbg !6799
  %call3 = call i32 @acpi_enable_subsystem(i32 2) #8, !dbg !6800
  store i32 %call3, i32* %status, align 4, !dbg !6801
  %1 = load i32, i32* %status, align 4, !dbg !6802
  %tobool4 = icmp ne i32 %1, 0, !dbg !6802
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6804

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !6805
  br label %error1, !dbg !6807

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @acpi_initialize_objects(i32 0) #8, !dbg !6808
  store i32 %call8, i32* %status, align 4, !dbg !6809
  %2 = load i32, i32* %status, align 4, !dbg !6810
  %tobool9 = icmp ne i32 %2, 0, !dbg !6810
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6812

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !6813
  br label %error1, !dbg !6815

if.end12:                                         ; preds = %if.end7
  call void @acpi_early_processor_osc() #7, !dbg !6816
  call void @acpi_bus_osc_support() #7, !dbg !6817
  %call13 = call i32 @acpi_install_table_handler(i32 (i32, i8*, i8*)* @acpi_bus_table_handler, i8* null) #7, !dbg !6818
  store i32 %call13, i32* %status, align 4, !dbg !6819
  %call14 = call i32 @acpi_sysfs_init() #7, !dbg !6820
  call void @acpi_early_processor_set_pdc() #7, !dbg !6821
  call void @acpi_ec_dsdt_probe() #7, !dbg !6822
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !6823
  %call16 = call i32 @acpi_sleep_init() #7, !dbg !6824
  %call17 = call i32 @acpi_bus_init_irq() #8, !dbg !6825
  store i32 %call17, i32* %result, align 4, !dbg !6826
  %3 = load i32, i32* %result, align 4, !dbg !6827
  %tobool18 = icmp ne i32 %3, 0, !dbg !6827
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6829

if.then19:                                        ; preds = %if.end12
  br label %error1, !dbg !6830

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 @acpi_install_notify_handler(i8* inttoptr (i64 -1 to i8*), i32 1, void (i8*, i32, i8*)* @acpi_bus_notify, i8* null) #7, !dbg !6831
  store i32 %call21, i32* %status, align 4, !dbg !6832
  %4 = load i32, i32* %status, align 4, !dbg !6833
  %tobool22 = icmp ne i32 %4, 0, !dbg !6833
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !6835

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !6836
  br label %error1, !dbg !6838

if.end25:                                         ; preds = %if.end20
  %call26 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.proc_dir_entry* null) #7, !dbg !6839
  store %struct.proc_dir_entry* %call26, %struct.proc_dir_entry** @acpi_root_dir, align 8, !dbg !6840
  %call27 = call i32 @bus_register(%struct.bus_type* @acpi_bus_type) #7, !dbg !6841
  store i32 %call27, i32* %result, align 4, !dbg !6842
  %5 = load i32, i32* %result, align 4, !dbg !6843
  %tobool28 = icmp ne i32 %5, 0, !dbg !6843
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !6845

if.then29:                                        ; preds = %if.end25
  store i32 0, i32* %retval, align 4, !dbg !6846
  br label %return, !dbg !6846

if.end30:                                         ; preds = %if.end25
  br label %error1, !dbg !6843

error1:                                           ; preds = %if.end30, %if.then23, %if.then19, %if.then10, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6847), !dbg !6848
  %call31 = call i32 @acpi_terminate() #8, !dbg !6849
  store i32 -19, i32* %retval, align 4, !dbg !6850
  br label %return, !dbg !6850

return:                                           ; preds = %error1, %if.then29
  %6 = load i32, i32* %retval, align 4, !dbg !6851
  ret i32 %6, !dbg !6851
}

; Function Attrs: cold noredzone
declare dso_local void @pci_mmcfg_late_init() #5 section ".init.text"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_iort_init() #0 !dbg !6852 {
entry:
  ret void, !dbg !6854
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_scan_init() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ec_init() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_debugfs_init() #0 !dbg !6855 {
entry:
  ret void, !dbg !6857
}

; Function Attrs: noredzone
declare dso_local void @acpi_sleep_proc_init() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_wakeup_device_init() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_debugger_init() #0 !dbg !6858 {
entry:
  ret i32 -19, !dbg !6859
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_setup_sb_notify_handler() #4 section ".init.text" !dbg !6860 {
entry:
  %retval = alloca i32, align 4
  %sb_handle = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %sb_handle, metadata !6861, metadata !DIExpression()), !dbg !6862
  %call = call i32 @acpi_get_handle(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %sb_handle) #7, !dbg !6863
  %tobool = icmp ne i32 %call, 0, !dbg !6863
  br i1 %tobool, label %if.then, label %if.end, !dbg !6865

if.then:                                          ; preds = %entry
  store i32 -6, i32* %retval, align 4, !dbg !6866
  br label %return, !dbg !6866

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %sb_handle, align 8, !dbg !6867
  %call1 = call i32 @acpi_install_notify_handler(i8* %0, i32 2, void (i8*, i32, i8*)* @acpi_sb_notify, i8* null) #7, !dbg !6867
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6867
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6869

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6870
  br label %return, !dbg !6870

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6871
  br label %return, !dbg !6871

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !6872
  ret i32 %1, !dbg !6872
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_initialize1() #2

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_load_tables() #5 section ".init.text"

; Function Attrs: noredzone
declare dso_local void @acpi_ec_ecdt_probe() #2

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_initialize_objects(i32) #5 section ".init.text"

; Function Attrs: noredzone
declare dso_local void @acpi_early_processor_osc() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_bus_osc_support() #0 !dbg !6873 {
entry:
  %capbuf = alloca [2 x i32], align 4
  %context = alloca %struct.acpi_osc_context, align 8
  %handle = alloca i8*, align 8
  %capbuf_ret = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata [2 x i32]* %capbuf, metadata !6874, metadata !DIExpression()), !dbg !6876
  call void @llvm.dbg.declare(metadata %struct.acpi_osc_context* %context, metadata !6877, metadata !DIExpression()), !dbg !6878
  %uuid_str = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 0, !dbg !6879
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @sb_uuid_str, i64 0, i64 0), i8** %uuid_str, align 8, !dbg !6879
  %rev = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 1, !dbg !6879
  store i32 1, i32* %rev, align 8, !dbg !6879
  %cap = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 2, !dbg !6879
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 0, !dbg !6880
  store i64 8, i64* %length, align 8, !dbg !6880
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 1, !dbg !6880
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %capbuf, i64 0, i64 0, !dbg !6881
  %0 = bitcast i32* %arraydecay to i8*, !dbg !6881
  store i8* %0, i8** %pointer, align 8, !dbg !6880
  %ret = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !6879
  %1 = bitcast %struct.acpi_buffer* %ret to i8*, !dbg !6879
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false), !dbg !6879
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !6882, metadata !DIExpression()), !dbg !6883
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 0, !dbg !6884
  store i32 1, i32* %arrayidx, align 4, !dbg !6885
  %arrayidx1 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6886
  store i32 4, i32* %arrayidx1, align 4, !dbg !6887
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6888
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !6890
  %or = or i32 %2, 2, !dbg !6890
  store i32 %or, i32* %arrayidx2, align 4, !dbg !6890
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6891
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !6892
  %or4 = or i32 %3, 8, !dbg !6892
  store i32 %or4, i32* %arrayidx3, align 4, !dbg !6892
  %arrayidx5 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6893
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !6894
  %or6 = or i32 %4, 128, !dbg !6894
  store i32 %or6, i32* %arrayidx5, align 4, !dbg !6894
  %arrayidx7 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6895
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !6896
  %or8 = or i32 %5, 8192, !dbg !6896
  store i32 %or8, i32* %arrayidx7, align 4, !dbg !6896
  br i1 false, label %cond.true, label %cond.false, !dbg !6897

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !6898

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @test_bit(i64 455, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #7, !dbg !6898
  br i1 %call, label %if.then, label %if.end, !dbg !6897

if.then:                                          ; preds = %cond.false, %cond.true
  %arrayidx9 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6900
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !6902
  %or10 = or i32 %6, 32, !dbg !6902
  store i32 %or10, i32* %arrayidx9, align 4, !dbg !6902
  %arrayidx11 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !6903
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !6904
  %or12 = or i32 %7, 64, !dbg !6904
  store i32 %or12, i32* %arrayidx11, align 4, !dbg !6904
  br label %if.end, !dbg !6905

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %call13 = call i32 @acpi_get_handle(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %handle) #7, !dbg !6906
  %tobool = icmp ne i32 %call13, 0, !dbg !6906
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !6908

if.then14:                                        ; preds = %if.end
  br label %if.end33, !dbg !6909

if.end15:                                         ; preds = %if.end
  %8 = load i8*, i8** %handle, align 8, !dbg !6910
  %call16 = call i32 @acpi_run_osc(i8* %8, %struct.acpi_osc_context* %context) #7, !dbg !6910
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6910
  br i1 %tobool17, label %if.end33, label %if.then18, !dbg !6912

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32** %capbuf_ret, metadata !6913, metadata !DIExpression()), !dbg !6915
  %ret19 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !6916
  %pointer20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret19, i32 0, i32 1, !dbg !6917
  %9 = load i8*, i8** %pointer20, align 8, !dbg !6917
  %10 = bitcast i8* %9 to i32*, !dbg !6918
  store i32* %10, i32** %capbuf_ret, align 8, !dbg !6915
  %ret21 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !6919
  %length22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret21, i32 0, i32 0, !dbg !6921
  %11 = load i64, i64* %length22, align 8, !dbg !6921
  %cmp = icmp ugt i64 %11, 1, !dbg !6922
  br i1 %cmp, label %if.then23, label %if.end30, !dbg !6923

if.then23:                                        ; preds = %if.then18
  %12 = load i32*, i32** %capbuf_ret, align 8, !dbg !6924
  %arrayidx24 = getelementptr i32, i32* %12, i64 1, !dbg !6924
  %13 = load i32, i32* %arrayidx24, align 4, !dbg !6924
  %and = and i32 %13, 16, !dbg !6926
  %tobool25 = icmp ne i32 %and, 0, !dbg !6924
  %frombool = zext i1 %tobool25 to i8, !dbg !6927
  store i8 %frombool, i8* @osc_sb_apei_support_acked, align 1, !dbg !6927
  %14 = load i32*, i32** %capbuf_ret, align 8, !dbg !6928
  %arrayidx26 = getelementptr i32, i32* %14, i64 1, !dbg !6928
  %15 = load i32, i32* %arrayidx26, align 4, !dbg !6928
  %and27 = and i32 %15, 128, !dbg !6929
  %tobool28 = icmp ne i32 %and27, 0, !dbg !6928
  %frombool29 = zext i1 %tobool28 to i8, !dbg !6930
  store i8 %frombool29, i8* @osc_pc_lpi_support_confirmed, align 1, !dbg !6930
  br label %if.end30, !dbg !6931

if.end30:                                         ; preds = %if.then23, %if.then18
  %ret31 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !6932
  %pointer32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret31, i32 0, i32 1, !dbg !6933
  %16 = load i8*, i8** %pointer32, align 8, !dbg !6933
  call void @kfree(i8* %16) #7, !dbg !6934
  br label %if.end33, !dbg !6935

if.end33:                                         ; preds = %if.then14, %if.end30, %if.end15
  ret void, !dbg !6936
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_table_handler(i32 (i32, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_bus_table_handler(i32 %event, i8* %table, i8* %context) #0 !dbg !6937 {
entry:
  %event.addr = alloca i32, align 4
  %table.addr = alloca i8*, align 8
  %context.addr = alloca i8*, align 8
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !6940, metadata !DIExpression()), !dbg !6941
  store i8* %table, i8** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table.addr, metadata !6942, metadata !DIExpression()), !dbg !6943
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6944, metadata !DIExpression()), !dbg !6945
  %0 = load i32, i32* %event.addr, align 4, !dbg !6946
  %1 = load i8*, i8** %table.addr, align 8, !dbg !6947
  %2 = load i8*, i8** %context.addr, align 8, !dbg !6948
  call void @acpi_scan_table_handler(i32 %0, i8* %1, i8* %2) #7, !dbg !6949
  %3 = load i32, i32* %event.addr, align 4, !dbg !6950
  %4 = load i8*, i8** %table.addr, align 8, !dbg !6951
  %5 = load i8*, i8** %context.addr, align 8, !dbg !6952
  %call = call i32 @acpi_sysfs_table_handler(i32 %3, i8* %4, i8* %5) #7, !dbg !6953
  ret i32 %call, !dbg !6954
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_sysfs_init() #2

; Function Attrs: noredzone
declare dso_local void @acpi_early_processor_set_pdc() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ec_dsdt_probe() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_sleep_init() #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_bus_init_irq() #4 section ".init.text" !dbg !6955 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %message = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6956, metadata !DIExpression()), !dbg !6957
  call void @llvm.dbg.declare(metadata i8** %message, metadata !6958, metadata !DIExpression()), !dbg !6959
  store i8* null, i8** %message, align 8, !dbg !6959
  %0 = load i32, i32* @acpi_irq_model, align 4, !dbg !6960
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb4
  ], !dbg !6961

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %message, align 8, !dbg !6962
  br label %sw.epilog, !dbg !6964

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %message, align 8, !dbg !6965
  br label %sw.epilog, !dbg !6966

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %message, align 8, !dbg !6967
  br label %sw.epilog, !dbg !6968

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8** %message, align 8, !dbg !6969
  br label %sw.epilog, !dbg !6970

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %message, align 8, !dbg !6971
  br label %sw.epilog, !dbg !6972

sw.default:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !6973
  store i32 -19, i32* %retval, align 4, !dbg !6974
  br label %return, !dbg !6974

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %message, align 8, !dbg !6975
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* %1) #8, !dbg !6976
  %2 = load i32, i32* @acpi_irq_model, align 4, !dbg !6977
  %conv = zext i32 %2 to i64, !dbg !6977
  %call6 = call i32 @acpi_execute_simple_method(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i64 %conv) #7, !dbg !6978
  store i32 %call6, i32* %status, align 4, !dbg !6979
  %3 = load i32, i32* %status, align 4, !dbg !6980
  %tobool = icmp ne i32 %3, 0, !dbg !6980
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6982

land.lhs.true:                                    ; preds = %sw.epilog
  %4 = load i32, i32* %status, align 4, !dbg !6983
  %cmp = icmp ne i32 %4, 5, !dbg !6984
  br i1 %cmp, label %if.then, label %if.end, !dbg !6985

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %status, align 4, !dbg !6986
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_acpi_module_name, i64 0, i64 0), i32 1006, i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !6986
  store i32 -19, i32* %retval, align 4, !dbg !6988
  br label %return, !dbg !6988

if.end:                                           ; preds = %land.lhs.true, %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !6989
  br label %return, !dbg !6989

return:                                           ; preds = %if.end, %if.then, %sw.default
  %6 = load i32, i32* %retval, align 4, !dbg !6990
  ret i32 %6, !dbg !6990
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_bus_notify(i8* %handle, i32 %type, i8* %data) #0 !dbg !6991 {
entry:
  %handle.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %driver = alloca %struct.acpi_driver*, align 8
  %ost_code = alloca i32, align 4
  %hotplug_event = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !6992, metadata !DIExpression()), !dbg !6993
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6994, metadata !DIExpression()), !dbg !6995
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6996, metadata !DIExpression()), !dbg !6997
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6998, metadata !DIExpression()), !dbg !6999
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %driver, metadata !7000, metadata !DIExpression()), !dbg !7001
  call void @llvm.dbg.declare(metadata i32* %ost_code, metadata !7002, metadata !DIExpression()), !dbg !7003
  store i32 1, i32* %ost_code, align 4, !dbg !7003
  call void @llvm.dbg.declare(metadata i8* %hotplug_event, metadata !7004, metadata !DIExpression()), !dbg !7005
  store i8 0, i8* %hotplug_event, align 1, !dbg !7005
  %0 = load i32, i32* %type.addr, align 4, !dbg !7006
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb10
    i32 7, label %sw.bb11
  ], !dbg !7007

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !7008
  %1 = load i32, i32* %tmp, align 4, !dbg !7012
  store i8 1, i8* %hotplug_event, align 1, !dbg !7013
  br label %sw.epilog, !dbg !7014

sw.bb1:                                           ; preds = %entry
  store i32 0, i32* %tmp2, align 4, !dbg !7015
  %2 = load i32, i32* %tmp2, align 4, !dbg !7018
  store i8 1, i8* %hotplug_event, align 1, !dbg !7019
  br label %sw.epilog, !dbg !7020

sw.bb3:                                           ; preds = %entry
  store i32 0, i32* %tmp4, align 4, !dbg !7021
  %3 = load i32, i32* %tmp4, align 4, !dbg !7024
  br label %sw.epilog, !dbg !7025

sw.bb5:                                           ; preds = %entry
  store i32 0, i32* %tmp6, align 4, !dbg !7026
  %4 = load i32, i32* %tmp6, align 4, !dbg !7029
  store i8 1, i8* %hotplug_event, align 1, !dbg !7030
  br label %sw.epilog, !dbg !7031

sw.bb7:                                           ; preds = %entry
  store i32 0, i32* %tmp8, align 4, !dbg !7032
  %5 = load i32, i32* %tmp8, align 4, !dbg !7035
  br label %sw.epilog, !dbg !7036

sw.bb9:                                           ; preds = %entry
  %6 = load i8*, i8** %handle.addr, align 8, !dbg !7037
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !7037
  br label %sw.epilog, !dbg !7038

sw.bb10:                                          ; preds = %entry
  %7 = load i8*, i8** %handle.addr, align 8, !dbg !7039
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !7039
  br label %sw.epilog, !dbg !7040

sw.bb11:                                          ; preds = %entry
  %8 = load i8*, i8** %handle.addr, align 8, !dbg !7041
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !7041
  br label %sw.epilog, !dbg !7042

sw.default:                                       ; preds = %entry
  store i32 0, i32* %tmp12, align 4, !dbg !7043
  %9 = load i32, i32* %tmp12, align 4, !dbg !7046
  br label %sw.epilog, !dbg !7047

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %10 = load i8*, i8** %handle.addr, align 8, !dbg !7048
  %call = call %struct.acpi_device* @acpi_bus_get_acpi_device(i8* %10) #7, !dbg !7049
  store %struct.acpi_device* %call, %struct.acpi_device** %adev, align 8, !dbg !7050
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7051
  %tobool = icmp ne %struct.acpi_device* %11, null, !dbg !7051
  br i1 %tobool, label %if.end, label %if.then, !dbg !7053

if.then:                                          ; preds = %sw.epilog
  br label %err, !dbg !7054

if.end:                                           ; preds = %sw.epilog
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7055
  %driver13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 18, !dbg !7056
  %13 = load %struct.acpi_driver*, %struct.acpi_driver** %driver13, align 8, !dbg !7056
  store %struct.acpi_driver* %13, %struct.acpi_driver** %driver, align 8, !dbg !7057
  %14 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !7058
  %tobool14 = icmp ne %struct.acpi_driver* %14, null, !dbg !7058
  br i1 %tobool14, label %land.lhs.true, label %if.end21, !dbg !7060

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !7061
  %ops = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %15, i32 0, i32 4, !dbg !7062
  %notify = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops, i32 0, i32 2, !dbg !7063
  %16 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %notify, align 8, !dbg !7063
  %tobool15 = icmp ne void (%struct.acpi_device*, i32)* %16, null, !dbg !7061
  br i1 %tobool15, label %land.lhs.true16, label %if.end21, !dbg !7064

land.lhs.true16:                                  ; preds = %land.lhs.true
  %17 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !7065
  %flags = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %17, i32 0, i32 3, !dbg !7066
  %18 = load i32, i32* %flags, align 8, !dbg !7066
  %and = and i32 %18, 1, !dbg !7067
  %tobool17 = icmp ne i32 %and, 0, !dbg !7067
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !7068

if.then18:                                        ; preds = %land.lhs.true16
  %19 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !7069
  %ops19 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %19, i32 0, i32 4, !dbg !7070
  %notify20 = getelementptr inbounds %struct.acpi_device_ops, %struct.acpi_device_ops* %ops19, i32 0, i32 2, !dbg !7071
  %20 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %notify20, align 8, !dbg !7071
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7072
  %22 = load i32, i32* %type.addr, align 4, !dbg !7073
  call void %20(%struct.acpi_device* %21, i32 %22) #7, !dbg !7069
  br label %if.end21, !dbg !7069

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %land.lhs.true, %if.end
  %23 = load i8, i8* %hotplug_event, align 1, !dbg !7074
  %tobool22 = trunc i8 %23 to i1, !dbg !7074
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !7076

if.then23:                                        ; preds = %if.end21
  %24 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7077
  call void @acpi_bus_put_acpi_device(%struct.acpi_device* %24) #7, !dbg !7079
  br label %return, !dbg !7080

if.end24:                                         ; preds = %if.end21
  %25 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7081
  %26 = load i32, i32* %type.addr, align 4, !dbg !7081
  %call25 = call i32 @acpi_hotplug_schedule(%struct.acpi_device* %25, i32 %26) #7, !dbg !7081
  %tobool26 = icmp ne i32 %call25, 0, !dbg !7081
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !7083

if.then27:                                        ; preds = %if.end24
  br label %return, !dbg !7084

if.end28:                                         ; preds = %if.end24
  %27 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7085
  call void @acpi_bus_put_acpi_device(%struct.acpi_device* %27) #7, !dbg !7086
  br label %err, !dbg !7086

err:                                              ; preds = %if.end28, %if.then
  call void @llvm.dbg.label(metadata !7087), !dbg !7088
  %28 = load i8*, i8** %handle.addr, align 8, !dbg !7089
  %29 = load i32, i32* %type.addr, align 4, !dbg !7090
  %30 = load i32, i32* %ost_code, align 4, !dbg !7091
  %call29 = call i32 @acpi_evaluate_ost(i8* %28, i32 %29, i32 %30, %struct.acpi_buffer* null) #7, !dbg !7092
  br label %return, !dbg !7093

return:                                           ; preds = %err, %if.then27, %if.then23
  ret void, !dbg !7093
}

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #2

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_terminate() #5 section ".init.text"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !7094 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !7101, metadata !DIExpression()), !dbg !7104
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !7106, metadata !DIExpression()), !dbg !7107
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !7108, metadata !DIExpression()), !dbg !7109
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !7110, metadata !DIExpression()), !dbg !7112
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !7114, metadata !DIExpression()), !dbg !7115
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !7116, metadata !DIExpression()), !dbg !7124
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !7126, metadata !DIExpression()), !dbg !7127
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !7128, metadata !DIExpression()), !dbg !7129
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !7130, metadata !DIExpression()), !dbg !7131
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !7132
  %1 = load i64, i64* %nr.addr, align 8, !dbg !7133
  %div = sdiv i64 %1, 64, !dbg !7133
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !7134
  %2 = bitcast i64* %add.ptr to i8*, !dbg !7132
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !7135
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !7136
  %conv.i = trunc i64 %4 to i32, !dbg !7136
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !7137
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !7138
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !7138
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !7138
  %7 = load i64, i64* %nr.addr, align 8, !dbg !7139
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !7139
  br i1 %8, label %cond.true, label %cond.false, !dbg !7139

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !7139
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !7139
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !7140
  %and.i = and i64 %11, 63, !dbg !7141
  %shl.i = shl i64 1, %and.i, !dbg !7142
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !7143
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !7144
  %shr.i = ashr i64 %13, 6, !dbg !7145
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !7143
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !7143
  %and1.i = and i64 %shl.i, %14, !dbg !7146
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !7147
  %conv = zext i1 %cmp.i to i32, !dbg !7139
  br label %cond.end, !dbg !7139

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !7139
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !7139
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !7148
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !7149
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !7150, !srcloc !7151
  store i8 %19, i8* %oldbit.i, align 1, !dbg !7150
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !7152
  %tobool.i = trunc i8 %20 to i1, !dbg !7152
  %conv2 = zext i1 %tobool.i to i32, !dbg !7139
  br label %cond.end, !dbg !7139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7139
  %tobool = icmp ne i32 %cond, 0, !dbg !7139
  ret i1 %tobool, !dbg !7153
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !7154 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7158, metadata !DIExpression()), !dbg !7159
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7160, metadata !DIExpression()), !dbg !7161
  ret i1 true, !dbg !7162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !7163 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7167, metadata !DIExpression()), !dbg !7168
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7169, metadata !DIExpression()), !dbg !7170
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !7171, metadata !DIExpression()), !dbg !7172
  ret void, !dbg !7173
}

; Function Attrs: noredzone
declare dso_local void @acpi_scan_table_handler(i32, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_sysfs_table_handler(i32, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_bus_get_acpi_device(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bus_put_acpi_device(%struct.acpi_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hotplug_schedule(%struct.acpi_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_ost(i8*, i32, i32, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_sb_notify(i8* %handle, i32 %event, i8* %data) #0 !dbg !5313 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !7174, metadata !DIExpression()), !dbg !7175
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !7176, metadata !DIExpression()), !dbg !7177
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !7178, metadata !DIExpression()), !dbg !7179
  %0 = load i32, i32* %event.addr, align 4, !dbg !7180
  %cmp = icmp eq i32 %0, 129, !dbg !7182
  br i1 %cmp, label %if.then, label %if.else, !dbg !7183

if.then:                                          ; preds = %entry
  %call = call i32 @work_busy(%struct.work_struct* @acpi_sb_notify.acpi_sb_work) #7, !dbg !7184
  %tobool = icmp ne i32 %call, 0, !dbg !7184
  br i1 %tobool, label %if.end, label %if.then1, !dbg !7187

if.then1:                                         ; preds = %if.then
  %call2 = call zeroext i1 @schedule_work(%struct.work_struct* @acpi_sb_notify.acpi_sb_work) #7, !dbg !7188
  br label %if.end, !dbg !7188

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end4, !dbg !7189

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %event.addr, align 4, !dbg !7190
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0), i32 %1) #8, !dbg !7190
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  ret void, !dbg !7191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sb_notify_work(%struct.work_struct* %dummy) #0 !dbg !7192 {
entry:
  %dummy.addr = alloca %struct.work_struct*, align 8
  %sb_handle = alloca i8*, align 8
  store %struct.work_struct* %dummy, %struct.work_struct** %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %dummy.addr, metadata !7193, metadata !DIExpression()), !dbg !7194
  call void @llvm.dbg.declare(metadata i8** %sb_handle, metadata !7195, metadata !DIExpression()), !dbg !7196
  call void @orderly_poweroff(i1 zeroext true) #7, !dbg !7197
  %call = call i32 @acpi_get_handle(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %sb_handle) #7, !dbg !7198
  br label %while.body, !dbg !7199

while.body:                                       ; preds = %entry, %while.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !7200
  %0 = load i8*, i8** %sb_handle, align 8, !dbg !7202
  %call2 = call i32 @acpi_evaluate_ost(i8* %0, i32 256, i32 129, %struct.acpi_buffer* null) #7, !dbg !7203
  call void @msleep(i32 10000) #7, !dbg !7204
  br label %while.body, !dbg !7199, !llvm.loop !7205
}

; Function Attrs: noredzone
declare dso_local i32 @work_busy(%struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !7207 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !7210, metadata !DIExpression()), !dbg !7211
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !7212
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !7213
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !7214
  ret i1 %call, !dbg !7215
}

; Function Attrs: noredzone
declare dso_local void @orderly_poweroff(i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !7216 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !7219, metadata !DIExpression()), !dbg !7220
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !7221, metadata !DIExpression()), !dbg !7222
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !7223
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !7224
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !7225
  ret i1 %call, !dbg !7226
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5316, !5317, !5318, !5319}
!llvm.ident = !{!5320}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_bus_type", scope: !2, file: !3, line: 958, type: !4505, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, globals: !5269, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/bus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !31, !43, !50, !55, !61, !66, !72, !79, !85, !94, !102, !108, !114, !121, !128, !142, !147, !158, !168}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !129, line: 76, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!131 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 10, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_bus_device_type", file: !148, line: 89, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157}
!150 = !DIEnumerator(name: "ACPI_BUS_TYPE_DEVICE", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "ACPI_BUS_TYPE_PROCESSOR", value: 2, isUnsigned: true)
!153 = !DIEnumerator(name: "ACPI_BUS_TYPE_THERMAL", value: 3, isUnsigned: true)
!154 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER_BUTTON", value: 4, isUnsigned: true)
!155 = !DIEnumerator(name: "ACPI_BUS_TYPE_SLEEP_BUTTON", value: 5, isUnsigned: true)
!156 = !DIEnumerator(name: "ACPI_BUS_TYPE_ECDT_EC", value: 6, isUnsigned: true)
!157 = !DIEnumerator(name: "ACPI_BUS_DEVICE_TYPE_COUNT", value: 7, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 20, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "OSL_GLOBAL_LOCK_HANDLER", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "OSL_NOTIFY_HANDLER", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "OSL_GPE_HANDLER", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "OSL_DEBUGGER_MAIN_THREAD", value: 3, isUnsigned: true)
!165 = !DIEnumerator(name: "OSL_DEBUGGER_EXEC_THREAD", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "OSL_EC_POLL_HANDLER", value: 5, isUnsigned: true)
!167 = !DIEnumerator(name: "OSL_EC_BURST_HANDLER", value: 6, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 30, baseType: !170, size: 64, elements: !171)
!169 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!170 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!172 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!173 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!174 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!175 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!176 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!177 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!178 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!179 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!180 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!181 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!182 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!183 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!184 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!185 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!186 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!187 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!188 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!189 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!190 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!191 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!192 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!193 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!194 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!195 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!196 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!197 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!198 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!199 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!200 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!201 = !{!202, !208, !212, !213, !217, !218, !220, !4983, !3254, !5261, !5264, !293, !5229, !4988, !209, !277, !4869}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !203, line: 421, baseType: !204)
!203 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !205, line: 21, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !207, line: 27, baseType: !7)
!207 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !203, line: 127, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !205, line: 23, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !207, line: 31, baseType: !211)
!211 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !205, line: 17, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !207, line: 21, baseType: !216)
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !219, line: 148, baseType: !7)
!219 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_physical_node", file: !148, line: 327, size: 320, elements: !222)
!222 = !{!223, !224, !230, !4982}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !221, file: !148, line: 328, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !148, line: 329, baseType: !225, size: 128, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !219, line: 178, size: 128, elements: !226)
!226 = !{!227, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !219, line: 179, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !219, line: 179, baseType: !228, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !221, file: !148, line: 330, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 461, size: 5568, elements: !233)
!233 = !{!234, !4448, !4449, !4452, !4453, !4503, !4594, !4595, !4596, !4597, !4598, !4607, !4701, !4714, !4909, !4910, !4914, !4916, !4917, !4918, !4922, !4928, !4929, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4970, !4971, !4972, !4975, !4978, !4979, !4980, !4981}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !232, file: !115, line: 462, baseType: !235, size: 512)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !236, line: 64, size: 512, elements: !237)
!236 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !242, !243, !245, !306, !4315, !4442, !4443, !4444, !4445, !4446, !4447}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !236, line: 65, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !235, file: !236, line: 66, baseType: !225, size: 128, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !236, line: 67, baseType: !244, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !235, file: !236, line: 68, baseType: !246, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !236, line: 192, size: 704, elements: !248)
!248 = !{!249, !250, !266, !267}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !247, file: !236, line: 193, baseType: !225, size: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !247, file: !236, line: 194, baseType: !251, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !252, line: 83, baseType: !253)
!252 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !252, line: 71, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !252, line: 72, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 72, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !256, file: !252, line: 73, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !252, line: 20, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !259, file: !252, line: 21, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !263, line: 25, baseType: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 25, elements: !265)
!265 = !{}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !247, file: !236, line: 195, baseType: !235, size: 512, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !247, file: !236, line: 196, baseType: !268, size: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !236, line: 156, size: 192, elements: !271)
!271 = !{!272, !278, !283}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !270, file: !236, line: 157, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !246, !244}
!277 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !236, line: 158, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!239, !246, !244}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !270, file: !236, line: 159, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!277, !246, !244, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !236, line: 148, size: 20736, elements: !290)
!290 = !{!291, !296, !300, !301, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !289, file: !236, line: 149, baseType: !292, size: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !294)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!294 = !{!295}
!295 = !DISubrange(count: 3)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !289, file: !236, line: 150, baseType: !297, size: 4096, offset: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !289, file: !236, line: 151, baseType: !277, size: 32, offset: 4288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !289, file: !236, line: 152, baseType: !302, size: 16384, offset: 4320)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 16384, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 2048)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !289, file: !236, line: 153, baseType: !277, size: 32, offset: 20704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !235, file: !236, line: 69, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !236, line: 138, size: 448, elements: !309)
!309 = !{!310, !314, !343, !345, !4279, !4307, !4311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !308, file: !236, line: 139, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !244}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !308, file: !236, line: 140, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !318, line: 230, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !335}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !317, file: !318, line: 231, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !244, !328, !293}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !219, line: 60, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !326, line: 73, baseType: !327)
!326 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !326, line: 15, baseType: !170)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !318, line: 30, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !318, line: 31, baseType: !239, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !329, file: !318, line: 32, baseType: !333, size: 16, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !219, line: 19, baseType: !334)
!334 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !317, file: !318, line: 232, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!324, !244, !328, !239, !339}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 55, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !326, line: 72, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !326, line: 16, baseType: !342)
!342 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !308, file: !236, line: 141, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !308, file: !236, line: 142, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !318, line: 84, size: 320, elements: !350)
!350 = !{!351, !352, !356, !4276, !4277}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !318, line: 85, baseType: !239, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !349, file: !318, line: 86, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!333, !244, !328, !277}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !349, file: !318, line: 88, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!333, !244, !360, !277}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !318, line: 168, size: 448, elements: !362)
!362 = !{!363, !364, !365, !366, !4271, !4272}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !361, file: !318, line: 169, baseType: !329, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !318, line: 170, baseType: !339, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !361, file: !318, line: 171, baseType: !212, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !361, file: !318, line: 172, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!324, !370, !244, !360, !293, !541, !339}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !86, line: 916, size: 1856, align: 32, elements: !372)
!372 = !{!373, !391, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4254, !4255, !4264, !4265, !4266, !4267, !4268, !4269, !4270}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !371, file: !86, line: 920, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !86, line: 917, size: 128, elements: !375)
!375 = !{!376, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !374, file: !86, line: 918, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !378, line: 58, size: 64, elements: !379)
!378 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !378, line: 59, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !374, file: !86, line: 919, baseType: !383, size: 128, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !219, line: 216, size: 128, align: 64, elements: !384)
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !219, line: 217, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !383, file: !219, line: 218, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !386}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !371, file: !86, line: 921, baseType: !392, size: 128, offset: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !393, line: 8, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !392, file: !393, line: 9, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !398, line: 18, flags: DIFlagFwdDecl)
!398 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !392, file: !393, line: 10, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !398, line: 89, size: 1536, elements: !402)
!402 = !{!403, !404, !414, !422, !423, !438, !4204, !4206, !4218, !4219, !4220, !4221, !4222, !4228, !4229, !4230}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !401, file: !398, line: 91, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !401, file: !398, line: 92, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 277, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 277, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 277, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 70, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 65, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 66, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !401, file: !398, line: 93, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !401, file: !398, line: 94, baseType: !400, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !401, file: !398, line: 95, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !398, line: 47, size: 128, elements: !425)
!425 = !{!426, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !398, line: 48, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !398, line: 48, size: 64, elements: !428)
!428 = !{!429, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !398, line: 49, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !398, line: 49, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !398, line: 50, baseType: !204, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !398, line: 50, baseType: !204, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !398, line: 52, baseType: !209, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !398, line: 54, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !401, file: !398, line: 96, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !86, line: 610, size: 4224, elements: !441)
!441 = !{!442, !443, !444, !452, !459, !460, !608, !3917, !3918, !3919, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !4180, !4188, !4189, !4190, !4200, !4201, !4202, !4203}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !440, file: !86, line: 611, baseType: !333, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !440, file: !86, line: 612, baseType: !334, size: 16, offset: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !440, file: !86, line: 613, baseType: !445, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !446, line: 23, baseType: !447)
!446 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 21, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !446, line: 22, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !219, line: 32, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !326, line: 49, baseType: !7)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !440, file: !86, line: 614, baseType: !453, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !446, line: 28, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 26, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !446, line: 27, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !219, line: 33, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !326, line: 50, baseType: !7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !440, file: !86, line: 615, baseType: !7, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !440, file: !86, line: 622, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !86, line: 1864, size: 1536, align: 512, elements: !464)
!464 = !{!465, !469, !482, !486, !492, !496, !502, !506, !510, !514, !518, !519, !525, !529, !555, !584, !588, !594, !599, !603, !604}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !463, file: !86, line: 1865, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!400, !439, !400, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !463, file: !86, line: 1866, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!239, !400, !439, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !475, line: 10, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !474, file: !475, line: 11, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !212}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !474, file: !475, line: 12, baseType: !212, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !463, file: !86, line: 1867, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!277, !439, !277}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !463, file: !86, line: 1868, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !439, !277}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !86, line: 581, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !463, file: !86, line: 1870, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!277, !400, !293, !277}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !463, file: !86, line: 1872, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!277, !439, !400, !333, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !219, line: 30, baseType: !501)
!501 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !463, file: !86, line: 1873, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!277, !400, !439, !400}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !463, file: !86, line: 1874, baseType: !507, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!277, !439, !400}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !463, file: !86, line: 1875, baseType: !511, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!277, !439, !400, !239}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !463, file: !86, line: 1876, baseType: !515, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!277, !439, !400, !333}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !463, file: !86, line: 1877, baseType: !507, size: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !463, file: !86, line: 1878, baseType: !520, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!277, !439, !400, !333, !523}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !219, line: 16, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !219, line: 13, baseType: !204)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !463, file: !86, line: 1879, baseType: !526, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!277, !439, !400, !439, !400, !7}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !463, file: !86, line: 1881, baseType: !530, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!277, !400, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !86, line: 219, size: 640, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !544, !552, !553, !554}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !534, file: !86, line: 220, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !534, file: !86, line: 221, baseType: !333, size: 16, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !534, file: !86, line: 222, baseType: !445, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !534, file: !86, line: 223, baseType: !453, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !534, file: !86, line: 224, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !219, line: 46, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !326, line: 88, baseType: !543)
!543 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !534, file: !86, line: 225, baseType: !545, size: 128, offset: 192)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !546, line: 13, size: 128, elements: !547)
!546 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !545, file: !546, line: 14, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !546, line: 8, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !207, line: 30, baseType: !543)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !545, file: !546, line: 15, baseType: !170, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !534, file: !86, line: 226, baseType: !545, size: 128, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !534, file: !86, line: 227, baseType: !545, size: 128, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !534, file: !86, line: 234, baseType: !370, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !463, file: !86, line: 1882, baseType: !556, size: 64, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!277, !559, !561, !204, !7}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !563, line: 22, size: 1152, elements: !564)
!563 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !566, !567, !568, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !562, file: !563, line: 23, baseType: !204, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !562, file: !563, line: 24, baseType: !333, size: 16, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !562, file: !563, line: 25, baseType: !7, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !562, file: !563, line: 26, baseType: !569, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !219, line: 104, baseType: !204)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !562, file: !563, line: 27, baseType: !209, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !562, file: !563, line: 28, baseType: !209, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !562, file: !563, line: 37, baseType: !209, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !562, file: !563, line: 38, baseType: !523, size: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !562, file: !563, line: 39, baseType: !523, size: 32, offset: 352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !562, file: !563, line: 40, baseType: !445, size: 32, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !562, file: !563, line: 41, baseType: !453, size: 32, offset: 416)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !563, line: 42, baseType: !541, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !562, file: !563, line: 43, baseType: !545, size: 128, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !562, file: !563, line: 44, baseType: !545, size: 128, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !562, file: !563, line: 45, baseType: !545, size: 128, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !562, file: !563, line: 46, baseType: !545, size: 128, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !562, file: !563, line: 47, baseType: !209, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !562, file: !563, line: 48, baseType: !209, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !463, file: !86, line: 1883, baseType: !585, size: 64, offset: 960)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!324, !400, !293, !339}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !463, file: !86, line: 1884, baseType: !589, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!277, !439, !592, !209, !209}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !86, line: 50, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !463, file: !86, line: 1886, baseType: !595, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!277, !439, !598, !277}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !463, file: !86, line: 1887, baseType: !600, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!277, !439, !400, !370, !7, !333}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !463, file: !86, line: 1890, baseType: !515, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !463, file: !86, line: 1891, baseType: !605, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!277, !439, !490, !277}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !440, file: !86, line: 623, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !86, line: 1416, size: 9472, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !667, !3531, !3613, !3696, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3712, !3716, !3717, !3718, !3719, !3722, !3723, !3724, !3765, !3791, !3792, !3793, !3794, !3795, !3796, !3799, !3800, !3807, !3808, !3809, !3810, !3811, !3870, !3871, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !610, file: !86, line: 1417, baseType: !225, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !610, file: !86, line: 1418, baseType: !523, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !610, file: !86, line: 1419, baseType: !216, size: 8, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !610, file: !86, line: 1420, baseType: !342, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !610, file: !86, line: 1421, baseType: !541, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !610, file: !86, line: 1422, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !86, line: 2228, size: 576, elements: !620)
!620 = !{!621, !622, !623, !630, !634, !638, !642, !646, !647, !657, !660, !661, !662, !664, !665, !666}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !86, line: 2229, baseType: !239, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !619, file: !86, line: 2230, baseType: !277, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !619, file: !86, line: 2238, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!277, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !629, line: 28, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !619, file: !86, line: 2239, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !86, line: 70, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !619, file: !86, line: 2240, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!400, !618, !277, !239, !212}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !619, file: !86, line: 2242, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !609}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !86, line: 2243, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !645, line: 76, flags: DIFlagFwdDecl)
!645 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !86, line: 2244, baseType: !618, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !619, file: !86, line: 2245, baseType: !648, size: 64, offset: 512)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !219, line: 182, size: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !648, file: !219, line: 183, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !219, line: 186, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !219, line: 187, baseType: !651, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !652, file: !219, line: 187, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !619, file: !86, line: 2247, baseType: !658, offset: 576)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !659, line: 187, elements: !265)
!659 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !619, file: !86, line: 2248, baseType: !658, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !619, file: !86, line: 2249, baseType: !658, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !619, file: !86, line: 2250, baseType: !663, offset: 576)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, elements: !294)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !619, file: !86, line: 2252, baseType: !658, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !619, file: !86, line: 2253, baseType: !658, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !619, file: !86, line: 2254, baseType: !658, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !610, file: !86, line: 1423, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !86, line: 1935, size: 1472, elements: !671)
!671 = !{!672, !676, !680, !681, !685, !705, !709, !710, !711, !715, !719, !720, !721, !722, !728, !733, !734, !790, !791, !792, !793, !3515, !3530}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !670, file: !86, line: 1936, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!439, !609}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !670, file: !86, line: 1937, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !439}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !670, file: !86, line: 1938, baseType: !677, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !670, file: !86, line: 1940, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !439, !277}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !670, file: !86, line: 1941, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!277, !439, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !690, file: !6, line: 52, baseType: !170, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !690, file: !6, line: 54, baseType: !170, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !690, file: !6, line: 61, baseType: !541, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !690, file: !6, line: 62, baseType: !541, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !690, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !690, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !690, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !690, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !690, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !690, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !690, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !690, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !690, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !670, file: !86, line: 1942, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!277, !439}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !670, file: !86, line: 1943, baseType: !677, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !670, file: !86, line: 1944, baseType: !639, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !670, file: !86, line: 1945, baseType: !712, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!277, !609, !277}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !670, file: !86, line: 1946, baseType: !716, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!277, !609}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !670, file: !86, line: 1947, baseType: !716, size: 64, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !670, file: !86, line: 1948, baseType: !716, size: 64, offset: 704)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !670, file: !86, line: 1949, baseType: !716, size: 64, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !670, file: !86, line: 1950, baseType: !723, size: 64, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!277, !400, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !86, line: 57, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !670, file: !86, line: 1951, baseType: !729, size: 64, offset: 896)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!277, !609, !732, !293}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !670, file: !86, line: 1952, baseType: !639, size: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !670, file: !86, line: 1954, baseType: !735, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!277, !738, !400}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !740, line: 16, size: 896, elements: !741)
!740 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !763, !785, !786, !789}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !739, file: !740, line: 17, baseType: !293, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !739, file: !740, line: 18, baseType: !339, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !739, file: !740, line: 19, baseType: !339, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !739, file: !740, line: 20, baseType: !339, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !739, file: !740, line: 21, baseType: !339, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !739, file: !740, line: 22, baseType: !541, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !739, file: !740, line: 23, baseType: !541, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !740, line: 24, baseType: !750, size: 192, offset: 448)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !751, line: 53, size: 192, elements: !752)
!751 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !750, file: !751, line: 54, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !755, line: 13, baseType: !756)
!755 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !219, line: 175, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 173, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !757, file: !219, line: 174, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !205, line: 22, baseType: !550)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !750, file: !751, line: 55, baseType: !251, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !750, file: !751, line: 59, baseType: !225, size: 128, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !739, file: !740, line: 25, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !740, line: 31, size: 256, elements: !767)
!767 = !{!768, !773, !777, !781}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !766, file: !740, line: 32, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!212, !738, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !766, file: !740, line: 33, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !738, !212}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !740, line: 34, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!212, !738, !212, !772}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !766, file: !740, line: 35, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!277, !738, !212}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !739, file: !740, line: 26, baseType: !277, size: 32, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !739, file: !740, line: 27, baseType: !787, size: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !739, file: !740, line: 28, baseType: !212, size: 64, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !670, file: !86, line: 1955, baseType: !735, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !670, file: !86, line: 1956, baseType: !735, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !670, file: !86, line: 1957, baseType: !735, size: 64, offset: 1216)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !670, file: !86, line: 1963, baseType: !794, size: 64, offset: 1280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!277, !609, !797, !218}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !799, line: 68, size: 512, align: 128, elements: !800)
!799 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !802, !3507, !3514}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 69, baseType: !342, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 77, baseType: !803, size: 320, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 77, size: 320, elements: !804)
!804 = !{!805, !1935, !1940, !1966, !1974, !1980, !3458, !3506}
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 78, baseType: !806, size: 320)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 78, size: 320, elements: !807)
!807 = !{!808, !809, !1933, !1934}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !806, file: !799, line: 84, baseType: !225, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !806, file: !799, line: 86, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !86, line: 451, size: 1216, align: 64, elements: !812)
!812 = !{!813, !814, !821, !822, !827, !842, !851, !852, !853, !854, !1926, !1927, !1930, !1931, !1932}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !811, file: !86, line: 452, baseType: !439, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !811, file: !86, line: 453, baseType: !815, size: 128, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !816, line: 292, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !815, file: !816, line: 293, baseType: !251)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !815, file: !816, line: 295, baseType: !218, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !815, file: !816, line: 296, baseType: !212, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !811, file: !86, line: 454, baseType: !218, size: 32, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !811, file: !86, line: 455, baseType: !823, size: 32, offset: 224)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !219, line: 168, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 166, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !219, line: 167, baseType: !277, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !811, file: !86, line: 460, baseType: !828, size: 128, offset: 256)
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
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !836, file: !829, line: 25, baseType: !342, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !836, file: !829, line: 26, baseType: !835, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !836, file: !829, line: 27, baseType: !835, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !828, file: !829, line: 127, baseType: !835, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !811, file: !86, line: 461, baseType: !843, size: 256, offset: 384)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !844, line: 35, size: 256, elements: !845)
!844 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847, !848, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !843, file: !844, line: 36, baseType: !754, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !843, file: !844, line: 42, baseType: !754, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !843, file: !844, line: 46, baseType: !849, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !252, line: 29, baseType: !259)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !843, file: !844, line: 47, baseType: !225, size: 128, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !811, file: !86, line: 462, baseType: !342, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !811, file: !86, line: 463, baseType: !342, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !811, file: !86, line: 464, baseType: !342, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !811, file: !86, line: 465, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !86, line: 367, size: 1408, elements: !858)
!858 = !{!859, !863, !867, !871, !875, !879, !892, !898, !902, !907, !911, !915, !919, !964, !968, !974, !975, !976, !980, !985, !989, !1922}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !857, file: !86, line: 368, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!277, !797, !689}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !857, file: !86, line: 369, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!277, !370, !797}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !857, file: !86, line: 372, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!277, !810, !689}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !857, file: !86, line: 375, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!277, !797}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !857, file: !86, line: 381, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!277, !370, !810, !228, !7}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !857, file: !86, line: 383, baseType: !880, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !885, line: 795, size: 256, elements: !886)
!885 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888, !889, !890, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !884, file: !885, line: 796, baseType: !370, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !884, file: !885, line: 797, baseType: !810, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !884, file: !885, line: 799, baseType: !342, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !884, file: !885, line: 800, baseType: !7, size: 32, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !884, file: !885, line: 801, baseType: !7, size: 32, offset: 224)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !857, file: !86, line: 385, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!277, !370, !810, !541, !7, !7, !896, !897}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !857, file: !86, line: 388, baseType: !899, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!277, !370, !810, !541, !7, !7, !797, !212}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !857, file: !86, line: 393, baseType: !903, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!906, !810, !906}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !219, line: 125, baseType: !209)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !857, file: !86, line: 394, baseType: !908, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !797, !7, !7}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !857, file: !86, line: 395, baseType: !912, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!277, !797, !218}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !857, file: !86, line: 396, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !797}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !857, file: !86, line: 397, baseType: !920, size: 64, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!324, !923, !962}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !86, line: 320, size: 384, elements: !925)
!925 = !{!926, !927, !928, !932, !933, !934, !937, !938}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !924, file: !86, line: 321, baseType: !370, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !924, file: !86, line: 326, baseType: !541, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !924, file: !86, line: 327, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !923, !170, !170}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !924, file: !86, line: 328, baseType: !212, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !924, file: !86, line: 329, baseType: !277, size: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !924, file: !86, line: 330, baseType: !935, size: 16, offset: 288)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !205, line: 19, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !207, line: 24, baseType: !334)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !924, file: !86, line: 331, baseType: !935, size: 16, offset: 304)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !86, line: 332, baseType: !939, size: 64, offset: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !86, line: 332, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !939, file: !86, line: 333, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !939, file: !86, line: 334, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !885, line: 569, size: 448, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !944, file: !885, line: 570, baseType: !797, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !944, file: !885, line: 571, baseType: !277, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !944, file: !885, line: 572, baseType: !949, size: 320, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !950, line: 14, baseType: !951)
!950 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !950, line: 29, size: 320, elements: !952)
!952 = !{!953, !954, !955, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !950, line: 30, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !951, file: !950, line: 31, baseType: !212, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !951, file: !950, line: 32, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !950, line: 16, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!277, !960, !7, !277, !212}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !951, file: !950, line: 33, baseType: !225, size: 128, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !86, line: 64, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !857, file: !86, line: 402, baseType: !965, size: 64, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!277, !810, !797, !797, !11}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !857, file: !86, line: 404, baseType: !969, size: 64, offset: 896)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!500, !797, !972}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !973, line: 305, baseType: !7)
!973 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !857, file: !86, line: 405, baseType: !916, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !857, file: !86, line: 406, baseType: !872, size: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !857, file: !86, line: 407, baseType: !977, size: 64, offset: 1088)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!277, !797, !342, !342}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !857, file: !86, line: 409, baseType: !981, size: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !797, !984, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !857, file: !86, line: 410, baseType: !986, size: 64, offset: 1216)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!277, !810, !797}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !857, file: !86, line: 413, baseType: !990, size: 64, offset: 1280)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!277, !993, !370, !1921}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !995, line: 240, size: 1600, elements: !996)
!995 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!996 = !{!997, !998, !1000, !1007, !1009, !1010, !1012, !1019, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1032, !1038, !1039, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !995, line: 241, baseType: !342, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !994, file: !995, line: 242, baseType: !999, size: 16, offset: 64)
!999 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !994, file: !995, line: 243, baseType: !1001, size: 320, offset: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1002, line: 83, size: 320, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1001, file: !1002, line: 84, baseType: !277, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1001, file: !1002, line: 85, baseType: !225, size: 128, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1001, file: !1002, line: 86, baseType: !225, size: 128, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !995, line: 244, baseType: !1008, size: 8, offset: 448)
!1008 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !994, file: !995, line: 245, baseType: !7, size: 32, offset: 480)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !994, file: !995, line: 246, baseType: !1011, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !994, file: !995, line: 247, baseType: !1013, size: 64, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !995, line: 208, size: 32, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1014, file: !995, line: 209, baseType: !251)
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
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1120, !1121, !1122, !1910, !1911, !1912}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1041, file: !1042, line: 23, baseType: !523, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1041, file: !1042, line: 24, baseType: !277, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1041, file: !1042, line: 25, baseType: !439, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1041, file: !1042, line: 26, baseType: !609, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1041, file: !1042, line: 27, baseType: !750, size: 192, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1041, file: !1042, line: 28, baseType: !212, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1041, file: !1042, line: 29, baseType: !212, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1041, file: !1042, line: 30, baseType: !277, size: 32, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1041, file: !1042, line: 31, baseType: !500, size: 8, offset: 544)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1041, file: !1042, line: 33, baseType: !225, size: 128, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1041, file: !1042, line: 35, baseType: !1040, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1041, file: !1042, line: 36, baseType: !214, size: 8, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1041, file: !1042, line: 37, baseType: !1057, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1059, line: 53, size: 6592, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !{!1061, !1062, !1063, !1064, !1067, !1088, !1089, !1090, !1091, !1092, !1102}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1058, file: !1059, line: 54, baseType: !906, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1058, file: !1059, line: 60, baseType: !906, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1058, file: !1059, line: 64, baseType: !342, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1058, file: !1059, line: 65, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1059, line: 65, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1058, file: !1059, line: 66, baseType: !1068, size: 128, offset: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1069, line: 105, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1068, file: !1069, line: 110, baseType: !342, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1068, file: !1069, line: 118, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1069, line: 95, size: 448, elements: !1075)
!1075 = !{!1076, !1077, !1083, !1084, !1085, !1086, !1087}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1074, file: !1069, line: 96, baseType: !754, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1074, file: !1069, line: 97, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1069, line: 60, baseType: !1080)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1074, file: !1069, line: 98, baseType: !1078, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1074, file: !1069, line: 99, baseType: !500, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1074, file: !1069, line: 100, baseType: !500, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1074, file: !1069, line: 101, baseType: !383, size: 128, align: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1074, file: !1069, line: 102, baseType: !1082, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1058, file: !1059, line: 68, baseType: !232, size: 5568, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1058, file: !1059, line: 69, baseType: !244, size: 64, offset: 5952)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1058, file: !1059, line: 70, baseType: !277, size: 32, offset: 6016)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1058, file: !1059, line: 70, baseType: !277, size: 32, offset: 6048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1058, file: !1059, line: 71, baseType: !1093, size: 64, offset: 6080)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1059, line: 48, size: 808, elements: !1095)
!1095 = !{!1096, !1100}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1094, file: !1059, line: 49, baseType: !1097, size: 296)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 296, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 37)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1094, file: !1059, line: 50, baseType: !1101, size: 512, offset: 296)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 512, elements: !298)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1058, file: !1059, line: 75, baseType: !1103, size: 448, offset: 6144)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !169, line: 124, size: 448, elements: !1104)
!1104 = !{!1105, !1116, !1117}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1103, file: !169, line: 125, baseType: !1106, size: 256)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !169, line: 102, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1106, file: !169, line: 103, baseType: !754, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1106, file: !169, line: 104, baseType: !225, size: 128, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1106, file: !169, line: 105, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !169, line: 21, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1103, file: !169, line: 126, baseType: !383, size: 128, align: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1103, file: !169, line: 129, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !169, line: 18, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1041, file: !1042, line: 39, baseType: !7, size: 32, offset: 896)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1041, file: !1042, line: 41, baseType: !251, offset: 928)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1041, file: !1042, line: 42, baseType: !1123, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1059, line: 167, size: 8512, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1133, !1134, !1135, !1146, !1147, !1337, !1891, !1892, !1893, !1894, !1895, !1896, !1899, !1900, !1903, !1904, !1905, !1908}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1124, file: !1059, line: 171, baseType: !277, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1124, file: !1059, line: 172, baseType: !277, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1124, file: !1059, line: 173, baseType: !277, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1124, file: !1059, line: 176, baseType: !1130, size: 256, offset: 96)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1124, file: !1059, line: 178, baseType: !334, size: 16, offset: 352)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1124, file: !1059, line: 179, baseType: !334, size: 16, offset: 368)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1124, file: !1059, line: 186, baseType: !1136, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1059, line: 149, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1137, file: !1059, line: 150, baseType: !383, size: 128, align: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1137, file: !1059, line: 151, baseType: !277, size: 32, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1137, file: !1059, line: 152, baseType: !1057, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1137, file: !1059, line: 153, baseType: !1143, offset: 256)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: -1)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1124, file: !1059, line: 187, baseType: !1058, size: 6592, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1124, file: !1059, line: 189, baseType: !1148, size: 64, offset: 7040)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1844, size: 960, elements: !1151)
!1151 = !{!1152, !1259, !1264, !1268, !1272, !1276, !1277, !1281, !1285, !1289, !1295, !1299, !1327, !1332, !1333}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1150, file: !19, line: 1845, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1042, line: 515, baseType: !7)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1042, line: 203, size: 832, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1168, !1169, !1170, !1178, !1183, !1184, !1209, !1210, !1211, !1212, !1213, !1258}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1158, file: !1042, line: 204, baseType: !1157, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1158, file: !1042, line: 205, baseType: !1123, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1158, file: !1042, line: 206, baseType: !7, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1158, file: !1042, line: 210, baseType: !334, size: 16, offset: 160)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1158, file: !1042, line: 211, baseType: !334, size: 16, offset: 176)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1158, file: !1042, line: 212, baseType: !334, size: 16, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1158, file: !1042, line: 213, baseType: !1167, size: 8, offset: 208)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1042, line: 58, baseType: !214)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1158, file: !1042, line: 214, baseType: !214, size: 8, offset: 216)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1158, file: !1042, line: 215, baseType: !823, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1158, file: !1042, line: 217, baseType: !1171, size: 192, offset: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1172, line: 37, size: 192, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175, !1176, !1177}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1171, file: !1172, line: 38, baseType: !906, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1171, file: !1172, line: 40, baseType: !7, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1171, file: !1172, line: 42, baseType: !7, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1171, file: !1172, line: 44, baseType: !7, size: 32, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1158, file: !1042, line: 219, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1042, line: 19, baseType: !1181)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1157}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1158, file: !1042, line: 221, baseType: !212, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1042, line: 240, baseType: !1185, size: 64, offset: 576)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1042, line: 240, size: 64, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1185, file: !1042, line: 242, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1190, line: 313, size: 832, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1207}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1189, file: !1190, line: 314, baseType: !1157, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1189, file: !1190, line: 316, baseType: !1171, size: 192, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1189, file: !1190, line: 318, baseType: !334, size: 16, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1189, file: !1190, line: 319, baseType: !334, size: 16, offset: 272)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1189, file: !1190, line: 320, baseType: !334, size: 16, offset: 288)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1189, file: !1190, line: 321, baseType: !334, size: 16, offset: 304)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1189, file: !1190, line: 323, baseType: !1171, size: 192, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1189, file: !1190, line: 325, baseType: !1106, size: 256, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1189, file: !1190, line: 327, baseType: !1201, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1172, line: 31, size: 128, elements: !1203)
!1203 = !{!1204, !1205, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1202, file: !1172, line: 32, baseType: !797, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1202, file: !1172, line: 33, baseType: !7, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1202, file: !1172, line: 34, baseType: !7, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1189, file: !1190, line: 328, baseType: !1208, offset: 832)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, elements: !1144)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1158, file: !1042, line: 246, baseType: !334, size: 16, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1158, file: !1042, line: 252, baseType: !334, size: 16, offset: 656)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1158, file: !1042, line: 254, baseType: !823, size: 32, offset: 672)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1158, file: !1042, line: 256, baseType: !1201, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1158, file: !1042, line: 258, baseType: !1214, size: 64, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1190, line: 682, size: 2368, elements: !1216)
!1216 = !{!1217, !1220, !1221, !1247, !1248, !1249, !1250, !1251, !1256, !1257}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1215, file: !1190, line: 683, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !799, line: 117, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1215, file: !1190, line: 684, baseType: !7, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1215, file: !1190, line: 686, baseType: !1222, size: 448, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1223, line: 26, baseType: !1224)
!1223 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1223, line: 16, size: 448, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1236, !1241}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1224, file: !1223, line: 17, baseType: !251)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1224, file: !1223, line: 18, baseType: !277, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1224, file: !1223, line: 19, baseType: !277, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1224, file: !1223, line: 20, baseType: !897, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1224, file: !1223, line: 22, baseType: !212, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1224, file: !1223, line: 23, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1223, line: 13, baseType: !1234)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!212, !218, !212}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1224, file: !1223, line: 24, baseType: !1237, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1223, line: 14, baseType: !1239)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !212, !212}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1224, file: !1223, line: 25, baseType: !1242, size: 128, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !950, line: 40, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !950, line: 36, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1243, file: !950, line: 37, baseType: !251)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1243, file: !950, line: 38, baseType: !225, size: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1215, file: !1190, line: 687, baseType: !1222, size: 448, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1215, file: !1190, line: 689, baseType: !1222, size: 448, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1215, file: !1190, line: 690, baseType: !1222, size: 448, offset: 1472)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1215, file: !1190, line: 697, baseType: !251, offset: 1920)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1215, file: !1190, line: 698, baseType: !1252, size: 128, offset: 1920)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1190, line: 554, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1252, file: !1190, line: 555, baseType: !1157, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1252, file: !1190, line: 556, baseType: !1157, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1215, file: !1190, line: 699, baseType: !1106, size: 256, offset: 2048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1215, file: !1190, line: 700, baseType: !1118, size: 64, offset: 2304)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1158, file: !1042, line: 265, baseType: !1208, offset: 832)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1150, file: !19, line: 1846, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!277, !1040, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !219, line: 150, baseType: !7)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1150, file: !19, line: 1847, baseType: !1265, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1123, !1263}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1150, file: !19, line: 1848, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!277, !1040, !906, !797, !7}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1150, file: !19, line: 1849, baseType: !1273, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!277, !1040, !1263, !7, !342}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1150, file: !19, line: 1850, baseType: !1273, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1150, file: !19, line: 1851, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!7, !1123, !7}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1150, file: !19, line: 1853, baseType: !1282, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1123}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1150, file: !19, line: 1854, baseType: !1286, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!277, !1123}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1150, file: !19, line: 1855, baseType: !1290, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!277, !1040, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !86, line: 51, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1150, file: !19, line: 1857, baseType: !1296, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1040, !342}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1150, file: !19, line: 1858, baseType: !1300, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!277, !1123, !906, !7, !1303, !212}
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 354, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!277, !1307, !7, !212}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1309, line: 106, size: 512, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1322, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1308, file: !1309, line: 107, baseType: !210, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1308, file: !1309, line: 108, baseType: !210, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1308, file: !1309, line: 109, baseType: !210, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1308, file: !1309, line: 110, baseType: !215, size: 8, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1308, file: !1309, line: 111, baseType: !215, size: 8, offset: 200)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1308, file: !1309, line: 112, baseType: !215, size: 8, offset: 208)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1308, file: !1309, line: 113, baseType: !215, size: 8, offset: 216)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1308, file: !1309, line: 114, baseType: !1319, size: 32, offset: 224)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 4)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1308, file: !1309, line: 115, baseType: !210, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1308, file: !1309, line: 116, baseType: !1324, size: 192, offset: 320)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 24)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1150, file: !19, line: 1860, baseType: !1328, size: 64, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!293, !1123, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1150, file: !19, line: 1861, baseType: !643, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1150, file: !19, line: 1862, baseType: !1334, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 41, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1124, file: !1059, line: 190, baseType: !1338, size: 64, offset: 7104)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 399, size: 14464, elements: !1340)
!1340 = !{!1341, !1477, !1599, !1600, !1603, !1606, !1610, !1611, !1612, !1614, !1615, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1752, !1763, !1764, !1765, !1766, !1767, !1797, !1798, !1799, !1800, !1801, !1802, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1876, !1877, !1878, !1879, !1882, !1883, !1884, !1885, !1886, !1887}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1339, file: !19, line: 400, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !19, line: 130, size: 2176, elements: !1344)
!1344 = !{!1345, !1346, !1349, !1352, !1353, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1367, !1374, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1440, !1441, !1442, !1475, !1476}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1343, file: !19, line: 131, baseType: !1338, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1343, file: !19, line: 132, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !19, line: 132, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1343, file: !19, line: 133, baseType: !1350, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !19, line: 133, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1343, file: !19, line: 135, baseType: !7, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1343, file: !19, line: 136, baseType: !1354, size: 32, offset: 224)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !19, line: 66, baseType: !206)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1343, file: !19, line: 138, baseType: !277, size: 32, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1343, file: !19, line: 139, baseType: !277, size: 32, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1343, file: !19, line: 142, baseType: !7, size: 32, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1343, file: !19, line: 143, baseType: !906, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1343, file: !19, line: 145, baseType: !1157, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1343, file: !19, line: 146, baseType: !1157, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1343, file: !19, line: 148, baseType: !225, size: 128, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !19, line: 157, baseType: !1363, size: 128, offset: 704)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !19, line: 157, size: 128, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1363, file: !19, line: 158, baseType: !652, size: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1363, file: !19, line: 159, baseType: !225, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !19, line: 167, baseType: !1368, size: 192, offset: 832)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !19, line: 167, size: 192, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1368, file: !19, line: 168, baseType: !836, size: 192, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1368, file: !19, line: 169, baseType: !1202, size: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1368, file: !19, line: 170, baseType: !212, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1368, file: !19, line: 171, baseType: !277, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !19, line: 180, baseType: !1375, size: 256, offset: 1024)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !19, line: 180, size: 256, elements: !1376)
!1376 = !{!1377, !1414}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1375, file: !19, line: 184, baseType: !1378, size: 192)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !19, line: 181, size: 192, elements: !1379)
!1379 = !{!1380, !1410}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1378, file: !19, line: 182, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1383, line: 73, size: 448, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1399, !1404, !1409}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1382, file: !1383, line: 74, baseType: !1338, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1382, file: !1383, line: 75, baseType: !1387, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1383, line: 99, size: 704, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1388, file: !1383, line: 100, baseType: !754, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1388, file: !1383, line: 101, baseType: !823, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1388, file: !1383, line: 102, baseType: !823, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !1383, line: 105, baseType: !251, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1388, file: !1383, line: 107, baseType: !334, size: 16, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1388, file: !1383, line: 109, baseType: !815, size: 128, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1388, file: !1383, line: 110, baseType: !1381, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1388, file: !1383, line: 111, baseType: !648, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1388, file: !1383, line: 113, baseType: !1106, size: 256, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 83, baseType: !1400, size: 128, offset: 128)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 83, size: 128, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1400, file: !1383, line: 84, baseType: !225, size: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1400, file: !1383, line: 85, baseType: !1218, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 87, baseType: !1405, size: 128, offset: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 87, size: 128, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1405, file: !1383, line: 88, baseType: !652, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1405, file: !1383, line: 89, baseType: !383, size: 128, align: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 92, baseType: !7, size: 32, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1378, file: !19, line: 183, baseType: !1411, size: 128, offset: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 2)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1375, file: !19, line: 190, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !19, line: 186, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1415, file: !19, line: 187, baseType: !7, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1415, file: !19, line: 188, baseType: !225, size: 128, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1415, file: !19, line: 189, baseType: !1420, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !19, line: 62, baseType: !1422)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1342, !1167}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1343, file: !19, line: 193, baseType: !1123, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1343, file: !19, line: 194, baseType: !1057, size: 64, offset: 1344)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1343, file: !19, line: 200, baseType: !209, size: 64, offset: 1408)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1343, file: !19, line: 202, baseType: !209, size: 64, offset: 1472)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1343, file: !19, line: 212, baseType: !334, size: 16, offset: 1536)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1343, file: !19, line: 218, baseType: !334, size: 16, offset: 1552)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1343, file: !19, line: 221, baseType: !334, size: 16, offset: 1568)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1343, file: !19, line: 229, baseType: !334, size: 16, offset: 1584)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1343, file: !19, line: 230, baseType: !334, size: 16, offset: 1600)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1343, file: !19, line: 232, baseType: !18, size: 32, offset: 1632)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1343, file: !19, line: 233, baseType: !1435, size: 32, offset: 1664)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1436, line: 113, baseType: !1437)
!1436 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1436, line: 111, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1437, file: !1436, line: 112, baseType: !823, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1343, file: !19, line: 235, baseType: !7, size: 32, offset: 1696)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1343, file: !19, line: 236, baseType: !342, size: 64, offset: 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !19, line: 238, baseType: !1443, size: 256, offset: 1792)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !19, line: 238, size: 256, elements: !1444)
!1444 = !{!1445, !1474}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1443, file: !19, line: 239, baseType: !1446, size: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1447, line: 23, size: 256, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1471, !1473}
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 24, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 24, size: 128, elements: !1451)
!1451 = !{!1452, !1464}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1450, file: !1447, line: 25, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1454, line: 58, size: 128, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1462, !1463}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1453, file: !1454, line: 59, baseType: !377, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 60, baseType: !1458, size: 32, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 60, size: 32, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1458, file: !1454, line: 61, baseType: !7, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1458, file: !1454, line: 62, baseType: !823, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1453, file: !1454, line: 65, baseType: !935, size: 16, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1453, file: !1454, line: 65, baseType: !935, size: 16, offset: 112)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1447, line: 26, baseType: !1465, size: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1447, line: 26, size: 128, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1465, file: !1447, line: 27, baseType: !377, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !1447, line: 28, baseType: !7, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1465, file: !1447, line: 30, baseType: !935, size: 16, offset: 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1465, file: !1447, line: 30, baseType: !935, size: 16, offset: 112)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1446, file: !1447, line: 34, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1447, line: 17, baseType: !478)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1446, file: !1447, line: 35, baseType: !212, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1443, file: !19, line: 240, baseType: !209, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1343, file: !19, line: 246, baseType: !1420, size: 64, offset: 2048)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1343, file: !19, line: 247, baseType: !212, size: 64, offset: 2112)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1339, file: !19, line: 401, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !25, line: 101, size: 4992, elements: !1480)
!1480 = !{!1481, !1593, !1594, !1595, !1596, !1597}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1479, file: !25, line: 103, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !25, line: 66, size: 2240, elements: !1484)
!1484 = !{!1485, !1486, !1568, !1569, !1570, !1583, !1584, !1585, !1587, !1588, !1592}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1483, file: !25, line: 69, baseType: !1218, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1483, file: !25, line: 72, baseType: !1487, size: 1408, offset: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !25, line: 29, size: 1408, elements: !1488)
!1488 = !{!1489, !1493, !1497, !1501, !1505, !1509, !1513, !1517, !1522, !1526, !1530, !1536, !1540, !1541, !1545, !1549, !1553, !1557, !1558, !1562, !1563, !1567}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1487, file: !25, line: 30, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!277, !1338, !1482}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1487, file: !25, line: 31, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1478}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1487, file: !25, line: 32, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!277, !1350, !7}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1487, file: !25, line: 33, baseType: !1502, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !1350, !7}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1487, file: !25, line: 34, baseType: !1506, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1350}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1487, file: !25, line: 36, baseType: !1510, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!500, !1338, !1342, !1157}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1487, file: !25, line: 37, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!500, !1350, !1157, !7}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1487, file: !25, line: 38, baseType: !1518, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!277, !1338, !1521, !1157}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1487, file: !25, line: 39, baseType: !1523, size: 64, offset: 512)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1338, !1342, !24}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1487, file: !25, line: 40, baseType: !1527, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1338, !1342, !1342}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1487, file: !25, line: 41, baseType: !1531, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !7, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !25, line: 26, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1487, file: !25, line: 42, baseType: !1537, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1342}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1487, file: !25, line: 43, baseType: !1537, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1487, file: !25, line: 44, baseType: !1542, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1350, !228, !500}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1487, file: !25, line: 45, baseType: !1546, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1342, !1350}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1487, file: !25, line: 46, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!500, !1350}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1487, file: !25, line: 47, baseType: !1554, size: 64, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1342, !209}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1487, file: !25, line: 48, baseType: !1537, size: 64, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1487, file: !25, line: 49, baseType: !1559, size: 64, offset: 1152)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1342, !1338, !1342}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1487, file: !25, line: 50, baseType: !1559, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1487, file: !25, line: 51, baseType: !1564, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1381}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1487, file: !25, line: 52, baseType: !1564, size: 64, offset: 1344)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1483, file: !25, line: 74, baseType: !339, size: 64, offset: 1472)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1483, file: !25, line: 75, baseType: !339, size: 64, offset: 1536)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1483, file: !25, line: 76, baseType: !1571, size: 64, offset: 1600)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !25, line: 57, size: 256, elements: !1573)
!1573 = !{!1574, !1575, !1579}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1572, file: !25, line: 58, baseType: !329, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1572, file: !25, line: 59, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!324, !1478, !293}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1572, file: !25, line: 60, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!324, !1478, !239, !339}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1483, file: !25, line: 77, baseType: !239, size: 64, offset: 1664)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1483, file: !25, line: 78, baseType: !239, size: 64, offset: 1728)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1483, file: !25, line: 79, baseType: !1586, size: 32, offset: 1792)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1483, file: !25, line: 80, baseType: !643, size: 64, offset: 1856)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1483, file: !25, line: 87, baseType: !1589, size: 176, offset: 1920)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 176, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 22)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1483, file: !25, line: 88, baseType: !225, size: 128, offset: 2112)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1479, file: !25, line: 104, baseType: !212, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1479, file: !25, line: 105, baseType: !235, size: 512, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1479, file: !25, line: 106, baseType: !750, size: 192, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1479, file: !25, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1479, file: !25, line: 108, baseType: !1598, size: 4096, offset: 896)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 4096, elements: !298)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1339, file: !19, line: 403, baseType: !1068, size: 128, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1339, file: !19, line: 405, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !19, line: 43, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1339, file: !19, line: 406, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 42, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1339, file: !19, line: 408, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !19, line: 408, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1339, file: !19, line: 411, baseType: !1347, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1339, file: !19, line: 413, baseType: !7, size: 32, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1339, file: !19, line: 416, baseType: !1613, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1339, file: !19, line: 417, baseType: !7, size: 32, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1339, file: !19, line: 419, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !32, line: 165, size: 4672, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1629, !1630, !1631, !1632, !1633, !1634, !1690, !1691, !1692, !1693, !1695, !1696}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1617, file: !32, line: 166, baseType: !209, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1617, file: !32, line: 167, baseType: !836, size: 192, align: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1617, file: !32, line: 168, baseType: !225, size: 128, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1617, file: !32, line: 169, baseType: !342, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1617, file: !32, line: 170, baseType: !342, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1617, file: !32, line: 172, baseType: !1625, size: 32, offset: 512)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1626, line: 19, size: 32, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1625, file: !1626, line: 20, baseType: !1435, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1617, file: !32, line: 173, baseType: !7, size: 32, offset: 544)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1617, file: !32, line: 174, baseType: !7, size: 32, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1617, file: !32, line: 175, baseType: !7, size: 32, offset: 608)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1617, file: !32, line: 175, baseType: !7, size: 32, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1617, file: !32, line: 181, baseType: !754, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1617, file: !32, line: 183, baseType: !1635, size: 2688, offset: 768)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !32, line: 107, size: 2688, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1666, !1667, !1668, !1669, !1670, !1688, !1689}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1635, file: !32, line: 108, baseType: !1616, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1635, file: !32, line: 110, baseType: !342, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1635, file: !32, line: 111, baseType: !342, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1635, file: !32, line: 113, baseType: !225, size: 128, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1635, file: !32, line: 114, baseType: !225, size: 128, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1635, file: !32, line: 115, baseType: !225, size: 128, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1635, file: !32, line: 116, baseType: !225, size: 128, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1635, file: !32, line: 117, baseType: !251, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1635, file: !32, line: 119, baseType: !1646, size: 256, offset: 704)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 256, elements: !1320)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1648, line: 97, size: 64, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1647, file: !1648, line: 98, baseType: !760, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1635, file: !32, line: 121, baseType: !342, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1635, file: !32, line: 123, baseType: !342, size: 64, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1635, file: !32, line: 124, baseType: !342, size: 64, offset: 1088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1635, file: !32, line: 125, baseType: !342, size: 64, offset: 1152)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1635, file: !32, line: 126, baseType: !342, size: 64, offset: 1216)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1635, file: !32, line: 127, baseType: !342, size: 64, offset: 1280)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1635, file: !32, line: 135, baseType: !342, size: 64, offset: 1344)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1635, file: !32, line: 136, baseType: !342, size: 64, offset: 1408)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1635, file: !32, line: 138, baseType: !1660, size: 128, offset: 1472)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1661, line: 76, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1660, file: !1661, line: 78, baseType: !1647, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1660, file: !1661, line: 80, baseType: !7, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !1661, line: 81, baseType: !849, offset: 96)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1635, file: !32, line: 139, baseType: !277, size: 32, offset: 1600)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1635, file: !32, line: 140, baseType: !31, size: 32, offset: 1632)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1635, file: !32, line: 142, baseType: !251, offset: 1664)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1635, file: !32, line: 143, baseType: !225, size: 128, offset: 1664)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1635, file: !32, line: 144, baseType: !1671, size: 704, offset: 1792)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !169, line: 115, size: 704, elements: !1672)
!1672 = !{!1673, !1674, !1686, !1687}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1671, file: !169, line: 116, baseType: !1106, size: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1671, file: !169, line: 117, baseType: !1675, size: 320, offset: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1676, line: 11, size: 320, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679, !1680, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1675, file: !1676, line: 16, baseType: !652, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1675, file: !1676, line: 17, baseType: !342, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1675, file: !1676, line: 18, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1675, file: !1676, line: 19, baseType: !204, size: 32, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1671, file: !169, line: 120, baseType: !1118, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1671, file: !169, line: 121, baseType: !277, size: 32, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1635, file: !32, line: 146, baseType: !342, size: 64, offset: 2496)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1635, file: !32, line: 148, baseType: !225, size: 128, offset: 2560)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1617, file: !32, line: 184, baseType: !225, size: 128, offset: 3456)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1617, file: !32, line: 190, baseType: !1242, size: 128, offset: 3584)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1617, file: !32, line: 192, baseType: !231, size: 64, offset: 3712)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1617, file: !32, line: 193, baseType: !1694, size: 512, offset: 3776)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 512, elements: !298)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1617, file: !32, line: 194, baseType: !231, size: 64, offset: 4288)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1617, file: !32, line: 196, baseType: !1675, size: 320, offset: 4352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1339, file: !19, line: 425, baseType: !212, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1339, file: !19, line: 430, baseType: !342, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1339, file: !19, line: 436, baseType: !823, size: 32, offset: 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1339, file: !19, line: 442, baseType: !277, size: 32, offset: 928)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1339, file: !19, line: 447, baseType: !218, size: 32, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1339, file: !19, line: 449, baseType: !251, offset: 992)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1339, file: !19, line: 454, baseType: !235, size: 512, offset: 1024)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1339, file: !19, line: 459, baseType: !244, size: 64, offset: 1536)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1339, file: !19, line: 462, baseType: !1706, size: 128, offset: 1600)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1059, line: 159, size: 128, elements: !1707)
!1707 = !{!1708, !1737, !1738, !1739, !1740}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1706, file: !1059, line: 160, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !19, line: 1664, size: 320, elements: !1712)
!1712 = !{!1713, !1727, !1728, !1731, !1736}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1711, file: !19, line: 1665, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !19, line: 1660, baseType: !1716)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1167, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !19, line: 1651, size: 320, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1719, file: !19, line: 1652, baseType: !212, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1719, file: !19, line: 1653, baseType: !212, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1719, file: !19, line: 1654, baseType: !906, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1719, file: !19, line: 1655, baseType: !7, size: 32, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1719, file: !19, line: 1656, baseType: !334, size: 16, offset: 224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1719, file: !19, line: 1657, baseType: !239, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1711, file: !19, line: 1666, baseType: !1714, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1711, file: !19, line: 1667, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !19, line: 1661, baseType: !1538)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1711, file: !19, line: 1668, baseType: !1732, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !19, line: 1662, baseType: !1734)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1342, !7}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1711, file: !19, line: 1669, baseType: !239, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1059, line: 161, baseType: !216, size: 8, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1706, file: !1059, line: 162, baseType: !216, size: 8, offset: 72)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1706, file: !1059, line: 163, baseType: !216, size: 8, offset: 80)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1706, file: !1059, line: 164, baseType: !216, size: 8, offset: 88)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1339, file: !19, line: 466, baseType: !231, size: 64, offset: 1728)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1339, file: !19, line: 467, baseType: !43, size: 32, offset: 1792)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1339, file: !19, line: 468, baseType: !7, size: 32, offset: 1824)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1339, file: !19, line: 474, baseType: !342, size: 64, offset: 1856)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1339, file: !19, line: 476, baseType: !7, size: 32, offset: 1920)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1339, file: !19, line: 477, baseType: !7, size: 32, offset: 1952)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1339, file: !19, line: 484, baseType: !7, size: 32, offset: 1984)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1339, file: !19, line: 485, baseType: !277, size: 32, offset: 2016)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1339, file: !19, line: 487, baseType: !1750, size: 64, offset: 2048)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !19, line: 44, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1339, file: !19, line: 488, baseType: !1753, size: 5120, offset: 2112)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 5120, elements: !1761)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1042, line: 540, size: 320, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1754, file: !1042, line: 541, baseType: !209, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1754, file: !1042, line: 542, baseType: !209, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1754, file: !1042, line: 543, baseType: !209, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1754, file: !1042, line: 544, baseType: !204, size: 32, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1754, file: !1042, line: 545, baseType: !209, size: 64, offset: 256)
!1761 = !{!1762}
!1762 = !DISubrange(count: 16)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1339, file: !19, line: 490, baseType: !1675, size: 320, offset: 7232)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1339, file: !19, line: 491, baseType: !1106, size: 256, offset: 7552)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1339, file: !19, line: 493, baseType: !823, size: 32, offset: 7808)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1339, file: !19, line: 495, baseType: !225, size: 128, offset: 7872)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1339, file: !19, line: 502, baseType: !1768, size: 896, offset: 8000)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 321, size: 896, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1768, file: !19, line: 322, baseType: !342, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1768, file: !19, line: 323, baseType: !342, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1768, file: !19, line: 324, baseType: !342, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1768, file: !19, line: 326, baseType: !7, size: 32, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1768, file: !19, line: 327, baseType: !7, size: 32, offset: 224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1768, file: !19, line: 328, baseType: !7, size: 32, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1768, file: !19, line: 329, baseType: !7, size: 32, offset: 288)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1768, file: !19, line: 330, baseType: !7, size: 32, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1768, file: !19, line: 331, baseType: !7, size: 32, offset: 352)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1768, file: !19, line: 332, baseType: !7, size: 32, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1768, file: !19, line: 333, baseType: !7, size: 32, offset: 416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1768, file: !19, line: 334, baseType: !7, size: 32, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1768, file: !19, line: 335, baseType: !7, size: 32, offset: 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1768, file: !19, line: 336, baseType: !7, size: 32, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1768, file: !19, line: 337, baseType: !7, size: 32, offset: 544)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1768, file: !19, line: 338, baseType: !7, size: 32, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1768, file: !19, line: 339, baseType: !7, size: 32, offset: 608)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1768, file: !19, line: 340, baseType: !7, size: 32, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1768, file: !19, line: 341, baseType: !7, size: 32, offset: 672)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1768, file: !19, line: 342, baseType: !7, size: 32, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1768, file: !19, line: 344, baseType: !334, size: 16, offset: 736)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1768, file: !19, line: 345, baseType: !334, size: 16, offset: 752)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1768, file: !19, line: 346, baseType: !334, size: 16, offset: 768)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1768, file: !19, line: 348, baseType: !216, size: 8, offset: 784)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1768, file: !19, line: 349, baseType: !216, size: 8, offset: 792)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1768, file: !19, line: 350, baseType: !216, size: 8, offset: 800)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1768, file: !19, line: 351, baseType: !50, size: 32, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1339, file: !19, line: 504, baseType: !7, size: 32, offset: 8896)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1339, file: !19, line: 534, baseType: !7, size: 32, offset: 8928)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1339, file: !19, line: 535, baseType: !7, size: 32, offset: 8960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1339, file: !19, line: 536, baseType: !277, size: 32, offset: 8992)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1339, file: !19, line: 537, baseType: !750, size: 192, offset: 9024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1339, file: !19, line: 544, baseType: !1803, size: 64, offset: 9216)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !19, line: 40, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1339, file: !19, line: 546, baseType: !225, size: 128, offset: 9280)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1339, file: !19, line: 547, baseType: !251, offset: 9408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1339, file: !19, line: 548, baseType: !1671, size: 704, offset: 9408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1339, file: !19, line: 550, baseType: !750, size: 192, offset: 10112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1339, file: !19, line: 551, baseType: !750, size: 192, offset: 10304)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1339, file: !19, line: 557, baseType: !225, size: 128, offset: 10496)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1339, file: !19, line: 558, baseType: !251, offset: 10624)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1339, file: !19, line: 560, baseType: !277, size: 32, offset: 10624)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1339, file: !19, line: 563, baseType: !1814, size: 256, offset: 10688)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1815, line: 18, size: 256, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1818, !1819, !1820}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1814, file: !1815, line: 19, baseType: !231, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1814, file: !1815, line: 20, baseType: !277, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1814, file: !1815, line: 21, baseType: !1338, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1814, file: !1815, line: 22, baseType: !1821, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1815, line: 10, size: 256, elements: !1824)
!1824 = !{!1825, !1867, !1871, !1875}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1823, file: !1815, line: 11, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!277, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1831, line: 22, size: 1280, elements: !1832)
!1831 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1830, file: !1831, line: 23, baseType: !1834, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !207, line: 26, baseType: !277)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1830, file: !1831, line: 24, baseType: !206, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1830, file: !1831, line: 25, baseType: !206, size: 32, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1830, file: !1831, line: 28, baseType: !206, size: 32, offset: 96)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1830, file: !1831, line: 29, baseType: !210, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1830, file: !1831, line: 30, baseType: !210, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1830, file: !1831, line: 31, baseType: !206, size: 32, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1830, file: !1831, line: 32, baseType: !206, size: 32, offset: 288)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1830, file: !1831, line: 33, baseType: !206, size: 32, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1830, file: !1831, line: 34, baseType: !206, size: 32, offset: 352)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1830, file: !1831, line: 35, baseType: !210, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1830, file: !1831, line: 38, baseType: !206, size: 32, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1830, file: !1831, line: 40, baseType: !206, size: 32, offset: 480)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1830, file: !1831, line: 41, baseType: !206, size: 32, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1830, file: !1831, line: 42, baseType: !206, size: 32, offset: 544)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1830, file: !1831, line: 43, baseType: !210, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1830, file: !1831, line: 44, baseType: !210, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1830, file: !1831, line: 46, baseType: !206, size: 32, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !1831, line: 47, baseType: !206, size: 32, offset: 736)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1830, file: !1831, line: 48, baseType: !210, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1830, file: !1831, line: 49, baseType: !206, size: 32, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1830, file: !1831, line: 51, baseType: !206, size: 32, offset: 864)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1830, file: !1831, line: 52, baseType: !206, size: 32, offset: 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1830, file: !1831, line: 53, baseType: !206, size: 32, offset: 928)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1830, file: !1831, line: 54, baseType: !206, size: 32, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1830, file: !1831, line: 55, baseType: !206, size: 32, offset: 992)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1830, file: !1831, line: 56, baseType: !206, size: 32, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1830, file: !1831, line: 57, baseType: !206, size: 32, offset: 1056)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1830, file: !1831, line: 58, baseType: !1834, size: 32, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1830, file: !1831, line: 59, baseType: !1834, size: 32, offset: 1120)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1830, file: !1831, line: 60, baseType: !210, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1830, file: !1831, line: 61, baseType: !206, size: 32, offset: 1216)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1830, file: !1831, line: 63, baseType: !206, size: 32, offset: 1248)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1823, file: !1815, line: 12, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!277, !1342, !1829, !1263}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1823, file: !1815, line: 14, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!277, !1342, !1829}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1823, file: !1815, line: 15, baseType: !1537, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1339, file: !19, line: 570, baseType: !383, size: 128, align: 64, offset: 10944)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1339, file: !19, line: 571, baseType: !1242, size: 128, offset: 11072)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1339, file: !19, line: 576, baseType: !750, size: 192, offset: 11200)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1339, file: !19, line: 578, baseType: !1880, size: 64, offset: 11392)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !19, line: 578, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1339, file: !19, line: 579, baseType: !225, size: 128, offset: 11456)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1339, file: !19, line: 580, baseType: !1215, size: 2368, offset: 11584)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1339, file: !19, line: 582, baseType: !400, size: 64, offset: 13952)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1339, file: !19, line: 589, baseType: !500, size: 8, offset: 14016)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1339, file: !19, line: 591, baseType: !339, size: 64, offset: 14080)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1339, file: !19, line: 594, baseType: !1888, size: 320, offset: 14144)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 320, elements: !1889)
!1889 = !{!1890}
!1890 = !DISubrange(count: 5)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1124, file: !1059, line: 191, baseType: !212, size: 64, offset: 7168)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !1059, line: 193, baseType: !277, size: 32, offset: 7232)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1124, file: !1059, line: 194, baseType: !342, size: 64, offset: 7296)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1124, file: !1059, line: 196, baseType: !843, size: 256, offset: 7360)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1124, file: !1059, line: 197, baseType: !244, size: 64, offset: 7616)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1124, file: !1059, line: 199, baseType: !1897, size: 64, offset: 7680)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1059, line: 199, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1124, file: !1059, line: 200, baseType: !823, size: 32, offset: 7744)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1124, file: !1059, line: 201, baseType: !1901, size: 64, offset: 7808)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1059, line: 156, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1124, file: !1059, line: 203, baseType: !235, size: 512, offset: 7872)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1124, file: !1059, line: 208, baseType: !277, size: 32, offset: 8384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1124, file: !1059, line: 209, baseType: !1906, size: 64, offset: 8448)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1059, line: 157, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1124, file: !1059, line: 210, baseType: !1909, offset: 8512)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !659, line: 192, elements: !265)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1041, file: !1042, line: 43, baseType: !1616, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1041, file: !1042, line: 46, baseType: !277, size: 32, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1041, file: !1042, line: 48, baseType: !750, size: 192, offset: 1152)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !994, file: !995, line: 259, baseType: !370, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !994, file: !995, line: 260, baseType: !7, size: 32, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !994, file: !995, line: 265, baseType: !251, offset: 1248)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !994, file: !995, line: 278, baseType: !251, offset: 1248)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !994, file: !995, line: 282, baseType: !1106, size: 256, offset: 1280)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !994, file: !995, line: 283, baseType: !1020, size: 64, offset: 1536)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !994, file: !995, line: 284, baseType: !1920, offset: 1600)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, elements: !1144)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !857, file: !86, line: 415, baseType: !1923, size: 64, offset: 1344)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !370}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !86, line: 466, baseType: !342, size: 64, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !811, file: !86, line: 467, baseType: !1928, size: 32, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1929, line: 8, baseType: !204)
!1929 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !811, file: !86, line: 468, baseType: !251, offset: 992)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !811, file: !86, line: 469, baseType: !225, size: 128, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !811, file: !86, line: 470, baseType: !212, size: 64, offset: 1152)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !806, file: !799, line: 87, baseType: !342, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !806, file: !799, line: 94, baseType: !342, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 96, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 96, size: 64, elements: !1937)
!1937 = !{!1938}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1936, file: !799, line: 101, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !219, line: 143, baseType: !209)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 103, baseType: !1941, size: 320)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 103, size: 320, elements: !1942)
!1942 = !{!1943, !1953, !1954, !1955}
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !799, line: 104, baseType: !1944, size: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !799, line: 104, size: 128, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1944, file: !799, line: 105, baseType: !225, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !799, line: 106, baseType: !1948, size: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !799, line: 106, size: 128, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1948, file: !799, line: 107, baseType: !797, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1948, file: !799, line: 109, baseType: !277, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1948, file: !799, line: 110, baseType: !277, size: 32, offset: 96)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1941, file: !799, line: 117, baseType: !1218, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1941, file: !799, line: 119, baseType: !212, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !799, line: 120, baseType: !1956, size: 64, offset: 256)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !799, line: 120, size: 64, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1956, file: !799, line: 121, baseType: !212, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1956, file: !799, line: 122, baseType: !342, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !799, line: 123, baseType: !1961, size: 32)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !799, line: 123, size: 32, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1961, file: !799, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1961, file: !799, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1961, file: !799, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 130, baseType: !1967, size: 192)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 130, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1967, file: !799, line: 131, baseType: !342, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1967, file: !799, line: 134, baseType: !216, size: 8, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1967, file: !799, line: 135, baseType: !216, size: 8, offset: 72)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1967, file: !799, line: 136, baseType: !823, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1967, file: !799, line: 137, baseType: !7, size: 32, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 139, baseType: !1975, size: 256)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 139, size: 256, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1975, file: !799, line: 140, baseType: !342, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1975, file: !799, line: 141, baseType: !823, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1975, file: !799, line: 143, baseType: !225, size: 128, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 145, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 145, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1987, !1988, !3457}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1981, file: !799, line: 146, baseType: !342, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1981, file: !799, line: 147, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1986, line: 509, baseType: !797)
!1986 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1981, file: !799, line: 148, baseType: !342, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !799, line: 149, baseType: !1989, size: 64, offset: 192)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !799, line: 149, size: 64, elements: !1990)
!1990 = !{!1991, !3456}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1989, file: !799, line: 150, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !799, line: 388, size: 7296, elements: !1994)
!1994 = !{!1995, !3454}
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !799, line: 389, baseType: !1996, size: 7296)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !799, line: 389, size: 7296, elements: !1997)
!1997 = !{!1998, !2116, !2117, !2118, !2122, !2123, !2124, !2125, !2126, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2167, !2173, !2176, !2215, !2216, !3438, !3439, !3442, !3443, !3444, !3447, !3448, !3449, !3452, !3453}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1996, file: !799, line: 390, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !799, line: 305, size: 1472, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2016, !2017, !2022, !2023, !2026, !2110, !2111, !2112, !2113, !2114}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2000, file: !799, line: 308, baseType: !342, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2000, file: !799, line: 309, baseType: !342, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2000, file: !799, line: 313, baseType: !1999, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2000, file: !799, line: 313, baseType: !1999, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2000, file: !799, line: 315, baseType: !836, size: 192, align: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2000, file: !799, line: 323, baseType: !342, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2000, file: !799, line: 327, baseType: !1992, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2000, file: !799, line: 333, baseType: !2010, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1986, line: 284, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1986, line: 284, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2011, file: !1986, line: 284, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2015, line: 19, baseType: !342)
!2015 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2000, file: !799, line: 334, baseType: !342, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2000, file: !799, line: 343, baseType: !2018, size: 256, offset: 704)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !799, line: 340, size: 256, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2018, file: !799, line: 341, baseType: !836, size: 192, align: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2018, file: !799, line: 342, baseType: !342, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2000, file: !799, line: 351, baseType: !225, size: 128, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2000, file: !799, line: 353, baseType: !2024, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !799, line: 353, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2000, file: !799, line: 356, baseType: !2027, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !56, line: 557, size: 832, elements: !2030)
!2030 = !{!2031, !2035, !2036, !2040, !2044, !2084, !2088, !2092, !2096, !2097, !2098, !2102, !2106}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2029, file: !56, line: 558, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1999}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2029, file: !56, line: 559, baseType: !2032, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2029, file: !56, line: 560, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!277, !1999, !342}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2029, file: !56, line: 561, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!277, !1999}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2029, file: !56, line: 562, baseType: !2045, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !799, line: 682, baseType: !7)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !56, line: 508, size: 768, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2064, !2071, !2077, !2078, !2079, !2081, !2083}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2050, file: !56, line: 509, baseType: !1999, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !56, line: 510, baseType: !7, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2050, file: !56, line: 511, baseType: !218, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2050, file: !56, line: 512, baseType: !342, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2050, file: !56, line: 513, baseType: !342, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2050, file: !56, line: 514, baseType: !2058, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1986, line: 385, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 385, size: 64, elements: !2061)
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2060, file: !1986, line: 385, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2015, line: 15, baseType: !342)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2050, file: !56, line: 516, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1986, line: 359, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 359, size: 64, elements: !2068)
!2068 = !{!2069}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2067, file: !1986, line: 359, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2015, line: 16, baseType: !342)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2050, file: !56, line: 519, baseType: !2072, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2015, line: 21, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2015, line: 21, size: 64, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2073, file: !2015, line: 21, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2015, line: 14, baseType: !342)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2050, file: !56, line: 521, baseType: !797, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2050, file: !56, line: 522, baseType: !797, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2050, file: !56, line: 528, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2050, file: !56, line: 532, baseType: !2082, size: 64, offset: 640)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2050, file: !56, line: 536, baseType: !1985, size: 64, offset: 704)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2029, file: !56, line: 563, baseType: !2085, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2048, !2049, !55}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2029, file: !56, line: 565, baseType: !2089, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2049, !342, !342}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2029, file: !56, line: 567, baseType: !2093, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!342, !1999}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2029, file: !56, line: 571, baseType: !2045, size: 64, offset: 512)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2029, file: !56, line: 574, baseType: !2045, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2029, file: !56, line: 579, baseType: !2099, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!277, !1999, !342, !212, !277, !277}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2029, file: !56, line: 585, baseType: !2103, size: 64, offset: 704)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!239, !1999}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2029, file: !56, line: 615, baseType: !2107, size: 64, offset: 768)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!797, !1999, !342}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2000, file: !799, line: 359, baseType: !342, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2000, file: !799, line: 361, baseType: !370, size: 64, offset: 1280)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2000, file: !799, line: 362, baseType: !212, size: 64, offset: 1344)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2000, file: !799, line: 365, baseType: !754, size: 64, offset: 1408)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2000, file: !799, line: 373, baseType: !2115, offset: 1472)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !799, line: 296, elements: !265)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1996, file: !799, line: 391, baseType: !832, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1996, file: !799, line: 392, baseType: !209, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1996, file: !799, line: 394, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!342, !370, !342, !342, !342, !342}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1996, file: !799, line: 398, baseType: !342, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1996, file: !799, line: 399, baseType: !342, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1996, file: !799, line: 405, baseType: !342, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1996, file: !799, line: 406, baseType: !342, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1996, file: !799, line: 407, baseType: !2127, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1986, line: 286, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 286, size: 64, elements: !2130)
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2129, file: !1986, line: 286, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2015, line: 18, baseType: !342)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1996, file: !799, line: 416, baseType: !823, size: 32, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1996, file: !799, line: 428, baseType: !823, size: 32, offset: 608)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1996, file: !799, line: 437, baseType: !823, size: 32, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1996, file: !799, line: 447, baseType: !823, size: 32, offset: 672)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1996, file: !799, line: 450, baseType: !754, size: 64, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1996, file: !799, line: 452, baseType: !277, size: 32, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1996, file: !799, line: 454, baseType: !251, offset: 800)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1996, file: !799, line: 457, baseType: !843, size: 256, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1996, file: !799, line: 459, baseType: !225, size: 128, offset: 1088)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1996, file: !799, line: 466, baseType: !342, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1996, file: !799, line: 467, baseType: !342, size: 64, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1996, file: !799, line: 469, baseType: !342, size: 64, offset: 1344)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1996, file: !799, line: 470, baseType: !342, size: 64, offset: 1408)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1996, file: !799, line: 471, baseType: !756, size: 64, offset: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1996, file: !799, line: 472, baseType: !342, size: 64, offset: 1536)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1996, file: !799, line: 473, baseType: !342, size: 64, offset: 1600)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1996, file: !799, line: 474, baseType: !342, size: 64, offset: 1664)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1996, file: !799, line: 475, baseType: !342, size: 64, offset: 1728)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1996, file: !799, line: 477, baseType: !251, offset: 1792)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1996, file: !799, line: 478, baseType: !342, size: 64, offset: 1792)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1996, file: !799, line: 478, baseType: !342, size: 64, offset: 1856)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1996, file: !799, line: 478, baseType: !342, size: 64, offset: 1920)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1996, file: !799, line: 478, baseType: !342, size: 64, offset: 1984)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1996, file: !799, line: 479, baseType: !342, size: 64, offset: 2048)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1996, file: !799, line: 479, baseType: !342, size: 64, offset: 2112)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1996, file: !799, line: 479, baseType: !342, size: 64, offset: 2176)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1996, file: !799, line: 480, baseType: !342, size: 64, offset: 2240)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1996, file: !799, line: 480, baseType: !342, size: 64, offset: 2304)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1996, file: !799, line: 480, baseType: !342, size: 64, offset: 2368)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1996, file: !799, line: 480, baseType: !342, size: 64, offset: 2432)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1996, file: !799, line: 482, baseType: !2164, size: 2816, offset: 2496)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 2816, elements: !2165)
!2165 = !{!2166}
!2166 = !DISubrange(count: 44)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1996, file: !799, line: 488, baseType: !2168, size: 256, offset: 5312)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2169, line: 60, size: 256, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2168, file: !2169, line: 61, baseType: !2172, size: 256)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !1320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1996, file: !799, line: 490, baseType: !2174, size: 64, offset: 5568)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !799, line: 490, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1996, file: !799, line: 493, baseType: !2177, size: 896, offset: 5632)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2178, line: 53, baseType: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 13, size: 896, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2187, !2188, !2189, !2190, !2210, !2211, !2212}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2179, file: !2178, line: 18, baseType: !209, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2179, file: !2178, line: 28, baseType: !756, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2179, file: !2178, line: 31, baseType: !843, size: 256, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2179, file: !2178, line: 32, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2178, line: 32, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2179, file: !2178, line: 37, baseType: !334, size: 16, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2179, file: !2178, line: 40, baseType: !750, size: 192, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2179, file: !2178, line: 41, baseType: !212, size: 64, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2179, file: !2178, line: 42, baseType: !2191, size: 64, offset: 768)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2194, line: 13, size: 896, elements: !2195)
!2194 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2193, file: !2194, line: 14, baseType: !212, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2193, file: !2194, line: 15, baseType: !342, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2193, file: !2194, line: 17, baseType: !342, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2193, file: !2194, line: 17, baseType: !342, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2193, file: !2194, line: 19, baseType: !170, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2193, file: !2194, line: 21, baseType: !170, size: 64, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2193, file: !2194, line: 22, baseType: !170, size: 64, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2193, file: !2194, line: 23, baseType: !170, size: 64, offset: 448)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2193, file: !2194, line: 24, baseType: !170, size: 64, offset: 512)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2193, file: !2194, line: 25, baseType: !170, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2193, file: !2194, line: 26, baseType: !170, size: 64, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2193, file: !2194, line: 27, baseType: !170, size: 64, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2193, file: !2194, line: 28, baseType: !170, size: 64, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2193, file: !2194, line: 29, baseType: !170, size: 64, offset: 832)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2179, file: !2178, line: 44, baseType: !823, size: 32, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2179, file: !2178, line: 50, baseType: !935, size: 16, offset: 864)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2179, file: !2178, line: 51, baseType: !2213, size: 16, offset: 880)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !205, line: 18, baseType: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !207, line: 23, baseType: !999)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !799, line: 495, baseType: !342, size: 64, offset: 6528)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1996, file: !799, line: 497, baseType: !2217, size: 64, offset: 6592)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !799, line: 381, size: 384, elements: !2219)
!2219 = !{!2220, !2221, !3437}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2218, file: !799, line: 382, baseType: !823, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2218, file: !799, line: 383, baseType: !2222, size: 128, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !799, line: 376, size: 128, elements: !2223)
!2223 = !{!2224, !3435}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2222, file: !799, line: 377, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2227, line: 640, size: 48640, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2235, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2250, !2268, !2279, !2362, !2363, !2364, !2375, !2376, !2378, !2379, !2380, !2381, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2458, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2490, !2492, !2493, !2494, !2506, !2507, !2508, !2509, !2510, !2511, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2535, !2540, !2862, !2863, !2864, !2865, !2867, !2870, !2873, !2876, !2879, !2915, !3016, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3062, !3063, !3064, !3065, !3066, !3071, !3072, !3073, !3076, !3077, !3079, !3088, !3093, !3094, !3095, !3098, !3099, !3178, !3179, !3182, !3183, !3186, !3187, !3188, !3192, !3193, !3194, !3207, !3208, !3209, !3219, !3224, !3227, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2226, file: !2227, line: 646, baseType: !2230, size: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2231, line: 56, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2230, file: !2231, line: 57, baseType: !342, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2230, file: !2231, line: 58, baseType: !204, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2226, file: !2227, line: 649, baseType: !2236, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2226, file: !2227, line: 657, baseType: !212, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2226, file: !2227, line: 658, baseType: !1435, size: 32, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2226, file: !2227, line: 660, baseType: !7, size: 32, offset: 288)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2226, file: !2227, line: 661, baseType: !7, size: 32, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2226, file: !2227, line: 684, baseType: !277, size: 32, offset: 352)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2226, file: !2227, line: 686, baseType: !277, size: 32, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2226, file: !2227, line: 687, baseType: !277, size: 32, offset: 416)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2226, file: !2227, line: 688, baseType: !277, size: 32, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2226, file: !2227, line: 689, baseType: !7, size: 32, offset: 480)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2226, file: !2227, line: 691, baseType: !2247, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2227, line: 691, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2226, file: !2227, line: 692, baseType: !2251, size: 832, offset: 576)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2227, line: 451, size: 832, elements: !2252)
!2252 = !{!2253, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2251, file: !2227, line: 453, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2227, line: 325, size: 128, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2254, file: !2227, line: 326, baseType: !342, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2254, file: !2227, line: 327, baseType: !204, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2251, file: !2227, line: 454, baseType: !836, size: 192, align: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2251, file: !2227, line: 455, baseType: !225, size: 128, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2251, file: !2227, line: 456, baseType: !7, size: 32, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2251, file: !2227, line: 458, baseType: !209, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2251, file: !2227, line: 459, baseType: !209, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2251, file: !2227, line: 460, baseType: !209, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2251, file: !2227, line: 461, baseType: !209, size: 64, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2251, file: !2227, line: 463, baseType: !209, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2251, file: !2227, line: 465, baseType: !2267, offset: 832)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2227, line: 415, elements: !265)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2226, file: !2227, line: 693, baseType: !2269, size: 384, offset: 1408)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2227, line: 489, size: 384, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2269, file: !2227, line: 490, baseType: !225, size: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2269, file: !2227, line: 491, baseType: !342, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2269, file: !2227, line: 492, baseType: !342, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2269, file: !2227, line: 493, baseType: !7, size: 32, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2269, file: !2227, line: 494, baseType: !334, size: 16, offset: 288)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2269, file: !2227, line: 495, baseType: !334, size: 16, offset: 304)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2269, file: !2227, line: 497, baseType: !2278, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2226, file: !2227, line: 697, baseType: !2280, size: 1792, offset: 1792)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2227, line: 507, size: 1792, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2359, !2360}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2280, file: !2227, line: 508, baseType: !836, size: 192, align: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2280, file: !2227, line: 515, baseType: !209, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2280, file: !2227, line: 516, baseType: !209, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2280, file: !2227, line: 517, baseType: !209, size: 64, offset: 320)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2280, file: !2227, line: 518, baseType: !209, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2280, file: !2227, line: 519, baseType: !209, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2280, file: !2227, line: 526, baseType: !760, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2280, file: !2227, line: 527, baseType: !209, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2280, file: !2227, line: 528, baseType: !7, size: 32, offset: 640)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2280, file: !2227, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2280, file: !2227, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2280, file: !2227, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2280, file: !2227, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2280, file: !2227, line: 563, baseType: !2296, size: 512, offset: 704)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2297)
!2297 = !{!2298, !2306, !2307, !2312, !2355, !2356, !2357, !2358}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2296, file: !62, line: 119, baseType: !2299, size: 256)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2300, line: 9, size: 256, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2299, file: !2300, line: 10, baseType: !836, size: 192, align: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2299, file: !2300, line: 11, baseType: !2304, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2305, line: 29, baseType: !760)
!2305 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2296, file: !62, line: 120, baseType: !2304, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2296, file: !62, line: 121, baseType: !2308, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!61, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2296, file: !62, line: 122, baseType: !2313, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2315)
!2315 = !{!2316, !2336, !2337, !2340, !2345, !2346, !2350, !2354}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2314, file: !62, line: 160, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 214, size: 4608, align: 512, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2318, file: !62, line: 215, baseType: !849)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2318, file: !62, line: 216, baseType: !7, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2318, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2318, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2318, file: !62, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2318, file: !62, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2318, file: !62, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2318, file: !62, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2318, file: !62, line: 233, baseType: !2304, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2318, file: !62, line: 234, baseType: !2311, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2318, file: !62, line: 235, baseType: !2304, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2318, file: !62, line: 236, baseType: !2311, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2318, file: !62, line: 237, baseType: !2333, size: 4096, offset: 512)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 4096, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 8)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2314, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2314, file: !62, line: 162, baseType: !2338, size: 32, offset: 96)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !219, line: 27, baseType: !2339)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !326, line: 96, baseType: !277)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2314, file: !62, line: 163, baseType: !2341, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 276, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 276, size: 32, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2342, file: !406, line: 276, baseType: !410, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2314, file: !62, line: 164, baseType: !2311, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2314, file: !62, line: 165, baseType: !2347, size: 128, offset: 256)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2300, line: 14, size: 128, elements: !2348)
!2348 = !{!2349}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2347, file: !2300, line: 15, baseType: !828, size: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2314, file: !62, line: 166, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2304}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2314, file: !62, line: 167, baseType: !2304, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2296, file: !62, line: 123, baseType: !214, size: 8, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2296, file: !62, line: 124, baseType: !214, size: 8, offset: 456)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2296, file: !62, line: 125, baseType: !214, size: 8, offset: 464)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2296, file: !62, line: 126, baseType: !214, size: 8, offset: 472)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2280, file: !2227, line: 572, baseType: !2296, size: 512, offset: 1216)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2280, file: !2227, line: 580, baseType: !2361, size: 64, offset: 1728)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2226, file: !2227, line: 721, baseType: !7, size: 32, offset: 3584)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2226, file: !2227, line: 722, baseType: !277, size: 32, offset: 3616)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2226, file: !2227, line: 723, baseType: !2365, size: 64, offset: 3648)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2368, line: 17, baseType: !2369)
!2368 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2368, line: 17, size: 64, elements: !2370)
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2369, file: !2368, line: 17, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 1)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2226, file: !2227, line: 724, baseType: !2367, size: 64, offset: 3712)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2226, file: !2227, line: 749, baseType: !2377, offset: 3776)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2227, line: 290, elements: !265)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2226, file: !2227, line: 751, baseType: !225, size: 128, offset: 3776)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2226, file: !2227, line: 757, baseType: !1992, size: 64, offset: 3904)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2226, file: !2227, line: 758, baseType: !1992, size: 64, offset: 3968)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2226, file: !2227, line: 761, baseType: !2382, size: 320, offset: 4032)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2169, line: 34, size: 320, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2382, file: !2169, line: 35, baseType: !209, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2382, file: !2169, line: 36, baseType: !2386, size: 256, offset: 64)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 256, elements: !1320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2226, file: !2227, line: 766, baseType: !277, size: 32, offset: 4352)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2226, file: !2227, line: 767, baseType: !277, size: 32, offset: 4384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2226, file: !2227, line: 768, baseType: !277, size: 32, offset: 4416)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2226, file: !2227, line: 770, baseType: !277, size: 32, offset: 4448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2226, file: !2227, line: 772, baseType: !342, size: 64, offset: 4480)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2226, file: !2227, line: 775, baseType: !7, size: 32, offset: 4544)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2226, file: !2227, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2226, file: !2227, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2226, file: !2227, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2226, file: !2227, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2226, file: !2227, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2226, file: !2227, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2226, file: !2227, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2226, file: !2227, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2226, file: !2227, line: 831, baseType: !342, size: 64, offset: 4672)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2226, file: !2227, line: 833, baseType: !2403, size: 384, offset: 4736)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 384, elements: !2404)
!2404 = !{!2405, !2410}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2403, file: !67, line: 26, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!170, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !67, line: 27, baseType: !2411, size: 320, offset: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !67, line: 27, size: 320, elements: !2412)
!2412 = !{!2413, !2422, !2448}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2411, file: !67, line: 36, baseType: !2414, size: 320)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2411, file: !67, line: 29, size: 320, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2414, file: !67, line: 30, baseType: !217, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2414, file: !67, line: 31, baseType: !204, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2414, file: !67, line: 32, baseType: !204, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2414, file: !67, line: 33, baseType: !204, size: 32, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2414, file: !67, line: 34, baseType: !209, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2414, file: !67, line: 35, baseType: !217, size: 64, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2411, file: !67, line: 46, baseType: !2423, size: 192)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2411, file: !67, line: 38, size: 192, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2447}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2423, file: !67, line: 39, baseType: !2338, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2423, file: !67, line: 40, baseType: !66, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2423, file: !67, line: 41, baseType: !2428, size: 64, offset: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2423, file: !67, line: 41, size: 64, elements: !2429)
!2429 = !{!2430, !2438}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2428, file: !67, line: 42, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2433, line: 7, size: 128, elements: !2434)
!2433 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !{!2435, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2432, file: !2433, line: 8, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !326, line: 93, baseType: !543)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2432, file: !2433, line: 9, baseType: !543, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2428, file: !67, line: 43, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2441, line: 7, size: 64, elements: !2442)
!2441 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2440, file: !2441, line: 8, baseType: !2444, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2441, line: 5, baseType: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !205, line: 20, baseType: !1834)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2440, file: !2441, line: 9, baseType: !2445, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2423, file: !67, line: 45, baseType: !209, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2411, file: !67, line: 54, baseType: !2449, size: 256)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2411, file: !67, line: 48, size: 256, elements: !2450)
!2450 = !{!2451, !2454, !2455, !2456, !2457}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2449, file: !67, line: 49, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2449, file: !67, line: 50, baseType: !277, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2449, file: !67, line: 51, baseType: !277, size: 32, offset: 96)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2449, file: !67, line: 52, baseType: !342, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2449, file: !67, line: 53, baseType: !342, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2226, file: !2227, line: 835, baseType: !2459, size: 32, offset: 5120)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !219, line: 22, baseType: !2460)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !326, line: 28, baseType: !277)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2226, file: !2227, line: 836, baseType: !2459, size: 32, offset: 5152)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2226, file: !2227, line: 840, baseType: !342, size: 64, offset: 5184)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2226, file: !2227, line: 849, baseType: !2225, size: 64, offset: 5248)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2226, file: !2227, line: 852, baseType: !2225, size: 64, offset: 5312)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2226, file: !2227, line: 857, baseType: !225, size: 128, offset: 5376)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2226, file: !2227, line: 858, baseType: !225, size: 128, offset: 5504)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2226, file: !2227, line: 859, baseType: !2225, size: 64, offset: 5632)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2226, file: !2227, line: 867, baseType: !225, size: 128, offset: 5696)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2226, file: !2227, line: 868, baseType: !225, size: 128, offset: 5824)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2226, file: !2227, line: 871, baseType: !2471, size: 64, offset: 5952)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !95, line: 59, size: 768, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2479, !2480, !2481, !2482}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2472, file: !95, line: 61, baseType: !1435, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2472, file: !95, line: 62, baseType: !7, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2472, file: !95, line: 63, baseType: !251, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2472, file: !95, line: 65, baseType: !2478, size: 256, offset: 64)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 256, elements: !1320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2472, file: !95, line: 66, baseType: !648, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2472, file: !95, line: 68, baseType: !1242, size: 128, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2472, file: !95, line: 69, baseType: !383, size: 128, align: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2472, file: !95, line: 70, baseType: !2483, size: 128, offset: 640)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 128, elements: !2373)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !95, line: 54, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2484, file: !95, line: 55, baseType: !277, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2484, file: !95, line: 56, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !95, line: 56, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2226, file: !2227, line: 872, baseType: !2491, size: 512, offset: 6016)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 512, elements: !1320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2226, file: !2227, line: 873, baseType: !225, size: 128, offset: 6528)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2226, file: !2227, line: 874, baseType: !225, size: 128, offset: 6656)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2226, file: !2227, line: 876, baseType: !2495, size: 64, offset: 6784)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2497, line: 26, size: 192, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2496, file: !2497, line: 27, baseType: !7, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2496, file: !2497, line: 28, baseType: !2501, size: 128, offset: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2502, line: 43, size: 128, elements: !2503)
!2502 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2501, file: !2502, line: 44, baseType: !849)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2501, file: !2502, line: 45, baseType: !225, size: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2226, file: !2227, line: 879, baseType: !732, size: 64, offset: 6848)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2226, file: !2227, line: 882, baseType: !732, size: 64, offset: 6912)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2226, file: !2227, line: 884, baseType: !209, size: 64, offset: 6976)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2226, file: !2227, line: 885, baseType: !209, size: 64, offset: 7040)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2226, file: !2227, line: 890, baseType: !209, size: 64, offset: 7104)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2226, file: !2227, line: 891, baseType: !2512, size: 128, offset: 7168)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2227, line: 242, size: 128, elements: !2513)
!2513 = !{!2514, !2515, !2516}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2512, file: !2227, line: 244, baseType: !209, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2512, file: !2227, line: 245, baseType: !209, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2512, file: !2227, line: 246, baseType: !849, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2226, file: !2227, line: 900, baseType: !342, size: 64, offset: 7296)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2226, file: !2227, line: 901, baseType: !342, size: 64, offset: 7360)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2226, file: !2227, line: 904, baseType: !209, size: 64, offset: 7424)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2226, file: !2227, line: 907, baseType: !209, size: 64, offset: 7488)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2226, file: !2227, line: 910, baseType: !342, size: 64, offset: 7552)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2226, file: !2227, line: 911, baseType: !342, size: 64, offset: 7616)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2226, file: !2227, line: 914, baseType: !2524, size: 640, offset: 7680)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2525, line: 123, size: 640, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2533, !2534}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2524, file: !2525, line: 124, baseType: !2528, size: 576)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2529, size: 576, elements: !294)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2525, line: 108, size: 192, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2529, file: !2525, line: 109, baseType: !209, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2529, file: !2525, line: 110, baseType: !2347, size: 128, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2524, file: !2525, line: 125, baseType: !7, size: 32, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2524, file: !2525, line: 126, baseType: !7, size: 32, offset: 608)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2226, file: !2227, line: 917, baseType: !2536, size: 192, offset: 8320)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2525, line: 134, size: 192, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2536, file: !2525, line: 135, baseType: !383, size: 128, align: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2536, file: !2525, line: 136, baseType: !7, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2226, file: !2227, line: 923, baseType: !2541, size: 64, offset: 8512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2544, line: 111, size: 1280, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2563, !2564, !2565, !2566, !2567, !2568, !2675, !2676, !2677, !2678, !2704, !2847, !2857}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2543, file: !2544, line: 112, baseType: !823, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2543, file: !2544, line: 120, baseType: !445, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2543, file: !2544, line: 121, baseType: !453, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2543, file: !2544, line: 122, baseType: !445, size: 32, offset: 96)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2543, file: !2544, line: 123, baseType: !453, size: 32, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2543, file: !2544, line: 124, baseType: !445, size: 32, offset: 160)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2543, file: !2544, line: 125, baseType: !453, size: 32, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2543, file: !2544, line: 126, baseType: !445, size: 32, offset: 224)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2543, file: !2544, line: 127, baseType: !453, size: 32, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2543, file: !2544, line: 128, baseType: !7, size: 32, offset: 288)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2543, file: !2544, line: 129, baseType: !2557, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2558, line: 26, baseType: !2559)
!2558 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2558, line: 24, size: 64, elements: !2560)
!2560 = !{!2561}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2559, file: !2558, line: 25, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1412)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2543, file: !2544, line: 130, baseType: !2557, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2543, file: !2544, line: 131, baseType: !2557, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2543, file: !2544, line: 132, baseType: !2557, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2543, file: !2544, line: 133, baseType: !2557, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2543, file: !2544, line: 135, baseType: !216, size: 8, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2543, file: !2544, line: 137, baseType: !2569, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2571, line: 189, size: 1664, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2572 = !{!2573, !2574, !2577, !2582, !2583, !2586, !2587, !2592, !2593, !2594, !2595, !2597, !2598, !2599, !2600, !2601, !2639, !2660}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2570, file: !2571, line: 190, baseType: !1435, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2570, file: !2571, line: 191, baseType: !2575, size: 32, offset: 32)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2571, line: 28, baseType: !2576)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !219, line: 98, baseType: !2445)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2570, file: !2571, line: 192, baseType: !2578, size: 192, offset: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2570, file: !2571, line: 192, size: 192, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2578, file: !2571, line: 193, baseType: !225, size: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2578, file: !2571, line: 194, baseType: !836, size: 192, align: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2570, file: !2571, line: 199, baseType: !843, size: 256, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2570, file: !2571, line: 200, baseType: !2584, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2571, line: 200, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2570, file: !2571, line: 201, baseType: !212, size: 64, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2570, file: !2571, line: 202, baseType: !2588, size: 64, offset: 640)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2570, file: !2571, line: 202, size: 64, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2588, file: !2571, line: 203, baseType: !549, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2588, file: !2571, line: 204, baseType: !549, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2570, file: !2571, line: 206, baseType: !549, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2570, file: !2571, line: 207, baseType: !445, size: 32, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2570, file: !2571, line: 208, baseType: !453, size: 32, offset: 800)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2570, file: !2571, line: 209, baseType: !2596, size: 32, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2571, line: 31, baseType: !569)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2570, file: !2571, line: 210, baseType: !334, size: 16, offset: 864)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2570, file: !2571, line: 211, baseType: !334, size: 16, offset: 880)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2570, file: !2571, line: 215, baseType: !999, size: 16, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2570, file: !2571, line: 222, baseType: !342, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2570, file: !2571, line: 239, baseType: !2602, size: 320, offset: 1024)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2570, file: !2571, line: 239, size: 320, elements: !2603)
!2603 = !{!2604, !2631}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2602, file: !2571, line: 240, baseType: !2605, size: 320)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2571, line: 108, size: 320, elements: !2606)
!2606 = !{!2607, !2608, !2620, !2623, !2630}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2605, file: !2571, line: 110, baseType: !342, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !2571, line: 111, baseType: !2609, size: 64, offset: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2605, file: !2571, line: 111, size: 64, elements: !2610)
!2610 = !{!2611, !2619}
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !2571, line: 112, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2609, file: !2571, line: 112, size: 64, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2612, file: !2571, line: 114, baseType: !935, size: 16)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2612, file: !2571, line: 115, baseType: !2616, size: 48, offset: 16)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 48, elements: !2617)
!2617 = !{!2618}
!2618 = !DISubrange(count: 6)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2609, file: !2571, line: 121, baseType: !342, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2605, file: !2571, line: 123, baseType: !2621, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2571, line: 96, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2605, file: !2571, line: 124, baseType: !2624, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2571, line: 102, size: 192, elements: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2625, file: !2571, line: 103, baseType: !383, size: 128, align: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2625, file: !2571, line: 104, baseType: !1435, size: 32, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2625, file: !2571, line: 105, baseType: !500, size: 8, offset: 160)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2605, file: !2571, line: 125, baseType: !239, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2602, file: !2571, line: 241, baseType: !2632, size: 320)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2602, file: !2571, line: 241, size: 320, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2632, file: !2571, line: 242, baseType: !342, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2632, file: !2571, line: 243, baseType: !342, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2632, file: !2571, line: 244, baseType: !2621, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2632, file: !2571, line: 245, baseType: !2624, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2632, file: !2571, line: 246, baseType: !293, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !2570, file: !2571, line: 254, baseType: !2640, size: 256, offset: 1344)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2570, file: !2571, line: 254, size: 256, elements: !2641)
!2641 = !{!2642, !2648}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2640, file: !2571, line: 255, baseType: !2643, size: 256)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2571, line: 128, size: 256, elements: !2644)
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2643, file: !2571, line: 129, baseType: !212, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2643, file: !2571, line: 130, baseType: !2647, size: 256)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !1320)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2640, file: !2571, line: 256, baseType: !2649, size: 256)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2640, file: !2571, line: 256, size: 256, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2649, file: !2571, line: 258, baseType: !225, size: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2649, file: !2571, line: 259, baseType: !2653, size: 128, offset: 128)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2654, line: 22, size: 128, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2653, file: !2654, line: 23, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2654, line: 23, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2653, file: !2654, line: 24, baseType: !342, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2570, file: !2571, line: 274, baseType: !2661, size: 64, offset: 1600)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2571, line: 170, size: 192, elements: !2663)
!2663 = !{!2664, !2673, !2674}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2662, file: !2571, line: 171, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2571, line: 165, baseType: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!277, !2569, !2669, !2671, !2569}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2662, file: !2571, line: 172, baseType: !2569, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2662, file: !2571, line: 173, baseType: !2621, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2543, file: !2544, line: 138, baseType: !2569, size: 64, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2543, file: !2544, line: 139, baseType: !2569, size: 64, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2543, file: !2544, line: 140, baseType: !2569, size: 64, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2543, file: !2544, line: 145, baseType: !2679, size: 64, offset: 960)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2681, line: 13, size: 896, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2680, file: !2681, line: 14, baseType: !1435, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2680, file: !2681, line: 15, baseType: !823, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2680, file: !2681, line: 16, baseType: !823, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2680, file: !2681, line: 21, baseType: !754, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2680, file: !2681, line: 27, baseType: !342, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2680, file: !2681, line: 28, baseType: !342, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2680, file: !2681, line: 29, baseType: !754, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2680, file: !2681, line: 32, baseType: !652, size: 128, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2680, file: !2681, line: 33, baseType: !445, size: 32, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2680, file: !2681, line: 37, baseType: !754, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2680, file: !2681, line: 44, baseType: !2694, size: 256, offset: 640)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2695, line: 15, size: 256, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702, !2703}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2694, file: !2695, line: 16, baseType: !849)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2694, file: !2695, line: 18, baseType: !277, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2694, file: !2695, line: 19, baseType: !277, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2694, file: !2695, line: 20, baseType: !277, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2694, file: !2695, line: 21, baseType: !277, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2694, file: !2695, line: 22, baseType: !342, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !2695, line: 23, baseType: !342, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2543, file: !2544, line: 146, baseType: !2705, size: 64, offset: 1024)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2707, line: 56, size: 4160, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !{!2709, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2746, !2747, !2748, !2749, !2750, !2751, !2832, !2833, !2845}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2706, file: !2707, line: 57, baseType: !2710, size: 576)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2707, line: 23, size: 576, elements: !2711)
!2711 = !{!2712, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2710, file: !2707, line: 24, baseType: !204, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2710, file: !2707, line: 25, baseType: !2714, size: 512, offset: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2710, file: !2707, line: 25, size: 512, elements: !2715)
!2715 = !{!2716, !2723}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2714, file: !2707, line: 26, baseType: !2717, size: 480)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2718, size: 480, elements: !1889)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2707, line: 17, size: 96, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2718, file: !2707, line: 18, baseType: !204, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2718, file: !2707, line: 19, baseType: !204, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2718, file: !2707, line: 20, baseType: !204, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, scope: !2714, file: !2707, line: 27, baseType: !2724, size: 128)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2714, file: !2707, line: 27, size: 128, elements: !2725)
!2725 = !{!2726, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2724, file: !2707, line: 28, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2724, file: !2707, line: 29, baseType: !2727, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2706, file: !2707, line: 58, baseType: !2710, size: 576, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2706, file: !2707, line: 59, baseType: !2710, size: 576, offset: 1152)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2706, file: !2707, line: 60, baseType: !823, size: 32, offset: 1728)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2706, file: !2707, line: 61, baseType: !2705, size: 64, offset: 1792)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2706, file: !2707, line: 62, baseType: !277, size: 32, offset: 1856)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2706, file: !2707, line: 63, baseType: !445, size: 32, offset: 1888)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2706, file: !2707, line: 64, baseType: !453, size: 32, offset: 1920)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2706, file: !2707, line: 65, baseType: !2737, size: 192, offset: 1984)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2738, line: 7, size: 192, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2739 = !{!2740, !2741, !2745}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2737, file: !2738, line: 8, baseType: !754, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2737, file: !2738, line: 9, baseType: !2742, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2738, line: 5, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2737, file: !2738, line: 10, baseType: !7, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2706, file: !2707, line: 66, baseType: !342, size: 64, offset: 2176)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2706, file: !2707, line: 74, baseType: !225, size: 128, offset: 2240)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2706, file: !2707, line: 75, baseType: !2569, size: 64, offset: 2368)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2706, file: !2707, line: 76, baseType: !843, size: 256, offset: 2432)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2706, file: !2707, line: 83, baseType: !1106, size: 256, offset: 2688)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2706, file: !2707, line: 85, baseType: !2752, size: 768, offset: 2944)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2753, line: 156, size: 768, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2754 = !{!2755, !2760}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2752, file: !2753, line: 157, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!277, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2752, file: !2753, line: 158, baseType: !2761, size: 704, offset: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2753, line: 150, size: 704, elements: !2762)
!2762 = !{!2763, !2831}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2761, file: !2753, line: 152, baseType: !2764, size: 640)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2753, line: 131, size: 640, elements: !2765)
!2765 = !{!2766, !2799, !2800, !2801, !2821, !2822, !2824, !2830}
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2753, line: 132, baseType: !2767, size: 192)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2753, line: 132, size: 192, elements: !2768)
!2768 = !{!2769, !2798}
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !2767, file: !2753, line: 133, baseType: !2770, size: 192)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2767, file: !2753, line: 133, size: 192, elements: !2771)
!2771 = !{!2772, !2795, !2796, !2797}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2770, file: !2753, line: 134, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2753, line: 112, size: 512, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2787, !2793, !2794}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2774, file: !2753, line: 113, baseType: !239, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2774, file: !2753, line: 114, baseType: !212, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2774, file: !2753, line: 115, baseType: !277, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2774, file: !2753, line: 116, baseType: !333, size: 16, offset: 160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2774, file: !2753, line: 117, baseType: !2773, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2774, file: !2753, line: 118, baseType: !2782, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2753, line: 47, baseType: !2784)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!277, !2773, !277, !212, !2786, !772}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2774, file: !2753, line: 119, baseType: !2788, size: 64, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2753, line: 94, size: 192, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2789, file: !2753, line: 95, baseType: !823, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2789, file: !2753, line: 96, baseType: !1242, size: 128, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2774, file: !2753, line: 120, baseType: !212, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2774, file: !2753, line: 121, baseType: !212, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2770, file: !2753, line: 135, baseType: !277, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2770, file: !2753, line: 136, baseType: !277, size: 32, offset: 96)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2770, file: !2753, line: 137, baseType: !277, size: 32, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2767, file: !2753, line: 139, baseType: !383, size: 128, align: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2764, file: !2753, line: 141, baseType: !2495, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2764, file: !2753, line: 142, baseType: !2773, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2764, file: !2753, line: 143, baseType: !2802, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2753, line: 161, size: 960, elements: !2804)
!2804 = !{!2805, !2806, !2810, !2817}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2803, file: !2753, line: 162, baseType: !2752, size: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2803, file: !2753, line: 163, baseType: !2807, size: 64, offset: 768)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!2759, !2802}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2803, file: !2753, line: 164, baseType: !2811, size: 64, offset: 832)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2814, !2773, !2815, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2803, file: !2753, line: 167, baseType: !2818, size: 64, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!277, !2814, !2773}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2764, file: !2753, line: 144, baseType: !2759, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2764, file: !2753, line: 145, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2764, file: !2753, line: 146, baseType: !2825, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2753, line: 124, size: 256, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2826, file: !2753, line: 125, baseType: !836, size: 192, align: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2826, file: !2753, line: 126, baseType: !2814, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2764, file: !2753, line: 147, baseType: !648, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2761, file: !2753, line: 153, baseType: !832, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2706, file: !2707, line: 86, baseType: !2814, size: 64, offset: 3712)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2706, file: !2707, line: 88, baseType: !2834, size: 64, offset: 3776)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2707, line: 92, size: 576, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2835, file: !2707, line: 93, baseType: !652, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2835, file: !2707, line: 94, baseType: !2705, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2835, file: !2707, line: 95, baseType: !445, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2835, file: !2707, line: 96, baseType: !277, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2835, file: !2707, line: 97, baseType: !2842, size: 320, offset: 256)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 320, elements: !2843)
!2843 = !{!2844}
!2844 = !DISubrange(count: 10)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2706, file: !2707, line: 89, baseType: !2846, size: 320, offset: 3840)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 320, elements: !2843)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2543, file: !2544, line: 147, baseType: !2848, size: 64, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2544, line: 25, size: 64, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2849, file: !2544, line: 26, baseType: !823, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2849, file: !2544, line: 27, baseType: !277, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2849, file: !2544, line: 28, baseType: !2854, offset: 64)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 0)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2543, file: !2544, line: 149, baseType: !2858, size: 128, offset: 1152)
!2858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2543, file: !2544, line: 149, size: 128, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2858, file: !2544, line: 150, baseType: !277, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2858, file: !2544, line: 151, baseType: !383, size: 128, align: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2226, file: !2227, line: 926, baseType: !2541, size: 64, offset: 8576)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2226, file: !2227, line: 929, baseType: !2541, size: 64, offset: 8640)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2226, file: !2227, line: 933, baseType: !2569, size: 64, offset: 8704)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2226, file: !2227, line: 943, baseType: !2866, size: 128, offset: 8768)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !1761)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2226, file: !2227, line: 945, baseType: !2868, size: 64, offset: 8896)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2227, line: 49, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2226, file: !2227, line: 956, baseType: !2871, size: 64, offset: 8960)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2227, line: 45, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2226, file: !2227, line: 959, baseType: !2874, size: 64, offset: 9024)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2227, line: 959, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2226, file: !2227, line: 962, baseType: !2877, size: 64, offset: 9088)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2227, line: 66, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2226, file: !2227, line: 966, baseType: !2880, size: 64, offset: 9152)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2882, line: 31, size: 576, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !{!2884, !2885, !2888, !2891, !2894, !2895, !2898, !2901, !2902}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2881, file: !2882, line: 32, baseType: !823, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2881, file: !2882, line: 33, baseType: !2886, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2882, line: 9, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2881, file: !2882, line: 34, baseType: !2889, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2882, line: 10, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2881, file: !2882, line: 35, baseType: !2892, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2882, line: 8, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2881, file: !2882, line: 36, baseType: !2488, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2881, file: !2882, line: 37, baseType: !2896, size: 64, offset: 320)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2571, line: 34, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2881, file: !2882, line: 38, baseType: !2899, size: 64, offset: 384)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2882, line: 38, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2881, file: !2882, line: 39, baseType: !2899, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2881, file: !2882, line: 40, baseType: !2903, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2905, line: 856, size: 448, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2906 = !{!2907, !2908, !2909, !2910, !2911}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2904, file: !2905, line: 857, baseType: !1435, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2904, file: !2905, line: 858, baseType: !2737, size: 192, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2904, file: !2905, line: 859, baseType: !2705, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2904, file: !2905, line: 860, baseType: !2834, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2904, file: !2905, line: 861, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2914, line: 16, flags: DIFlagFwdDecl)
!2914 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2226, file: !2227, line: 969, baseType: !2916, size: 64, offset: 9216)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2918, line: 82, size: 7296, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2955, !2964, !2965, !2967, !2968, !2969, !2972, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3002, !3003, !3010, !3011, !3012, !3013, !3014, !3015}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2917, file: !2918, line: 83, baseType: !1435, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2917, file: !2918, line: 84, baseType: !823, size: 32, offset: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2917, file: !2918, line: 85, baseType: !277, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2917, file: !2918, line: 86, baseType: !225, size: 128, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2917, file: !2918, line: 88, baseType: !1242, size: 128, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2917, file: !2918, line: 91, baseType: !2225, size: 64, offset: 384)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2917, file: !2918, line: 94, baseType: !2927, size: 192, offset: 448)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2928, line: 30, size: 192, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2927, file: !2928, line: 31, baseType: !225, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2927, file: !2928, line: 32, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2933, line: 25, baseType: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2933, line: 23, size: 64, elements: !2935)
!2935 = !{!2936}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2934, file: !2933, line: 24, baseType: !2372, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2917, file: !2918, line: 97, baseType: !648, size: 64, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2917, file: !2918, line: 100, baseType: !277, size: 32, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2917, file: !2918, line: 106, baseType: !277, size: 32, offset: 736)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2917, file: !2918, line: 107, baseType: !2225, size: 64, offset: 768)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2917, file: !2918, line: 110, baseType: !277, size: 32, offset: 832)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2917, file: !2918, line: 111, baseType: !7, size: 32, offset: 864)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2917, file: !2918, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2917, file: !2918, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2917, file: !2918, line: 128, baseType: !277, size: 32, offset: 928)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2917, file: !2918, line: 129, baseType: !225, size: 128, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2917, file: !2918, line: 132, baseType: !2296, size: 512, offset: 1088)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2917, file: !2918, line: 133, baseType: !2304, size: 64, offset: 1600)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2917, file: !2918, line: 140, baseType: !2950, size: 256, offset: 1664)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 256, elements: !1412)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2918, line: 38, size: 128, elements: !2952)
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2951, file: !2918, line: 39, baseType: !209, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2951, file: !2918, line: 40, baseType: !209, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2917, file: !2918, line: 146, baseType: !2956, size: 192, offset: 1920)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2918, line: 66, size: 192, elements: !2957)
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2956, file: !2918, line: 67, baseType: !2959, size: 192)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2918, line: 47, size: 192, elements: !2960)
!2960 = !{!2961, !2962, !2963}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2959, file: !2918, line: 48, baseType: !756, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2959, file: !2918, line: 49, baseType: !756, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2959, file: !2918, line: 50, baseType: !756, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2917, file: !2918, line: 150, baseType: !2524, size: 640, offset: 2112)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2917, file: !2918, line: 153, baseType: !2966, size: 256, offset: 2752)
!2966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, size: 256, elements: !1320)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2917, file: !2918, line: 159, baseType: !2471, size: 64, offset: 3008)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2917, file: !2918, line: 162, baseType: !277, size: 32, offset: 3072)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2917, file: !2918, line: 164, baseType: !2970, size: 64, offset: 3136)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2918, line: 164, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2917, file: !2918, line: 175, baseType: !2973, size: 32, offset: 3200)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 805, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 798, size: 32, elements: !2975)
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2974, file: !406, line: 803, baseType: !405, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2974, file: !406, line: 804, baseType: !251, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2917, file: !2918, line: 176, baseType: !209, size: 64, offset: 3264)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2917, file: !2918, line: 176, baseType: !209, size: 64, offset: 3328)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2917, file: !2918, line: 176, baseType: !209, size: 64, offset: 3392)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2917, file: !2918, line: 176, baseType: !209, size: 64, offset: 3456)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2917, file: !2918, line: 177, baseType: !209, size: 64, offset: 3520)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2917, file: !2918, line: 178, baseType: !209, size: 64, offset: 3584)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2917, file: !2918, line: 179, baseType: !2512, size: 128, offset: 3648)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2917, file: !2918, line: 180, baseType: !342, size: 64, offset: 3776)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2917, file: !2918, line: 180, baseType: !342, size: 64, offset: 3840)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2917, file: !2918, line: 180, baseType: !342, size: 64, offset: 3904)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2917, file: !2918, line: 180, baseType: !342, size: 64, offset: 3968)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2917, file: !2918, line: 181, baseType: !342, size: 64, offset: 4032)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2917, file: !2918, line: 181, baseType: !342, size: 64, offset: 4096)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2917, file: !2918, line: 181, baseType: !342, size: 64, offset: 4160)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2917, file: !2918, line: 181, baseType: !342, size: 64, offset: 4224)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2917, file: !2918, line: 182, baseType: !342, size: 64, offset: 4288)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2917, file: !2918, line: 182, baseType: !342, size: 64, offset: 4352)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2917, file: !2918, line: 182, baseType: !342, size: 64, offset: 4416)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2917, file: !2918, line: 182, baseType: !342, size: 64, offset: 4480)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2917, file: !2918, line: 183, baseType: !342, size: 64, offset: 4544)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2917, file: !2918, line: 183, baseType: !342, size: 64, offset: 4608)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2917, file: !2918, line: 184, baseType: !3000, offset: 4672)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3001, line: 12, elements: !265)
!3001 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2917, file: !2918, line: 192, baseType: !211, size: 64, offset: 4672)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2917, file: !2918, line: 203, baseType: !3004, size: 2048, offset: 4736)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3005, size: 2048, elements: !1761)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3006, line: 43, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3005, file: !3006, line: 44, baseType: !341, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3005, file: !3006, line: 45, baseType: !341, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2917, file: !2918, line: 220, baseType: !500, size: 8, offset: 6784)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2917, file: !2918, line: 221, baseType: !999, size: 16, offset: 6800)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2917, file: !2918, line: 222, baseType: !999, size: 16, offset: 6816)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2917, file: !2918, line: 224, baseType: !1992, size: 64, offset: 6848)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2917, file: !2918, line: 227, baseType: !750, size: 192, offset: 6912)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2917, file: !2918, line: 233, baseType: !750, size: 192, offset: 7104)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2226, file: !2227, line: 970, baseType: !3017, size: 64, offset: 9280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2918, line: 20, size: 16576, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3018, file: !2918, line: 21, baseType: !251)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !2918, line: 22, baseType: !1435, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3018, file: !2918, line: 23, baseType: !1242, size: 128, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3018, file: !2918, line: 24, baseType: !3024, size: 16384, offset: 192)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 16384, elements: !298)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2928, line: 49, size: 256, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3025, file: !2928, line: 50, baseType: !3028, size: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2928, line: 35, size: 256, elements: !3029)
!3029 = !{!3030, !3037, !3038, !3044}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3028, file: !2928, line: 37, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3032, line: 19, baseType: !3033)
!3032 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3032, line: 18, baseType: !3035)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !277}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3028, file: !2928, line: 38, baseType: !342, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3028, file: !2928, line: 44, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3032, line: 22, baseType: !3040)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3032, line: 21, baseType: !3042)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3028, file: !2928, line: 46, baseType: !2932, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2226, file: !2227, line: 971, baseType: !2932, size: 64, offset: 9344)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2226, file: !2227, line: 972, baseType: !2932, size: 64, offset: 9408)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2226, file: !2227, line: 974, baseType: !2932, size: 64, offset: 9472)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2226, file: !2227, line: 975, baseType: !2927, size: 192, offset: 9536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2226, file: !2227, line: 976, baseType: !342, size: 64, offset: 9728)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2226, file: !2227, line: 977, baseType: !339, size: 64, offset: 9792)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2226, file: !2227, line: 978, baseType: !7, size: 32, offset: 9856)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2226, file: !2227, line: 980, baseType: !386, size: 64, offset: 9920)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2226, file: !2227, line: 989, baseType: !3054, size: 128, offset: 9984)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3055, line: 35, size: 128, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3054, file: !3055, line: 36, baseType: !277, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3054, file: !3055, line: 37, baseType: !823, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3054, file: !3055, line: 38, baseType: !3060, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3055, line: 23, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2226, file: !2227, line: 992, baseType: !209, size: 64, offset: 10112)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2226, file: !2227, line: 993, baseType: !209, size: 64, offset: 10176)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2226, file: !2227, line: 996, baseType: !251, offset: 10240)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2226, file: !2227, line: 999, baseType: !849, offset: 10240)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2226, file: !2227, line: 1001, baseType: !3067, size: 64, offset: 10240)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2227, line: 636, size: 64, elements: !3068)
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3067, file: !2227, line: 637, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2226, file: !2227, line: 1005, baseType: !828, size: 128, offset: 10304)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2226, file: !2227, line: 1007, baseType: !2225, size: 64, offset: 10432)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2226, file: !2227, line: 1009, baseType: !3074, size: 64, offset: 10496)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2227, line: 1009, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2226, file: !2227, line: 1043, baseType: !212, size: 64, offset: 10560)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2226, file: !2227, line: 1046, baseType: !3078, size: 64, offset: 10624)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2226, file: !2227, line: 1050, baseType: !3080, size: 64, offset: 10688)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 1236, size: 320, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3081, file: !19, line: 1237, baseType: !225, size: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3081, file: !19, line: 1238, baseType: !225, size: 128, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3081, file: !19, line: 1239, baseType: !334, size: 16, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3081, file: !19, line: 1240, baseType: !500, size: 8, offset: 272)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3081, file: !19, line: 1241, baseType: !500, size: 8, offset: 280)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2226, file: !2227, line: 1054, baseType: !3089, size: 64, offset: 10752)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !995, line: 131, size: 64, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3090, file: !995, line: 132, baseType: !342, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2226, file: !2227, line: 1056, baseType: !1616, size: 64, offset: 10816)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2226, file: !2227, line: 1058, baseType: !1387, size: 64, offset: 10880)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2226, file: !2227, line: 1061, baseType: !3096, size: 64, offset: 10944)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2227, line: 43, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2226, file: !2227, line: 1064, baseType: !342, size: 64, offset: 11008)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2226, file: !2227, line: 1065, baseType: !3100, size: 64, offset: 11072)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2928, line: 14, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2928, line: 12, size: 384, elements: !3103)
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !2928, line: 13, baseType: !3105, size: 384)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !2928, line: 13, size: 384, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3105, file: !2928, line: 13, baseType: !277, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3105, file: !2928, line: 13, baseType: !277, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3105, file: !2928, line: 13, baseType: !277, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3105, file: !2928, line: 13, baseType: !3111, size: 256, offset: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3112, line: 32, size: 256, elements: !3113)
!3112 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3113 = !{!3114, !3119, !3132, !3138, !3147, !3167, !3172}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3111, file: !3112, line: 37, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 34, size: 64, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3115, file: !3112, line: 35, baseType: !2460, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3115, file: !3112, line: 36, baseType: !451, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3111, file: !3112, line: 45, baseType: !3120, size: 192)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 40, size: 192, elements: !3121)
!3121 = !{!3122, !3124, !3125, !3131}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3120, file: !3112, line: 41, baseType: !3123, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !326, line: 95, baseType: !277)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3120, file: !3112, line: 42, baseType: !277, size: 32, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3120, file: !3112, line: 43, baseType: !3126, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3112, line: 11, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3112, line: 8, size: 64, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3127, file: !3112, line: 9, baseType: !277, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3127, file: !3112, line: 10, baseType: !212, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3120, file: !3112, line: 44, baseType: !277, size: 32, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3111, file: !3112, line: 52, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 48, size: 128, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3133, file: !3112, line: 49, baseType: !2460, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3133, file: !3112, line: 50, baseType: !451, size: 32, offset: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3133, file: !3112, line: 51, baseType: !3126, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3111, file: !3112, line: 61, baseType: !3139, size: 256)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 55, size: 256, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144, !3146}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3139, file: !3112, line: 56, baseType: !2460, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3139, file: !3112, line: 57, baseType: !451, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3139, file: !3112, line: 58, baseType: !277, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3139, file: !3112, line: 59, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !326, line: 94, baseType: !327)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3139, file: !3112, line: 60, baseType: !3145, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3111, file: !3112, line: 95, baseType: !3148, size: 256)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 64, size: 256, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3148, file: !3112, line: 65, baseType: !212, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3148, file: !3112, line: 77, baseType: !3152, size: 192, offset: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3148, file: !3112, line: 77, size: 192, elements: !3153)
!3153 = !{!3154, !3155, !3162}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3152, file: !3112, line: 82, baseType: !999, size: 16)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3152, file: !3112, line: 88, baseType: !3156, size: 192)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3112, line: 84, size: 192, elements: !3157)
!3157 = !{!3158, !3160, !3161}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3156, file: !3112, line: 85, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !2334)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3156, file: !3112, line: 86, baseType: !212, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3156, file: !3112, line: 87, baseType: !212, size: 64, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3152, file: !3112, line: 93, baseType: !3163, size: 96)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3112, line: 90, size: 96, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3163, file: !3112, line: 91, baseType: !3159, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3163, file: !3112, line: 92, baseType: !206, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3111, file: !3112, line: 101, baseType: !3168, size: 128)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 98, size: 128, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3168, file: !3112, line: 99, baseType: !170, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3168, file: !3112, line: 100, baseType: !277, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3111, file: !3112, line: 108, baseType: !3173, size: 128)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3112, line: 104, size: 128, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3173, file: !3112, line: 105, baseType: !212, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3173, file: !3112, line: 106, baseType: !277, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3173, file: !3112, line: 107, baseType: !7, size: 32, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2226, file: !2227, line: 1067, baseType: !3000, offset: 11136)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2226, file: !2227, line: 1099, baseType: !3180, size: 64, offset: 11136)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2227, line: 56, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2226, file: !2227, line: 1103, baseType: !225, size: 128, offset: 11200)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2226, file: !2227, line: 1104, baseType: !3184, size: 64, offset: 11328)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2227, line: 46, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2226, file: !2227, line: 1105, baseType: !750, size: 192, offset: 11392)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2226, file: !2227, line: 1106, baseType: !7, size: 32, offset: 11584)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2226, file: !2227, line: 1109, baseType: !3189, size: 128, offset: 11648)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3190, size: 128, elements: !1412)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2227, line: 51, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2226, file: !2227, line: 1110, baseType: !750, size: 192, offset: 11776)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2226, file: !2227, line: 1111, baseType: !225, size: 128, offset: 11968)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2226, file: !2227, line: 1173, baseType: !3195, size: 64, offset: 12096)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3197, line: 62, size: 256, align: 256, elements: !3198)
!3197 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3198 = !{!3199, !3200, !3201, !3206}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3196, file: !3197, line: 75, baseType: !206, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3196, file: !3197, line: 90, baseType: !206, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3196, file: !3197, line: 124, baseType: !3202, size: 64, offset: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !3197, line: 109, size: 64, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3202, file: !3197, line: 110, baseType: !210, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3202, file: !3197, line: 112, baseType: !210, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !3197, line: 144, baseType: !206, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2226, file: !2227, line: 1174, baseType: !204, size: 32, offset: 12160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2226, file: !2227, line: 1179, baseType: !342, size: 64, offset: 12224)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2226, file: !2227, line: 1182, baseType: !3210, size: 128, offset: 12288)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2169, line: 76, size: 128, elements: !3211)
!3211 = !{!3212, !3217, !3218}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3210, file: !2169, line: 85, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3214, line: 7, size: 64, elements: !3215)
!3214 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3213, file: !3214, line: 12, baseType: !2369, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3210, file: !2169, line: 88, baseType: !500, size: 8, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3210, file: !2169, line: 95, baseType: !500, size: 8, offset: 72)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2227, line: 1184, baseType: !3220, size: 128, offset: 12416)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 1184, size: 128, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3220, file: !2227, line: 1185, baseType: !1435, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3220, file: !2227, line: 1186, baseType: !383, size: 128, align: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2226, file: !2227, line: 1190, baseType: !3225, size: 64, offset: 12544)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2227, line: 53, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2226, file: !2227, line: 1192, baseType: !3228, size: 128, offset: 12608)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2169, line: 64, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3228, file: !2169, line: 65, baseType: !797, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3228, file: !2169, line: 67, baseType: !206, size: 32, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3228, file: !2169, line: 68, baseType: !206, size: 32, offset: 96)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2226, file: !2227, line: 1206, baseType: !277, size: 32, offset: 12736)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2226, file: !2227, line: 1207, baseType: !277, size: 32, offset: 12768)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2226, file: !2227, line: 1209, baseType: !342, size: 64, offset: 12800)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2226, file: !2227, line: 1219, baseType: !209, size: 64, offset: 12864)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2226, file: !2227, line: 1220, baseType: !209, size: 64, offset: 12928)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2226, file: !2227, line: 1317, baseType: !277, size: 32, offset: 12992)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2226, file: !2227, line: 1319, baseType: !2225, size: 64, offset: 13056)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2226, file: !2227, line: 1322, baseType: !3241, size: 64, offset: 13120)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3243, line: 56, size: 512, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250, !3251, !3253}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3242, file: !3243, line: 57, baseType: !3241, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3242, file: !3243, line: 58, baseType: !212, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3242, file: !3243, line: 59, baseType: !342, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3242, file: !3243, line: 60, baseType: !342, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3242, file: !3243, line: 61, baseType: !896, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3242, file: !3243, line: 62, baseType: !7, size: 32, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3242, file: !3243, line: 63, baseType: !3252, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !219, line: 153, baseType: !209)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3242, file: !3243, line: 64, baseType: !3254, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2226, file: !2227, line: 1326, baseType: !1435, size: 32, offset: 13184)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2226, file: !2227, line: 1342, baseType: !212, size: 64, offset: 13248)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2226, file: !2227, line: 1343, baseType: !210, size: 64, offset: 13312)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2226, file: !2227, line: 1344, baseType: !209, size: 64, offset: 13376)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2226, file: !2227, line: 1345, baseType: !210, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2226, file: !2227, line: 1346, baseType: !210, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2226, file: !2227, line: 1347, baseType: !210, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2226, file: !2227, line: 1348, baseType: !383, size: 128, align: 64, offset: 13504)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2226, file: !2227, line: 1358, baseType: !3265, size: 34816, offset: 13824)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3266, line: 485, size: 34816, elements: !3267)
!3266 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3267 = !{!3268, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3297, !3298, !3299, !3300, !3301, !3302, !3305, !3306, !3307}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3265, file: !3266, line: 487, baseType: !3269, size: 192)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 192, elements: !294)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3271, line: 16, size: 64, elements: !3272)
!3271 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3270, file: !3271, line: 17, baseType: !935, size: 16)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3270, file: !3271, line: 18, baseType: !935, size: 16, offset: 16)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3270, file: !3271, line: 19, baseType: !935, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3270, file: !3271, line: 19, baseType: !935, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3270, file: !3271, line: 19, baseType: !935, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3270, file: !3271, line: 19, baseType: !935, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3270, file: !3271, line: 19, baseType: !935, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3270, file: !3271, line: 20, baseType: !935, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3270, file: !3271, line: 20, baseType: !935, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3270, file: !3271, line: 20, baseType: !935, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3270, file: !3271, line: 20, baseType: !935, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3270, file: !3271, line: 20, baseType: !935, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3270, file: !3271, line: 20, baseType: !935, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3265, file: !3266, line: 491, baseType: !342, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3265, file: !3266, line: 495, baseType: !334, size: 16, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3265, file: !3266, line: 496, baseType: !334, size: 16, offset: 272)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3265, file: !3266, line: 497, baseType: !334, size: 16, offset: 288)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3265, file: !3266, line: 498, baseType: !334, size: 16, offset: 304)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3265, file: !3266, line: 502, baseType: !342, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3265, file: !3266, line: 503, baseType: !342, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3265, file: !3266, line: 514, baseType: !3294, size: 256, offset: 448)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3295, size: 256, elements: !1320)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3266, line: 483, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3265, file: !3266, line: 516, baseType: !342, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3265, file: !3266, line: 518, baseType: !342, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3265, file: !3266, line: 520, baseType: !342, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3265, file: !3266, line: 521, baseType: !342, size: 64, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3265, file: !3266, line: 522, baseType: !342, size: 64, offset: 960)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3265, file: !3266, line: 528, baseType: !3303, size: 64, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3266, line: 10, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3265, file: !3266, line: 535, baseType: !342, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3265, file: !3266, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3265, file: !3266, line: 540, baseType: !3308, size: 33280, offset: 1536)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3309, line: 317, size: 33280, elements: !3310)
!3309 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3308, file: !3309, line: 330, baseType: !7, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3308, file: !3309, line: 337, baseType: !342, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3308, file: !3309, line: 348, baseType: !3314, size: 32768, offset: 512)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3309, line: 304, size: 32768, elements: !3315)
!3315 = !{!3316, !3331, !3368, !3418, !3431}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3314, file: !3309, line: 305, baseType: !3317, size: 896)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3309, line: 12, size: 896, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3330}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3317, file: !3309, line: 13, baseType: !204, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3317, file: !3309, line: 14, baseType: !204, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3317, file: !3309, line: 15, baseType: !204, size: 32, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3317, file: !3309, line: 16, baseType: !204, size: 32, offset: 96)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3317, file: !3309, line: 17, baseType: !204, size: 32, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3317, file: !3309, line: 18, baseType: !204, size: 32, offset: 160)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3317, file: !3309, line: 19, baseType: !204, size: 32, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3317, file: !3309, line: 22, baseType: !3327, size: 640, offset: 224)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 640, elements: !3328)
!3328 = !{!3329}
!3329 = !DISubrange(count: 20)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3317, file: !3309, line: 25, baseType: !204, size: 32, offset: 864)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3314, file: !3309, line: 306, baseType: !3332, size: 4096, align: 128)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3309, line: 34, size: 4096, align: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3353, !3354, !3355, !3357, !3359, !3363}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3332, file: !3309, line: 35, baseType: !935, size: 16)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3332, file: !3309, line: 36, baseType: !935, size: 16, offset: 16)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3332, file: !3309, line: 37, baseType: !935, size: 16, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3332, file: !3309, line: 38, baseType: !935, size: 16, offset: 48)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3309, line: 39, baseType: !3339, size: 128, offset: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3309, line: 39, size: 128, elements: !3340)
!3340 = !{!3341, !3346}
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3339, file: !3309, line: 40, baseType: !3342, size: 128)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !3309, line: 40, size: 128, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3342, file: !3309, line: 41, baseType: !209, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3342, file: !3309, line: 42, baseType: !209, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3339, file: !3309, line: 44, baseType: !3347, size: 128)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !3309, line: 44, size: 128, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3347, file: !3309, line: 45, baseType: !204, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3347, file: !3309, line: 46, baseType: !204, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3347, file: !3309, line: 47, baseType: !204, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3347, file: !3309, line: 48, baseType: !204, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3332, file: !3309, line: 51, baseType: !204, size: 32, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3332, file: !3309, line: 52, baseType: !204, size: 32, offset: 224)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3332, file: !3309, line: 55, baseType: !3356, size: 1024, offset: 256)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !1131)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3332, file: !3309, line: 58, baseType: !3358, size: 2048, offset: 1280)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !298)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3332, file: !3309, line: 60, baseType: !3360, size: 384, offset: 3328)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !3361)
!3361 = !{!3362}
!3362 = !DISubrange(count: 12)
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3309, line: 62, baseType: !3364, size: 384, offset: 3712)
!3364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3309, line: 62, size: 384, elements: !3365)
!3365 = !{!3366, !3367}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3364, file: !3309, line: 63, baseType: !3360, size: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3364, file: !3309, line: 64, baseType: !3360, size: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3314, file: !3309, line: 307, baseType: !3369, size: 1088)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3309, line: 79, size: 1088, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3417}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3369, file: !3309, line: 80, baseType: !204, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3369, file: !3309, line: 81, baseType: !204, size: 32, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3369, file: !3309, line: 82, baseType: !204, size: 32, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3369, file: !3309, line: 83, baseType: !204, size: 32, offset: 96)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3369, file: !3309, line: 84, baseType: !204, size: 32, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3369, file: !3309, line: 85, baseType: !204, size: 32, offset: 160)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3369, file: !3309, line: 86, baseType: !204, size: 32, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3369, file: !3309, line: 88, baseType: !3327, size: 640, offset: 224)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3369, file: !3309, line: 89, baseType: !214, size: 8, offset: 864)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3369, file: !3309, line: 90, baseType: !214, size: 8, offset: 872)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3369, file: !3309, line: 91, baseType: !214, size: 8, offset: 880)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3369, file: !3309, line: 92, baseType: !214, size: 8, offset: 888)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3369, file: !3309, line: 93, baseType: !214, size: 8, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3369, file: !3309, line: 94, baseType: !214, size: 8, offset: 904)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3369, file: !3309, line: 95, baseType: !3386, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3388, line: 11, size: 128, elements: !3389)
!3388 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3387, file: !3388, line: 12, baseType: !170, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3387, file: !3388, line: 13, baseType: !3392, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3394, line: 56, size: 1344, elements: !3395)
!3394 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3393, file: !3394, line: 61, baseType: !342, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3393, file: !3394, line: 62, baseType: !342, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3393, file: !3394, line: 63, baseType: !342, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3393, file: !3394, line: 64, baseType: !342, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3393, file: !3394, line: 65, baseType: !342, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3393, file: !3394, line: 66, baseType: !342, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3393, file: !3394, line: 68, baseType: !342, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3393, file: !3394, line: 69, baseType: !342, size: 64, offset: 448)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3393, file: !3394, line: 70, baseType: !342, size: 64, offset: 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3393, file: !3394, line: 71, baseType: !342, size: 64, offset: 576)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3393, file: !3394, line: 72, baseType: !342, size: 64, offset: 640)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3393, file: !3394, line: 73, baseType: !342, size: 64, offset: 704)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3393, file: !3394, line: 74, baseType: !342, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3393, file: !3394, line: 75, baseType: !342, size: 64, offset: 832)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3393, file: !3394, line: 76, baseType: !342, size: 64, offset: 896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3393, file: !3394, line: 81, baseType: !342, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3393, file: !3394, line: 83, baseType: !342, size: 64, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3393, file: !3394, line: 84, baseType: !342, size: 64, offset: 1088)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3393, file: !3394, line: 85, baseType: !342, size: 64, offset: 1152)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3393, file: !3394, line: 86, baseType: !342, size: 64, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3393, file: !3394, line: 87, baseType: !342, size: 64, offset: 1280)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3369, file: !3309, line: 96, baseType: !204, size: 32, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3314, file: !3309, line: 308, baseType: !3419, size: 4608, align: 512)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3309, line: 289, size: 4608, align: 512, elements: !3420)
!3420 = !{!3421, !3422, !3429}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3419, file: !3309, line: 290, baseType: !3332, size: 4096, align: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3419, file: !3309, line: 291, baseType: !3423, size: 512, offset: 4096)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3309, line: 268, size: 512, elements: !3424)
!3424 = !{!3425, !3426, !3427}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3423, file: !3309, line: 269, baseType: !209, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3423, file: !3309, line: 270, baseType: !209, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3423, file: !3309, line: 271, baseType: !3428, size: 384, offset: 128)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 384, elements: !2617)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3419, file: !3309, line: 292, baseType: !3430, offset: 4608)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, elements: !2855)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3314, file: !3309, line: 309, baseType: !3432, size: 32768)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 32768, elements: !3433)
!3433 = !{!3434}
!3434 = !DISubrange(count: 4096)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2222, file: !799, line: 378, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2218, file: !799, line: 384, baseType: !2496, size: 192, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1996, file: !799, line: 500, baseType: !251, offset: 6656)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1996, file: !799, line: 501, baseType: !3440, size: 64, offset: 6656)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !799, line: 387, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1996, file: !799, line: 516, baseType: !2705, size: 64, offset: 6720)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1996, file: !799, line: 519, baseType: !370, size: 64, offset: 6784)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1996, file: !799, line: 521, baseType: !3445, size: 64, offset: 6848)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !799, line: 521, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1996, file: !799, line: 545, baseType: !823, size: 32, offset: 6912)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1996, file: !799, line: 548, baseType: !500, size: 8, offset: 6944)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1996, file: !799, line: 550, baseType: !3450, offset: 6952)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3451, line: 142, elements: !265)
!3451 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1996, file: !799, line: 554, baseType: !1106, size: 256, offset: 6976)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1996, file: !799, line: 557, baseType: !204, size: 32, offset: 7232)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1993, file: !799, line: 565, baseType: !3455, offset: 7296)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !1144)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1989, file: !799, line: 151, baseType: !823, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1981, file: !799, line: 156, baseType: !251, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 159, baseType: !3459, size: 128)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 159, size: 128, elements: !3460)
!3460 = !{!3461, !3505}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3459, file: !799, line: 161, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 110, size: 1152, elements: !3464)
!3464 = !{!3465, !3475, !3476, !3477, !3478, !3479, !3480, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3463, file: !73, line: 111, baseType: !3466, size: 384)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 19, size: 384, elements: !3467)
!3467 = !{!3468, !3470, !3471, !3472, !3473, !3474}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3466, file: !73, line: 20, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3466, file: !73, line: 21, baseType: !3469, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3466, file: !73, line: 22, baseType: !3469, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3466, file: !73, line: 23, baseType: !342, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3466, file: !73, line: 24, baseType: !342, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3466, file: !73, line: 25, baseType: !342, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3463, file: !73, line: 112, baseType: !1082, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3463, file: !73, line: 113, baseType: !1068, size: 128, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3463, file: !73, line: 114, baseType: !2496, size: 192, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3463, file: !73, line: 115, baseType: !72, size: 32, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !73, line: 116, baseType: !7, size: 32, offset: 800)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3463, file: !73, line: 117, baseType: !3481, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 67, size: 256, elements: !3484)
!3484 = !{!3485, !3486, !3490, !3491}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3483, file: !73, line: 73, baseType: !916, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3483, file: !73, line: 78, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3462}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3483, file: !73, line: 83, baseType: !3487, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3483, file: !73, line: 89, baseType: !2045, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3463, file: !73, line: 118, baseType: !212, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3463, file: !73, line: 119, baseType: !277, size: 32, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !73, line: 120, baseType: !3495, size: 128, offset: 1024)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !73, line: 120, size: 128, elements: !3496)
!3496 = !{!3497, !3503}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3495, file: !73, line: 121, baseType: !3498, size: 128)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3499, line: 6, size: 128, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !{!3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3498, file: !3499, line: 7, baseType: !209, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3498, file: !3499, line: 8, baseType: !209, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3495, file: !73, line: 122, baseType: !3504)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3498, elements: !2855)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3459, file: !799, line: 162, baseType: !212, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !803, file: !799, line: 176, baseType: !383, size: 128, align: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 179, baseType: !3508, size: 32, offset: 384)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 179, size: 32, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3508, file: !799, line: 184, baseType: !823, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3508, file: !799, line: 192, baseType: !7, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3508, file: !799, line: 194, baseType: !7, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3508, file: !799, line: 195, baseType: !277, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !798, file: !799, line: 199, baseType: !823, size: 32, offset: 416)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !670, file: !86, line: 1964, baseType: !3516, size: 64, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!170, !609, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3521, line: 12, size: 256, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3522 = !{!3523, !3524, !3525, !3526, !3527}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3520, file: !3521, line: 13, baseType: !218, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3520, file: !3521, line: 16, baseType: !277, size: 32, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3520, file: !3521, line: 23, baseType: !342, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3520, file: !3521, line: 30, baseType: !342, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3520, file: !3521, line: 33, baseType: !3528, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !799, line: 27, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !670, file: !86, line: 1966, baseType: !3516, size: 64, offset: 1408)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !610, file: !86, line: 1424, baseType: !3532, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 322, size: 704, elements: !3535)
!3535 = !{!3536, !3582, !3586, !3590, !3591, !3592, !3593, !3594, !3599, !3604, !3608}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3534, file: !80, line: 323, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!277, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 294, size: 1600, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3567, !3568, !3569}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3541, file: !80, line: 295, baseType: !652, size: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3541, file: !80, line: 296, baseType: !225, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3541, file: !80, line: 297, baseType: !225, size: 128, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3541, file: !80, line: 298, baseType: !225, size: 128, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3541, file: !80, line: 299, baseType: !750, size: 192, offset: 512)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3541, file: !80, line: 300, baseType: !251, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3541, file: !80, line: 301, baseType: !823, size: 32, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3541, file: !80, line: 302, baseType: !609, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3541, file: !80, line: 303, baseType: !3552, size: 64, offset: 832)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !3553)
!3553 = !{!3554, !3566}
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !3552, file: !80, line: 69, baseType: !3555, size: 32)
!3555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3552, file: !80, line: 69, size: 32, elements: !3556)
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3555, file: !80, line: 70, baseType: !445, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3555, file: !80, line: 71, baseType: !453, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3555, file: !80, line: 72, baseType: !3560, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3561, line: 24, baseType: !3562)
!3561 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3561, line: 22, size: 32, elements: !3563)
!3563 = !{!3564}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3562, file: !3561, line: 23, baseType: !3565, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3561, line: 20, baseType: !451)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3552, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3541, file: !80, line: 304, baseType: !541, size: 64, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3541, file: !80, line: 305, baseType: !342, size: 64, offset: 960)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3541, file: !80, line: 306, baseType: !3570, size: 576, offset: 1024)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !3571)
!3571 = !{!3572, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3570, file: !80, line: 206, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !543)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3570, file: !80, line: 207, baseType: !3573, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3570, file: !80, line: 208, baseType: !3573, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3570, file: !80, line: 209, baseType: !3573, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3570, file: !80, line: 210, baseType: !3573, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3570, file: !80, line: 211, baseType: !3573, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3570, file: !80, line: 212, baseType: !3573, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3570, file: !80, line: 213, baseType: !549, size: 64, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3570, file: !80, line: 214, baseType: !549, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3534, file: !80, line: 324, baseType: !3583, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!3540, !609, !277}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3534, file: !80, line: 325, baseType: !3587, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3540}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3534, file: !80, line: 326, baseType: !3537, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3534, file: !80, line: 327, baseType: !3537, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3534, file: !80, line: 328, baseType: !3537, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3534, file: !80, line: 329, baseType: !712, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3534, file: !80, line: 332, baseType: !3595, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!3598, !439}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3534, file: !80, line: 333, baseType: !3600, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!277, !439, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3534, file: !80, line: 335, baseType: !3605, size: 64, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!277, !439, !3598}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3534, file: !80, line: 337, baseType: !3609, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!277, !609, !3612}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !610, file: !86, line: 1425, baseType: !3614, size: 64, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 428, size: 704, elements: !3617)
!3617 = !{!3618, !3622, !3623, !3627, !3628, !3629, !3644, !3667, !3671, !3672, !3695}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3616, file: !80, line: 429, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!277, !609, !277, !277, !559}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3616, file: !80, line: 430, baseType: !712, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3616, file: !80, line: 431, baseType: !3624, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!277, !609, !7}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3616, file: !80, line: 432, baseType: !3624, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3616, file: !80, line: 433, baseType: !712, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3616, file: !80, line: 434, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!277, !609, !277, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 415, size: 256, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3634, file: !80, line: 416, baseType: !277, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3634, file: !80, line: 417, baseType: !7, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3634, file: !80, line: 418, baseType: !7, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3634, file: !80, line: 420, baseType: !7, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3634, file: !80, line: 421, baseType: !7, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3634, file: !80, line: 422, baseType: !7, size: 32, offset: 160)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3634, file: !80, line: 423, baseType: !7, size: 32, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3634, file: !80, line: 424, baseType: !7, size: 32, offset: 224)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3616, file: !80, line: 435, baseType: !3645, size: 64, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!277, !609, !3552, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 343, size: 960, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3649, file: !80, line: 344, baseType: !277, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3649, file: !80, line: 345, baseType: !209, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3649, file: !80, line: 346, baseType: !209, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3649, file: !80, line: 347, baseType: !209, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3649, file: !80, line: 348, baseType: !209, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3649, file: !80, line: 349, baseType: !209, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3649, file: !80, line: 350, baseType: !209, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3649, file: !80, line: 351, baseType: !760, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3649, file: !80, line: 353, baseType: !760, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3649, file: !80, line: 354, baseType: !277, size: 32, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3649, file: !80, line: 355, baseType: !277, size: 32, offset: 608)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3649, file: !80, line: 356, baseType: !209, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3649, file: !80, line: 357, baseType: !209, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3649, file: !80, line: 358, baseType: !209, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3649, file: !80, line: 359, baseType: !760, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3649, file: !80, line: 360, baseType: !277, size: 32, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3616, file: !80, line: 436, baseType: !3668, size: 64, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!277, !609, !3612, !3648}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3616, file: !80, line: 438, baseType: !3645, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3616, file: !80, line: 439, baseType: !3673, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!277, !609, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 409, size: 1408, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3677, file: !80, line: 410, baseType: !7, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3677, file: !80, line: 411, baseType: !3681, size: 1344, offset: 64)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3682, size: 1344, elements: !294)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 395, size: 448, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3694}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3682, file: !80, line: 396, baseType: !7, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3682, file: !80, line: 397, baseType: !7, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3682, file: !80, line: 399, baseType: !7, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3682, file: !80, line: 400, baseType: !7, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3682, file: !80, line: 401, baseType: !7, size: 32, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3682, file: !80, line: 402, baseType: !7, size: 32, offset: 160)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3682, file: !80, line: 403, baseType: !7, size: 32, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3682, file: !80, line: 404, baseType: !211, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3682, file: !80, line: 405, baseType: !3693, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !219, line: 126, baseType: !209)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3682, file: !80, line: 406, baseType: !3693, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3616, file: !80, line: 440, baseType: !3624, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !610, file: !86, line: 1426, baseType: !3697, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3699)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !86, line: 49, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !610, file: !86, line: 1427, baseType: !342, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !610, file: !86, line: 1428, baseType: !342, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !610, file: !86, line: 1429, baseType: !342, size: 64, offset: 768)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !610, file: !86, line: 1430, baseType: !400, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !610, file: !86, line: 1431, baseType: !843, size: 256, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !610, file: !86, line: 1432, baseType: !277, size: 32, offset: 1152)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !610, file: !86, line: 1433, baseType: !823, size: 32, offset: 1184)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !610, file: !86, line: 1437, baseType: !3708, size: 64, offset: 1216)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !86, line: 1437, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !610, file: !86, line: 1449, baseType: !3713, size: 64, offset: 1280)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !3714)
!3714 = !{!3715}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3713, file: !416, line: 35, baseType: !419, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !610, file: !86, line: 1450, baseType: !225, size: 128, offset: 1344)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !610, file: !86, line: 1451, baseType: !1040, size: 64, offset: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !610, file: !86, line: 1452, baseType: !1616, size: 64, offset: 1536)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !610, file: !86, line: 1453, baseType: !3720, size: 64, offset: 1600)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !86, line: 1453, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !610, file: !86, line: 1454, baseType: !652, size: 128, offset: 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !610, file: !86, line: 1455, baseType: !7, size: 32, offset: 1792)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !610, file: !86, line: 1456, baseType: !3725, size: 2432, offset: 1856)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 518, size: 2432, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3731, !3763}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3725, file: !80, line: 519, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3725, file: !80, line: 520, baseType: !843, size: 256, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3725, file: !80, line: 521, baseType: !3730, size: 192, offset: 320)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 192, elements: !294)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3725, file: !80, line: 522, baseType: !3732, size: 1728, offset: 512)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 1728, elements: !294)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !3734)
!3734 = !{!3735, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3733, file: !80, line: 223, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 443, size: 256, elements: !3738)
!3738 = !{!3739, !3740, !3753, !3754}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3737, file: !80, line: 444, baseType: !277, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3737, file: !80, line: 445, baseType: !3741, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 310, size: 512, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3743, file: !80, line: 311, baseType: !712, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3743, file: !80, line: 312, baseType: !712, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3743, file: !80, line: 313, baseType: !712, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3743, file: !80, line: 314, baseType: !712, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3743, file: !80, line: 315, baseType: !3537, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3743, file: !80, line: 316, baseType: !3537, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3743, file: !80, line: 317, baseType: !3537, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3743, file: !80, line: 318, baseType: !3609, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3737, file: !80, line: 446, baseType: !643, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3737, file: !80, line: 447, baseType: !3736, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3733, file: !80, line: 224, baseType: !277, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3733, file: !80, line: 226, baseType: !225, size: 128, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3733, file: !80, line: 227, baseType: !342, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3733, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3733, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3733, file: !80, line: 230, baseType: !3573, size: 64, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3733, file: !80, line: 231, baseType: !3573, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3733, file: !80, line: 232, baseType: !212, size: 64, offset: 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3725, file: !80, line: 523, baseType: !3764, size: 192, offset: 2240)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3741, size: 192, elements: !294)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !610, file: !86, line: 1458, baseType: !3766, size: 2112, offset: 4288)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !86, line: 1410, size: 2112, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3766, file: !86, line: 1411, baseType: !277, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3766, file: !86, line: 1412, baseType: !1242, size: 128, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3766, file: !86, line: 1413, baseType: !3771, size: 1920, offset: 192)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3772, size: 1920, elements: !294)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3773, line: 12, size: 640, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775, !3783, !3784, !3789, !3790}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3772, file: !3773, line: 13, baseType: !3776, size: 320)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3777, line: 17, size: 320, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3778 = !{!3779, !3780, !3781, !3782}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3776, file: !3777, line: 18, baseType: !277, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3776, file: !3777, line: 19, baseType: !277, size: 32, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3776, file: !3777, line: 20, baseType: !1242, size: 128, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3776, file: !3777, line: 22, baseType: !383, size: 128, align: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3772, file: !3773, line: 14, baseType: !1031, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3772, file: !3773, line: 15, baseType: !3785, size: 64, offset: 384)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3786, line: 16, size: 64, elements: !3787)
!3786 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3787 = !{!3788}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3785, file: !3786, line: 17, baseType: !2225, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3772, file: !3773, line: 16, baseType: !1242, size: 128, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3772, file: !3773, line: 17, baseType: !823, size: 32, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !610, file: !86, line: 1465, baseType: !212, size: 64, offset: 6400)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !610, file: !86, line: 1468, baseType: !204, size: 32, offset: 6464)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !610, file: !86, line: 1470, baseType: !549, size: 64, offset: 6528)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !610, file: !86, line: 1471, baseType: !549, size: 64, offset: 6592)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !610, file: !86, line: 1473, baseType: !206, size: 32, offset: 6656)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !610, file: !86, line: 1474, baseType: !3797, size: 64, offset: 6720)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !86, line: 603, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !610, file: !86, line: 1477, baseType: !1130, size: 256, offset: 6784)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !610, file: !86, line: 1478, baseType: !3801, size: 128, offset: 7040)
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3802, line: 18, baseType: !3803)
!3802 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3802, line: 16, size: 128, elements: !3804)
!3804 = !{!3805}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3803, file: !3802, line: 17, baseType: !3806, size: 128)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1761)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !610, file: !86, line: 1480, baseType: !7, size: 32, offset: 7168)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !610, file: !86, line: 1481, baseType: !1263, size: 32, offset: 7200)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !610, file: !86, line: 1487, baseType: !750, size: 192, offset: 7232)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !610, file: !86, line: 1493, baseType: !239, size: 64, offset: 7424)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !610, file: !86, line: 1495, baseType: !3812, size: 64, offset: 7488)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !398, line: 135, size: 1024, align: 512, elements: !3815)
!3815 = !{!3816, !3820, !3821, !3828, !3834, !3838, !3842, !3846, !3847, !3851, !3855, !3860, !3864}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3814, file: !398, line: 136, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!277, !400, !7}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3814, file: !398, line: 137, baseType: !3817, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3814, file: !398, line: 138, baseType: !3822, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!277, !3825, !3827}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3814, file: !398, line: 139, baseType: !3829, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!277, !3825, !7, !239, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3814, file: !398, line: 141, baseType: !3835, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!277, !3825}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3814, file: !398, line: 142, baseType: !3839, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!277, !400}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3814, file: !398, line: 143, baseType: !3843, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !400}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3814, file: !398, line: 144, baseType: !3843, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3814, file: !398, line: 145, baseType: !3848, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !400, !439}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3814, file: !398, line: 146, baseType: !3852, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!293, !400, !293, !277}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3814, file: !398, line: 147, baseType: !3856, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!396, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3814, file: !398, line: 148, baseType: !3861, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!277, !559, !500}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3814, file: !398, line: 149, baseType: !3865, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!400, !400, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !610, file: !86, line: 1500, baseType: !277, size: 32, offset: 7552)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !610, file: !86, line: 1502, baseType: !3872, size: 448, offset: 7616)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3521, line: 60, size: 448, elements: !3873)
!3873 = !{!3874, !3879, !3880, !3881, !3882, !3883, !3884}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3872, file: !3521, line: 61, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!342, !3878, !3519}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3872, file: !3521, line: 63, baseType: !3875, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3872, file: !3521, line: 66, baseType: !170, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3872, file: !3521, line: 67, baseType: !277, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3872, file: !3521, line: 68, baseType: !7, size: 32, offset: 224)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3872, file: !3521, line: 71, baseType: !225, size: 128, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3872, file: !3521, line: 77, baseType: !3885, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !610, file: !86, line: 1505, baseType: !754, size: 64, offset: 8064)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !610, file: !86, line: 1508, baseType: !754, size: 64, offset: 8128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !610, file: !86, line: 1511, baseType: !277, size: 32, offset: 8192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !610, file: !86, line: 1514, baseType: !1928, size: 32, offset: 8224)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !610, file: !86, line: 1517, baseType: !1118, size: 64, offset: 8256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !610, file: !86, line: 1518, baseType: !648, size: 64, offset: 8320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !610, file: !86, line: 1525, baseType: !2705, size: 64, offset: 8384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !610, file: !86, line: 1532, baseType: !3894, size: 64, offset: 8448)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3895, line: 52, size: 64, elements: !3896)
!3895 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3896 = !{!3897}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3894, file: !3895, line: 53, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3895, line: 40, size: 256, elements: !3900)
!3900 = !{!3901, !3902, !3907}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3899, file: !3895, line: 42, baseType: !251)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3899, file: !3895, line: 44, baseType: !3903, size: 192)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3895, line: 28, size: 192, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3903, file: !3895, line: 29, baseType: !225, size: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3903, file: !3895, line: 31, baseType: !170, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3899, file: !3895, line: 49, baseType: !170, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !610, file: !86, line: 1533, baseType: !3894, size: 64, offset: 8512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !610, file: !86, line: 1534, baseType: !383, size: 128, align: 64, offset: 8576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !610, file: !86, line: 1535, baseType: !1106, size: 256, offset: 8704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !610, file: !86, line: 1537, baseType: !750, size: 192, offset: 8960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !610, file: !86, line: 1542, baseType: !277, size: 32, offset: 9152)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !610, file: !86, line: 1545, baseType: !251, offset: 9184)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !610, file: !86, line: 1546, baseType: !225, size: 128, offset: 9216)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !610, file: !86, line: 1548, baseType: !251, offset: 9344)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !610, file: !86, line: 1549, baseType: !225, size: 128, offset: 9344)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !440, file: !86, line: 624, baseType: !810, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !440, file: !86, line: 631, baseType: !342, size: 64, offset: 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !86, line: 639, baseType: !3920, size: 32, offset: 384)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !86, line: 639, size: 32, elements: !3921)
!3921 = !{!3922, !3923}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3920, file: !86, line: 640, baseType: !1586, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3920, file: !86, line: 641, baseType: !7, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !440, file: !86, line: 643, baseType: !523, size: 32, offset: 416)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !440, file: !86, line: 644, baseType: !541, size: 64, offset: 448)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !440, file: !86, line: 645, baseType: !545, size: 128, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !440, file: !86, line: 646, baseType: !545, size: 128, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !440, file: !86, line: 647, baseType: !545, size: 128, offset: 768)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !440, file: !86, line: 648, baseType: !251, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !440, file: !86, line: 649, baseType: !334, size: 16, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !440, file: !86, line: 650, baseType: !214, size: 8, offset: 912)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !440, file: !86, line: 651, baseType: !214, size: 8, offset: 920)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !440, file: !86, line: 652, baseType: !3693, size: 64, offset: 960)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !440, file: !86, line: 659, baseType: !342, size: 64, offset: 1024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !440, file: !86, line: 660, baseType: !843, size: 256, offset: 1088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !440, file: !86, line: 662, baseType: !342, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !440, file: !86, line: 663, baseType: !342, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !440, file: !86, line: 665, baseType: !652, size: 128, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !440, file: !86, line: 666, baseType: !225, size: 128, offset: 1600)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !440, file: !86, line: 675, baseType: !225, size: 128, offset: 1728)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !440, file: !86, line: 676, baseType: !225, size: 128, offset: 1856)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !440, file: !86, line: 677, baseType: !225, size: 128, offset: 1984)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !86, line: 678, baseType: !3944, size: 128, offset: 2112)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !86, line: 678, size: 128, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3944, file: !86, line: 679, baseType: !648, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3944, file: !86, line: 680, baseType: !383, size: 128, align: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !440, file: !86, line: 682, baseType: !756, size: 64, offset: 2240)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !440, file: !86, line: 683, baseType: !756, size: 64, offset: 2304)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !440, file: !86, line: 684, baseType: !823, size: 32, offset: 2368)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !440, file: !86, line: 685, baseType: !823, size: 32, offset: 2400)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !440, file: !86, line: 686, baseType: !823, size: 32, offset: 2432)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !440, file: !86, line: 688, baseType: !823, size: 32, offset: 2464)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !86, line: 690, baseType: !3955, size: 64, offset: 2496)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !86, line: 690, size: 64, elements: !3956)
!3956 = !{!3957, !4179}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3955, file: !86, line: 691, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !86, line: 1822, size: 2048, elements: !3961)
!3961 = !{!3962, !3963, !3967, !3971, !3975, !3976, !3977, !3981, !3994, !3995, !4003, !4007, !4008, !4012, !4013, !4017, !4022, !4023, !4027, !4031, !4139, !4143, !4144, !4148, !4149, !4153, !4157, !4162, !4166, !4170, !4174, !4178}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3960, file: !86, line: 1823, baseType: !643, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3960, file: !86, line: 1824, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!541, !370, !541, !277}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3960, file: !86, line: 1825, baseType: !3968, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!324, !370, !293, !339, !772}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3960, file: !86, line: 1826, baseType: !3972, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!324, !370, !239, !339, !772}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3960, file: !86, line: 1827, baseType: !920, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3960, file: !86, line: 1828, baseType: !920, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3960, file: !86, line: 1829, baseType: !3978, size: 64, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!277, !923, !500}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3960, file: !86, line: 1830, baseType: !3982, size: 64, offset: 448)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!277, !370, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !86, line: 1776, size: 128, elements: !3987)
!3987 = !{!3988, !3993}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3986, file: !86, line: 1777, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !86, line: 1773, baseType: !3990)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!277, !3985, !239, !277, !541, !209, !7}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3986, file: !86, line: 1778, baseType: !541, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3960, file: !86, line: 1831, baseType: !3982, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3960, file: !86, line: 1832, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!3999, !370, !4001}
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4000, line: 52, baseType: !7)
!4000 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !629, line: 27, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3960, file: !86, line: 1833, baseType: !4004, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!170, !370, !7, !342}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3960, file: !86, line: 1834, baseType: !4004, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3960, file: !86, line: 1835, baseType: !4009, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!277, !370, !1999}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3960, file: !86, line: 1836, baseType: !342, size: 64, offset: 832)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3960, file: !86, line: 1837, baseType: !4014, size: 64, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!277, !439, !370}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3960, file: !86, line: 1838, baseType: !4018, size: 64, offset: 960)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!277, !370, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !86, line: 1007, baseType: !212)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3960, file: !86, line: 1839, baseType: !4014, size: 64, offset: 1024)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3960, file: !86, line: 1840, baseType: !4024, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!277, !370, !541, !541, !277}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3960, file: !86, line: 1841, baseType: !4028, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!277, !277, !370, !277}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3960, file: !86, line: 1842, baseType: !4032, size: 64, offset: 1216)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!277, !370, !277, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !86, line: 1062, size: 1664, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4069, !4070, !4071, !4084, !4115}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4036, file: !86, line: 1063, baseType: !4035, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4036, file: !86, line: 1064, baseType: !225, size: 128, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4036, file: !86, line: 1065, baseType: !652, size: 128, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4036, file: !86, line: 1066, baseType: !225, size: 128, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4036, file: !86, line: 1069, baseType: !225, size: 128, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4036, file: !86, line: 1072, baseType: !4021, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4036, file: !86, line: 1073, baseType: !7, size: 32, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4036, file: !86, line: 1074, baseType: !216, size: 8, offset: 672)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4036, file: !86, line: 1075, baseType: !7, size: 32, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4036, file: !86, line: 1076, baseType: !277, size: 32, offset: 736)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4036, file: !86, line: 1077, baseType: !1242, size: 128, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4036, file: !86, line: 1078, baseType: !370, size: 64, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4036, file: !86, line: 1079, baseType: !541, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4036, file: !86, line: 1080, baseType: !541, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4036, file: !86, line: 1082, baseType: !4053, size: 64, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !86, line: 1314, size: 320, elements: !4055)
!4055 = !{!4056, !4064, !4065, !4066, !4067, !4068}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4054, file: !86, line: 1315, baseType: !4057)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4058, line: 20, baseType: !4059)
!4058 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4058, line: 11, elements: !4060)
!4060 = !{!4061}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4059, file: !4058, line: 12, baseType: !4062)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !263, line: 33, baseType: !4063)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 31, elements: !265)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4054, file: !86, line: 1316, baseType: !277, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4054, file: !86, line: 1317, baseType: !277, size: 32, offset: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4054, file: !86, line: 1318, baseType: !4053, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4054, file: !86, line: 1319, baseType: !370, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4054, file: !86, line: 1320, baseType: !383, size: 128, align: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4036, file: !86, line: 1084, baseType: !342, size: 64, offset: 1152)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4036, file: !86, line: 1085, baseType: !342, size: 64, offset: 1216)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4036, file: !86, line: 1087, baseType: !4072, size: 64, offset: 1280)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !86, line: 1011, size: 128, elements: !4075)
!4075 = !{!4076, !4080}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4074, file: !86, line: 1012, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !4035, !4035}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4074, file: !86, line: 1013, baseType: !4081, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !4035}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4036, file: !86, line: 1088, baseType: !4085, size: 64, offset: 1344)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !86, line: 1016, size: 512, elements: !4088)
!4088 = !{!4089, !4093, !4097, !4098, !4102, !4106, !4110, !4114}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4087, file: !86, line: 1017, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!4021, !4021}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4087, file: !86, line: 1018, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4021}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4087, file: !86, line: 1019, baseType: !4081, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4087, file: !86, line: 1020, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!277, !4035, !277}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4087, file: !86, line: 1021, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!500, !4035}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4087, file: !86, line: 1022, baseType: !4107, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!277, !4035, !277, !228}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4087, file: !86, line: 1023, baseType: !4111, size: 64, offset: 384)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !4035, !897}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4087, file: !86, line: 1024, baseType: !4103, size: 64, offset: 448)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4036, file: !86, line: 1097, baseType: !4116, size: 256, offset: 1408)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4036, file: !86, line: 1089, size: 256, elements: !4117)
!4117 = !{!4118, !4127, !4133}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4116, file: !86, line: 1090, baseType: !4119, size: 256)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4120, line: 10, size: 256, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4121 = !{!4122, !4123, !4126}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4119, file: !4120, line: 11, baseType: !204, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4119, file: !4120, line: 12, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4120, line: 5, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4119, file: !4120, line: 13, baseType: !225, size: 128, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4116, file: !86, line: 1091, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4120, line: 17, size: 64, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4128, file: !4120, line: 18, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4120, line: 16, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4116, file: !86, line: 1096, baseType: !4134, size: 192)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !86, line: 1092, size: 192, elements: !4135)
!4135 = !{!4136, !4137, !4138}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4134, file: !86, line: 1093, baseType: !225, size: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4134, file: !86, line: 1094, baseType: !277, size: 32, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4134, file: !86, line: 1095, baseType: !7, size: 32, offset: 160)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3960, file: !86, line: 1843, baseType: !4140, size: 64, offset: 1280)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!324, !370, !797, !277, !339, !772, !277}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3960, file: !86, line: 1844, baseType: !2119, size: 64, offset: 1344)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3960, file: !86, line: 1845, baseType: !4145, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!277, !277}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3960, file: !86, line: 1846, baseType: !4032, size: 64, offset: 1472)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3960, file: !86, line: 1847, baseType: !4150, size: 64, offset: 1536)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!324, !3225, !370, !772, !339, !7}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3960, file: !86, line: 1848, baseType: !4154, size: 64, offset: 1600)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!324, !370, !772, !3225, !339, !7}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3960, file: !86, line: 1849, baseType: !4158, size: 64, offset: 1664)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!277, !370, !170, !4161, !897}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3960, file: !86, line: 1850, baseType: !4163, size: 64, offset: 1728)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!170, !370, !277, !541, !541}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3960, file: !86, line: 1852, baseType: !4167, size: 64, offset: 1792)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !738, !370}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3960, file: !86, line: 1856, baseType: !4171, size: 64, offset: 1856)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!324, !370, !541, !370, !541, !339, !7}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3960, file: !86, line: 1858, baseType: !4175, size: 64, offset: 1920)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!541, !370, !541, !370, !541, !541, !7}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3960, file: !86, line: 1861, baseType: !4024, size: 64, offset: 1984)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3955, file: !86, line: 692, baseType: !677, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !440, file: !86, line: 694, baseType: !4181, size: 64, offset: 2560)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !86, line: 1100, size: 384, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4182, file: !86, line: 1101, baseType: !251)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4182, file: !86, line: 1102, baseType: !225, size: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4182, file: !86, line: 1103, baseType: !225, size: 128, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4182, file: !86, line: 1104, baseType: !225, size: 128, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !440, file: !86, line: 695, baseType: !811, size: 1216, align: 64, offset: 2624)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !440, file: !86, line: 696, baseType: !225, size: 128, offset: 3840)
!4190 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !86, line: 697, baseType: !4191, size: 64, offset: 3968)
!4191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !86, line: 697, size: 64, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4198, !4199}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4191, file: !86, line: 698, baseType: !3225, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4191, file: !86, line: 699, baseType: !1040, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4191, file: !86, line: 700, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !86, line: 700, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4191, file: !86, line: 701, baseType: !293, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4191, file: !86, line: 702, baseType: !7, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !440, file: !86, line: 705, baseType: !206, size: 32, offset: 4032)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !440, file: !86, line: 708, baseType: !206, size: 32, offset: 4064)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !440, file: !86, line: 709, baseType: !3797, size: 64, offset: 4096)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !440, file: !86, line: 720, baseType: !212, size: 64, offset: 4160)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !401, file: !398, line: 98, baseType: !4205, size: 256, offset: 448)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 256, elements: !1131)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !401, file: !398, line: 101, baseType: !4207, size: 32, offset: 704)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4208, line: 25, size: 32, elements: !4209)
!4208 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4209 = !{!4210}
!4210 = !DIDerivedType(tag: DW_TAG_member, scope: !4207, file: !4208, line: 26, baseType: !4211, size: 32)
!4211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4207, file: !4208, line: 26, size: 32, elements: !4212)
!4212 = !{!4213}
!4213 = !DIDerivedType(tag: DW_TAG_member, scope: !4211, file: !4208, line: 30, baseType: !4214, size: 32)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4211, file: !4208, line: 30, size: 32, elements: !4215)
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4214, file: !4208, line: 31, baseType: !251)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4214, file: !4208, line: 32, baseType: !277, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !401, file: !398, line: 102, baseType: !3812, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !401, file: !398, line: 103, baseType: !609, size: 64, offset: 832)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !401, file: !398, line: 104, baseType: !342, size: 64, offset: 896)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !401, file: !398, line: 105, baseType: !212, size: 64, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !398, line: 107, baseType: !4223, size: 128, offset: 1024)
!4223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !398, line: 107, size: 128, elements: !4224)
!4224 = !{!4225, !4226}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4223, file: !398, line: 108, baseType: !225, size: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4223, file: !398, line: 109, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !401, file: !398, line: 111, baseType: !225, size: 128, offset: 1152)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !401, file: !398, line: 112, baseType: !225, size: 128, offset: 1280)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !401, file: !398, line: 120, baseType: !4231, size: 128, offset: 1408)
!4231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !398, line: 116, size: 128, elements: !4232)
!4232 = !{!4233, !4234, !4235}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4231, file: !398, line: 117, baseType: !652, size: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4231, file: !398, line: 118, baseType: !415, size: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4231, file: !398, line: 119, baseType: !383, size: 128, align: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !371, file: !86, line: 922, baseType: !439, size: 64, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !371, file: !86, line: 923, baseType: !3958, size: 64, offset: 320)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !371, file: !86, line: 929, baseType: !251, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !371, file: !86, line: 930, baseType: !85, size: 32, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !371, file: !86, line: 931, baseType: !754, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !371, file: !86, line: 932, baseType: !7, size: 32, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !371, file: !86, line: 933, baseType: !1263, size: 32, offset: 544)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !371, file: !86, line: 934, baseType: !750, size: 192, offset: 576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !371, file: !86, line: 935, baseType: !541, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !371, file: !86, line: 936, baseType: !4246, size: 192, offset: 832)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !86, line: 885, size: 192, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4246, file: !86, line: 886, baseType: !4057)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4246, file: !86, line: 887, baseType: !2471, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4246, file: !86, line: 888, baseType: !94, size: 32, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4246, file: !86, line: 889, baseType: !445, size: 32, offset: 96)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4246, file: !86, line: 889, baseType: !445, size: 32, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4246, file: !86, line: 890, baseType: !277, size: 32, offset: 160)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !371, file: !86, line: 937, baseType: !2541, size: 64, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !371, file: !86, line: 938, baseType: !4256, size: 256, offset: 1088)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !86, line: 896, size: 256, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4256, file: !86, line: 897, baseType: !342, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4256, file: !86, line: 898, baseType: !7, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4256, file: !86, line: 899, baseType: !7, size: 32, offset: 96)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4256, file: !86, line: 902, baseType: !7, size: 32, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4256, file: !86, line: 903, baseType: !7, size: 32, offset: 160)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4256, file: !86, line: 904, baseType: !541, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !371, file: !86, line: 940, baseType: !209, size: 64, offset: 1344)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !371, file: !86, line: 945, baseType: !212, size: 64, offset: 1408)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !371, file: !86, line: 949, baseType: !225, size: 128, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !371, file: !86, line: 950, baseType: !225, size: 128, offset: 1600)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !371, file: !86, line: 952, baseType: !810, size: 64, offset: 1728)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !371, file: !86, line: 953, baseType: !1928, size: 32, offset: 1792)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !371, file: !86, line: 954, baseType: !1928, size: 32, offset: 1824)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !361, file: !318, line: 174, baseType: !367, size: 64, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !361, file: !318, line: 176, baseType: !4273, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!277, !370, !244, !360, !1999}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !349, file: !318, line: 90, baseType: !344, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !349, file: !318, line: 91, baseType: !4278, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !308, file: !236, line: 143, baseType: !4280, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!4283, !244}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !4286)
!4286 = !{!4287, !4288, !4292, !4296, !4302, !4306}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4285, file: !103, line: 40, baseType: !102, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4285, file: !103, line: 41, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!500}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4285, file: !103, line: 42, baseType: !4293, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!212}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4285, file: !103, line: 43, baseType: !4297, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!3254, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4285, file: !103, line: 44, baseType: !4303, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!3254}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4285, file: !103, line: 45, baseType: !478, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !308, file: !236, line: 144, baseType: !4308, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!3254, !244}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !308, file: !236, line: 145, baseType: !4312, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{null, !244, !2815, !2816}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !235, file: !236, line: 70, baseType: !4316, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !629, line: 123, size: 1024, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4435, !4436, !4437, !4438, !4439}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4317, file: !629, line: 124, baseType: !823, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4317, file: !629, line: 125, baseType: !823, size: 32, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4317, file: !629, line: 135, baseType: !4316, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4317, file: !629, line: 136, baseType: !239, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4317, file: !629, line: 138, baseType: !836, size: 192, align: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4317, file: !629, line: 140, baseType: !3254, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4317, file: !629, line: 141, baseType: !7, size: 32, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4317, file: !629, line: 142, baseType: !4327, size: 256, offset: 512)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4317, file: !629, line: 142, size: 256, elements: !4328)
!4328 = !{!4329, !4375, !4379}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4327, file: !629, line: 143, baseType: !4330, size: 192)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !629, line: 91, size: 192, elements: !4331)
!4331 = !{!4332, !4333, !4334}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4330, file: !629, line: 92, baseType: !342, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4330, file: !629, line: 94, baseType: !832, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4330, file: !629, line: 100, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !629, line: 180, size: 704, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4347, !4348, !4349, !4373, !4374}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4336, file: !629, line: 182, baseType: !4316, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4336, file: !629, line: 183, baseType: !7, size: 32, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4336, file: !629, line: 186, baseType: !4341, size: 192, offset: 128)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4342, line: 19, size: 192, elements: !4343)
!4342 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4343 = !{!4344, !4345, !4346}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4341, file: !4342, line: 20, baseType: !815, size: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4341, file: !4342, line: 21, baseType: !7, size: 32, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4341, file: !4342, line: 22, baseType: !7, size: 32, offset: 160)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4336, file: !629, line: 187, baseType: !204, size: 32, offset: 320)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4336, file: !629, line: 188, baseType: !204, size: 32, offset: 352)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4336, file: !629, line: 189, baseType: !4350, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !629, line: 168, size: 320, elements: !4352)
!4352 = !{!4353, !4357, !4361, !4365, !4369}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4351, file: !629, line: 169, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!277, !738, !4335}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4351, file: !629, line: 171, baseType: !4358, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!277, !4316, !239, !333}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4351, file: !629, line: 173, baseType: !4362, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!277, !4316}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4351, file: !629, line: 174, baseType: !4366, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!277, !4316, !4316, !239}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4351, file: !629, line: 176, baseType: !4370, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!277, !738, !4316, !4335}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4336, file: !629, line: 192, baseType: !225, size: 128, offset: 448)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4336, file: !629, line: 194, baseType: !1242, size: 128, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4327, file: !629, line: 144, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !629, line: 103, size: 64, elements: !4377)
!4377 = !{!4378}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4376, file: !629, line: 104, baseType: !4316, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4327, file: !629, line: 145, baseType: !4380, size: 256)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !629, line: 107, size: 256, elements: !4381)
!4381 = !{!4382, !4430, !4433, !4434}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4380, file: !629, line: 108, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !629, line: 217, size: 768, elements: !4386)
!4386 = !{!4387, !4407, !4411, !4412, !4413, !4414, !4415, !4419, !4420, !4421, !4422, !4426}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4385, file: !629, line: 222, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!277, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !629, line: 197, size: 1088, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4392, file: !629, line: 199, baseType: !4316, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4392, file: !629, line: 200, baseType: !370, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4392, file: !629, line: 201, baseType: !738, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4392, file: !629, line: 202, baseType: !212, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4392, file: !629, line: 205, baseType: !750, size: 192, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4392, file: !629, line: 206, baseType: !750, size: 192, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4392, file: !629, line: 207, baseType: !277, size: 32, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4392, file: !629, line: 208, baseType: !225, size: 128, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4392, file: !629, line: 209, baseType: !293, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4392, file: !629, line: 211, baseType: !339, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4392, file: !629, line: 212, baseType: !500, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4392, file: !629, line: 213, baseType: !500, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4392, file: !629, line: 214, baseType: !2027, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4385, file: !629, line: 223, baseType: !4408, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !4391}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4385, file: !629, line: 236, baseType: !782, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4385, file: !629, line: 238, baseType: !769, size: 64, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4385, file: !629, line: 239, baseType: !778, size: 64, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4385, file: !629, line: 240, baseType: !774, size: 64, offset: 320)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4385, file: !629, line: 242, baseType: !4416, size: 64, offset: 384)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!324, !4391, !293, !339, !541}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4385, file: !629, line: 252, baseType: !339, size: 64, offset: 448)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4385, file: !629, line: 259, baseType: !500, size: 8, offset: 512)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4385, file: !629, line: 260, baseType: !4416, size: 64, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4385, file: !629, line: 263, baseType: !4423, size: 64, offset: 640)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!3999, !4391, !4001}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4385, file: !629, line: 266, baseType: !4427, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!277, !4391, !1999}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4380, file: !629, line: 109, baseType: !4431, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !629, line: 31, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4380, file: !629, line: 110, baseType: !541, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4380, file: !629, line: 111, baseType: !4316, size: 64, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4317, file: !629, line: 148, baseType: !212, size: 64, offset: 768)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4317, file: !629, line: 154, baseType: !209, size: 64, offset: 832)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4317, file: !629, line: 156, baseType: !334, size: 16, offset: 896)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4317, file: !629, line: 157, baseType: !333, size: 16, offset: 912)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4317, file: !629, line: 158, baseType: !4440, size: 64, offset: 960)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !629, line: 32, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !235, file: !236, line: 71, baseType: !1625, size: 32, offset: 448)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !235, file: !236, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !235, file: !236, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !235, file: !236, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !235, file: !236, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !235, file: !236, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !115, line: 463, baseType: !231, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !232, file: !115, line: 465, baseType: !4450, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 36, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !232, file: !115, line: 467, baseType: !239, size: 64, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !115, line: 468, baseType: !4454, size: 64, offset: 704)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 87, size: 384, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4464, !4468, !4472}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !115, line: 88, baseType: !239, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4456, file: !115, line: 89, baseType: !346, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4456, file: !115, line: 90, baseType: !4461, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!277, !231, !288}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4456, file: !115, line: 91, baseType: !4465, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!293, !231, !1331, !2815, !2816}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4456, file: !115, line: 93, baseType: !4469, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !231}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4456, file: !115, line: 95, baseType: !4473, size: 64, offset: 320)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !4476)
!4476 = !{!4477, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4475, file: !44, line: 279, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!277, !231}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4475, file: !44, line: 280, baseType: !4469, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4475, file: !44, line: 281, baseType: !4478, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4475, file: !44, line: 282, baseType: !4478, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4475, file: !44, line: 283, baseType: !4478, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4475, file: !44, line: 284, baseType: !4478, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4475, file: !44, line: 285, baseType: !4478, size: 64, offset: 384)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4475, file: !44, line: 286, baseType: !4478, size: 64, offset: 448)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4475, file: !44, line: 287, baseType: !4478, size: 64, offset: 512)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4475, file: !44, line: 288, baseType: !4478, size: 64, offset: 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4475, file: !44, line: 289, baseType: !4478, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4475, file: !44, line: 290, baseType: !4478, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4475, file: !44, line: 291, baseType: !4478, size: 64, offset: 768)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4475, file: !44, line: 292, baseType: !4478, size: 64, offset: 832)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4475, file: !44, line: 293, baseType: !4478, size: 64, offset: 896)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4475, file: !44, line: 294, baseType: !4478, size: 64, offset: 960)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4475, file: !44, line: 295, baseType: !4478, size: 64, offset: 1024)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4475, file: !44, line: 296, baseType: !4478, size: 64, offset: 1088)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4475, file: !44, line: 297, baseType: !4478, size: 64, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4475, file: !44, line: 298, baseType: !4478, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4475, file: !44, line: 299, baseType: !4478, size: 64, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4475, file: !44, line: 300, baseType: !4478, size: 64, offset: 1344)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4475, file: !44, line: 301, baseType: !4478, size: 64, offset: 1408)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !232, file: !115, line: 470, baseType: !4504, size: 64, offset: 768)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4506, line: 82, size: 1408, elements: !4507)
!4506 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513, !4514, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4589, !4592, !4593}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4505, file: !4506, line: 83, baseType: !239, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4505, file: !4506, line: 84, baseType: !239, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4505, file: !4506, line: 85, baseType: !231, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4505, file: !4506, line: 86, baseType: !346, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4505, file: !4506, line: 87, baseType: !346, size: 64, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4505, file: !4506, line: 88, baseType: !346, size: 64, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4505, file: !4506, line: 90, baseType: !4515, size: 64, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!277, !231, !4518}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 95, size: 1152, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4526, !4527, !4540, !4553, !4554, !4555, !4556, !4557, !4565, !4566, !4567, !4568, !4569, !4570}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4519, file: !109, line: 96, baseType: !239, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4519, file: !109, line: 97, baseType: !4504, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4519, file: !109, line: 99, baseType: !643, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4519, file: !109, line: 100, baseType: !239, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4519, file: !109, line: 102, baseType: !500, size: 8, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4519, file: !109, line: 103, baseType: !108, size: 32, offset: 288)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4519, file: !109, line: 105, baseType: !4528, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4531, line: 262, size: 1600, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4532 = !{!4533, !4534, !4535, !4539}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4530, file: !4531, line: 263, baseType: !1130, size: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4530, file: !4531, line: 264, baseType: !1130, size: 256, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4530, file: !4531, line: 265, baseType: !4536, size: 1024, offset: 512)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 1024, elements: !4537)
!4537 = !{!4538}
!4538 = !DISubrange(count: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4530, file: !4531, line: 266, baseType: !3254, size: 64, offset: 1536)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4519, file: !109, line: 106, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4531, line: 210, size: 256, elements: !4544)
!4544 = !{!4545, !4549, !4551, !4552}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4543, file: !4531, line: 211, baseType: !4546, size: 72)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 72, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 9)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4543, file: !4531, line: 212, baseType: !4550, size: 64, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4531, line: 14, baseType: !342)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4543, file: !4531, line: 213, baseType: !206, size: 32, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4543, file: !4531, line: 214, baseType: !206, size: 32, offset: 224)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4519, file: !109, line: 108, baseType: !4478, size: 64, offset: 448)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4519, file: !109, line: 109, baseType: !4469, size: 64, offset: 512)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4519, file: !109, line: 110, baseType: !4478, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4519, file: !109, line: 111, baseType: !4469, size: 64, offset: 640)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4519, file: !109, line: 112, baseType: !4558, size: 64, offset: 704)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!277, !231, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !4563)
!4563 = !{!4564}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4562, file: !44, line: 51, baseType: !277, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4519, file: !109, line: 113, baseType: !4478, size: 64, offset: 768)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4519, file: !109, line: 114, baseType: !346, size: 64, offset: 832)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4519, file: !109, line: 115, baseType: !346, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4519, file: !109, line: 117, baseType: !4473, size: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4519, file: !109, line: 118, baseType: !4469, size: 64, offset: 1024)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4519, file: !109, line: 120, baseType: !4571, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 120, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4505, file: !4506, line: 91, baseType: !4461, size: 64, offset: 448)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4505, file: !4506, line: 92, baseType: !4478, size: 64, offset: 512)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4505, file: !4506, line: 93, baseType: !4469, size: 64, offset: 576)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4505, file: !4506, line: 94, baseType: !4478, size: 64, offset: 640)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4505, file: !4506, line: 95, baseType: !4469, size: 64, offset: 704)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4505, file: !4506, line: 97, baseType: !4478, size: 64, offset: 768)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4505, file: !4506, line: 98, baseType: !4478, size: 64, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4505, file: !4506, line: 100, baseType: !4558, size: 64, offset: 896)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4505, file: !4506, line: 101, baseType: !4478, size: 64, offset: 960)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4505, file: !4506, line: 103, baseType: !4478, size: 64, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4505, file: !4506, line: 105, baseType: !4478, size: 64, offset: 1088)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4505, file: !4506, line: 107, baseType: !4473, size: 64, offset: 1152)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4505, file: !4506, line: 109, baseType: !4586, size: 64, offset: 1216)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4506, line: 109, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4505, file: !4506, line: 111, baseType: !4590, size: 64, offset: 1280)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4506, line: 111, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4505, file: !4506, line: 112, baseType: !658, offset: 1344)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4505, file: !4506, line: 114, baseType: !500, size: 8, offset: 1344)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !232, file: !115, line: 471, baseType: !4518, size: 64, offset: 832)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !232, file: !115, line: 473, baseType: !212, size: 64, offset: 896)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !232, file: !115, line: 475, baseType: !212, size: 64, offset: 960)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !232, file: !115, line: 480, baseType: !750, size: 192, offset: 1024)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !232, file: !115, line: 484, baseType: !4599, size: 576, offset: 1216)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 361, size: 576, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4599, file: !115, line: 362, baseType: !225, size: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4599, file: !115, line: 363, baseType: !225, size: 128, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4599, file: !115, line: 364, baseType: !225, size: 128, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4599, file: !115, line: 365, baseType: !225, size: 128, offset: 384)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4599, file: !115, line: 366, baseType: !500, size: 8, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4599, file: !115, line: 367, baseType: !114, size: 32, offset: 544)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !232, file: !115, line: 485, baseType: !4608, size: 2304, offset: 1792)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !4609)
!4609 = !{!4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4694, !4698}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4608, file: !44, line: 566, baseType: !4561, size: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4608, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4608, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4608, file: !44, line: 569, baseType: !500, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4608, file: !44, line: 570, baseType: !500, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4608, file: !44, line: 571, baseType: !500, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4608, file: !44, line: 572, baseType: !500, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4608, file: !44, line: 573, baseType: !500, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4608, file: !44, line: 574, baseType: !500, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4608, file: !44, line: 575, baseType: !500, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4608, file: !44, line: 576, baseType: !500, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4608, file: !44, line: 577, baseType: !204, size: 32, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4608, file: !44, line: 578, baseType: !251, offset: 96)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4608, file: !44, line: 580, baseType: !225, size: 128, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4608, file: !44, line: 581, baseType: !2496, size: 192, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4608, file: !44, line: 582, baseType: !4626, size: 64, offset: 448)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4628, line: 43, size: 1472, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4627, file: !4628, line: 44, baseType: !239, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4627, file: !4628, line: 45, baseType: !277, size: 32, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4627, file: !4628, line: 46, baseType: !225, size: 128, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4627, file: !4628, line: 47, baseType: !251, offset: 256)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4627, file: !4628, line: 48, baseType: !4635, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4627, file: !4628, line: 49, baseType: !1675, size: 320, offset: 320)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4627, file: !4628, line: 50, baseType: !342, size: 64, offset: 640)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4627, file: !4628, line: 51, baseType: !2304, size: 64, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4627, file: !4628, line: 52, baseType: !2304, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4627, file: !4628, line: 53, baseType: !2304, size: 64, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4627, file: !4628, line: 54, baseType: !2304, size: 64, offset: 896)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4627, file: !4628, line: 55, baseType: !2304, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4627, file: !4628, line: 56, baseType: !342, size: 64, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4627, file: !4628, line: 57, baseType: !342, size: 64, offset: 1088)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4627, file: !4628, line: 58, baseType: !342, size: 64, offset: 1152)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4627, file: !4628, line: 59, baseType: !342, size: 64, offset: 1216)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4627, file: !4628, line: 60, baseType: !342, size: 64, offset: 1280)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4627, file: !4628, line: 61, baseType: !231, size: 64, offset: 1344)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4627, file: !4628, line: 62, baseType: !500, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4627, file: !4628, line: 63, baseType: !500, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4608, file: !44, line: 583, baseType: !500, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4608, file: !44, line: 584, baseType: !500, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4608, file: !44, line: 585, baseType: !500, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4608, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4608, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4608, file: !44, line: 592, baseType: !2296, size: 512, offset: 576)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4608, file: !44, line: 593, baseType: !209, size: 64, offset: 1088)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4608, file: !44, line: 594, baseType: !1106, size: 256, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4608, file: !44, line: 595, baseType: !1242, size: 128, offset: 1408)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4608, file: !44, line: 596, baseType: !4635, size: 64, offset: 1536)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4608, file: !44, line: 597, baseType: !823, size: 32, offset: 1600)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4608, file: !44, line: 598, baseType: !823, size: 32, offset: 1632)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4608, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4608, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4608, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4608, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4608, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4608, file: !44, line: 604, baseType: !500, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4608, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4608, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4608, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4608, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4608, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4608, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4608, file: !44, line: 611, baseType: !121, size: 32, offset: 1728)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4608, file: !44, line: 612, baseType: !43, size: 32, offset: 1760)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4608, file: !44, line: 613, baseType: !277, size: 32, offset: 1792)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4608, file: !44, line: 614, baseType: !277, size: 32, offset: 1824)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4608, file: !44, line: 615, baseType: !209, size: 64, offset: 1856)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4608, file: !44, line: 616, baseType: !209, size: 64, offset: 1920)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4608, file: !44, line: 617, baseType: !209, size: 64, offset: 1984)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4608, file: !44, line: 618, baseType: !209, size: 64, offset: 2048)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4608, file: !44, line: 620, baseType: !4685, size: 64, offset: 2112)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4686, file: !44, line: 537, baseType: !251)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4686, file: !44, line: 538, baseType: !7, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4686, file: !44, line: 540, baseType: !225, size: 128, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4686, file: !44, line: 543, baseType: !4692, size: 64, offset: 192)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4608, file: !44, line: 621, baseType: !4695, size: 64, offset: 2176)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{null, !231, !2445}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4608, file: !44, line: 622, baseType: !4699, size: 64, offset: 2240)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !232, file: !115, line: 486, baseType: !4702, size: 64, offset: 4096)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !4704)
!4704 = !{!4705, !4706, !4707, !4711, !4712, !4713}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4703, file: !44, line: 643, baseType: !4475, size: 1472)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4703, file: !44, line: 644, baseType: !4478, size: 64, offset: 1472)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4703, file: !44, line: 645, baseType: !4708, size: 64, offset: 1536)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{null, !231, !500}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4703, file: !44, line: 646, baseType: !4478, size: 64, offset: 1600)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4703, file: !44, line: 647, baseType: !4469, size: 64, offset: 1664)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4703, file: !44, line: 648, baseType: !4469, size: 64, offset: 1728)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !232, file: !115, line: 493, baseType: !4715, size: 64, offset: 4160)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !129, line: 162, size: 1088, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4893, !4894, !4895, !4896, !4897, !4898, !4901, !4902, !4903, !4904, !4905, !4906, !4907}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4716, file: !129, line: 163, baseType: !225, size: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4716, file: !129, line: 164, baseType: !239, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4716, file: !129, line: 165, baseType: !4721, size: 64, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !129, line: 105, size: 640, elements: !4724)
!4724 = !{!4725, !4843, !4854, !4859, !4863, !4870, !4874, !4878, !4885, !4889}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4723, file: !129, line: 106, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!277, !4715, !4729, !128}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4731, line: 51, size: 1344, elements: !4732)
!4731 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4732 = !{!4733, !4734, !4736, !4737, !4827, !4836, !4837, !4838, !4839, !4840, !4841, !4842}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4730, file: !4731, line: 52, baseType: !239, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4730, file: !4731, line: 53, baseType: !4735, size: 32, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4731, line: 28, baseType: !204)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4730, file: !4731, line: 54, baseType: !239, size: 64, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4730, file: !4731, line: 55, baseType: !4738, size: 192, offset: 192)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4739, line: 17, size: 192, elements: !4740)
!4739 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4740 = !{!4741, !4743, !4826}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4738, file: !4739, line: 18, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4738, file: !4739, line: 19, baseType: !4744, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4746)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4739, line: 110, size: 1152, elements: !4747)
!4747 = !{!4748, !4752, !4756, !4762, !4768, !4772, !4776, !4781, !4785, !4786, !4790, !4794, !4798, !4809, !4810, !4811, !4812, !4822}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4746, file: !4739, line: 111, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!4742, !4742}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4746, file: !4739, line: 112, baseType: !4753, size: 64, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !4742}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4746, file: !4739, line: 113, baseType: !4757, size: 64, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!500, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4738)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4746, file: !4739, line: 114, baseType: !4763, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!3254, !4760, !4766}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4746, file: !4739, line: 116, baseType: !4769, size: 64, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!500, !4760, !239}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4746, file: !4739, line: 118, baseType: !4773, size: 64, offset: 320)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!277, !4760, !239, !7, !212, !339}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4746, file: !4739, line: 123, baseType: !4777, size: 64, offset: 384)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!277, !4760, !239, !4780, !339}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4746, file: !4739, line: 126, baseType: !4782, size: 64, offset: 448)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!239, !4760}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4746, file: !4739, line: 127, baseType: !4782, size: 64, offset: 512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4746, file: !4739, line: 128, baseType: !4787, size: 64, offset: 576)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!4742, !4760}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4746, file: !4739, line: 130, baseType: !4791, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4742, !4760, !4742}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4746, file: !4739, line: 133, baseType: !4795, size: 64, offset: 704)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!4742, !4760, !239}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4746, file: !4739, line: 135, baseType: !4799, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!277, !4760, !239, !239, !7, !7, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4739, line: 43, size: 640, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4803, file: !4739, line: 44, baseType: !4742, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4803, file: !4739, line: 45, baseType: !7, size: 32, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4803, file: !4739, line: 46, baseType: !4808, size: 512, offset: 128)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 512, elements: !2334)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4746, file: !4739, line: 140, baseType: !4791, size: 64, offset: 832)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4746, file: !4739, line: 143, baseType: !4787, size: 64, offset: 896)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4746, file: !4739, line: 145, baseType: !4749, size: 64, offset: 960)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4746, file: !4739, line: 146, baseType: !4813, size: 64, offset: 1024)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!277, !4760, !4816}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4739, line: 29, size: 128, elements: !4818)
!4818 = !{!4819, !4820, !4821}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4817, file: !4739, line: 30, baseType: !7, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4817, file: !4739, line: 31, baseType: !7, size: 32, offset: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4817, file: !4739, line: 32, baseType: !4760, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4746, file: !4739, line: 148, baseType: !4823, size: 64, offset: 1088)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!277, !4760, !231}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4738, file: !4739, line: 20, baseType: !231, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4730, file: !4731, line: 57, baseType: !4828, size: 64, offset: 384)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4731, line: 31, size: 704, elements: !4830)
!4830 = !{!4831, !4832, !4833, !4834, !4835}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4829, file: !4731, line: 32, baseType: !293, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4829, file: !4731, line: 33, baseType: !277, size: 32, offset: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4829, file: !4731, line: 34, baseType: !212, size: 64, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4829, file: !4731, line: 35, baseType: !4828, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4829, file: !4731, line: 43, baseType: !361, size: 448, offset: 256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4730, file: !4731, line: 58, baseType: !4828, size: 64, offset: 448)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4730, file: !4731, line: 59, baseType: !4729, size: 64, offset: 512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4730, file: !4731, line: 60, baseType: !4729, size: 64, offset: 576)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4730, file: !4731, line: 61, baseType: !4729, size: 64, offset: 640)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4730, file: !4731, line: 63, baseType: !235, size: 512, offset: 704)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4730, file: !4731, line: 65, baseType: !342, size: 64, offset: 1216)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4730, file: !4731, line: 66, baseType: !212, size: 64, offset: 1280)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4723, file: !129, line: 108, baseType: !4844, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!277, !4715, !4847, !128}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !129, line: 63, size: 640, elements: !4849)
!4849 = !{!4850, !4851, !4852}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4848, file: !129, line: 64, baseType: !4742, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4848, file: !129, line: 65, baseType: !277, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4848, file: !129, line: 66, baseType: !4853, size: 512, offset: 96)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 512, elements: !1761)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4723, file: !129, line: 110, baseType: !4855, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!277, !4715, !7, !4858}
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !219, line: 164, baseType: !342)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4723, file: !129, line: 111, baseType: !4860, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4715, !7}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4723, file: !129, line: 112, baseType: !4864, size: 64, offset: 256)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!277, !4715, !4729, !4867, !7, !4869, !1031}
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4723, file: !129, line: 117, baseType: !4871, size: 64, offset: 320)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!277, !4715, !7, !7, !212}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4723, file: !129, line: 119, baseType: !4875, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{null, !4715, !7, !7}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4723, file: !129, line: 121, baseType: !4879, size: 64, offset: 448)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!277, !4715, !4882, !500}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4884, line: 11, flags: DIFlagFwdDecl)
!4884 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4723, file: !129, line: 122, baseType: !4886, size: 64, offset: 512)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{null, !4715, !4882}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4723, file: !129, line: 123, baseType: !4890, size: 64, offset: 576)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!277, !4715, !4847, !4869, !1031}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4716, file: !129, line: 166, baseType: !212, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4716, file: !129, line: 167, baseType: !7, size: 32, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4716, file: !129, line: 168, baseType: !7, size: 32, offset: 352)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4716, file: !129, line: 171, baseType: !4742, size: 64, offset: 384)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4716, file: !129, line: 172, baseType: !128, size: 32, offset: 448)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4716, file: !129, line: 173, baseType: !4899, size: 64, offset: 512)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !129, line: 134, flags: DIFlagFwdDecl)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4716, file: !129, line: 175, baseType: !4715, size: 64, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4716, file: !129, line: 182, baseType: !4858, size: 64, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4716, file: !129, line: 183, baseType: !7, size: 32, offset: 704)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4716, file: !129, line: 184, baseType: !7, size: 32, offset: 736)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4716, file: !129, line: 185, baseType: !815, size: 128, offset: 768)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4716, file: !129, line: 186, baseType: !750, size: 192, offset: 896)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4716, file: !129, line: 187, baseType: !4908, offset: 1088)
!4908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1144)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !232, file: !115, line: 499, baseType: !225, size: 128, offset: 4224)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !232, file: !115, line: 502, baseType: !4911, size: 64, offset: 4352)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4913)
!4913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 502, flags: DIFlagFwdDecl)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !232, file: !115, line: 504, baseType: !4915, size: 64, offset: 4416)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !232, file: !115, line: 505, baseType: !209, size: 64, offset: 4480)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !232, file: !115, line: 510, baseType: !209, size: 64, offset: 4544)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !232, file: !115, line: 511, baseType: !4919, size: 64, offset: 4608)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4921)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 511, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !232, file: !115, line: 513, baseType: !4923, size: 64, offset: 4672)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 288, size: 128, elements: !4925)
!4925 = !{!4926, !4927}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4924, file: !115, line: 293, baseType: !7, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4924, file: !115, line: 294, baseType: !342, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !232, file: !115, line: 515, baseType: !225, size: 128, offset: 4736)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !232, file: !115, line: 526, baseType: !4930, offset: 4864)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4931, line: 5, elements: !265)
!4931 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !232, file: !115, line: 528, baseType: !4729, size: 64, offset: 4864)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !232, file: !115, line: 529, baseType: !4742, size: 64, offset: 4928)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !232, file: !115, line: 534, baseType: !523, size: 32, offset: 4992)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !232, file: !115, line: 535, baseType: !204, size: 32, offset: 5024)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !232, file: !115, line: 537, baseType: !251, offset: 5056)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !232, file: !115, line: 538, baseType: !225, size: 128, offset: 5056)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !232, file: !115, line: 540, baseType: !4939, size: 64, offset: 5184)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4941, line: 54, size: 960, elements: !4942)
!4941 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4948, !4949, !4953, !4957, !4958, !4959, !4960, !4964, !4968, !4969}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4940, file: !4941, line: 55, baseType: !239, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4940, file: !4941, line: 56, baseType: !643, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4940, file: !4941, line: 58, baseType: !346, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4940, file: !4941, line: 59, baseType: !346, size: 64, offset: 192)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4940, file: !4941, line: 60, baseType: !244, size: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4940, file: !4941, line: 62, baseType: !4461, size: 64, offset: 320)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4940, file: !4941, line: 63, baseType: !4950, size: 64, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!293, !231, !1331}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4940, file: !4941, line: 65, baseType: !4954, size: 64, offset: 448)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !4939}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4940, file: !4941, line: 66, baseType: !4469, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4940, file: !4941, line: 68, baseType: !4478, size: 64, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4940, file: !4941, line: 70, baseType: !4283, size: 64, offset: 640)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4940, file: !4941, line: 71, baseType: !4961, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!3254, !231}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4940, file: !4941, line: 73, baseType: !4965, size: 64, offset: 768)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{null, !231, !2815, !2816}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4940, file: !4941, line: 75, baseType: !4473, size: 64, offset: 832)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4940, file: !4941, line: 77, baseType: !4590, size: 64, offset: 896)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !232, file: !115, line: 541, baseType: !346, size: 64, offset: 5248)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !232, file: !115, line: 543, baseType: !4469, size: 64, offset: 5312)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !232, file: !115, line: 544, baseType: !4973, size: 64, offset: 5376)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 45, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !232, file: !115, line: 545, baseType: !4976, size: 64, offset: 5440)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 47, flags: DIFlagFwdDecl)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !232, file: !115, line: 547, baseType: !500, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !232, file: !115, line: 548, baseType: !500, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !232, file: !115, line: 549, baseType: !500, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !232, file: !115, line: 550, baseType: !500, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "put_online", scope: !221, file: !148, line: 331, baseType: !500, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !148, line: 351, size: 10880, elements: !4985)
!4985 = !{!4986, !4987, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !5004, !5021, !5094, !5121, !5145, !5166, !5173, !5182, !5214, !5228, !5250, !5254, !5255, !5256, !5257, !5258, !5259, !5260}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !4984, file: !148, line: 352, baseType: !277, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4984, file: !148, line: 353, baseType: !4988, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !203, line: 424, baseType: !212)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4984, file: !148, line: 354, baseType: !4738, size: 192, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4984, file: !148, line: 355, baseType: !4983, size: 64, offset: 320)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4984, file: !148, line: 356, baseType: !225, size: 128, offset: 384)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4984, file: !148, line: 357, baseType: !225, size: 128, offset: 512)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !4984, file: !148, line: 358, baseType: !225, size: 128, offset: 640)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !4984, file: !148, line: 359, baseType: !225, size: 128, offset: 768)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4984, file: !148, line: 360, baseType: !4996, size: 32, offset: 896)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !148, line: 179, size: 32, elements: !4997)
!4997 = !{!4998, !4999, !5000, !5001, !5002, !5003}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4996, file: !148, line: 180, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4996, file: !148, line: 181, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4996, file: !148, line: 182, baseType: !204, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4996, file: !148, line: 183, baseType: !204, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4996, file: !148, line: 184, baseType: !204, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4996, file: !148, line: 185, baseType: !204, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4984, file: !148, line: 361, baseType: !5005, size: 32, offset: 928)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !148, line: 190, size: 32, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5005, file: !148, line: 191, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5005, file: !148, line: 192, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5005, file: !148, line: 193, baseType: !204, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5005, file: !148, line: 194, baseType: !204, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5005, file: !148, line: 195, baseType: !204, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5005, file: !148, line: 196, baseType: !204, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5005, file: !148, line: 197, baseType: !204, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5005, file: !148, line: 198, baseType: !204, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5005, file: !148, line: 199, baseType: !204, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5005, file: !148, line: 200, baseType: !204, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5005, file: !148, line: 201, baseType: !204, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5005, file: !148, line: 202, baseType: !204, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5005, file: !148, line: 203, baseType: !204, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5005, file: !148, line: 204, baseType: !204, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !4984, file: !148, line: 362, baseType: !5022, size: 960, offset: 960)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !148, line: 234, size: 960, elements: !5023)
!5023 = !{!5024, !5026, !5033, !5035, !5036, !5037, !5042, !5045}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5022, file: !148, line: 235, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !148, line: 217, baseType: !3159)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5022, file: !148, line: 236, baseType: !5027, size: 32, offset: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !148, line: 227, size: 32, elements: !5028)
!5028 = !{!5029, !5030, !5031, !5032}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5027, file: !148, line: 228, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5027, file: !148, line: 229, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5027, file: !148, line: 230, baseType: !204, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5027, file: !148, line: 231, baseType: !204, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5022, file: !148, line: 237, baseType: !5034, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !148, line: 218, baseType: !209)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5022, file: !148, line: 238, baseType: !293, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5022, file: !148, line: 239, baseType: !225, size: 128, offset: 256)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5022, file: !148, line: 240, baseType: !5038, size: 320, offset: 384)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !148, line: 219, baseType: !5039)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 320, elements: !5040)
!5040 = !{!5041}
!5041 = !DISubrange(count: 40)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5022, file: !148, line: 241, baseType: !5043, size: 160, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !148, line: 220, baseType: !5044)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 160, elements: !3328)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5022, file: !148, line: 242, baseType: !5046, size: 64, offset: 896)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !203, line: 899, size: 192, elements: !5048)
!5048 = !{!5049, !5051, !5056, !5062, !5068, !5074, !5080, !5088}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5047, file: !203, line: 900, baseType: !5050, size: 32)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !203, line: 635, baseType: !204)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5047, file: !203, line: 904, baseType: !5052, size: 128)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 901, size: 128, elements: !5053)
!5053 = !{!5054, !5055}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5052, file: !203, line: 902, baseType: !5050, size: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5052, file: !203, line: 903, baseType: !209, size: 64, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5047, file: !203, line: 910, baseType: !5057, size: 128)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 906, size: 128, elements: !5058)
!5058 = !{!5059, !5060, !5061}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5057, file: !203, line: 907, baseType: !5050, size: 32)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5057, file: !203, line: 908, baseType: !204, size: 32, offset: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5057, file: !203, line: 909, baseType: !293, size: 64, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5047, file: !203, line: 916, baseType: !5063, size: 128)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 912, size: 128, elements: !5064)
!5064 = !{!5065, !5066, !5067}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5063, file: !203, line: 913, baseType: !5050, size: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5063, file: !203, line: 914, baseType: !204, size: 32, offset: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5063, file: !203, line: 915, baseType: !213, size: 64, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5047, file: !203, line: 922, baseType: !5069, size: 128)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 918, size: 128, elements: !5070)
!5070 = !{!5071, !5072, !5073}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5069, file: !203, line: 919, baseType: !5050, size: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5069, file: !203, line: 920, baseType: !204, size: 32, offset: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5069, file: !203, line: 921, baseType: !5046, size: 64, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5047, file: !203, line: 928, baseType: !5075, size: 128)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 924, size: 128, elements: !5076)
!5076 = !{!5077, !5078, !5079}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5075, file: !203, line: 925, baseType: !5050, size: 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5075, file: !203, line: 926, baseType: !5050, size: 32, offset: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5075, file: !203, line: 927, baseType: !4988, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5047, file: !203, line: 935, baseType: !5081, size: 192)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 930, size: 192, elements: !5082)
!5082 = !{!5083, !5084, !5085, !5087}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5081, file: !203, line: 931, baseType: !5050, size: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5081, file: !203, line: 932, baseType: !204, size: 32, offset: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5081, file: !203, line: 933, baseType: !5086, size: 64, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !203, line: 128, baseType: !209)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5081, file: !203, line: 934, baseType: !204, size: 32, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5047, file: !203, line: 941, baseType: !5089, size: 96)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5047, file: !203, line: 937, size: 96, elements: !5090)
!5090 = !{!5091, !5092, !5093}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5089, file: !203, line: 938, baseType: !5050, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5089, file: !203, line: 939, baseType: !204, size: 32, offset: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5089, file: !203, line: 940, baseType: !204, size: 32, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4984, file: !148, line: 363, baseType: !5095, size: 1344, offset: 1920)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !148, line: 275, size: 1344, elements: !5096)
!5096 = !{!5097, !5098, !5108}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5095, file: !148, line: 276, baseType: !277, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5095, file: !148, line: 277, baseType: !5099, size: 32, offset: 32)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !148, line: 254, size: 32, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5099, file: !148, line: 255, baseType: !204, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5099, file: !148, line: 256, baseType: !204, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5099, file: !148, line: 257, baseType: !204, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5099, file: !148, line: 258, baseType: !204, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5099, file: !148, line: 259, baseType: !204, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5099, file: !148, line: 260, baseType: !204, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5099, file: !148, line: 261, baseType: !204, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5095, file: !148, line: 278, baseType: !5109, size: 1280, offset: 64)
!5109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5110, size: 1280, elements: !1889)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !148, line: 264, size: 256, elements: !5111)
!5111 = !{!5112, !5118, !5119, !5120}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5110, file: !148, line: 269, baseType: !5113, size: 8)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5110, file: !148, line: 265, size: 8, elements: !5114)
!5114 = !{!5115, !5116, !5117}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5113, file: !148, line: 266, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5113, file: !148, line: 267, baseType: !214, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5113, file: !148, line: 268, baseType: !214, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5110, file: !148, line: 270, baseType: !277, size: 32, offset: 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5110, file: !148, line: 271, baseType: !277, size: 32, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5110, file: !148, line: 272, baseType: !225, size: 128, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4984, file: !148, line: 364, baseType: !5122, size: 640, offset: 3264)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !148, line: 315, size: 640, elements: !5123)
!5123 = !{!5124, !5125, !5126, !5127, !5128, !5133, !5142, !5143, !5144}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5122, file: !148, line: 316, baseType: !4988, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5122, file: !148, line: 317, baseType: !209, size: 64, offset: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5122, file: !148, line: 318, baseType: !209, size: 64, offset: 128)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5122, file: !148, line: 319, baseType: !225, size: 128, offset: 192)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5122, file: !148, line: 320, baseType: !5129, size: 8, offset: 320)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !148, line: 305, size: 8, elements: !5130)
!5130 = !{!5131, !5132}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5129, file: !148, line: 306, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5129, file: !148, line: 307, baseType: !214, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5122, file: !148, line: 321, baseType: !5134, size: 128, offset: 384)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !148, line: 310, size: 128, elements: !5135)
!5135 = !{!5136, !5141}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5134, file: !148, line: 311, baseType: !5137, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{null, !5140}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5134, file: !148, line: 312, baseType: !231, size: 64, offset: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5122, file: !148, line: 322, baseType: !4626, size: 64, offset: 512)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5122, file: !148, line: 323, baseType: !277, size: 32, offset: 576)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5122, file: !148, line: 324, baseType: !277, size: 32, offset: 608)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4984, file: !148, line: 365, baseType: !5146, size: 192, offset: 3904)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !148, line: 297, size: 192, elements: !5147)
!5147 = !{!5148, !5149, !5153, !5154}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5146, file: !148, line: 298, baseType: !277, size: 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5146, file: !148, line: 299, baseType: !5150, size: 8, offset: 32)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !148, line: 283, size: 8, elements: !5151)
!5151 = !{!5152}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5150, file: !148, line: 284, baseType: !214, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5146, file: !148, line: 300, baseType: !277, size: 32, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5146, file: !148, line: 301, baseType: !5155, size: 64, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !148, line: 287, size: 64, elements: !5157)
!5157 = !{!5158, !5163, !5164, !5165}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5156, file: !148, line: 291, baseType: !5159, size: 8)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5156, file: !148, line: 288, size: 8, elements: !5160)
!5160 = !{!5161, !5162}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5159, file: !148, line: 289, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5159, file: !148, line: 290, baseType: !214, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5156, file: !148, line: 292, baseType: !214, size: 8, offset: 8)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5156, file: !148, line: 293, baseType: !214, size: 8, offset: 16)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5156, file: !148, line: 294, baseType: !277, size: 32, offset: 32)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4984, file: !148, line: 366, baseType: !5167, size: 64, offset: 4096)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !148, line: 209, size: 64, elements: !5168)
!5168 = !{!5169}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5167, file: !148, line: 210, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5172, line: 12, flags: DIFlagFwdDecl)
!5172 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/lizy2001/genbc/linux")
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4984, file: !148, line: 367, baseType: !5174, size: 384, offset: 4160)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !148, line: 341, size: 384, elements: !5175)
!5175 = !{!5176, !5179, !5180, !5181}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5174, file: !148, line: 342, baseType: !5177, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5047)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5174, file: !148, line: 343, baseType: !225, size: 128, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5174, file: !148, line: 344, baseType: !5177, size: 64, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5174, file: !148, line: 345, baseType: !225, size: 128, offset: 256)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4984, file: !148, line: 368, baseType: !5183, size: 64, offset: 4544)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !148, line: 122, size: 1216, elements: !5185)
!5185 = !{!5186, !5187, !5188, !5193, !5197, !5201, !5202, !5203}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5184, file: !148, line: 123, baseType: !4541, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5184, file: !148, line: 124, baseType: !225, size: 128, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5184, file: !148, line: 125, baseType: !5189, size: 64, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!500, !239, !5192}
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5184, file: !148, line: 126, baseType: !5194, size: 64, offset: 256)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!277, !4983, !4541}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5184, file: !148, line: 127, baseType: !5198, size: 64, offset: 320)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{null, !4983}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5184, file: !148, line: 128, baseType: !4469, size: 64, offset: 384)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5184, file: !148, line: 129, baseType: !4469, size: 64, offset: 448)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5184, file: !148, line: 130, baseType: !5204, size: 704, offset: 512)
!5204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !148, line: 108, size: 704, elements: !5205)
!5205 = !{!5206, !5207, !5211, !5212, !5213}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5204, file: !148, line: 109, baseType: !235, size: 512)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5204, file: !148, line: 110, baseType: !5208, size: 64, offset: 512)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!277, !4983}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5204, file: !148, line: 111, baseType: !5198, size: 64, offset: 576)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5204, file: !148, line: 112, baseType: !500, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5204, file: !148, line: 113, baseType: !500, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !4984, file: !148, line: 369, baseType: !5215, size: 64, offset: 4608)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !148, line: 138, size: 256, elements: !5217)
!5217 = !{!5218, !5219, !5223, !5227}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5216, file: !148, line: 139, baseType: !4983, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5216, file: !148, line: 140, baseType: !5220, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!277, !4983, !204}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5216, file: !148, line: 141, baseType: !5224, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{null, !4983, !204}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5216, file: !148, line: 142, baseType: !5198, size: 64, offset: 192)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4984, file: !148, line: 370, baseType: !5229, size: 64, offset: 4672)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !148, line: 162, size: 2816, elements: !5231)
!5231 = !{!5232, !5236, !5237, !5238, !5239, !5248, !5249}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5230, file: !148, line: 163, baseType: !5233, size: 640)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 640, elements: !5234)
!5234 = !{!5235}
!5235 = !DISubrange(count: 80)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5230, file: !148, line: 164, baseType: !5233, size: 640, offset: 640)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5230, file: !148, line: 165, baseType: !4541, size: 64, offset: 1280)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5230, file: !148, line: 166, baseType: !7, size: 32, offset: 1344)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5230, file: !148, line: 167, baseType: !5240, size: 192, offset: 1408)
!5240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !148, line: 154, size: 192, elements: !5241)
!5241 = !{!5242, !5244, !5246}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !5240, file: !148, line: 155, baseType: !5243, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !148, line: 150, baseType: !5208)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5240, file: !148, line: 156, baseType: !5245, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !148, line: 151, baseType: !5208)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5240, file: !148, line: 157, baseType: !5247, size: 64, offset: 128)
!5247 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !148, line: 152, baseType: !5224)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5230, file: !148, line: 168, baseType: !4519, size: 1152, offset: 1600)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5230, file: !148, line: 169, baseType: !643, size: 64, offset: 2752)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !4984, file: !148, line: 371, baseType: !5251, size: 64, offset: 4736)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5253)
!5253 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !148, line: 348, flags: DIFlagFwdDecl)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4984, file: !148, line: 372, baseType: !212, size: 64, offset: 4800)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4984, file: !148, line: 373, baseType: !232, size: 5568, offset: 4864)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !4984, file: !148, line: 374, baseType: !7, size: 32, offset: 10432)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !4984, file: !148, line: 375, baseType: !7, size: 32, offset: 10464)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !4984, file: !148, line: 376, baseType: !225, size: 128, offset: 10496)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !4984, file: !148, line: 377, baseType: !750, size: 192, offset: 10624)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4984, file: !148, line: 378, baseType: !5198, size: 64, offset: 10816)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5263)
!5263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !228)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !148, line: 222, size: 192, elements: !5266)
!5266 = !{!5267, !5268}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5265, file: !148, line: 223, baseType: !225, size: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5265, file: !148, line: 224, baseType: !239, size: 64, offset: 128)
!5269 = !{!0, !5270, !5272, !5274, !5276, !5278, !5280, !5282, !5305, !5308, !5311}
!5270 = !DIGlobalVariableExpression(var: !5271, expr: !DIExpression())
!5271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_init313", scope: !2, file: !3, line: 1264, type: !212, isLocal: true, isDefinition: true)
!5272 = !DIGlobalVariableExpression(var: !5273, expr: !DIExpression())
!5273 = distinct !DIGlobalVariable(name: "acpi_root", scope: !2, file: !3, line: 37, type: !4983, isLocal: false, isDefinition: true)
!5274 = !DIGlobalVariableExpression(var: !5275, expr: !DIExpression())
!5275 = distinct !DIGlobalVariable(name: "acpi_root_dir", scope: !2, file: !3, line: 38, type: !5170, isLocal: false, isDefinition: true)
!5276 = !DIGlobalVariableExpression(var: !5277, expr: !DIExpression())
!5277 = distinct !DIGlobalVariable(name: "osc_sb_apei_support_acked", scope: !2, file: !3, line: 275, type: !500, isLocal: false, isDefinition: true)
!5278 = !DIGlobalVariableExpression(var: !5279, expr: !DIExpression())
!5279 = distinct !DIGlobalVariable(name: "osc_pc_lpi_support_confirmed", scope: !2, file: !3, line: 281, type: !500, isLocal: false, isDefinition: true)
!5280 = !DIGlobalVariableExpression(var: !5281, expr: !DIExpression())
!5281 = distinct !DIGlobalVariable(name: "acpi_kobj", scope: !2, file: !3, line: 1228, type: !244, isLocal: false, isDefinition: true)
!5282 = !DIGlobalVariableExpression(var: !5283, expr: !DIExpression())
!5283 = distinct !DIGlobalVariable(name: "dsdt_dmi_table", scope: !2, file: !3, line: 57, type: !5284, isLocal: true, isDefinition: true)
!5284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5285, size: 5504, elements: !1412)
!5285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5286)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4531, line: 566, size: 2752, elements: !5287)
!5287 = !{!5288, !5293, !5294, !5304}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5286, file: !4531, line: 567, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!277, !5292}
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !5286, file: !4531, line: 568, baseType: !239, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !5286, file: !4531, line: 569, baseType: !5295, size: 2560, offset: 128)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5296, size: 2560, elements: !1320)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4531, line: 560, size: 640, elements: !5297)
!5297 = !{!5298, !5299, !5300}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5296, file: !4531, line: 561, baseType: !216, size: 7, flags: DIFlagBitField, extraData: i64 0)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !5296, file: !4531, line: 562, baseType: !216, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !5296, file: !4531, line: 563, baseType: !5301, size: 632, offset: 8)
!5301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 632, elements: !5302)
!5302 = !{!5303}
!5303 = !DISubrange(count: 79)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5286, file: !4531, line: 570, baseType: !212, size: 64, offset: 2688)
!5305 = !DIGlobalVariableExpression(var: !5306, expr: !DIExpression())
!5306 = distinct !DIGlobalVariable(name: "sb_uuid_str", scope: !2, file: !3, line: 284, type: !5307, isLocal: true, isDefinition: true)
!5307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 296, elements: !1098)
!5308 = !DIGlobalVariableExpression(var: !5309, expr: !DIExpression())
!5309 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 35, type: !5310, isLocal: true, isDefinition: true)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 32, elements: !1320)
!5311 = !DIGlobalVariableExpression(var: !5312, expr: !DIExpression())
!5312 = distinct !DIGlobalVariable(name: "acpi_sb_work", scope: !5313, file: !3, line: 506, type: !1106, isLocal: true, isDefinition: true)
!5313 = distinct !DISubprogram(name: "acpi_sb_notify", scope: !3, file: !3, line: 504, type: !5314, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{null, !4988, !204, !212}
!5316 = !{i32 7, !"Dwarf Version", i32 4}
!5317 = !{i32 2, !"Debug Info Version", i32 3}
!5318 = !{i32 1, !"wchar_size", i32 2}
!5319 = !{i32 1, !"Code Model", i32 2}
!5320 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5321 = distinct !DISubprogram(name: "acpi_bus_get_status_handle", scope: !3, file: !3, line: 78, type: !5322, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!202, !4988, !5324}
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!5325 = !DILocalVariable(name: "handle", arg: 1, scope: !5321, file: !3, line: 78, type: !4988)
!5326 = !DILocation(line: 78, column: 52, scope: !5321)
!5327 = !DILocalVariable(name: "sta", arg: 2, scope: !5321, file: !3, line: 79, type: !5324)
!5328 = !DILocation(line: 79, column: 32, scope: !5321)
!5329 = !DILocalVariable(name: "status", scope: !5321, file: !3, line: 81, type: !202)
!5330 = !DILocation(line: 81, column: 14, scope: !5321)
!5331 = !DILocation(line: 83, column: 33, scope: !5321)
!5332 = !DILocation(line: 83, column: 55, scope: !5321)
!5333 = !DILocation(line: 83, column: 11, scope: !5321)
!5334 = !DILocation(line: 83, column: 9, scope: !5321)
!5335 = !DILocation(line: 84, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 84, column: 6)
!5337 = !DILocation(line: 84, column: 6, scope: !5321)
!5338 = !DILocation(line: 85, column: 3, scope: !5336)
!5339 = !DILocation(line: 87, column: 6, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 87, column: 6)
!5341 = !DILocation(line: 87, column: 13, scope: !5340)
!5342 = !DILocation(line: 87, column: 6, scope: !5321)
!5343 = !DILocation(line: 88, column: 4, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 87, column: 30)
!5345 = !DILocation(line: 88, column: 8, scope: !5344)
!5346 = !DILocation(line: 90, column: 3, scope: !5344)
!5347 = !DILocation(line: 92, column: 9, scope: !5321)
!5348 = !DILocation(line: 92, column: 2, scope: !5321)
!5349 = !DILocation(line: 93, column: 1, scope: !5321)
!5350 = distinct !DISubprogram(name: "acpi_bus_get_status", scope: !3, file: !3, line: 96, type: !5209, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5351 = !DILocalVariable(name: "device", arg: 1, scope: !5350, file: !3, line: 96, type: !4983)
!5352 = !DILocation(line: 96, column: 45, scope: !5350)
!5353 = !DILocalVariable(name: "status", scope: !5350, file: !3, line: 98, type: !202)
!5354 = !DILocation(line: 98, column: 14, scope: !5350)
!5355 = !DILocalVariable(name: "sta", scope: !5350, file: !3, line: 99, type: !211)
!5356 = !DILocation(line: 99, column: 21, scope: !5350)
!5357 = !DILocation(line: 101, column: 33, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 101, column: 6)
!5359 = !DILocation(line: 101, column: 6, scope: !5358)
!5360 = !DILocation(line: 101, column: 6, scope: !5350)
!5361 = !DILocation(line: 102, column: 26, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 101, column: 42)
!5363 = !DILocation(line: 102, column: 3, scope: !5362)
!5364 = !DILocation(line: 103, column: 3, scope: !5362)
!5365 = !DILocation(line: 107, column: 29, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 107, column: 6)
!5367 = !DILocation(line: 107, column: 6, scope: !5366)
!5368 = !DILocation(line: 107, column: 37, scope: !5366)
!5369 = !DILocation(line: 107, column: 40, scope: !5366)
!5370 = !DILocation(line: 107, column: 48, scope: !5366)
!5371 = !DILocation(line: 107, column: 6, scope: !5350)
!5372 = !DILocation(line: 108, column: 26, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 107, column: 59)
!5374 = !DILocation(line: 108, column: 3, scope: !5373)
!5375 = !DILocation(line: 109, column: 3, scope: !5373)
!5376 = !DILocation(line: 112, column: 38, scope: !5350)
!5377 = !DILocation(line: 112, column: 46, scope: !5350)
!5378 = !DILocation(line: 112, column: 11, scope: !5350)
!5379 = !DILocation(line: 112, column: 9, scope: !5350)
!5380 = !DILocation(line: 113, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 113, column: 6)
!5382 = !DILocation(line: 113, column: 6, scope: !5350)
!5383 = !DILocation(line: 114, column: 3, scope: !5381)
!5384 = !DILocation(line: 116, column: 25, scope: !5350)
!5385 = !DILocation(line: 116, column: 33, scope: !5350)
!5386 = !DILocation(line: 116, column: 2, scope: !5350)
!5387 = !DILocation(line: 118, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 118, column: 6)
!5389 = !DILocation(line: 118, column: 14, scope: !5388)
!5390 = !DILocation(line: 118, column: 21, scope: !5388)
!5391 = !DILocation(line: 118, column: 32, scope: !5388)
!5392 = !DILocation(line: 118, column: 36, scope: !5388)
!5393 = !DILocation(line: 118, column: 44, scope: !5388)
!5394 = !DILocation(line: 118, column: 51, scope: !5388)
!5395 = !DILocation(line: 118, column: 6, scope: !5350)
!5396 = !DILocation(line: 122, column: 2, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 118, column: 60)
!5398 = !DILocation(line: 126, column: 2, scope: !5350)
!5399 = !DILocation(line: 127, column: 1, scope: !5350)
!5400 = distinct !DISubprogram(name: "acpi_set_device_status", scope: !148, file: !148, line: 451, type: !5225, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5401 = !DILocalVariable(name: "adev", arg: 1, scope: !5400, file: !148, line: 451, type: !4983)
!5402 = !DILocation(line: 451, column: 63, scope: !5400)
!5403 = !DILocalVariable(name: "sta", arg: 2, scope: !5400, file: !148, line: 451, type: !204)
!5404 = !DILocation(line: 451, column: 73, scope: !5400)
!5405 = !DILocation(line: 453, column: 28, scope: !5400)
!5406 = !DILocation(line: 453, column: 12, scope: !5400)
!5407 = !DILocation(line: 453, column: 18, scope: !5400)
!5408 = !DILocation(line: 453, column: 2, scope: !5400)
!5409 = !DILocation(line: 453, column: 26, scope: !5400)
!5410 = !DILocation(line: 454, column: 1, scope: !5400)
!5411 = distinct !DISubprogram(name: "acpi_bus_private_data_handler", scope: !3, file: !3, line: 130, type: !5412, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{null, !4988, !212}
!5414 = !DILocalVariable(name: "handle", arg: 1, scope: !5411, file: !3, line: 130, type: !4988)
!5415 = !DILocation(line: 130, column: 48, scope: !5411)
!5416 = !DILocalVariable(name: "context", arg: 2, scope: !5411, file: !3, line: 131, type: !212)
!5417 = !DILocation(line: 131, column: 14, scope: !5411)
!5418 = !DILocation(line: 133, column: 2, scope: !5411)
!5419 = distinct !DISubprogram(name: "acpi_bus_attach_private_data", scope: !3, file: !3, line: 137, type: !5420, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!277, !4988, !212}
!5422 = !DILocalVariable(name: "handle", arg: 1, scope: !5419, file: !3, line: 137, type: !4988)
!5423 = !DILocation(line: 137, column: 46, scope: !5419)
!5424 = !DILocalVariable(name: "data", arg: 2, scope: !5419, file: !3, line: 137, type: !212)
!5425 = !DILocation(line: 137, column: 60, scope: !5419)
!5426 = !DILocalVariable(name: "status", scope: !5419, file: !3, line: 139, type: !202)
!5427 = !DILocation(line: 139, column: 14, scope: !5419)
!5428 = !DILocation(line: 141, column: 28, scope: !5419)
!5429 = !DILocation(line: 142, column: 35, scope: !5419)
!5430 = !DILocation(line: 141, column: 11, scope: !5419)
!5431 = !DILocation(line: 141, column: 9, scope: !5419)
!5432 = !DILocation(line: 143, column: 6, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 143, column: 6)
!5434 = !DILocation(line: 143, column: 6, scope: !5419)
!5435 = !DILocation(line: 144, column: 3, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 144, column: 3)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 144, column: 3)
!5438 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 143, column: 28)
!5439 = !DILocation(line: 144, column: 3, scope: !5437)
!5440 = !DILocation(line: 145, column: 3, scope: !5438)
!5441 = !DILocation(line: 148, column: 2, scope: !5419)
!5442 = !DILocation(line: 149, column: 1, scope: !5419)
!5443 = distinct !DISubprogram(name: "acpi_bus_get_private_data", scope: !3, file: !3, line: 152, type: !5444, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!277, !4988, !897}
!5446 = !DILocalVariable(name: "handle", arg: 1, scope: !5443, file: !3, line: 152, type: !4988)
!5447 = !DILocation(line: 152, column: 43, scope: !5443)
!5448 = !DILocalVariable(name: "data", arg: 2, scope: !5443, file: !3, line: 152, type: !897)
!5449 = !DILocation(line: 152, column: 58, scope: !5443)
!5450 = !DILocalVariable(name: "status", scope: !5443, file: !3, line: 154, type: !202)
!5451 = !DILocation(line: 154, column: 14, scope: !5443)
!5452 = !DILocation(line: 156, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 156, column: 6)
!5454 = !DILocation(line: 156, column: 6, scope: !5443)
!5455 = !DILocation(line: 157, column: 3, scope: !5453)
!5456 = !DILocation(line: 159, column: 25, scope: !5443)
!5457 = !DILocation(line: 159, column: 64, scope: !5443)
!5458 = !DILocation(line: 159, column: 11, scope: !5443)
!5459 = !DILocation(line: 159, column: 9, scope: !5443)
!5460 = !DILocation(line: 160, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 160, column: 6)
!5462 = !DILocation(line: 160, column: 6, scope: !5443)
!5463 = !DILocation(line: 161, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 161, column: 3)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 161, column: 3)
!5466 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 160, column: 28)
!5467 = !DILocation(line: 161, column: 3, scope: !5465)
!5468 = !DILocation(line: 162, column: 3, scope: !5466)
!5469 = !DILocation(line: 165, column: 2, scope: !5443)
!5470 = !DILocation(line: 166, column: 1, scope: !5443)
!5471 = distinct !DISubprogram(name: "acpi_bus_detach_private_data", scope: !3, file: !3, line: 169, type: !5472, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !4988}
!5474 = !DILocalVariable(name: "handle", arg: 1, scope: !5471, file: !3, line: 169, type: !4988)
!5475 = !DILocation(line: 169, column: 47, scope: !5471)
!5476 = !DILocation(line: 171, column: 19, scope: !5471)
!5477 = !DILocation(line: 171, column: 2, scope: !5471)
!5478 = !DILocation(line: 172, column: 1, scope: !5471)
!5479 = distinct !DISubprogram(name: "acpi_run_osc", scope: !3, file: !3, line: 189, type: !5480, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!202, !4988, !5482}
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osc_context", file: !5484, line: 516, size: 384, elements: !5485)
!5484 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!5485 = !{!5486, !5487, !5488, !5493}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_str", scope: !5483, file: !5484, line: 517, baseType: !293, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5483, file: !5484, line: 518, baseType: !277, size: 32, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5483, file: !5484, line: 519, baseType: !5489, size: 128, offset: 128)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !203, line: 969, size: 128, elements: !5490)
!5490 = !{!5491, !5492}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5489, file: !203, line: 970, baseType: !208, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5489, file: !203, line: 971, baseType: !212, size: 64, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !5483, file: !5484, line: 520, baseType: !5489, size: 128, offset: 256)
!5494 = !DILocalVariable(name: "handle", arg: 1, scope: !5479, file: !3, line: 189, type: !4988)
!5495 = !DILocation(line: 189, column: 38, scope: !5479)
!5496 = !DILocalVariable(name: "context", arg: 2, scope: !5479, file: !3, line: 189, type: !5482)
!5497 = !DILocation(line: 189, column: 71, scope: !5479)
!5498 = !DILocalVariable(name: "status", scope: !5479, file: !3, line: 191, type: !202)
!5499 = !DILocation(line: 191, column: 14, scope: !5479)
!5500 = !DILocalVariable(name: "input", scope: !5479, file: !3, line: 192, type: !5501)
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !203, line: 947, size: 128, elements: !5502)
!5502 = !{!5503, !5504}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5501, file: !203, line: 948, baseType: !204, size: 32)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5501, file: !203, line: 949, baseType: !5046, size: 64, offset: 64)
!5505 = !DILocation(line: 192, column: 26, scope: !5479)
!5506 = !DILocalVariable(name: "in_params", scope: !5479, file: !3, line: 193, type: !5507)
!5507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5047, size: 768, elements: !1320)
!5508 = !DILocation(line: 193, column: 20, scope: !5479)
!5509 = !DILocalVariable(name: "out_obj", scope: !5479, file: !3, line: 194, type: !5046)
!5510 = !DILocation(line: 194, column: 21, scope: !5479)
!5511 = !DILocalVariable(name: "guid", scope: !5479, file: !3, line: 195, type: !5512)
!5512 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !5513, line: 25, baseType: !5514)
!5513 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5513, line: 23, size: 128, elements: !5515)
!5515 = !{!5516}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5514, file: !5513, line: 24, baseType: !3806, size: 128)
!5517 = !DILocation(line: 195, column: 9, scope: !5479)
!5518 = !DILocalVariable(name: "errors", scope: !5479, file: !3, line: 196, type: !204)
!5519 = !DILocation(line: 196, column: 6, scope: !5479)
!5520 = !DILocalVariable(name: "output", scope: !5479, file: !3, line: 197, type: !5489)
!5521 = !DILocation(line: 197, column: 21, scope: !5479)
!5522 = !DILocation(line: 199, column: 7, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 199, column: 6)
!5524 = !DILocation(line: 199, column: 6, scope: !5479)
!5525 = !DILocation(line: 200, column: 3, scope: !5523)
!5526 = !DILocation(line: 201, column: 17, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 201, column: 6)
!5528 = !DILocation(line: 201, column: 26, scope: !5527)
!5529 = !DILocation(line: 201, column: 6, scope: !5527)
!5530 = !DILocation(line: 201, column: 6, scope: !5479)
!5531 = !DILocation(line: 202, column: 3, scope: !5527)
!5532 = !DILocation(line: 203, column: 2, scope: !5479)
!5533 = !DILocation(line: 203, column: 11, scope: !5479)
!5534 = !DILocation(line: 203, column: 15, scope: !5479)
!5535 = !DILocation(line: 203, column: 22, scope: !5479)
!5536 = !DILocation(line: 204, column: 2, scope: !5479)
!5537 = !DILocation(line: 204, column: 11, scope: !5479)
!5538 = !DILocation(line: 204, column: 15, scope: !5479)
!5539 = !DILocation(line: 204, column: 23, scope: !5479)
!5540 = !DILocation(line: 207, column: 8, scope: !5479)
!5541 = !DILocation(line: 207, column: 14, scope: !5479)
!5542 = !DILocation(line: 208, column: 18, scope: !5479)
!5543 = !DILocation(line: 208, column: 8, scope: !5479)
!5544 = !DILocation(line: 208, column: 16, scope: !5479)
!5545 = !DILocation(line: 209, column: 2, scope: !5479)
!5546 = !DILocation(line: 209, column: 15, scope: !5479)
!5547 = !DILocation(line: 209, column: 22, scope: !5479)
!5548 = !DILocation(line: 210, column: 2, scope: !5479)
!5549 = !DILocation(line: 210, column: 15, scope: !5479)
!5550 = !DILocation(line: 210, column: 22, scope: !5479)
!5551 = !DILocation(line: 210, column: 30, scope: !5479)
!5552 = !DILocation(line: 211, column: 32, scope: !5479)
!5553 = !DILocation(line: 211, column: 2, scope: !5479)
!5554 = !DILocation(line: 211, column: 15, scope: !5479)
!5555 = !DILocation(line: 211, column: 22, scope: !5479)
!5556 = !DILocation(line: 211, column: 30, scope: !5479)
!5557 = !DILocation(line: 212, column: 2, scope: !5479)
!5558 = !DILocation(line: 212, column: 15, scope: !5479)
!5559 = !DILocation(line: 212, column: 22, scope: !5479)
!5560 = !DILocation(line: 213, column: 32, scope: !5479)
!5561 = !DILocation(line: 213, column: 41, scope: !5479)
!5562 = !DILocation(line: 213, column: 2, scope: !5479)
!5563 = !DILocation(line: 213, column: 15, scope: !5479)
!5564 = !DILocation(line: 213, column: 23, scope: !5479)
!5565 = !DILocation(line: 213, column: 30, scope: !5479)
!5566 = !DILocation(line: 214, column: 2, scope: !5479)
!5567 = !DILocation(line: 214, column: 15, scope: !5479)
!5568 = !DILocation(line: 214, column: 22, scope: !5479)
!5569 = !DILocation(line: 215, column: 31, scope: !5479)
!5570 = !DILocation(line: 215, column: 40, scope: !5479)
!5571 = !DILocation(line: 215, column: 44, scope: !5479)
!5572 = !DILocation(line: 215, column: 50, scope: !5479)
!5573 = !DILocation(line: 215, column: 2, scope: !5479)
!5574 = !DILocation(line: 215, column: 15, scope: !5479)
!5575 = !DILocation(line: 215, column: 23, scope: !5479)
!5576 = !DILocation(line: 215, column: 29, scope: !5479)
!5577 = !DILocation(line: 216, column: 2, scope: !5479)
!5578 = !DILocation(line: 216, column: 15, scope: !5479)
!5579 = !DILocation(line: 216, column: 21, scope: !5479)
!5580 = !DILocation(line: 217, column: 32, scope: !5479)
!5581 = !DILocation(line: 217, column: 41, scope: !5479)
!5582 = !DILocation(line: 217, column: 45, scope: !5479)
!5583 = !DILocation(line: 217, column: 2, scope: !5479)
!5584 = !DILocation(line: 217, column: 15, scope: !5479)
!5585 = !DILocation(line: 217, column: 22, scope: !5479)
!5586 = !DILocation(line: 217, column: 30, scope: !5479)
!5587 = !DILocation(line: 218, column: 33, scope: !5479)
!5588 = !DILocation(line: 218, column: 42, scope: !5479)
!5589 = !DILocation(line: 218, column: 46, scope: !5479)
!5590 = !DILocation(line: 218, column: 2, scope: !5479)
!5591 = !DILocation(line: 218, column: 15, scope: !5479)
!5592 = !DILocation(line: 218, column: 22, scope: !5479)
!5593 = !DILocation(line: 218, column: 31, scope: !5479)
!5594 = !DILocation(line: 220, column: 32, scope: !5479)
!5595 = !DILocation(line: 220, column: 11, scope: !5479)
!5596 = !DILocation(line: 220, column: 9, scope: !5479)
!5597 = !DILocation(line: 221, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 221, column: 6)
!5599 = !DILocation(line: 221, column: 6, scope: !5479)
!5600 = !DILocation(line: 222, column: 10, scope: !5598)
!5601 = !DILocation(line: 222, column: 3, scope: !5598)
!5602 = !DILocation(line: 224, column: 14, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 224, column: 6)
!5604 = !DILocation(line: 224, column: 7, scope: !5603)
!5605 = !DILocation(line: 224, column: 6, scope: !5479)
!5606 = !DILocation(line: 225, column: 3, scope: !5603)
!5607 = !DILocation(line: 227, column: 19, scope: !5479)
!5608 = !DILocation(line: 227, column: 12, scope: !5479)
!5609 = !DILocation(line: 227, column: 10, scope: !5479)
!5610 = !DILocation(line: 228, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 228, column: 6)
!5612 = !DILocation(line: 228, column: 15, scope: !5611)
!5613 = !DILocation(line: 228, column: 20, scope: !5611)
!5614 = !DILocation(line: 229, column: 3, scope: !5611)
!5615 = !DILocation(line: 229, column: 6, scope: !5611)
!5616 = !DILocation(line: 229, column: 15, scope: !5611)
!5617 = !DILocation(line: 229, column: 22, scope: !5611)
!5618 = !DILocation(line: 229, column: 32, scope: !5611)
!5619 = !DILocation(line: 229, column: 41, scope: !5611)
!5620 = !DILocation(line: 229, column: 45, scope: !5611)
!5621 = !DILocation(line: 229, column: 29, scope: !5611)
!5622 = !DILocation(line: 228, column: 6, scope: !5479)
!5623 = !DILocation(line: 230, column: 24, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 229, column: 53)
!5625 = !DILocation(line: 230, column: 32, scope: !5624)
!5626 = !DILocation(line: 230, column: 3, scope: !5624)
!5627 = !DILocation(line: 232, column: 10, scope: !5624)
!5628 = !DILocation(line: 233, column: 3, scope: !5624)
!5629 = !DILocation(line: 236, column: 20, scope: !5479)
!5630 = !DILocation(line: 236, column: 29, scope: !5479)
!5631 = !DILocation(line: 236, column: 36, scope: !5479)
!5632 = !DILocation(line: 236, column: 11, scope: !5479)
!5633 = !DILocation(line: 236, column: 45, scope: !5479)
!5634 = !DILocation(line: 236, column: 9, scope: !5479)
!5635 = !DILocation(line: 237, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 237, column: 6)
!5637 = !DILocation(line: 237, column: 6, scope: !5479)
!5638 = !DILocation(line: 238, column: 7, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 238, column: 7)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 237, column: 14)
!5641 = !DILocation(line: 238, column: 14, scope: !5639)
!5642 = !DILocation(line: 238, column: 7, scope: !5640)
!5643 = !DILocation(line: 239, column: 25, scope: !5639)
!5644 = !DILocation(line: 239, column: 33, scope: !5639)
!5645 = !DILocation(line: 239, column: 4, scope: !5639)
!5646 = !DILocation(line: 241, column: 7, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 241, column: 7)
!5648 = !DILocation(line: 241, column: 14, scope: !5647)
!5649 = !DILocation(line: 241, column: 7, scope: !5640)
!5650 = !DILocation(line: 242, column: 25, scope: !5647)
!5651 = !DILocation(line: 242, column: 33, scope: !5647)
!5652 = !DILocation(line: 242, column: 4, scope: !5647)
!5653 = !DILocation(line: 244, column: 7, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 244, column: 7)
!5655 = !DILocation(line: 244, column: 14, scope: !5654)
!5656 = !DILocation(line: 244, column: 7, scope: !5640)
!5657 = !DILocation(line: 245, column: 25, scope: !5654)
!5658 = !DILocation(line: 245, column: 33, scope: !5654)
!5659 = !DILocation(line: 245, column: 4, scope: !5654)
!5660 = !DILocation(line: 247, column: 7, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 247, column: 7)
!5662 = !DILocation(line: 247, column: 14, scope: !5661)
!5663 = !DILocation(line: 247, column: 7, scope: !5640)
!5664 = !DILocation(line: 248, column: 16, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 248, column: 8)
!5666 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 247, column: 45)
!5667 = !DILocation(line: 248, column: 25, scope: !5665)
!5668 = !DILocation(line: 248, column: 29, scope: !5665)
!5669 = !DILocation(line: 248, column: 9, scope: !5665)
!5670 = !DILocation(line: 248, column: 8, scope: !5665)
!5671 = !DILocation(line: 249, column: 8, scope: !5665)
!5672 = !DILocation(line: 248, column: 8, scope: !5666)
!5673 = !DILocation(line: 250, column: 5, scope: !5665)
!5674 = !DILocation(line: 251, column: 11, scope: !5666)
!5675 = !DILocation(line: 252, column: 4, scope: !5666)
!5676 = !DILocation(line: 254, column: 10, scope: !5640)
!5677 = !DILocation(line: 255, column: 3, scope: !5640)
!5678 = !DILabel(scope: !5479, name: "out_success", file: !3, line: 257)
!5679 = !DILocation(line: 257, column: 1, scope: !5479)
!5680 = !DILocation(line: 258, column: 24, scope: !5479)
!5681 = !DILocation(line: 258, column: 33, scope: !5479)
!5682 = !DILocation(line: 258, column: 40, scope: !5479)
!5683 = !DILocation(line: 258, column: 2, scope: !5479)
!5684 = !DILocation(line: 258, column: 11, scope: !5479)
!5685 = !DILocation(line: 258, column: 15, scope: !5479)
!5686 = !DILocation(line: 258, column: 22, scope: !5479)
!5687 = !DILocation(line: 259, column: 33, scope: !5479)
!5688 = !DILocation(line: 259, column: 42, scope: !5479)
!5689 = !DILocation(line: 259, column: 49, scope: !5479)
!5690 = !DILocation(line: 260, column: 12, scope: !5479)
!5691 = !DILocation(line: 260, column: 21, scope: !5479)
!5692 = !DILocation(line: 260, column: 25, scope: !5479)
!5693 = !DILocation(line: 259, column: 25, scope: !5479)
!5694 = !DILocation(line: 259, column: 2, scope: !5479)
!5695 = !DILocation(line: 259, column: 11, scope: !5479)
!5696 = !DILocation(line: 259, column: 15, scope: !5479)
!5697 = !DILocation(line: 259, column: 23, scope: !5479)
!5698 = !DILocation(line: 261, column: 7, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 261, column: 6)
!5700 = !DILocation(line: 261, column: 16, scope: !5699)
!5701 = !DILocation(line: 261, column: 20, scope: !5699)
!5702 = !DILocation(line: 261, column: 6, scope: !5479)
!5703 = !DILocation(line: 262, column: 10, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 261, column: 29)
!5705 = !DILocation(line: 263, column: 3, scope: !5704)
!5706 = !DILocation(line: 265, column: 9, scope: !5479)
!5707 = !DILocation(line: 265, column: 2, scope: !5479)
!5708 = !DILabel(scope: !5479, name: "out_kfree", file: !3, line: 267)
!5709 = !DILocation(line: 267, column: 1, scope: !5479)
!5710 = !DILocation(line: 268, column: 15, scope: !5479)
!5711 = !DILocation(line: 268, column: 2, scope: !5479)
!5712 = !DILocation(line: 269, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 269, column: 6)
!5714 = !DILocation(line: 269, column: 13, scope: !5713)
!5715 = !DILocation(line: 269, column: 6, scope: !5479)
!5716 = !DILocation(line: 270, column: 3, scope: !5713)
!5717 = !DILocation(line: 270, column: 12, scope: !5713)
!5718 = !DILocation(line: 270, column: 16, scope: !5713)
!5719 = !DILocation(line: 270, column: 24, scope: !5713)
!5720 = !DILocation(line: 271, column: 9, scope: !5479)
!5721 = !DILocation(line: 271, column: 2, scope: !5479)
!5722 = !DILocation(line: 272, column: 1, scope: !5479)
!5723 = distinct !DISubprogram(name: "acpi_print_osc_error", scope: !3, file: !3, line: 175, type: !5724, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{null, !4988, !5482, !293}
!5726 = !DILocalVariable(name: "handle", arg: 1, scope: !5723, file: !3, line: 175, type: !4988)
!5727 = !DILocation(line: 175, column: 46, scope: !5723)
!5728 = !DILocalVariable(name: "context", arg: 2, scope: !5723, file: !3, line: 176, type: !5482)
!5729 = !DILocation(line: 176, column: 31, scope: !5723)
!5730 = !DILocalVariable(name: "error", arg: 3, scope: !5723, file: !3, line: 176, type: !293)
!5731 = !DILocation(line: 176, column: 46, scope: !5723)
!5732 = !DILocalVariable(name: "i", scope: !5723, file: !3, line: 178, type: !277)
!5733 = !DILocation(line: 178, column: 6, scope: !5723)
!5734 = !DILocation(line: 180, column: 2, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 180, column: 2)
!5736 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 180, column: 2)
!5737 = !DILocation(line: 180, column: 2, scope: !5736)
!5738 = !DILocation(line: 182, column: 2, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 182, column: 2)
!5740 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 182, column: 2)
!5741 = !DILocation(line: 182, column: 2, scope: !5740)
!5742 = !DILocation(line: 183, column: 9, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 183, column: 2)
!5744 = !DILocation(line: 183, column: 7, scope: !5743)
!5745 = !DILocation(line: 183, column: 14, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 183, column: 2)
!5747 = !DILocation(line: 183, column: 18, scope: !5746)
!5748 = !DILocation(line: 183, column: 27, scope: !5746)
!5749 = !DILocation(line: 183, column: 31, scope: !5746)
!5750 = !DILocation(line: 183, column: 16, scope: !5746)
!5751 = !DILocation(line: 183, column: 2, scope: !5743)
!5752 = !DILocation(line: 184, column: 3, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 184, column: 3)
!5754 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 184, column: 3)
!5755 = !DILocation(line: 184, column: 3, scope: !5754)
!5756 = !DILocation(line: 184, column: 3, scope: !5746)
!5757 = !DILocation(line: 183, column: 41, scope: !5746)
!5758 = !DILocation(line: 183, column: 2, scope: !5746)
!5759 = distinct !{!5759, !5751, !5760}
!5760 = !DILocation(line: 184, column: 3, scope: !5743)
!5761 = !DILocation(line: 186, column: 2, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 186, column: 2)
!5763 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 186, column: 2)
!5764 = !DILocation(line: 186, column: 2, scope: !5763)
!5765 = !DILocation(line: 187, column: 1, scope: !5723)
!5766 = distinct !DISubprogram(name: "acpi_get_first_physical_node", scope: !3, file: !3, line: 539, type: !5767, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!231, !4983}
!5769 = !DILocalVariable(name: "adev", arg: 1, scope: !5766, file: !3, line: 539, type: !4983)
!5770 = !DILocation(line: 539, column: 65, scope: !5766)
!5771 = !DILocalVariable(name: "physical_node_lock", scope: !5766, file: !3, line: 541, type: !5772)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!5773 = !DILocation(line: 541, column: 16, scope: !5766)
!5774 = !DILocation(line: 541, column: 38, scope: !5766)
!5775 = !DILocation(line: 541, column: 44, scope: !5766)
!5776 = !DILocalVariable(name: "phys_dev", scope: !5766, file: !3, line: 542, type: !231)
!5777 = !DILocation(line: 542, column: 17, scope: !5766)
!5778 = !DILocation(line: 544, column: 13, scope: !5766)
!5779 = !DILocation(line: 544, column: 2, scope: !5766)
!5780 = !DILocation(line: 545, column: 18, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 545, column: 6)
!5782 = !DILocation(line: 545, column: 24, scope: !5781)
!5783 = !DILocation(line: 545, column: 6, scope: !5781)
!5784 = !DILocation(line: 545, column: 6, scope: !5766)
!5785 = !DILocation(line: 546, column: 12, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 545, column: 45)
!5787 = !DILocation(line: 547, column: 2, scope: !5786)
!5788 = !DILocalVariable(name: "node", scope: !5789, file: !3, line: 548, type: !5790)
!5789 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 547, column: 9)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!5792 = !DILocation(line: 548, column: 43, scope: !5789)
!5793 = !DILocalVariable(name: "__mptr", scope: !5794, file: !3, line: 550, type: !212)
!5794 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 550, column: 10)
!5795 = !DILocation(line: 550, column: 10, scope: !5794)
!5796 = !DILocation(line: 550, column: 10, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 550, column: 10)
!5798 = !DILocation(line: 550, column: 8, scope: !5789)
!5799 = !DILocation(line: 553, column: 14, scope: !5789)
!5800 = !DILocation(line: 553, column: 20, scope: !5789)
!5801 = !DILocation(line: 553, column: 12, scope: !5789)
!5802 = !DILocation(line: 555, column: 15, scope: !5766)
!5803 = !DILocation(line: 555, column: 2, scope: !5766)
!5804 = !DILocation(line: 556, column: 9, scope: !5766)
!5805 = !DILocation(line: 556, column: 2, scope: !5766)
!5806 = distinct !DISubprogram(name: "list_empty", scope: !5807, file: !5807, line: 280, type: !5808, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5807 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!277, !5810}
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!5812 = !DILocalVariable(name: "head", arg: 1, scope: !5806, file: !5807, line: 280, type: !5810)
!5813 = !DILocation(line: 280, column: 54, scope: !5806)
!5814 = !DILocation(line: 282, column: 9, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5806, file: !5807, line: 282, column: 9)
!5816 = !DILocation(line: 282, column: 9, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5815, file: !5807, line: 282, column: 9)
!5818 = !DILocation(line: 282, column: 34, scope: !5806)
!5819 = !DILocation(line: 282, column: 31, scope: !5806)
!5820 = !DILocation(line: 282, column: 2, scope: !5806)
!5821 = distinct !DISubprogram(name: "acpi_device_is_first_physical_node", scope: !3, file: !3, line: 579, type: !5822, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!500, !4983, !4766}
!5824 = !DILocalVariable(name: "adev", arg: 1, scope: !5821, file: !3, line: 579, type: !4983)
!5825 = !DILocation(line: 579, column: 61, scope: !5821)
!5826 = !DILocalVariable(name: "dev", arg: 2, scope: !5821, file: !3, line: 580, type: !4766)
!5827 = !DILocation(line: 580, column: 27, scope: !5821)
!5828 = !DILocation(line: 582, column: 38, scope: !5821)
!5829 = !DILocation(line: 582, column: 44, scope: !5821)
!5830 = !DILocation(line: 582, column: 11, scope: !5821)
!5831 = !DILocation(line: 582, column: 10, scope: !5821)
!5832 = !DILocation(line: 582, column: 9, scope: !5821)
!5833 = !DILocation(line: 582, column: 2, scope: !5821)
!5834 = distinct !DISubprogram(name: "acpi_primary_dev_companion", scope: !3, file: !3, line: 560, type: !5835, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!4983, !4983, !4766}
!5837 = !DILocalVariable(name: "adev", arg: 1, scope: !5834, file: !3, line: 560, type: !4983)
!5838 = !DILocation(line: 560, column: 75, scope: !5834)
!5839 = !DILocalVariable(name: "dev", arg: 2, scope: !5834, file: !3, line: 561, type: !4766)
!5840 = !DILocation(line: 561, column: 34, scope: !5834)
!5841 = !DILocalVariable(name: "phys_dev", scope: !5834, file: !3, line: 563, type: !4766)
!5842 = !DILocation(line: 563, column: 23, scope: !5834)
!5843 = !DILocation(line: 563, column: 63, scope: !5834)
!5844 = !DILocation(line: 563, column: 34, scope: !5834)
!5845 = !DILocation(line: 565, column: 9, scope: !5834)
!5846 = !DILocation(line: 565, column: 18, scope: !5834)
!5847 = !DILocation(line: 565, column: 21, scope: !5834)
!5848 = !DILocation(line: 565, column: 33, scope: !5834)
!5849 = !DILocation(line: 565, column: 30, scope: !5834)
!5850 = !DILocation(line: 565, column: 39, scope: !5834)
!5851 = !DILocation(line: 565, column: 2, scope: !5834)
!5852 = distinct !DISubprogram(name: "acpi_companion_match", scope: !3, file: !3, line: 606, type: !5853, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!4983, !4766}
!5855 = !DILocalVariable(name: "dev", arg: 1, scope: !5852, file: !3, line: 606, type: !4766)
!5856 = !DILocation(line: 606, column: 63, scope: !5852)
!5857 = !DILocalVariable(name: "adev", scope: !5852, file: !3, line: 608, type: !4983)
!5858 = !DILocation(line: 608, column: 22, scope: !5852)
!5859 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5860, file: !3, line: 610, type: !5861)
!5860 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 610, column: 9)
!5861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4742)
!5862 = !DILocation(line: 610, column: 9, scope: !5860)
!5863 = !DILocalVariable(name: "__mptr", scope: !5864, file: !3, line: 610, type: !212)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 610, column: 9)
!5865 = !DILocation(line: 610, column: 9, scope: !5864)
!5866 = !DILocation(line: 610, column: 9, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 610, column: 9)
!5868 = !DILocation(line: 610, column: 7, scope: !5852)
!5869 = !DILocation(line: 611, column: 7, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 611, column: 6)
!5871 = !DILocation(line: 611, column: 6, scope: !5852)
!5872 = !DILocation(line: 612, column: 3, scope: !5870)
!5873 = !DILocation(line: 614, column: 18, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 614, column: 6)
!5875 = !DILocation(line: 614, column: 24, scope: !5874)
!5876 = !DILocation(line: 614, column: 28, scope: !5874)
!5877 = !DILocation(line: 614, column: 6, scope: !5874)
!5878 = !DILocation(line: 614, column: 6, scope: !5852)
!5879 = !DILocation(line: 615, column: 3, scope: !5874)
!5880 = !DILocation(line: 617, column: 36, scope: !5852)
!5881 = !DILocation(line: 617, column: 42, scope: !5852)
!5882 = !DILocation(line: 617, column: 9, scope: !5852)
!5883 = !DILocation(line: 617, column: 2, scope: !5852)
!5884 = !DILocation(line: 618, column: 1, scope: !5852)
!5885 = distinct !DISubprogram(name: "acpi_set_modalias", scope: !3, file: !3, line: 700, type: !5886, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{null, !4983, !239, !293, !339}
!5888 = !DILocalVariable(name: "adev", arg: 1, scope: !5885, file: !3, line: 700, type: !4983)
!5889 = !DILocation(line: 700, column: 44, scope: !5885)
!5890 = !DILocalVariable(name: "default_id", arg: 2, scope: !5885, file: !3, line: 700, type: !239)
!5891 = !DILocation(line: 700, column: 62, scope: !5885)
!5892 = !DILocalVariable(name: "modalias", arg: 3, scope: !5885, file: !3, line: 701, type: !293)
!5893 = !DILocation(line: 701, column: 16, scope: !5885)
!5894 = !DILocalVariable(name: "len", arg: 4, scope: !5885, file: !3, line: 701, type: !339)
!5895 = !DILocation(line: 701, column: 33, scope: !5885)
!5896 = !DILocation(line: 703, column: 24, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 703, column: 6)
!5898 = !DILocation(line: 703, column: 30, scope: !5897)
!5899 = !DILocation(line: 703, column: 40, scope: !5897)
!5900 = !DILocation(line: 703, column: 7, scope: !5897)
!5901 = !DILocation(line: 703, column: 6, scope: !5885)
!5902 = !DILocation(line: 704, column: 11, scope: !5897)
!5903 = !DILocation(line: 704, column: 21, scope: !5897)
!5904 = !DILocation(line: 704, column: 33, scope: !5897)
!5905 = !DILocation(line: 704, column: 3, scope: !5897)
!5906 = !DILocation(line: 705, column: 1, scope: !5885)
!5907 = distinct !DISubprogram(name: "acpi_of_modalias", scope: !3, file: !3, line: 666, type: !5908, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!500, !4983, !293, !339}
!5910 = !DILocalVariable(name: "adev", arg: 1, scope: !5907, file: !3, line: 666, type: !4983)
!5911 = !DILocation(line: 666, column: 50, scope: !5907)
!5912 = !DILocalVariable(name: "modalias", arg: 2, scope: !5907, file: !3, line: 667, type: !293)
!5913 = !DILocation(line: 667, column: 15, scope: !5907)
!5914 = !DILocalVariable(name: "len", arg: 3, scope: !5907, file: !3, line: 667, type: !339)
!5915 = !DILocation(line: 667, column: 32, scope: !5907)
!5916 = !DILocalVariable(name: "of_compatible", scope: !5907, file: !3, line: 669, type: !5177)
!5917 = !DILocation(line: 669, column: 27, scope: !5907)
!5918 = !DILocalVariable(name: "obj", scope: !5907, file: !3, line: 670, type: !5177)
!5919 = !DILocation(line: 670, column: 27, scope: !5907)
!5920 = !DILocalVariable(name: "str", scope: !5907, file: !3, line: 671, type: !239)
!5921 = !DILocation(line: 671, column: 14, scope: !5907)
!5922 = !DILocalVariable(name: "chr", scope: !5907, file: !3, line: 671, type: !239)
!5923 = !DILocation(line: 671, column: 20, scope: !5907)
!5924 = !DILocation(line: 673, column: 18, scope: !5907)
!5925 = !DILocation(line: 673, column: 24, scope: !5907)
!5926 = !DILocation(line: 673, column: 29, scope: !5907)
!5927 = !DILocation(line: 673, column: 16, scope: !5907)
!5928 = !DILocation(line: 674, column: 7, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 674, column: 6)
!5930 = !DILocation(line: 674, column: 6, scope: !5907)
!5931 = !DILocation(line: 675, column: 3, scope: !5929)
!5932 = !DILocation(line: 677, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 677, column: 6)
!5934 = !DILocation(line: 677, column: 21, scope: !5933)
!5935 = !DILocation(line: 677, column: 26, scope: !5933)
!5936 = !DILocation(line: 677, column: 6, scope: !5907)
!5937 = !DILocation(line: 678, column: 9, scope: !5933)
!5938 = !DILocation(line: 678, column: 24, scope: !5933)
!5939 = !DILocation(line: 678, column: 32, scope: !5933)
!5940 = !DILocation(line: 678, column: 7, scope: !5933)
!5941 = !DILocation(line: 678, column: 3, scope: !5933)
!5942 = !DILocation(line: 680, column: 9, scope: !5933)
!5943 = !DILocation(line: 680, column: 7, scope: !5933)
!5944 = !DILocation(line: 682, column: 8, scope: !5907)
!5945 = !DILocation(line: 682, column: 13, scope: !5907)
!5946 = !DILocation(line: 682, column: 20, scope: !5907)
!5947 = !DILocation(line: 682, column: 6, scope: !5907)
!5948 = !DILocation(line: 683, column: 15, scope: !5907)
!5949 = !DILocation(line: 683, column: 8, scope: !5907)
!5950 = !DILocation(line: 683, column: 6, scope: !5907)
!5951 = !DILocation(line: 684, column: 10, scope: !5907)
!5952 = !DILocation(line: 684, column: 20, scope: !5907)
!5953 = !DILocation(line: 684, column: 26, scope: !5907)
!5954 = !DILocation(line: 684, column: 30, scope: !5907)
!5955 = !DILocation(line: 684, column: 36, scope: !5907)
!5956 = !DILocation(line: 684, column: 41, scope: !5907)
!5957 = !DILocation(line: 684, column: 2, scope: !5907)
!5958 = !DILocation(line: 686, column: 2, scope: !5907)
!5959 = !DILocation(line: 687, column: 1, scope: !5907)
!5960 = distinct !DISubprogram(name: "acpi_match_device", scope: !3, file: !3, line: 784, type: !5961, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!4541, !4541, !4766}
!5963 = !DILocalVariable(name: "ids", arg: 1, scope: !5960, file: !3, line: 784, type: !4541)
!5964 = !DILocation(line: 784, column: 77, scope: !5960)
!5965 = !DILocalVariable(name: "dev", arg: 2, scope: !5960, file: !3, line: 785, type: !4766)
!5966 = !DILocation(line: 785, column: 34, scope: !5960)
!5967 = !DILocalVariable(name: "id", scope: !5960, file: !3, line: 787, type: !4541)
!5968 = !DILocation(line: 787, column: 31, scope: !5960)
!5969 = !DILocation(line: 789, column: 43, scope: !5960)
!5970 = !DILocation(line: 789, column: 22, scope: !5960)
!5971 = !DILocation(line: 789, column: 49, scope: !5960)
!5972 = !DILocation(line: 789, column: 2, scope: !5960)
!5973 = !DILocation(line: 790, column: 9, scope: !5960)
!5974 = !DILocation(line: 790, column: 2, scope: !5960)
!5975 = distinct !DISubprogram(name: "__acpi_match_device", scope: !3, file: !3, line: 731, type: !5976, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!500, !4983, !4541, !4528, !5192, !5978}
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!5979 = !DILocalVariable(name: "device", arg: 1, scope: !5975, file: !3, line: 731, type: !4983)
!5980 = !DILocation(line: 731, column: 53, scope: !5975)
!5981 = !DILocalVariable(name: "acpi_ids", arg: 2, scope: !5975, file: !3, line: 732, type: !4541)
!5982 = !DILocation(line: 732, column: 34, scope: !5975)
!5983 = !DILocalVariable(name: "of_ids", arg: 3, scope: !5975, file: !3, line: 733, type: !4528)
!5984 = !DILocation(line: 733, column: 32, scope: !5975)
!5985 = !DILocalVariable(name: "acpi_id", arg: 4, scope: !5975, file: !3, line: 734, type: !5192)
!5986 = !DILocation(line: 734, column: 35, scope: !5975)
!5987 = !DILocalVariable(name: "of_id", arg: 5, scope: !5975, file: !3, line: 735, type: !5978)
!5988 = !DILocation(line: 735, column: 33, scope: !5975)
!5989 = !DILocalVariable(name: "id", scope: !5975, file: !3, line: 737, type: !4541)
!5990 = !DILocation(line: 737, column: 31, scope: !5975)
!5991 = !DILocalVariable(name: "hwid", scope: !5975, file: !3, line: 738, type: !5264)
!5992 = !DILocation(line: 738, column: 27, scope: !5975)
!5993 = !DILocation(line: 744, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 744, column: 6)
!5995 = !DILocation(line: 744, column: 14, scope: !5994)
!5996 = !DILocation(line: 744, column: 18, scope: !5994)
!5997 = !DILocation(line: 744, column: 26, scope: !5994)
!5998 = !DILocation(line: 744, column: 33, scope: !5994)
!5999 = !DILocation(line: 744, column: 6, scope: !5975)
!6000 = !DILocation(line: 745, column: 3, scope: !5994)
!6001 = !DILocalVariable(name: "__mptr", scope: !6002, file: !3, line: 747, type: !212)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 747, column: 2)
!6003 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 747, column: 2)
!6004 = !DILocation(line: 747, column: 2, scope: !6002)
!6005 = !DILocation(line: 747, column: 2, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 747, column: 2)
!6007 = !DILocation(line: 747, column: 2, scope: !6003)
!6008 = !DILocation(line: 747, column: 2, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 747, column: 2)
!6010 = !DILocation(line: 749, column: 7, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 749, column: 7)
!6012 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 747, column: 52)
!6013 = !DILocation(line: 749, column: 7, scope: !6012)
!6014 = !DILocation(line: 750, column: 14, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 750, column: 4)
!6016 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 749, column: 17)
!6017 = !DILocation(line: 750, column: 12, scope: !6015)
!6018 = !DILocation(line: 750, column: 9, scope: !6015)
!6019 = !DILocation(line: 750, column: 24, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 750, column: 4)
!6021 = !DILocation(line: 750, column: 28, scope: !6020)
!6022 = !DILocation(line: 750, column: 34, scope: !6020)
!6023 = !DILocation(line: 750, column: 37, scope: !6020)
!6024 = !DILocation(line: 750, column: 41, scope: !6020)
!6025 = !DILocation(line: 750, column: 4, scope: !6015)
!6026 = !DILocation(line: 751, column: 9, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 751, column: 9)
!6028 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 750, column: 52)
!6029 = !DILocation(line: 751, column: 13, scope: !6027)
!6030 = !DILocation(line: 751, column: 19, scope: !6027)
!6031 = !DILocation(line: 751, column: 38, scope: !6027)
!6032 = !DILocation(line: 751, column: 42, scope: !6027)
!6033 = !DILocation(line: 751, column: 46, scope: !6027)
!6034 = !DILocation(line: 751, column: 52, scope: !6027)
!6035 = !DILocation(line: 751, column: 23, scope: !6027)
!6036 = !DILocation(line: 751, column: 9, scope: !6028)
!6037 = !DILocation(line: 752, column: 6, scope: !6027)
!6038 = !DILocation(line: 753, column: 9, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 753, column: 9)
!6040 = !DILocation(line: 753, column: 13, scope: !6039)
!6041 = !DILocation(line: 753, column: 17, scope: !6039)
!6042 = !DILocation(line: 753, column: 44, scope: !6039)
!6043 = !DILocation(line: 753, column: 48, scope: !6039)
!6044 = !DILocation(line: 753, column: 20, scope: !6039)
!6045 = !DILocation(line: 753, column: 9, scope: !6028)
!6046 = !DILocation(line: 754, column: 6, scope: !6039)
!6047 = !DILocation(line: 755, column: 4, scope: !6028)
!6048 = !DILocation(line: 750, column: 48, scope: !6020)
!6049 = !DILocation(line: 750, column: 4, scope: !6020)
!6050 = distinct !{!6050, !6025, !6051}
!6051 = !DILocation(line: 755, column: 4, scope: !6015)
!6052 = !DILocation(line: 756, column: 3, scope: !6016)
!6053 = !DILocation(line: 762, column: 38, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 762, column: 7)
!6055 = !DILocation(line: 762, column: 44, scope: !6054)
!6056 = !DILocation(line: 762, column: 8, scope: !6054)
!6057 = !DILocation(line: 762, column: 7, scope: !6012)
!6058 = !DILocation(line: 763, column: 32, scope: !6054)
!6059 = !DILocation(line: 763, column: 40, scope: !6054)
!6060 = !DILocation(line: 763, column: 48, scope: !6054)
!6061 = !DILocation(line: 763, column: 11, scope: !6054)
!6062 = !DILocation(line: 763, column: 4, scope: !6054)
!6063 = !DILocation(line: 764, column: 2, scope: !6012)
!6064 = !DILocalVariable(name: "__mptr", scope: !6065, file: !3, line: 747, type: !212)
!6065 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 747, column: 2)
!6066 = !DILocation(line: 747, column: 2, scope: !6065)
!6067 = !DILocation(line: 747, column: 2, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 747, column: 2)
!6069 = distinct !{!6069, !6007, !6070}
!6070 = !DILocation(line: 764, column: 2, scope: !6003)
!6071 = !DILocation(line: 765, column: 2, scope: !5975)
!6072 = !DILabel(scope: !5975, name: "out_acpi_match", file: !3, line: 767)
!6073 = !DILocation(line: 767, column: 1, scope: !5975)
!6074 = !DILocation(line: 768, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 768, column: 6)
!6076 = !DILocation(line: 768, column: 6, scope: !5975)
!6077 = !DILocation(line: 769, column: 14, scope: !6075)
!6078 = !DILocation(line: 769, column: 4, scope: !6075)
!6079 = !DILocation(line: 769, column: 12, scope: !6075)
!6080 = !DILocation(line: 769, column: 3, scope: !6075)
!6081 = !DILocation(line: 770, column: 2, scope: !5975)
!6082 = !DILocation(line: 771, column: 1, scope: !5975)
!6083 = distinct !DISubprogram(name: "acpi_device_get_match_data", scope: !3, file: !3, line: 805, type: !6084, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!3254, !4766}
!6086 = !DILocalVariable(name: "dev", arg: 1, scope: !6083, file: !3, line: 805, type: !4766)
!6087 = !DILocation(line: 805, column: 61, scope: !6083)
!6088 = !DILocalVariable(name: "match", scope: !6083, file: !3, line: 807, type: !4541)
!6089 = !DILocation(line: 807, column: 31, scope: !6083)
!6090 = !DILocation(line: 809, column: 7, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 809, column: 6)
!6092 = !DILocation(line: 809, column: 12, scope: !6091)
!6093 = !DILocation(line: 809, column: 20, scope: !6091)
!6094 = !DILocation(line: 809, column: 6, scope: !6083)
!6095 = !DILocation(line: 810, column: 40, scope: !6091)
!6096 = !DILocation(line: 810, column: 10, scope: !6091)
!6097 = !DILocation(line: 810, column: 3, scope: !6091)
!6098 = !DILocation(line: 812, column: 28, scope: !6083)
!6099 = !DILocation(line: 812, column: 33, scope: !6083)
!6100 = !DILocation(line: 812, column: 41, scope: !6083)
!6101 = !DILocation(line: 812, column: 59, scope: !6083)
!6102 = !DILocation(line: 812, column: 10, scope: !6083)
!6103 = !DILocation(line: 812, column: 8, scope: !6083)
!6104 = !DILocation(line: 813, column: 7, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 813, column: 6)
!6106 = !DILocation(line: 813, column: 6, scope: !6083)
!6107 = !DILocation(line: 814, column: 3, scope: !6105)
!6108 = !DILocation(line: 816, column: 23, scope: !6083)
!6109 = !DILocation(line: 816, column: 30, scope: !6083)
!6110 = !DILocation(line: 816, column: 9, scope: !6083)
!6111 = !DILocation(line: 816, column: 2, scope: !6083)
!6112 = !DILocation(line: 817, column: 1, scope: !6083)
!6113 = distinct !DISubprogram(name: "acpi_of_device_get_match_data", scope: !3, file: !3, line: 794, type: !6084, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6114 = !DILocalVariable(name: "dev", arg: 1, scope: !6113, file: !3, line: 794, type: !4766)
!6115 = !DILocation(line: 794, column: 71, scope: !6113)
!6116 = !DILocalVariable(name: "adev", scope: !6113, file: !3, line: 796, type: !4983)
!6117 = !DILocation(line: 796, column: 22, scope: !6113)
!6118 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6119, file: !3, line: 796, type: !5861)
!6119 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 796, column: 29)
!6120 = !DILocation(line: 796, column: 29, scope: !6119)
!6121 = !DILocalVariable(name: "__mptr", scope: !6122, file: !3, line: 796, type: !212)
!6122 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 796, column: 29)
!6123 = !DILocation(line: 796, column: 29, scope: !6122)
!6124 = !DILocation(line: 796, column: 29, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 796, column: 29)
!6126 = !DILocalVariable(name: "match", scope: !6113, file: !3, line: 797, type: !4528)
!6127 = !DILocation(line: 797, column: 29, scope: !6113)
!6128 = !DILocation(line: 799, column: 28, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 799, column: 6)
!6130 = !DILocation(line: 799, column: 34, scope: !6129)
!6131 = !DILocation(line: 799, column: 39, scope: !6129)
!6132 = !DILocation(line: 799, column: 47, scope: !6129)
!6133 = !DILocation(line: 799, column: 7, scope: !6129)
!6134 = !DILocation(line: 799, column: 6, scope: !6113)
!6135 = !DILocation(line: 800, column: 3, scope: !6129)
!6136 = !DILocation(line: 802, column: 9, scope: !6113)
!6137 = !DILocation(line: 802, column: 16, scope: !6113)
!6138 = !DILocation(line: 802, column: 2, scope: !6113)
!6139 = !DILocation(line: 803, column: 1, scope: !6113)
!6140 = distinct !DISubprogram(name: "acpi_match_device_ids", scope: !3, file: !3, line: 820, type: !5195, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6141 = !DILocalVariable(name: "device", arg: 1, scope: !6140, file: !3, line: 820, type: !4983)
!6142 = !DILocation(line: 820, column: 47, scope: !6140)
!6143 = !DILocalVariable(name: "ids", arg: 2, scope: !6140, file: !3, line: 821, type: !4541)
!6144 = !DILocation(line: 821, column: 35, scope: !6140)
!6145 = !DILocation(line: 823, column: 29, scope: !6140)
!6146 = !DILocation(line: 823, column: 37, scope: !6140)
!6147 = !DILocation(line: 823, column: 9, scope: !6140)
!6148 = !DILocation(line: 823, column: 2, scope: !6140)
!6149 = distinct !DISubprogram(name: "acpi_driver_match_device", scope: !3, file: !3, line: 827, type: !6150, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!500, !231, !6152}
!6152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6153, size: 64)
!6153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!6154 = !DILocalVariable(name: "dev", arg: 1, scope: !6149, file: !3, line: 827, type: !231)
!6155 = !DILocation(line: 827, column: 46, scope: !6149)
!6156 = !DILocalVariable(name: "drv", arg: 2, scope: !6149, file: !3, line: 828, type: !6152)
!6157 = !DILocation(line: 828, column: 38, scope: !6149)
!6158 = !DILocation(line: 830, column: 7, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 830, column: 6)
!6160 = !DILocation(line: 830, column: 12, scope: !6159)
!6161 = !DILocation(line: 830, column: 6, scope: !6149)
!6162 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6163, file: !3, line: 831, type: !4742)
!6163 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 831, column: 31)
!6164 = !DILocation(line: 831, column: 31, scope: !6163)
!6165 = !DILocalVariable(name: "__mptr", scope: !6166, file: !3, line: 831, type: !212)
!6166 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 831, column: 31)
!6167 = !DILocation(line: 831, column: 31, scope: !6166)
!6168 = !DILocation(line: 831, column: 31, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 831, column: 31)
!6170 = !DILocation(line: 832, column: 10, scope: !6159)
!6171 = !DILocation(line: 832, column: 15, scope: !6159)
!6172 = !DILocation(line: 831, column: 10, scope: !6159)
!6173 = !DILocation(line: 831, column: 3, scope: !6159)
!6174 = !DILocation(line: 835, column: 50, scope: !6149)
!6175 = !DILocation(line: 835, column: 29, scope: !6149)
!6176 = !DILocation(line: 836, column: 8, scope: !6149)
!6177 = !DILocation(line: 836, column: 13, scope: !6149)
!6178 = !DILocation(line: 836, column: 31, scope: !6149)
!6179 = !DILocation(line: 836, column: 36, scope: !6149)
!6180 = !DILocation(line: 835, column: 9, scope: !6149)
!6181 = !DILocation(line: 835, column: 2, scope: !6149)
!6182 = !DILocation(line: 838, column: 1, scope: !6149)
!6183 = distinct !DISubprogram(name: "acpi_of_match_device", scope: !3, file: !3, line: 630, type: !6184, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!500, !4983, !4528, !5978}
!6186 = !DILocalVariable(name: "adev", arg: 1, scope: !6183, file: !3, line: 630, type: !4983)
!6187 = !DILocation(line: 630, column: 54, scope: !6183)
!6188 = !DILocalVariable(name: "of_match_table", arg: 2, scope: !6183, file: !3, line: 631, type: !4528)
!6189 = !DILocation(line: 631, column: 33, scope: !6183)
!6190 = !DILocalVariable(name: "of_id", arg: 3, scope: !6183, file: !3, line: 632, type: !5978)
!6191 = !DILocation(line: 632, column: 34, scope: !6183)
!6192 = !DILocalVariable(name: "of_compatible", scope: !6183, file: !3, line: 634, type: !5177)
!6193 = !DILocation(line: 634, column: 27, scope: !6183)
!6194 = !DILocalVariable(name: "obj", scope: !6183, file: !3, line: 634, type: !5177)
!6195 = !DILocation(line: 634, column: 43, scope: !6183)
!6196 = !DILocalVariable(name: "i", scope: !6183, file: !3, line: 635, type: !277)
!6197 = !DILocation(line: 635, column: 6, scope: !6183)
!6198 = !DILocalVariable(name: "nval", scope: !6183, file: !3, line: 635, type: !277)
!6199 = !DILocation(line: 635, column: 9, scope: !6183)
!6200 = !DILocation(line: 637, column: 7, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 637, column: 6)
!6202 = !DILocation(line: 637, column: 6, scope: !6183)
!6203 = !DILocation(line: 638, column: 3, scope: !6201)
!6204 = !DILocation(line: 640, column: 18, scope: !6183)
!6205 = !DILocation(line: 640, column: 24, scope: !6183)
!6206 = !DILocation(line: 640, column: 29, scope: !6183)
!6207 = !DILocation(line: 640, column: 16, scope: !6183)
!6208 = !DILocation(line: 641, column: 7, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 641, column: 6)
!6210 = !DILocation(line: 641, column: 22, scope: !6209)
!6211 = !DILocation(line: 641, column: 26, scope: !6209)
!6212 = !DILocation(line: 641, column: 6, scope: !6183)
!6213 = !DILocation(line: 642, column: 3, scope: !6209)
!6214 = !DILocation(line: 644, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 644, column: 6)
!6216 = !DILocation(line: 644, column: 21, scope: !6215)
!6217 = !DILocation(line: 644, column: 26, scope: !6215)
!6218 = !DILocation(line: 644, column: 6, scope: !6183)
!6219 = !DILocation(line: 645, column: 10, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 644, column: 48)
!6221 = !DILocation(line: 645, column: 25, scope: !6220)
!6222 = !DILocation(line: 645, column: 33, scope: !6220)
!6223 = !DILocation(line: 645, column: 8, scope: !6220)
!6224 = !DILocation(line: 646, column: 9, scope: !6220)
!6225 = !DILocation(line: 646, column: 24, scope: !6220)
!6226 = !DILocation(line: 646, column: 32, scope: !6220)
!6227 = !DILocation(line: 646, column: 7, scope: !6220)
!6228 = !DILocation(line: 647, column: 2, scope: !6220)
!6229 = !DILocation(line: 648, column: 8, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 647, column: 9)
!6231 = !DILocation(line: 649, column: 9, scope: !6230)
!6232 = !DILocation(line: 649, column: 7, scope: !6230)
!6233 = !DILocation(line: 652, column: 9, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 652, column: 2)
!6235 = !DILocation(line: 652, column: 7, scope: !6234)
!6236 = !DILocation(line: 652, column: 14, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 652, column: 2)
!6238 = !DILocation(line: 652, column: 18, scope: !6237)
!6239 = !DILocation(line: 652, column: 16, scope: !6237)
!6240 = !DILocation(line: 652, column: 2, scope: !6234)
!6241 = !DILocalVariable(name: "id", scope: !6242, file: !3, line: 653, type: !4528)
!6242 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 652, column: 36)
!6243 = !DILocation(line: 653, column: 30, scope: !6242)
!6244 = !DILocation(line: 655, column: 13, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 655, column: 3)
!6246 = !DILocation(line: 655, column: 11, scope: !6245)
!6247 = !DILocation(line: 655, column: 8, scope: !6245)
!6248 = !DILocation(line: 655, column: 29, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 655, column: 3)
!6250 = !DILocation(line: 655, column: 33, scope: !6249)
!6251 = !DILocation(line: 655, column: 3, scope: !6245)
!6252 = !DILocation(line: 656, column: 20, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 656, column: 8)
!6254 = !DILocation(line: 656, column: 25, scope: !6253)
!6255 = !DILocation(line: 656, column: 32, scope: !6253)
!6256 = !DILocation(line: 656, column: 41, scope: !6253)
!6257 = !DILocation(line: 656, column: 45, scope: !6253)
!6258 = !DILocation(line: 656, column: 9, scope: !6253)
!6259 = !DILocation(line: 656, column: 8, scope: !6249)
!6260 = !DILocation(line: 657, column: 9, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 657, column: 9)
!6262 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 656, column: 58)
!6263 = !DILocation(line: 657, column: 9, scope: !6262)
!6264 = !DILocation(line: 658, column: 15, scope: !6261)
!6265 = !DILocation(line: 658, column: 7, scope: !6261)
!6266 = !DILocation(line: 658, column: 13, scope: !6261)
!6267 = !DILocation(line: 658, column: 6, scope: !6261)
!6268 = !DILocation(line: 659, column: 5, scope: !6262)
!6269 = !DILocation(line: 656, column: 55, scope: !6253)
!6270 = !DILocation(line: 655, column: 50, scope: !6249)
!6271 = !DILocation(line: 655, column: 3, scope: !6249)
!6272 = distinct !{!6272, !6251, !6273}
!6273 = !DILocation(line: 660, column: 4, scope: !6245)
!6274 = !DILocation(line: 661, column: 2, scope: !6242)
!6275 = !DILocation(line: 652, column: 25, scope: !6237)
!6276 = !DILocation(line: 652, column: 32, scope: !6237)
!6277 = !DILocation(line: 652, column: 2, scope: !6237)
!6278 = distinct !{!6278, !6240, !6279}
!6279 = !DILocation(line: 661, column: 2, scope: !6234)
!6280 = !DILocation(line: 663, column: 2, scope: !6183)
!6281 = !DILocation(line: 664, column: 1, scope: !6183)
!6282 = distinct !DISubprogram(name: "acpi_bus_register_driver", scope: !3, file: !3, line: 853, type: !6283, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!277, !5229}
!6285 = !DILocalVariable(name: "driver", arg: 1, scope: !6282, file: !3, line: 853, type: !5229)
!6286 = !DILocation(line: 853, column: 50, scope: !6282)
!6287 = !DILocalVariable(name: "ret", scope: !6282, file: !3, line: 855, type: !277)
!6288 = !DILocation(line: 855, column: 6, scope: !6282)
!6289 = !DILocation(line: 857, column: 6, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 857, column: 6)
!6291 = !DILocation(line: 857, column: 6, scope: !6282)
!6292 = !DILocation(line: 858, column: 3, scope: !6290)
!6293 = !DILocation(line: 859, column: 21, scope: !6282)
!6294 = !DILocation(line: 859, column: 29, scope: !6282)
!6295 = !DILocation(line: 859, column: 2, scope: !6282)
!6296 = !DILocation(line: 859, column: 10, scope: !6282)
!6297 = !DILocation(line: 859, column: 14, scope: !6282)
!6298 = !DILocation(line: 859, column: 19, scope: !6282)
!6299 = !DILocation(line: 860, column: 2, scope: !6282)
!6300 = !DILocation(line: 860, column: 10, scope: !6282)
!6301 = !DILocation(line: 860, column: 14, scope: !6282)
!6302 = !DILocation(line: 860, column: 18, scope: !6282)
!6303 = !DILocation(line: 861, column: 22, scope: !6282)
!6304 = !DILocation(line: 861, column: 30, scope: !6282)
!6305 = !DILocation(line: 861, column: 2, scope: !6282)
!6306 = !DILocation(line: 861, column: 10, scope: !6282)
!6307 = !DILocation(line: 861, column: 14, scope: !6282)
!6308 = !DILocation(line: 861, column: 20, scope: !6282)
!6309 = !DILocation(line: 863, column: 25, scope: !6282)
!6310 = !DILocation(line: 863, column: 33, scope: !6282)
!6311 = !DILocation(line: 863, column: 8, scope: !6282)
!6312 = !DILocation(line: 863, column: 6, scope: !6282)
!6313 = !DILocation(line: 864, column: 9, scope: !6282)
!6314 = !DILocation(line: 864, column: 2, scope: !6282)
!6315 = !DILocation(line: 865, column: 1, scope: !6282)
!6316 = distinct !DISubprogram(name: "acpi_bus_unregister_driver", scope: !3, file: !3, line: 876, type: !6317, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{null, !5229}
!6319 = !DILocalVariable(name: "driver", arg: 1, scope: !6316, file: !3, line: 876, type: !5229)
!6320 = !DILocation(line: 876, column: 53, scope: !6316)
!6321 = !DILocation(line: 878, column: 21, scope: !6316)
!6322 = !DILocation(line: 878, column: 29, scope: !6316)
!6323 = !DILocation(line: 878, column: 2, scope: !6316)
!6324 = !DILocation(line: 879, column: 1, scope: !6316)
!6325 = distinct !DISubprogram(name: "acpi_bus_match", scope: !3, file: !3, line: 887, type: !4516, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6326 = !DILocalVariable(name: "dev", arg: 1, scope: !6325, file: !3, line: 887, type: !231)
!6327 = !DILocation(line: 887, column: 42, scope: !6325)
!6328 = !DILocalVariable(name: "drv", arg: 2, scope: !6325, file: !3, line: 887, type: !4518)
!6329 = !DILocation(line: 887, column: 69, scope: !6325)
!6330 = !DILocalVariable(name: "acpi_dev", scope: !6325, file: !3, line: 889, type: !4983)
!6331 = !DILocation(line: 889, column: 22, scope: !6325)
!6332 = !DILocalVariable(name: "__mptr", scope: !6333, file: !3, line: 889, type: !212)
!6333 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 889, column: 33)
!6334 = !DILocation(line: 889, column: 33, scope: !6333)
!6335 = !DILocation(line: 889, column: 33, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 889, column: 33)
!6337 = !DILocalVariable(name: "acpi_drv", scope: !6325, file: !3, line: 890, type: !5229)
!6338 = !DILocation(line: 890, column: 22, scope: !6325)
!6339 = !DILocalVariable(name: "__mptr", scope: !6340, file: !3, line: 890, type: !212)
!6340 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 890, column: 33)
!6341 = !DILocation(line: 890, column: 33, scope: !6340)
!6342 = !DILocation(line: 890, column: 33, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 890, column: 33)
!6344 = !DILocation(line: 892, column: 9, scope: !6325)
!6345 = !DILocation(line: 892, column: 19, scope: !6325)
!6346 = !DILocation(line: 892, column: 25, scope: !6325)
!6347 = !DILocation(line: 893, column: 3, scope: !6325)
!6348 = !DILocation(line: 893, column: 29, scope: !6325)
!6349 = !DILocation(line: 893, column: 39, scope: !6325)
!6350 = !DILocation(line: 893, column: 49, scope: !6325)
!6351 = !DILocation(line: 893, column: 7, scope: !6325)
!6352 = !DILocation(line: 893, column: 6, scope: !6325)
!6353 = !DILocation(line: 0, scope: !6325)
!6354 = !DILocation(line: 892, column: 2, scope: !6325)
!6355 = distinct !DISubprogram(name: "acpi_device_uevent", scope: !3, file: !3, line: 896, type: !4462, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6356 = !DILocalVariable(name: "dev", arg: 1, scope: !6355, file: !3, line: 896, type: !231)
!6357 = !DILocation(line: 896, column: 46, scope: !6355)
!6358 = !DILocalVariable(name: "env", arg: 2, scope: !6355, file: !3, line: 896, type: !288)
!6359 = !DILocation(line: 896, column: 75, scope: !6355)
!6360 = !DILocalVariable(name: "__mptr", scope: !6361, file: !3, line: 898, type: !212)
!6361 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 898, column: 39)
!6362 = !DILocation(line: 898, column: 39, scope: !6361)
!6363 = !DILocation(line: 898, column: 39, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 898, column: 39)
!6365 = !DILocation(line: 898, column: 60, scope: !6355)
!6366 = !DILocation(line: 898, column: 9, scope: !6355)
!6367 = !DILocation(line: 898, column: 2, scope: !6355)
!6368 = distinct !DISubprogram(name: "acpi_device_probe", scope: !3, file: !3, line: 901, type: !4479, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6369 = !DILocalVariable(name: "dev", arg: 1, scope: !6368, file: !3, line: 901, type: !231)
!6370 = !DILocation(line: 901, column: 45, scope: !6368)
!6371 = !DILocalVariable(name: "acpi_dev", scope: !6368, file: !3, line: 903, type: !4983)
!6372 = !DILocation(line: 903, column: 22, scope: !6368)
!6373 = !DILocalVariable(name: "__mptr", scope: !6374, file: !3, line: 903, type: !212)
!6374 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 903, column: 33)
!6375 = !DILocation(line: 903, column: 33, scope: !6374)
!6376 = !DILocation(line: 903, column: 33, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 903, column: 33)
!6378 = !DILocalVariable(name: "acpi_drv", scope: !6368, file: !3, line: 904, type: !5229)
!6379 = !DILocation(line: 904, column: 22, scope: !6368)
!6380 = !DILocalVariable(name: "__mptr", scope: !6381, file: !3, line: 904, type: !212)
!6381 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 904, column: 33)
!6382 = !DILocation(line: 904, column: 33, scope: !6381)
!6383 = !DILocation(line: 904, column: 33, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 904, column: 33)
!6385 = !DILocalVariable(name: "ret", scope: !6368, file: !3, line: 905, type: !277)
!6386 = !DILocation(line: 905, column: 6, scope: !6368)
!6387 = !DILocation(line: 907, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 907, column: 6)
!6389 = !DILocation(line: 907, column: 16, scope: !6388)
!6390 = !DILocation(line: 907, column: 24, scope: !6388)
!6391 = !DILocation(line: 907, column: 47, scope: !6388)
!6392 = !DILocation(line: 907, column: 28, scope: !6388)
!6393 = !DILocation(line: 907, column: 6, scope: !6368)
!6394 = !DILocation(line: 908, column: 3, scope: !6388)
!6395 = !DILocation(line: 910, column: 7, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 910, column: 6)
!6397 = !DILocation(line: 910, column: 17, scope: !6396)
!6398 = !DILocation(line: 910, column: 21, scope: !6396)
!6399 = !DILocation(line: 910, column: 6, scope: !6368)
!6400 = !DILocation(line: 911, column: 3, scope: !6396)
!6401 = !DILocation(line: 913, column: 8, scope: !6368)
!6402 = !DILocation(line: 913, column: 18, scope: !6368)
!6403 = !DILocation(line: 913, column: 22, scope: !6368)
!6404 = !DILocation(line: 913, column: 26, scope: !6368)
!6405 = !DILocation(line: 913, column: 6, scope: !6368)
!6406 = !DILocation(line: 914, column: 6, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 914, column: 6)
!6408 = !DILocation(line: 914, column: 6, scope: !6368)
!6409 = !DILocation(line: 915, column: 10, scope: !6407)
!6410 = !DILocation(line: 915, column: 3, scope: !6407)
!6411 = !DILocation(line: 917, column: 21, scope: !6368)
!6412 = !DILocation(line: 917, column: 2, scope: !6368)
!6413 = !DILocation(line: 917, column: 12, scope: !6368)
!6414 = !DILocation(line: 917, column: 19, scope: !6368)
!6415 = !DILocation(line: 922, column: 6, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 922, column: 6)
!6417 = !DILocation(line: 922, column: 16, scope: !6416)
!6418 = !DILocation(line: 922, column: 20, scope: !6416)
!6419 = !DILocation(line: 922, column: 6, scope: !6368)
!6420 = !DILocation(line: 923, column: 44, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 922, column: 28)
!6422 = !DILocation(line: 923, column: 9, scope: !6421)
!6423 = !DILocation(line: 923, column: 7, scope: !6421)
!6424 = !DILocation(line: 924, column: 7, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 924, column: 7)
!6426 = !DILocation(line: 924, column: 7, scope: !6421)
!6427 = !DILocation(line: 925, column: 8, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 925, column: 8)
!6429 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 924, column: 12)
!6430 = !DILocation(line: 925, column: 18, scope: !6428)
!6431 = !DILocation(line: 925, column: 22, scope: !6428)
!6432 = !DILocation(line: 925, column: 8, scope: !6429)
!6433 = !DILocation(line: 926, column: 5, scope: !6428)
!6434 = !DILocation(line: 926, column: 15, scope: !6428)
!6435 = !DILocation(line: 926, column: 19, scope: !6428)
!6436 = !DILocation(line: 926, column: 26, scope: !6428)
!6437 = !DILocation(line: 928, column: 4, scope: !6429)
!6438 = !DILocation(line: 928, column: 14, scope: !6429)
!6439 = !DILocation(line: 928, column: 21, scope: !6429)
!6440 = !DILocation(line: 929, column: 4, scope: !6429)
!6441 = !DILocation(line: 929, column: 14, scope: !6429)
!6442 = !DILocation(line: 929, column: 26, scope: !6429)
!6443 = !DILocation(line: 930, column: 11, scope: !6429)
!6444 = !DILocation(line: 930, column: 4, scope: !6429)
!6445 = !DILocation(line: 932, column: 2, scope: !6421)
!6446 = !DILocation(line: 936, column: 13, scope: !6368)
!6447 = !DILocation(line: 936, column: 2, scope: !6368)
!6448 = !DILocation(line: 937, column: 2, scope: !6368)
!6449 = !DILocation(line: 938, column: 1, scope: !6368)
!6450 = distinct !DISubprogram(name: "acpi_device_remove", scope: !3, file: !3, line: 940, type: !4479, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6451 = !DILocalVariable(name: "dev", arg: 1, scope: !6450, file: !3, line: 940, type: !231)
!6452 = !DILocation(line: 940, column: 46, scope: !6450)
!6453 = !DILocalVariable(name: "acpi_dev", scope: !6450, file: !3, line: 942, type: !4983)
!6454 = !DILocation(line: 942, column: 22, scope: !6450)
!6455 = !DILocalVariable(name: "__mptr", scope: !6456, file: !3, line: 942, type: !212)
!6456 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 942, column: 33)
!6457 = !DILocation(line: 942, column: 33, scope: !6456)
!6458 = !DILocation(line: 942, column: 33, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 942, column: 33)
!6460 = !DILocalVariable(name: "acpi_drv", scope: !6450, file: !3, line: 943, type: !5229)
!6461 = !DILocation(line: 943, column: 22, scope: !6450)
!6462 = !DILocation(line: 943, column: 33, scope: !6450)
!6463 = !DILocation(line: 943, column: 43, scope: !6450)
!6464 = !DILocation(line: 945, column: 6, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 945, column: 6)
!6466 = !DILocation(line: 945, column: 6, scope: !6450)
!6467 = !DILocation(line: 946, column: 7, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 946, column: 7)
!6469 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 945, column: 16)
!6470 = !DILocation(line: 946, column: 17, scope: !6468)
!6471 = !DILocation(line: 946, column: 21, scope: !6468)
!6472 = !DILocation(line: 946, column: 7, scope: !6469)
!6473 = !DILocation(line: 947, column: 38, scope: !6468)
!6474 = !DILocation(line: 947, column: 4, scope: !6468)
!6475 = !DILocation(line: 948, column: 7, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 948, column: 7)
!6477 = !DILocation(line: 948, column: 17, scope: !6476)
!6478 = !DILocation(line: 948, column: 21, scope: !6476)
!6479 = !DILocation(line: 948, column: 7, scope: !6469)
!6480 = !DILocation(line: 949, column: 4, scope: !6476)
!6481 = !DILocation(line: 949, column: 14, scope: !6476)
!6482 = !DILocation(line: 949, column: 18, scope: !6476)
!6483 = !DILocation(line: 949, column: 25, scope: !6476)
!6484 = !DILocation(line: 950, column: 2, scope: !6469)
!6485 = !DILocation(line: 951, column: 2, scope: !6450)
!6486 = !DILocation(line: 951, column: 12, scope: !6450)
!6487 = !DILocation(line: 951, column: 19, scope: !6450)
!6488 = !DILocation(line: 952, column: 2, scope: !6450)
!6489 = !DILocation(line: 952, column: 12, scope: !6450)
!6490 = !DILocation(line: 952, column: 24, scope: !6450)
!6491 = !DILocation(line: 954, column: 13, scope: !6450)
!6492 = !DILocation(line: 954, column: 2, scope: !6450)
!6493 = !DILocation(line: 955, column: 2, scope: !6450)
!6494 = distinct !DISubprogram(name: "acpi_early_init", scope: !3, file: !3, line: 1023, type: !3042, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6495 = !DILocalVariable(name: "status", scope: !6494, file: !3, line: 1025, type: !202)
!6496 = !DILocation(line: 1025, column: 14, scope: !6494)
!6497 = !DILocation(line: 1027, column: 6, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 1027, column: 6)
!6499 = !DILocation(line: 1027, column: 6, scope: !6494)
!6500 = !DILocation(line: 1028, column: 3, scope: !6498)
!6501 = !DILocation(line: 1030, column: 2, scope: !6494)
!6502 = !DILocation(line: 1033, column: 7, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 1033, column: 6)
!6504 = !DILocation(line: 1033, column: 6, scope: !6494)
!6505 = !DILocation(line: 1034, column: 37, scope: !6503)
!6506 = !DILocation(line: 1034, column: 3, scope: !6503)
!6507 = !DILocation(line: 1036, column: 22, scope: !6494)
!6508 = !DILocation(line: 1046, column: 2, scope: !6494)
!6509 = !DILocation(line: 1049, column: 11, scope: !6494)
!6510 = !DILocation(line: 1049, column: 9, scope: !6494)
!6511 = !DILocation(line: 1050, column: 6, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 1050, column: 6)
!6513 = !DILocation(line: 1050, column: 6, scope: !6494)
!6514 = !DILocation(line: 1051, column: 3, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 1050, column: 28)
!6516 = !DILocation(line: 1053, column: 3, scope: !6515)
!6517 = !DILocation(line: 1056, column: 11, scope: !6494)
!6518 = !DILocation(line: 1056, column: 9, scope: !6494)
!6519 = !DILocation(line: 1057, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 1057, column: 6)
!6521 = !DILocation(line: 1057, column: 6, scope: !6494)
!6522 = !DILocation(line: 1058, column: 3, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 1057, column: 28)
!6524 = !DILocation(line: 1060, column: 3, scope: !6523)
!6525 = !DILocation(line: 1064, column: 7, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 1064, column: 6)
!6527 = !DILocation(line: 1064, column: 6, scope: !6494)
!6528 = !DILocation(line: 1066, column: 9, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 1066, column: 7)
!6530 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 1064, column: 20)
!6531 = !DILocation(line: 1066, column: 24, scope: !6529)
!6532 = !DILocation(line: 1066, column: 7, scope: !6530)
!6533 = !DILocation(line: 1067, column: 19, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 1066, column: 51)
!6535 = !DILocation(line: 1068, column: 19, scope: !6534)
!6536 = !DILocation(line: 1069, column: 3, scope: !6534)
!6537 = !DILocation(line: 1071, column: 42, scope: !6530)
!6538 = !DILocation(line: 1071, column: 28, scope: !6530)
!6539 = !DILocation(line: 1072, column: 8, scope: !6530)
!6540 = !DILocation(line: 1072, column: 23, scope: !6530)
!6541 = !DILocation(line: 1072, column: 49, scope: !6530)
!6542 = !DILocation(line: 1072, column: 7, scope: !6530)
!6543 = !DILocation(line: 1071, column: 3, scope: !6530)
!6544 = !DILocation(line: 1073, column: 2, scope: !6530)
!6545 = !DILocation(line: 1078, column: 33, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 1073, column: 9)
!6547 = !DILocation(line: 1078, column: 31, scope: !6546)
!6548 = !DILocation(line: 1081, column: 2, scope: !6494)
!6549 = !DILabel(scope: !6494, name: "error0", file: !3, line: 1083)
!6550 = !DILocation(line: 1083, column: 2, scope: !6494)
!6551 = !DILocation(line: 1084, column: 2, scope: !6494)
!6552 = !DILocation(line: 1085, column: 1, scope: !6494)
!6553 = distinct !DISubprogram(name: "disable_acpi", scope: !6554, file: !6554, line: 44, type: !3042, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6554 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/lizy2001/genbc/linux")
!6555 = !DILocation(line: 46, column: 16, scope: !6553)
!6556 = !DILocation(line: 47, column: 20, scope: !6553)
!6557 = !DILocation(line: 48, column: 13, scope: !6553)
!6558 = !DILocation(line: 49, column: 1, scope: !6553)
!6559 = distinct !DISubprogram(name: "acpi_subsystem_init", scope: !3, file: !3, line: 1096, type: !3042, scopeLine: 1097, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6560 = !DILocalVariable(name: "status", scope: !6559, file: !3, line: 1098, type: !202)
!6561 = !DILocation(line: 1098, column: 14, scope: !6559)
!6562 = !DILocation(line: 1100, column: 6, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 1100, column: 6)
!6564 = !DILocation(line: 1100, column: 6, scope: !6559)
!6565 = !DILocation(line: 1101, column: 3, scope: !6563)
!6566 = !DILocation(line: 1103, column: 11, scope: !6559)
!6567 = !DILocation(line: 1103, column: 9, scope: !6559)
!6568 = !DILocation(line: 1104, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 1104, column: 6)
!6570 = !DILocation(line: 1104, column: 6, scope: !6559)
!6571 = !DILocation(line: 1105, column: 3, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 1104, column: 28)
!6573 = !DILocation(line: 1106, column: 3, scope: !6572)
!6574 = !DILocation(line: 1107, column: 2, scope: !6572)
!6575 = !DILocation(line: 1114, column: 3, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 1107, column: 9)
!6577 = !DILocation(line: 1116, column: 1, scope: !6559)
!6578 = distinct !DISubprogram(name: "regulator_has_full_constraints", scope: !6579, file: !6579, line: 252, type: !3042, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6579 = !DIFile(filename: "./include/linux/regulator/machine.h", directory: "/home/lizy2001/genbc/linux")
!6580 = !DILocation(line: 254, column: 1, scope: !6578)
!6581 = distinct !DISubprogram(name: "acpi_init", scope: !3, file: !3, line: 1231, type: !6582, scopeLine: 1232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6582 = !DISubroutineType(types: !6583)
!6583 = !{!277}
!6584 = !DILocalVariable(name: "result", scope: !6581, file: !3, line: 1233, type: !277)
!6585 = !DILocation(line: 1233, column: 6, scope: !6581)
!6586 = !DILocation(line: 1235, column: 6, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 1235, column: 6)
!6588 = !DILocation(line: 1235, column: 6, scope: !6581)
!6589 = !DILocation(line: 1236, column: 3, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 1235, column: 21)
!6591 = !DILocation(line: 1237, column: 3, scope: !6590)
!6592 = !DILocation(line: 1240, column: 45, scope: !6581)
!6593 = !DILocation(line: 1240, column: 14, scope: !6581)
!6594 = !DILocation(line: 1240, column: 12, scope: !6581)
!6595 = !DILocation(line: 1241, column: 7, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 1241, column: 6)
!6597 = !DILocation(line: 1241, column: 6, scope: !6581)
!6598 = !DILocation(line: 1242, column: 3, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6596, file: !3, line: 1241, column: 18)
!6600 = !DILocation(line: 1243, column: 13, scope: !6599)
!6601 = !DILocation(line: 1244, column: 2, scope: !6599)
!6602 = !DILocation(line: 1246, column: 11, scope: !6581)
!6603 = !DILocation(line: 1246, column: 9, scope: !6581)
!6604 = !DILocation(line: 1247, column: 6, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 1247, column: 6)
!6606 = !DILocation(line: 1247, column: 6, scope: !6581)
!6607 = !DILocation(line: 1248, column: 3, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 1247, column: 14)
!6609 = !DILocation(line: 1249, column: 10, scope: !6608)
!6610 = !DILocation(line: 1249, column: 3, scope: !6608)
!6611 = !DILocation(line: 1252, column: 2, scope: !6581)
!6612 = !DILocation(line: 1253, column: 2, scope: !6581)
!6613 = !DILocation(line: 1254, column: 2, scope: !6581)
!6614 = !DILocation(line: 1255, column: 2, scope: !6581)
!6615 = !DILocation(line: 1256, column: 2, scope: !6581)
!6616 = !DILocation(line: 1257, column: 2, scope: !6581)
!6617 = !DILocation(line: 1258, column: 2, scope: !6581)
!6618 = !DILocation(line: 1259, column: 2, scope: !6581)
!6619 = !DILocation(line: 1260, column: 2, scope: !6581)
!6620 = !DILocation(line: 1261, column: 2, scope: !6581)
!6621 = !DILocation(line: 1262, column: 1, scope: !6581)
!6622 = distinct !DISubprogram(name: "__acpi_match_device_cls", scope: !3, file: !3, line: 708, type: !6623, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6623 = !DISubroutineType(types: !6624)
!6624 = !{!500, !4541, !5264}
!6625 = !DILocalVariable(name: "id", arg: 1, scope: !6622, file: !3, line: 708, type: !4541)
!6626 = !DILocation(line: 708, column: 66, scope: !6622)
!6627 = !DILocalVariable(name: "hwid", arg: 2, scope: !6622, file: !3, line: 709, type: !5264)
!6628 = !DILocation(line: 709, column: 34, scope: !6622)
!6629 = !DILocalVariable(name: "i", scope: !6622, file: !3, line: 711, type: !277)
!6630 = !DILocation(line: 711, column: 6, scope: !6622)
!6631 = !DILocalVariable(name: "msk", scope: !6622, file: !3, line: 711, type: !277)
!6632 = !DILocation(line: 711, column: 9, scope: !6622)
!6633 = !DILocalVariable(name: "byte_shift", scope: !6622, file: !3, line: 711, type: !277)
!6634 = !DILocation(line: 711, column: 14, scope: !6622)
!6635 = !DILocalVariable(name: "buf", scope: !6622, file: !3, line: 712, type: !6636)
!6636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 24, elements: !294)
!6637 = !DILocation(line: 712, column: 7, scope: !6622)
!6638 = !DILocation(line: 714, column: 7, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 714, column: 6)
!6640 = !DILocation(line: 714, column: 11, scope: !6639)
!6641 = !DILocation(line: 714, column: 6, scope: !6622)
!6642 = !DILocation(line: 715, column: 3, scope: !6639)
!6643 = !DILocation(line: 718, column: 9, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 718, column: 2)
!6645 = !DILocation(line: 718, column: 7, scope: !6644)
!6646 = !DILocation(line: 718, column: 14, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6644, file: !3, line: 718, column: 2)
!6648 = !DILocation(line: 718, column: 16, scope: !6647)
!6649 = !DILocation(line: 718, column: 2, scope: !6644)
!6650 = !DILocation(line: 719, column: 25, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 718, column: 27)
!6652 = !DILocation(line: 719, column: 23, scope: !6651)
!6653 = !DILocation(line: 719, column: 18, scope: !6651)
!6654 = !DILocation(line: 719, column: 14, scope: !6651)
!6655 = !DILocation(line: 720, column: 10, scope: !6651)
!6656 = !DILocation(line: 720, column: 14, scope: !6651)
!6657 = !DILocation(line: 720, column: 25, scope: !6651)
!6658 = !DILocation(line: 720, column: 22, scope: !6651)
!6659 = !DILocation(line: 720, column: 37, scope: !6651)
!6660 = !DILocation(line: 720, column: 7, scope: !6651)
!6661 = !DILocation(line: 721, column: 8, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 721, column: 7)
!6663 = !DILocation(line: 721, column: 7, scope: !6651)
!6664 = !DILocation(line: 722, column: 4, scope: !6662)
!6665 = !DILocation(line: 724, column: 11, scope: !6651)
!6666 = !DILocation(line: 724, column: 25, scope: !6651)
!6667 = !DILocation(line: 724, column: 29, scope: !6651)
!6668 = !DILocation(line: 724, column: 36, scope: !6651)
!6669 = !DILocation(line: 724, column: 33, scope: !6651)
!6670 = !DILocation(line: 724, column: 50, scope: !6651)
!6671 = !DILocation(line: 724, column: 48, scope: !6651)
!6672 = !DILocation(line: 724, column: 3, scope: !6651)
!6673 = !DILocation(line: 725, column: 15, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 725, column: 7)
!6675 = !DILocation(line: 725, column: 21, scope: !6674)
!6676 = !DILocation(line: 725, column: 27, scope: !6674)
!6677 = !DILocation(line: 725, column: 31, scope: !6674)
!6678 = !DILocation(line: 725, column: 33, scope: !6674)
!6679 = !DILocation(line: 725, column: 38, scope: !6674)
!6680 = !DILocation(line: 725, column: 7, scope: !6674)
!6681 = !DILocation(line: 725, column: 7, scope: !6651)
!6682 = !DILocation(line: 726, column: 4, scope: !6674)
!6683 = !DILocation(line: 727, column: 2, scope: !6651)
!6684 = !DILocation(line: 718, column: 23, scope: !6647)
!6685 = !DILocation(line: 718, column: 2, scope: !6647)
!6686 = distinct !{!6686, !6649, !6687}
!6687 = !DILocation(line: 727, column: 2, scope: !6644)
!6688 = !DILocation(line: 728, column: 2, scope: !6622)
!6689 = !DILocation(line: 729, column: 1, scope: !6622)
!6690 = distinct !DISubprogram(name: "acpi_device_install_notify_handler", scope: !3, file: !3, line: 441, type: !5209, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6691 = !DILocalVariable(name: "device", arg: 1, scope: !6690, file: !3, line: 441, type: !4983)
!6692 = !DILocation(line: 441, column: 67, scope: !6690)
!6693 = !DILocalVariable(name: "status", scope: !6690, file: !3, line: 443, type: !202)
!6694 = !DILocation(line: 443, column: 14, scope: !6690)
!6695 = !DILocation(line: 445, column: 6, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 445, column: 6)
!6697 = !DILocation(line: 445, column: 14, scope: !6696)
!6698 = !DILocation(line: 445, column: 26, scope: !6696)
!6699 = !DILocation(line: 445, column: 6, scope: !6690)
!6700 = !DILocation(line: 449, column: 12, scope: !6696)
!6701 = !DILocation(line: 447, column: 7, scope: !6696)
!6702 = !DILocation(line: 446, column: 10, scope: !6696)
!6703 = !DILocation(line: 446, column: 3, scope: !6696)
!6704 = !DILocation(line: 450, column: 11, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 450, column: 11)
!6706 = !DILocation(line: 450, column: 19, scope: !6705)
!6707 = !DILocation(line: 450, column: 31, scope: !6705)
!6708 = !DILocation(line: 450, column: 11, scope: !6696)
!6709 = !DILocation(line: 454, column: 12, scope: !6705)
!6710 = !DILocation(line: 452, column: 7, scope: !6705)
!6711 = !DILocation(line: 451, column: 10, scope: !6705)
!6712 = !DILocation(line: 451, column: 3, scope: !6705)
!6713 = !DILocation(line: 456, column: 40, scope: !6705)
!6714 = !DILocation(line: 456, column: 48, scope: !6705)
!6715 = !DILocation(line: 459, column: 12, scope: !6705)
!6716 = !DILocation(line: 456, column: 12, scope: !6705)
!6717 = !DILocation(line: 456, column: 10, scope: !6705)
!6718 = !DILocation(line: 461, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 461, column: 6)
!6720 = !DILocation(line: 461, column: 6, scope: !6690)
!6721 = !DILocation(line: 462, column: 3, scope: !6719)
!6722 = !DILocation(line: 463, column: 2, scope: !6690)
!6723 = !DILocation(line: 464, column: 1, scope: !6690)
!6724 = distinct !DISubprogram(name: "acpi_device_fixed_event", scope: !3, file: !3, line: 435, type: !6725, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6725 = !DISubroutineType(types: !6726)
!6726 = !{!204, !212}
!6727 = !DILocalVariable(name: "data", arg: 1, scope: !6724, file: !3, line: 435, type: !212)
!6728 = !DILocation(line: 435, column: 42, scope: !6724)
!6729 = !DILocation(line: 437, column: 64, scope: !6724)
!6730 = !DILocation(line: 437, column: 2, scope: !6724)
!6731 = !DILocation(line: 438, column: 2, scope: !6724)
!6732 = distinct !DISubprogram(name: "acpi_device_notify", scope: !3, file: !3, line: 420, type: !5314, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6733 = !DILocalVariable(name: "handle", arg: 1, scope: !6732, file: !3, line: 420, type: !4988)
!6734 = !DILocation(line: 420, column: 44, scope: !6732)
!6735 = !DILocalVariable(name: "event", arg: 2, scope: !6732, file: !3, line: 420, type: !204)
!6736 = !DILocation(line: 420, column: 56, scope: !6732)
!6737 = !DILocalVariable(name: "data", arg: 3, scope: !6732, file: !3, line: 420, type: !212)
!6738 = !DILocation(line: 420, column: 69, scope: !6732)
!6739 = !DILocalVariable(name: "device", scope: !6732, file: !3, line: 422, type: !4983)
!6740 = !DILocation(line: 422, column: 22, scope: !6732)
!6741 = !DILocation(line: 422, column: 31, scope: !6732)
!6742 = !DILocation(line: 424, column: 2, scope: !6732)
!6743 = !DILocation(line: 424, column: 10, scope: !6732)
!6744 = !DILocation(line: 424, column: 18, scope: !6732)
!6745 = !DILocation(line: 424, column: 22, scope: !6732)
!6746 = !DILocation(line: 424, column: 29, scope: !6732)
!6747 = !DILocation(line: 424, column: 37, scope: !6732)
!6748 = !DILocation(line: 425, column: 1, scope: !6732)
!6749 = distinct !DISubprogram(name: "acpi_device_notify_fixed", scope: !3, file: !3, line: 427, type: !479, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6750 = !DILocalVariable(name: "data", arg: 1, scope: !6749, file: !3, line: 427, type: !212)
!6751 = !DILocation(line: 427, column: 44, scope: !6749)
!6752 = !DILocalVariable(name: "device", scope: !6749, file: !3, line: 429, type: !4983)
!6753 = !DILocation(line: 429, column: 22, scope: !6749)
!6754 = !DILocation(line: 429, column: 31, scope: !6749)
!6755 = !DILocation(line: 432, column: 54, scope: !6749)
!6756 = !DILocation(line: 432, column: 2, scope: !6749)
!6757 = !DILocation(line: 433, column: 1, scope: !6749)
!6758 = distinct !DISubprogram(name: "acpi_device_remove_notify_handler", scope: !3, file: !3, line: 466, type: !5199, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6759 = !DILocalVariable(name: "device", arg: 1, scope: !6758, file: !3, line: 466, type: !4983)
!6760 = !DILocation(line: 466, column: 67, scope: !6758)
!6761 = !DILocation(line: 468, column: 6, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 468, column: 6)
!6763 = !DILocation(line: 468, column: 14, scope: !6762)
!6764 = !DILocation(line: 468, column: 26, scope: !6762)
!6765 = !DILocation(line: 468, column: 6, scope: !6758)
!6766 = !DILocation(line: 469, column: 3, scope: !6762)
!6767 = !DILocation(line: 471, column: 11, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6762, file: !3, line: 471, column: 11)
!6769 = !DILocation(line: 471, column: 19, scope: !6768)
!6770 = !DILocation(line: 471, column: 31, scope: !6768)
!6771 = !DILocation(line: 471, column: 11, scope: !6762)
!6772 = !DILocation(line: 472, column: 3, scope: !6768)
!6773 = !DILocation(line: 475, column: 30, scope: !6768)
!6774 = !DILocation(line: 475, column: 38, scope: !6768)
!6775 = !DILocation(line: 475, column: 3, scope: !6768)
!6776 = !DILocation(line: 477, column: 1, scope: !6758)
!6777 = distinct !DISubprogram(name: "set_copy_dsdt", scope: !3, file: !3, line: 48, type: !5290, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6778 = !DILocalVariable(name: "id", arg: 1, scope: !6777, file: !3, line: 48, type: !5292)
!6779 = !DILocation(line: 48, column: 54, scope: !6777)
!6780 = !DILocation(line: 51, column: 43, scope: !6777)
!6781 = !DILocation(line: 51, column: 47, scope: !6777)
!6782 = !DILocation(line: 50, column: 2, scope: !6777)
!6783 = !DILocation(line: 52, column: 29, scope: !6777)
!6784 = !DILocation(line: 53, column: 2, scope: !6777)
!6785 = distinct !DISubprogram(name: "acpi_bus_init", scope: !3, file: !3, line: 1125, type: !6582, scopeLine: 1126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6786 = !DILocalVariable(name: "result", scope: !6785, file: !3, line: 1127, type: !277)
!6787 = !DILocation(line: 1127, column: 6, scope: !6785)
!6788 = !DILocalVariable(name: "status", scope: !6785, file: !3, line: 1128, type: !202)
!6789 = !DILocation(line: 1128, column: 14, scope: !6785)
!6790 = !DILocation(line: 1130, column: 2, scope: !6785)
!6791 = !DILocation(line: 1132, column: 11, scope: !6785)
!6792 = !DILocation(line: 1132, column: 9, scope: !6785)
!6793 = !DILocation(line: 1133, column: 6, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1133, column: 6)
!6795 = !DILocation(line: 1133, column: 6, scope: !6785)
!6796 = !DILocation(line: 1134, column: 3, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 1133, column: 28)
!6798 = !DILocation(line: 1136, column: 3, scope: !6797)
!6799 = !DILocation(line: 1149, column: 2, scope: !6785)
!6800 = !DILocation(line: 1151, column: 11, scope: !6785)
!6801 = !DILocation(line: 1151, column: 9, scope: !6785)
!6802 = !DILocation(line: 1152, column: 6, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1152, column: 6)
!6804 = !DILocation(line: 1152, column: 6, scope: !6785)
!6805 = !DILocation(line: 1153, column: 3, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 1152, column: 28)
!6807 = !DILocation(line: 1155, column: 3, scope: !6806)
!6808 = !DILocation(line: 1158, column: 11, scope: !6785)
!6809 = !DILocation(line: 1158, column: 9, scope: !6785)
!6810 = !DILocation(line: 1159, column: 6, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1159, column: 6)
!6812 = !DILocation(line: 1159, column: 6, scope: !6785)
!6813 = !DILocation(line: 1160, column: 3, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6811, file: !3, line: 1159, column: 28)
!6815 = !DILocation(line: 1161, column: 3, scope: !6814)
!6816 = !DILocation(line: 1165, column: 2, scope: !6785)
!6817 = !DILocation(line: 1171, column: 2, scope: !6785)
!6818 = !DILocation(line: 1177, column: 11, scope: !6785)
!6819 = !DILocation(line: 1177, column: 9, scope: !6785)
!6820 = !DILocation(line: 1179, column: 2, scope: !6785)
!6821 = !DILocation(line: 1181, column: 2, scope: !6785)
!6822 = !DILocation(line: 1187, column: 2, scope: !6785)
!6823 = !DILocation(line: 1189, column: 2, scope: !6785)
!6824 = !DILocation(line: 1192, column: 2, scope: !6785)
!6825 = !DILocation(line: 1197, column: 11, scope: !6785)
!6826 = !DILocation(line: 1197, column: 9, scope: !6785)
!6827 = !DILocation(line: 1198, column: 6, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1198, column: 6)
!6829 = !DILocation(line: 1198, column: 6, scope: !6785)
!6830 = !DILocation(line: 1199, column: 3, scope: !6828)
!6831 = !DILocation(line: 1205, column: 6, scope: !6785)
!6832 = !DILocation(line: 1204, column: 9, scope: !6785)
!6833 = !DILocation(line: 1207, column: 6, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1207, column: 6)
!6835 = !DILocation(line: 1207, column: 6, scope: !6785)
!6836 = !DILocation(line: 1208, column: 3, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 1207, column: 28)
!6838 = !DILocation(line: 1210, column: 3, scope: !6837)
!6839 = !DILocation(line: 1216, column: 18, scope: !6785)
!6840 = !DILocation(line: 1216, column: 16, scope: !6785)
!6841 = !DILocation(line: 1218, column: 11, scope: !6785)
!6842 = !DILocation(line: 1218, column: 9, scope: !6785)
!6843 = !DILocation(line: 1219, column: 7, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 1219, column: 6)
!6845 = !DILocation(line: 1219, column: 6, scope: !6785)
!6846 = !DILocation(line: 1220, column: 3, scope: !6844)
!6847 = !DILabel(scope: !6785, name: "error1", file: !3, line: 1223)
!6848 = !DILocation(line: 1223, column: 7, scope: !6785)
!6849 = !DILocation(line: 1224, column: 2, scope: !6785)
!6850 = !DILocation(line: 1225, column: 2, scope: !6785)
!6851 = !DILocation(line: 1226, column: 1, scope: !6785)
!6852 = distinct !DISubprogram(name: "acpi_iort_init", scope: !6853, file: !6853, line: 42, type: !3042, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6853 = !DIFile(filename: "./include/linux/acpi_iort.h", directory: "/home/lizy2001/genbc/linux")
!6854 = !DILocation(line: 42, column: 43, scope: !6852)
!6855 = distinct !DISubprogram(name: "acpi_debugfs_init", scope: !6856, file: !6856, line: 73, type: !3042, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6856 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/lizy2001/genbc/linux")
!6857 = !DILocation(line: 73, column: 46, scope: !6855)
!6858 = distinct !DISubprogram(name: "acpi_debugger_init", scope: !5484, file: !5484, line: 169, type: !6582, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6859 = !DILocation(line: 171, column: 2, scope: !6858)
!6860 = distinct !DISubprogram(name: "acpi_setup_sb_notify_handler", scope: !3, file: !3, line: 515, type: !6582, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6861 = !DILocalVariable(name: "sb_handle", scope: !6860, file: !3, line: 517, type: !4988)
!6862 = !DILocation(line: 517, column: 14, scope: !6860)
!6863 = !DILocation(line: 519, column: 6, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6860, file: !3, line: 519, column: 6)
!6865 = !DILocation(line: 519, column: 6, scope: !6860)
!6866 = !DILocation(line: 520, column: 3, scope: !6864)
!6867 = !DILocation(line: 522, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6860, file: !3, line: 522, column: 6)
!6869 = !DILocation(line: 522, column: 6, scope: !6860)
!6870 = !DILocation(line: 524, column: 3, scope: !6868)
!6871 = !DILocation(line: 526, column: 2, scope: !6860)
!6872 = !DILocation(line: 527, column: 1, scope: !6860)
!6873 = distinct !DISubprogram(name: "acpi_bus_osc_support", scope: !3, file: !3, line: 285, type: !3042, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6874 = !DILocalVariable(name: "capbuf", scope: !6873, file: !3, line: 287, type: !6875)
!6875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !1412)
!6876 = !DILocation(line: 287, column: 6, scope: !6873)
!6877 = !DILocalVariable(name: "context", scope: !6873, file: !3, line: 288, type: !5483)
!6878 = !DILocation(line: 288, column: 26, scope: !6873)
!6879 = !DILocation(line: 288, column: 36, scope: !6873)
!6880 = !DILocation(line: 291, column: 7, scope: !6873)
!6881 = !DILocation(line: 292, column: 18, scope: !6873)
!6882 = !DILocalVariable(name: "handle", scope: !6873, file: !3, line: 294, type: !4988)
!6883 = !DILocation(line: 294, column: 14, scope: !6873)
!6884 = !DILocation(line: 296, column: 2, scope: !6873)
!6885 = !DILocation(line: 296, column: 26, scope: !6873)
!6886 = !DILocation(line: 297, column: 2, scope: !6873)
!6887 = !DILocation(line: 297, column: 28, scope: !6873)
!6888 = !DILocation(line: 301, column: 3, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 300, column: 6)
!6890 = !DILocation(line: 301, column: 29, scope: !6889)
!6891 = !DILocation(line: 303, column: 2, scope: !6873)
!6892 = !DILocation(line: 303, column: 28, scope: !6873)
!6893 = !DILocation(line: 304, column: 2, scope: !6873)
!6894 = !DILocation(line: 304, column: 28, scope: !6873)
!6895 = !DILocation(line: 310, column: 2, scope: !6873)
!6896 = !DILocation(line: 310, column: 28, scope: !6873)
!6897 = !DILocation(line: 311, column: 6, scope: !6873)
!6898 = !DILocation(line: 311, column: 6, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 311, column: 6)
!6900 = !DILocation(line: 312, column: 3, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6899, file: !3, line: 311, column: 37)
!6902 = !DILocation(line: 312, column: 29, scope: !6901)
!6903 = !DILocation(line: 313, column: 3, scope: !6901)
!6904 = !DILocation(line: 313, column: 29, scope: !6901)
!6905 = !DILocation(line: 314, column: 2, scope: !6901)
!6906 = !DILocation(line: 322, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 322, column: 6)
!6908 = !DILocation(line: 322, column: 6, scope: !6873)
!6909 = !DILocation(line: 323, column: 3, scope: !6907)
!6910 = !DILocation(line: 324, column: 6, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 324, column: 6)
!6912 = !DILocation(line: 324, column: 6, scope: !6873)
!6913 = !DILocalVariable(name: "capbuf_ret", scope: !6914, file: !3, line: 325, type: !217)
!6914 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 324, column: 52)
!6915 = !DILocation(line: 325, column: 8, scope: !6914)
!6916 = !DILocation(line: 325, column: 29, scope: !6914)
!6917 = !DILocation(line: 325, column: 33, scope: !6914)
!6918 = !DILocation(line: 325, column: 21, scope: !6914)
!6919 = !DILocation(line: 326, column: 15, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 326, column: 7)
!6921 = !DILocation(line: 326, column: 19, scope: !6920)
!6922 = !DILocation(line: 326, column: 26, scope: !6920)
!6923 = !DILocation(line: 326, column: 7, scope: !6914)
!6924 = !DILocation(line: 328, column: 5, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 326, column: 47)
!6926 = !DILocation(line: 328, column: 35, scope: !6925)
!6927 = !DILocation(line: 327, column: 30, scope: !6925)
!6928 = !DILocation(line: 330, column: 5, scope: !6925)
!6929 = !DILocation(line: 330, column: 35, scope: !6925)
!6930 = !DILocation(line: 329, column: 33, scope: !6925)
!6931 = !DILocation(line: 331, column: 3, scope: !6925)
!6932 = !DILocation(line: 332, column: 17, scope: !6914)
!6933 = !DILocation(line: 332, column: 21, scope: !6914)
!6934 = !DILocation(line: 332, column: 3, scope: !6914)
!6935 = !DILocation(line: 333, column: 2, scope: !6914)
!6936 = !DILocation(line: 335, column: 1, scope: !6873)
!6937 = distinct !DISubprogram(name: "acpi_bus_table_handler", scope: !3, file: !3, line: 1118, type: !6938, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!202, !204, !212, !212}
!6940 = !DILocalVariable(name: "event", arg: 1, scope: !6937, file: !3, line: 1118, type: !204)
!6941 = !DILocation(line: 1118, column: 47, scope: !6937)
!6942 = !DILocalVariable(name: "table", arg: 2, scope: !6937, file: !3, line: 1118, type: !212)
!6943 = !DILocation(line: 1118, column: 60, scope: !6937)
!6944 = !DILocalVariable(name: "context", arg: 3, scope: !6937, file: !3, line: 1118, type: !212)
!6945 = !DILocation(line: 1118, column: 73, scope: !6937)
!6946 = !DILocation(line: 1120, column: 26, scope: !6937)
!6947 = !DILocation(line: 1120, column: 33, scope: !6937)
!6948 = !DILocation(line: 1120, column: 40, scope: !6937)
!6949 = !DILocation(line: 1120, column: 2, scope: !6937)
!6950 = !DILocation(line: 1122, column: 34, scope: !6937)
!6951 = !DILocation(line: 1122, column: 41, scope: !6937)
!6952 = !DILocation(line: 1122, column: 48, scope: !6937)
!6953 = !DILocation(line: 1122, column: 9, scope: !6937)
!6954 = !DILocation(line: 1122, column: 2, scope: !6937)
!6955 = distinct !DISubprogram(name: "acpi_bus_init_irq", scope: !3, file: !3, line: 970, type: !6582, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6956 = !DILocalVariable(name: "status", scope: !6955, file: !3, line: 972, type: !202)
!6957 = !DILocation(line: 972, column: 14, scope: !6955)
!6958 = !DILocalVariable(name: "message", scope: !6955, file: !3, line: 973, type: !293)
!6959 = !DILocation(line: 973, column: 8, scope: !6955)
!6960 = !DILocation(line: 981, column: 10, scope: !6955)
!6961 = !DILocation(line: 981, column: 2, scope: !6955)
!6962 = !DILocation(line: 983, column: 11, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 981, column: 26)
!6964 = !DILocation(line: 984, column: 3, scope: !6963)
!6965 = !DILocation(line: 986, column: 11, scope: !6963)
!6966 = !DILocation(line: 987, column: 3, scope: !6963)
!6967 = !DILocation(line: 989, column: 11, scope: !6963)
!6968 = !DILocation(line: 990, column: 3, scope: !6963)
!6969 = !DILocation(line: 992, column: 11, scope: !6963)
!6970 = !DILocation(line: 993, column: 3, scope: !6963)
!6971 = !DILocation(line: 995, column: 11, scope: !6963)
!6972 = !DILocation(line: 996, column: 3, scope: !6963)
!6973 = !DILocation(line: 998, column: 3, scope: !6963)
!6974 = !DILocation(line: 999, column: 3, scope: !6963)
!6975 = !DILocation(line: 1002, column: 62, scope: !6955)
!6976 = !DILocation(line: 1002, column: 2, scope: !6955)
!6977 = !DILocation(line: 1004, column: 54, scope: !6955)
!6978 = !DILocation(line: 1004, column: 11, scope: !6955)
!6979 = !DILocation(line: 1004, column: 9, scope: !6955)
!6980 = !DILocation(line: 1005, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 1005, column: 6)
!6982 = !DILocation(line: 1005, column: 27, scope: !6981)
!6983 = !DILocation(line: 1005, column: 31, scope: !6981)
!6984 = !DILocation(line: 1005, column: 38, scope: !6981)
!6985 = !DILocation(line: 1005, column: 6, scope: !6955)
!6986 = !DILocation(line: 1006, column: 3, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 1005, column: 56)
!6988 = !DILocation(line: 1007, column: 3, scope: !6987)
!6989 = !DILocation(line: 1010, column: 2, scope: !6955)
!6990 = !DILocation(line: 1011, column: 1, scope: !6955)
!6991 = distinct !DISubprogram(name: "acpi_bus_notify", scope: !3, file: !3, line: 346, type: !5314, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!6992 = !DILocalVariable(name: "handle", arg: 1, scope: !6991, file: !3, line: 346, type: !4988)
!6993 = !DILocation(line: 346, column: 41, scope: !6991)
!6994 = !DILocalVariable(name: "type", arg: 2, scope: !6991, file: !3, line: 346, type: !204)
!6995 = !DILocation(line: 346, column: 53, scope: !6991)
!6996 = !DILocalVariable(name: "data", arg: 3, scope: !6991, file: !3, line: 346, type: !212)
!6997 = !DILocation(line: 346, column: 65, scope: !6991)
!6998 = !DILocalVariable(name: "adev", scope: !6991, file: !3, line: 348, type: !4983)
!6999 = !DILocation(line: 348, column: 22, scope: !6991)
!7000 = !DILocalVariable(name: "driver", scope: !6991, file: !3, line: 349, type: !5229)
!7001 = !DILocation(line: 349, column: 22, scope: !6991)
!7002 = !DILocalVariable(name: "ost_code", scope: !6991, file: !3, line: 350, type: !204)
!7003 = !DILocation(line: 350, column: 6, scope: !6991)
!7004 = !DILocalVariable(name: "hotplug_event", scope: !6991, file: !3, line: 351, type: !500)
!7005 = !DILocation(line: 351, column: 7, scope: !6991)
!7006 = !DILocation(line: 353, column: 10, scope: !6991)
!7007 = !DILocation(line: 353, column: 2, scope: !6991)
!7008 = !DILocation(line: 355, column: 3, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !7010, file: !3, line: 355, column: 3)
!7010 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 355, column: 3)
!7011 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 353, column: 16)
!7012 = !DILocation(line: 355, column: 3, scope: !7010)
!7013 = !DILocation(line: 356, column: 17, scope: !7011)
!7014 = !DILocation(line: 357, column: 3, scope: !7011)
!7015 = !DILocation(line: 360, column: 3, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !7017, file: !3, line: 360, column: 3)
!7017 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 360, column: 3)
!7018 = !DILocation(line: 360, column: 3, scope: !7017)
!7019 = !DILocation(line: 361, column: 17, scope: !7011)
!7020 = !DILocation(line: 362, column: 3, scope: !7011)
!7021 = !DILocation(line: 365, column: 3, scope: !7022)
!7022 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 365, column: 3)
!7023 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 365, column: 3)
!7024 = !DILocation(line: 365, column: 3, scope: !7023)
!7025 = !DILocation(line: 366, column: 3, scope: !7011)
!7026 = !DILocation(line: 369, column: 3, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 369, column: 3)
!7028 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 369, column: 3)
!7029 = !DILocation(line: 369, column: 3, scope: !7028)
!7030 = !DILocation(line: 370, column: 17, scope: !7011)
!7031 = !DILocation(line: 371, column: 3, scope: !7011)
!7032 = !DILocation(line: 374, column: 3, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !7034, file: !3, line: 374, column: 3)
!7034 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 374, column: 3)
!7035 = !DILocation(line: 374, column: 3, scope: !7034)
!7036 = !DILocation(line: 376, column: 3, scope: !7011)
!7037 = !DILocation(line: 379, column: 3, scope: !7011)
!7038 = !DILocation(line: 381, column: 3, scope: !7011)
!7039 = !DILocation(line: 384, column: 3, scope: !7011)
!7040 = !DILocation(line: 386, column: 3, scope: !7011)
!7041 = !DILocation(line: 389, column: 3, scope: !7011)
!7042 = !DILocation(line: 390, column: 3, scope: !7011)
!7043 = !DILocation(line: 393, column: 3, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7045, file: !3, line: 393, column: 3)
!7045 = distinct !DILexicalBlock(scope: !7011, file: !3, line: 393, column: 3)
!7046 = !DILocation(line: 393, column: 3, scope: !7045)
!7047 = !DILocation(line: 394, column: 3, scope: !7011)
!7048 = !DILocation(line: 397, column: 34, scope: !6991)
!7049 = !DILocation(line: 397, column: 9, scope: !6991)
!7050 = !DILocation(line: 397, column: 7, scope: !6991)
!7051 = !DILocation(line: 398, column: 7, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 398, column: 6)
!7053 = !DILocation(line: 398, column: 6, scope: !6991)
!7054 = !DILocation(line: 399, column: 3, scope: !7052)
!7055 = !DILocation(line: 401, column: 11, scope: !6991)
!7056 = !DILocation(line: 401, column: 17, scope: !6991)
!7057 = !DILocation(line: 401, column: 9, scope: !6991)
!7058 = !DILocation(line: 402, column: 6, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 402, column: 6)
!7060 = !DILocation(line: 402, column: 13, scope: !7059)
!7061 = !DILocation(line: 402, column: 16, scope: !7059)
!7062 = !DILocation(line: 402, column: 24, scope: !7059)
!7063 = !DILocation(line: 402, column: 28, scope: !7059)
!7064 = !DILocation(line: 402, column: 35, scope: !7059)
!7065 = !DILocation(line: 403, column: 7, scope: !7059)
!7066 = !DILocation(line: 403, column: 15, scope: !7059)
!7067 = !DILocation(line: 403, column: 21, scope: !7059)
!7068 = !DILocation(line: 402, column: 6, scope: !6991)
!7069 = !DILocation(line: 404, column: 3, scope: !7059)
!7070 = !DILocation(line: 404, column: 11, scope: !7059)
!7071 = !DILocation(line: 404, column: 15, scope: !7059)
!7072 = !DILocation(line: 404, column: 22, scope: !7059)
!7073 = !DILocation(line: 404, column: 28, scope: !7059)
!7074 = !DILocation(line: 406, column: 7, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 406, column: 6)
!7076 = !DILocation(line: 406, column: 6, scope: !6991)
!7077 = !DILocation(line: 407, column: 28, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 406, column: 22)
!7079 = !DILocation(line: 407, column: 3, scope: !7078)
!7080 = !DILocation(line: 408, column: 3, scope: !7078)
!7081 = !DILocation(line: 411, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 411, column: 6)
!7083 = !DILocation(line: 411, column: 6, scope: !6991)
!7084 = !DILocation(line: 412, column: 3, scope: !7082)
!7085 = !DILocation(line: 414, column: 27, scope: !6991)
!7086 = !DILocation(line: 414, column: 2, scope: !6991)
!7087 = !DILabel(scope: !6991, name: "err", file: !3, line: 416)
!7088 = !DILocation(line: 416, column: 2, scope: !6991)
!7089 = !DILocation(line: 417, column: 20, scope: !6991)
!7090 = !DILocation(line: 417, column: 28, scope: !6991)
!7091 = !DILocation(line: 417, column: 34, scope: !6991)
!7092 = !DILocation(line: 417, column: 2, scope: !6991)
!7093 = !DILocation(line: 418, column: 1, scope: !6991)
!7094 = distinct !DISubprogram(name: "test_bit", scope: !7095, file: !7095, line: 132, type: !7096, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7095 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!7096 = !DISubroutineType(types: !7097)
!7097 = !{!500, !170, !7098}
!7098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7099, size: 64)
!7099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7100)
!7100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !342)
!7101 = !DILocalVariable(name: "nr", arg: 1, scope: !7102, file: !7103, line: 210, type: !170)
!7102 = distinct !DISubprogram(name: "variable_test_bit", scope: !7103, file: !7103, line: 210, type: !7096, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7103 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!7104 = !DILocation(line: 210, column: 52, scope: !7102, inlinedAt: !7105)
!7105 = distinct !DILocation(line: 135, column: 9, scope: !7094)
!7106 = !DILocalVariable(name: "addr", arg: 2, scope: !7102, file: !7103, line: 210, type: !7098)
!7107 = !DILocation(line: 210, column: 86, scope: !7102, inlinedAt: !7105)
!7108 = !DILocalVariable(name: "oldbit", scope: !7102, file: !7103, line: 212, type: !500)
!7109 = !DILocation(line: 212, column: 7, scope: !7102, inlinedAt: !7105)
!7110 = !DILocalVariable(name: "nr", arg: 1, scope: !7111, file: !7103, line: 204, type: !170)
!7111 = distinct !DISubprogram(name: "constant_test_bit", scope: !7103, file: !7103, line: 204, type: !7096, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7112 = !DILocation(line: 204, column: 52, scope: !7111, inlinedAt: !7113)
!7113 = distinct !DILocation(line: 135, column: 9, scope: !7094)
!7114 = !DILocalVariable(name: "addr", arg: 2, scope: !7111, file: !7103, line: 204, type: !7098)
!7115 = !DILocation(line: 204, column: 86, scope: !7111, inlinedAt: !7113)
!7116 = !DILocalVariable(name: "v", arg: 1, scope: !7117, file: !7118, line: 69, type: !7121)
!7117 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7118, file: !7118, line: 69, type: !7119, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7118 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7119 = !DISubroutineType(types: !7120)
!7120 = !{null, !7121, !339}
!7121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7122, size: 64)
!7122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7123)
!7123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7124 = !DILocation(line: 69, column: 73, scope: !7117, inlinedAt: !7125)
!7125 = distinct !DILocation(line: 134, column: 2, scope: !7094)
!7126 = !DILocalVariable(name: "size", arg: 2, scope: !7117, file: !7118, line: 69, type: !339)
!7127 = !DILocation(line: 69, column: 83, scope: !7117, inlinedAt: !7125)
!7128 = !DILocalVariable(name: "nr", arg: 1, scope: !7094, file: !7095, line: 132, type: !170)
!7129 = !DILocation(line: 132, column: 34, scope: !7094)
!7130 = !DILocalVariable(name: "addr", arg: 2, scope: !7094, file: !7095, line: 132, type: !7098)
!7131 = !DILocation(line: 132, column: 68, scope: !7094)
!7132 = !DILocation(line: 134, column: 25, scope: !7094)
!7133 = !DILocation(line: 134, column: 32, scope: !7094)
!7134 = !DILocation(line: 134, column: 30, scope: !7094)
!7135 = !DILocation(line: 71, column: 19, scope: !7117, inlinedAt: !7125)
!7136 = !DILocation(line: 71, column: 22, scope: !7117, inlinedAt: !7125)
!7137 = !DILocation(line: 71, column: 2, scope: !7117, inlinedAt: !7125)
!7138 = !DILocation(line: 72, column: 2, scope: !7117, inlinedAt: !7125)
!7139 = !DILocation(line: 135, column: 9, scope: !7094)
!7140 = !DILocation(line: 206, column: 19, scope: !7111, inlinedAt: !7113)
!7141 = !DILocation(line: 206, column: 22, scope: !7111, inlinedAt: !7113)
!7142 = !DILocation(line: 206, column: 15, scope: !7111, inlinedAt: !7113)
!7143 = !DILocation(line: 207, column: 4, scope: !7111, inlinedAt: !7113)
!7144 = !DILocation(line: 207, column: 9, scope: !7111, inlinedAt: !7113)
!7145 = !DILocation(line: 207, column: 12, scope: !7111, inlinedAt: !7113)
!7146 = !DILocation(line: 206, column: 44, scope: !7111, inlinedAt: !7113)
!7147 = !DILocation(line: 207, column: 37, scope: !7111, inlinedAt: !7113)
!7148 = !DILocation(line: 217, column: 33, scope: !7102, inlinedAt: !7105)
!7149 = !DILocation(line: 217, column: 46, scope: !7102, inlinedAt: !7105)
!7150 = !DILocation(line: 214, column: 2, scope: !7102, inlinedAt: !7105)
!7151 = !{i32 -2147112351, i32 -2147112291}
!7152 = !DILocation(line: 219, column: 9, scope: !7102, inlinedAt: !7105)
!7153 = !DILocation(line: 135, column: 2, scope: !7094)
!7154 = distinct !DISubprogram(name: "kasan_check_read", scope: !7155, file: !7155, line: 34, type: !7156, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7155 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!500, !7121, !7}
!7158 = !DILocalVariable(name: "p", arg: 1, scope: !7154, file: !7155, line: 34, type: !7121)
!7159 = !DILocation(line: 34, column: 58, scope: !7154)
!7160 = !DILocalVariable(name: "size", arg: 2, scope: !7154, file: !7155, line: 34, type: !7)
!7161 = !DILocation(line: 34, column: 74, scope: !7154)
!7162 = !DILocation(line: 36, column: 2, scope: !7154)
!7163 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7164, file: !7164, line: 178, type: !7165, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7164 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7165 = !DISubroutineType(types: !7166)
!7166 = !{null, !7121, !339, !277}
!7167 = !DILocalVariable(name: "ptr", arg: 1, scope: !7163, file: !7164, line: 178, type: !7121)
!7168 = !DILocation(line: 178, column: 60, scope: !7163)
!7169 = !DILocalVariable(name: "size", arg: 2, scope: !7163, file: !7164, line: 178, type: !339)
!7170 = !DILocation(line: 178, column: 72, scope: !7163)
!7171 = !DILocalVariable(name: "type", arg: 3, scope: !7163, file: !7164, line: 179, type: !277)
!7172 = !DILocation(line: 179, column: 15, scope: !7163)
!7173 = !DILocation(line: 179, column: 23, scope: !7163)
!7174 = !DILocalVariable(name: "handle", arg: 1, scope: !5313, file: !3, line: 504, type: !4988)
!7175 = !DILocation(line: 504, column: 40, scope: !5313)
!7176 = !DILocalVariable(name: "event", arg: 2, scope: !5313, file: !3, line: 504, type: !204)
!7177 = !DILocation(line: 504, column: 52, scope: !5313)
!7178 = !DILocalVariable(name: "data", arg: 3, scope: !5313, file: !3, line: 504, type: !212)
!7179 = !DILocation(line: 504, column: 65, scope: !5313)
!7180 = !DILocation(line: 508, column: 6, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 508, column: 6)
!7182 = !DILocation(line: 508, column: 12, scope: !7181)
!7183 = !DILocation(line: 508, column: 6, scope: !5313)
!7184 = !DILocation(line: 509, column: 8, scope: !7185)
!7185 = distinct !DILexicalBlock(scope: !7186, file: !3, line: 509, column: 7)
!7186 = distinct !DILexicalBlock(scope: !7181, file: !3, line: 508, column: 48)
!7187 = !DILocation(line: 509, column: 7, scope: !7186)
!7188 = !DILocation(line: 510, column: 4, scope: !7185)
!7189 = !DILocation(line: 511, column: 2, scope: !7186)
!7190 = !DILocation(line: 512, column: 3, scope: !7181)
!7191 = !DILocation(line: 513, column: 1, scope: !5313)
!7192 = distinct !DISubprogram(name: "sb_notify_work", scope: !3, file: !3, line: 484, type: !1113, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7193 = !DILocalVariable(name: "dummy", arg: 1, scope: !7192, file: !3, line: 484, type: !1115)
!7194 = !DILocation(line: 484, column: 48, scope: !7192)
!7195 = !DILocalVariable(name: "sb_handle", scope: !7192, file: !3, line: 486, type: !4988)
!7196 = !DILocation(line: 486, column: 14, scope: !7192)
!7197 = !DILocation(line: 488, column: 2, scope: !7192)
!7198 = !DILocation(line: 495, column: 2, scope: !7192)
!7199 = !DILocation(line: 496, column: 2, scope: !7192)
!7200 = !DILocation(line: 497, column: 3, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7192, file: !3, line: 496, column: 12)
!7202 = !DILocation(line: 498, column: 21, scope: !7201)
!7203 = !DILocation(line: 498, column: 3, scope: !7201)
!7204 = !DILocation(line: 500, column: 3, scope: !7201)
!7205 = distinct !{!7205, !7199, !7206}
!7206 = !DILocation(line: 501, column: 2, scope: !7192)
!7207 = distinct !DISubprogram(name: "schedule_work", scope: !169, file: !169, line: 566, type: !7208, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7208 = !DISubroutineType(types: !7209)
!7209 = !{!500, !1115}
!7210 = !DILocalVariable(name: "work", arg: 1, scope: !7207, file: !169, line: 566, type: !1115)
!7211 = !DILocation(line: 566, column: 54, scope: !7207)
!7212 = !DILocation(line: 568, column: 20, scope: !7207)
!7213 = !DILocation(line: 568, column: 31, scope: !7207)
!7214 = !DILocation(line: 568, column: 9, scope: !7207)
!7215 = !DILocation(line: 568, column: 2, scope: !7207)
!7216 = distinct !DISubprogram(name: "queue_work", scope: !169, file: !169, line: 504, type: !7217, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !265)
!7217 = !DISubroutineType(types: !7218)
!7218 = !{!500, !1118, !1115}
!7219 = !DILocalVariable(name: "wq", arg: 1, scope: !7216, file: !169, line: 504, type: !1118)
!7220 = !DILocation(line: 504, column: 56, scope: !7216)
!7221 = !DILocalVariable(name: "work", arg: 2, scope: !7216, file: !169, line: 505, type: !1115)
!7222 = !DILocation(line: 505, column: 30, scope: !7216)
!7223 = !DILocation(line: 507, column: 41, scope: !7216)
!7224 = !DILocation(line: 507, column: 45, scope: !7216)
!7225 = !DILocation(line: 507, column: 9, scope: !7216)
!7226 = !DILocation(line: 507, column: 2, scope: !7216)
