; ModuleID = '../bcout/drivers/base/syscore.llvm.bc'
source_filename = "drivers/base/syscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.module = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.44, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.44 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.41, %struct.list_head, %struct.list_head, %union.anon.42 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.31 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.32, i32 }
%union.anon.32 = type { %struct.kuid_t }
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
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.77, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.77 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.78, %union.anon.79, %union.anon.80, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.83, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.83 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.84, void (i8*)*, i8* }
%union.anon.84 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.62, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.62 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.86, %union.anon.87, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%union.anon.86 = type { %struct.list_head }
%union.anon.87 = type { %struct.hlist_node }
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
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.key = type { %struct.refcount_struct, i32, %union.anon.19, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.20, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.21, %union.anon.25, %struct.key_restriction* }
%union.anon.19 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.20 = type { i64 }
%union.anon.21 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.22, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.22 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.25 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.ctl_table*, i32, i32, i32 }
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
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.33, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.34, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.35, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.38, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.33 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.34 = type { %struct.callback_head }
%union.anon.35 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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
%union.anon.38 = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
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
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.36 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.36 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.dev_pm_qos_request = type { i32, %union.anon.45, %struct.device* }
%union.anon.45 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.perf_cpu_context = type { %struct.perf_event_context, %struct.perf_event_context*, i32, i32, %struct.raw_spinlock, %struct.hrtimer, i64, i32, i32, i32, i32, %struct.perf_event**, [2 x %struct.perf_event*] }
%struct.perf_event_context = type { %struct.pmu*, %struct.raw_spinlock, %struct.mutex, %struct.list_head, %struct.perf_event_groups, %struct.perf_event_groups, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, %struct.task_struct*, i64, i64, %struct.perf_event_context*, i64, i64, i32, i8*, %struct.callback_head }
%struct.perf_event_groups = type { %struct.rb_root, i64 }
%struct.kmem_cache = type opaque
%struct.perf_output_handle = type { %struct.perf_event*, %struct.perf_buffer*, i64, i64, i64, %union.anon.46, i32 }
%union.anon.46 = type { i8* }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.47, i64, i64, i64, %union.anon.48, i32, %union.anon.49, %union.anon.50, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32 }
%union.anon.47 = type { i64 }
%union.anon.48 = type { i32 }
%union.anon.49 = type { i64 }
%union.anon.50 = type { i64 }
%struct.hw_perf_event = type { %union.anon.51, %struct.task_struct*, i8*, i64, i32, %struct.local64_t, i64, %union.anon.58, i64, i64, i64, i64 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { i64, %struct.local64_t }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.100, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.99, i32, [12 x i8] }
%union.anon.99 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.100 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.perf_buffer = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.irq_work = type { %union.anon.61, void (%struct.irq_work*)* }
%union.anon.61 = type { %struct.__call_single_node }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.perf_addr_filter_range = type { i64, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.perf_sample_data = type { i64, %struct.perf_raw_record*, %struct.perf_branch_stack*, i64, i64, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.66, i64, i64, i64, %struct.anon.67, %struct.perf_callchain_entry*, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, [8 x i8] }
%struct.perf_raw_record = type { %struct.perf_raw_frag, i32 }
%struct.perf_raw_frag = type <{ %union.anon.64, i64 (i8*, i8*, i64, i64)*, i8*, i32 }>
%union.anon.64 = type { %struct.perf_raw_frag* }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.66 = type { i32, i32 }
%struct.anon.67 = type { i32, i32 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.perf_regs = type { i64, %struct.pt_regs* }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.68, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.71 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i64, i64 }
%union.anon.71 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
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
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }

@syscore_ops_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syscore_ops_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syscore_ops_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@syscore_ops_list = internal global %struct.list_head { %struct.list_head* @syscore_ops_list, %struct.list_head* @syscore_ops_list }, align 8, !dbg !51
@.str = private unnamed_addr constant [16 x i8] c"syscore_suspend\00", align 1
@syscore_suspend.__warned = internal global i8 0, section ".data.once", align 1, !dbg !38
@.str.1 = private unnamed_addr constant [48 x i8] c"Interrupts enabled before system core suspend.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"drivers/base/syscore.c\00", align 1
@syscore_suspend.__warned.3 = internal global i8 0, section ".data.once", align 1, !dbg !44
@.str.4 = private unnamed_addr constant [30 x i8] c"Interrupts enabled after %pS\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\013PM: System core suspend callback %pS failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"syscore_resume\00", align 1
@syscore_resume.__warned = internal global i8 0, section ".data.once", align 1, !dbg !46
@.str.7 = private unnamed_addr constant [47 x i8] c"Interrupts enabled before system core resume.\0A\00", align 1
@syscore_resume.__warned.8 = internal global i8 0, section ".data.once", align 1, !dbg !49
@initcall_debug = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\016PM: Calling %pS\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @register_syscore_ops(%struct.syscore_ops* %ops) #0 !dbg !90 {
entry:
  %ops.addr = alloca %struct.syscore_ops*, align 8
  store %struct.syscore_ops* %ops, %struct.syscore_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.syscore_ops** %ops.addr, metadata !93, metadata !DIExpression()), !dbg !94
  call void @mutex_lock(%struct.mutex* @syscore_ops_lock) #6, !dbg !95
  %0 = load %struct.syscore_ops*, %struct.syscore_ops** %ops.addr, align 8, !dbg !96
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %0, i32 0, i32 0, !dbg !97
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @syscore_ops_list) #6, !dbg !98
  call void @mutex_unlock(%struct.mutex* @syscore_ops_lock) #6, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !101 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !105, metadata !DIExpression()), !dbg !106
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !109
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !110
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !111
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !111
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !112
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #6, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @unregister_syscore_ops(%struct.syscore_ops* %ops) #0 !dbg !115 {
entry:
  %ops.addr = alloca %struct.syscore_ops*, align 8
  store %struct.syscore_ops* %ops, %struct.syscore_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.syscore_ops** %ops.addr, metadata !116, metadata !DIExpression()), !dbg !117
  call void @mutex_lock(%struct.mutex* @syscore_ops_lock) #6, !dbg !118
  %0 = load %struct.syscore_ops*, %struct.syscore_ops** %ops.addr, align 8, !dbg !119
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %0, i32 0, i32 0, !dbg !120
  call void @list_del(%struct.list_head* %node) #6, !dbg !121
  call void @mutex_unlock(%struct.mutex* @syscore_ops_lock) #6, !dbg !122
  ret void, !dbg !123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !124 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !129
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !130
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !131
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !132
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !133
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !134
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !135
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !136
  ret void, !dbg !137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @syscore_suspend() #0 !dbg !40 {
entry:
  %flags.addr.i190 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i190, metadata !138, metadata !DIExpression()), !dbg !143
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !138, metadata !DIExpression()), !dbg !152
  %retval = alloca i32, align 4
  %ops = alloca %struct.syscore_ops*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_once = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp64 = alloca %struct.syscore_ops*, align 8
  %tmp71 = alloca i32, align 4
  %__ret_warn_once77 = alloca i32, align 4
  %_flags78 = alloca i64, align 8
  %__dummy80 = alloca i64, align 8
  %__dummy281 = alloca i64, align 8
  %tmp84 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %__dummy88 = alloca i64, align 8
  %__dummy289 = alloca i64, align 8
  %tmp92 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %__ret_warn_on115 = alloca i32, align 4
  %tmp140 = alloca i64, align 8
  %tmp148 = alloca i64, align 8
  %__mptr156 = alloca i8*, align 8
  %tmp160 = alloca %struct.syscore_ops*, align 8
  %__mptr164 = alloca i8*, align 8
  %tmp168 = alloca %struct.syscore_ops*, align 8
  %__mptr182 = alloca i8*, align 8
  %tmp187 = alloca %struct.syscore_ops*, align 8
  call void @llvm.dbg.declare(metadata %struct.syscore_ops** %ops, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 0, i32* %ret, align 4, !dbg !160
  call void @trace_suspend_resume(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i1 zeroext true) #6, !dbg !161
  store i32 0, i32* %tmp, align 4, !dbg !162
  %0 = load i32, i32* %tmp, align 4, !dbg !165
  %call = call zeroext i1 @pm_wakeup_pending() #6, !dbg !166
  br i1 %call, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !169
  br label %return, !dbg !169

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !172, metadata !DIExpression()), !dbg !173
  br label %do.body, !dbg !173

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !174, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !178, metadata !DIExpression()), !dbg !177
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !177
  %conv = zext i1 %cmp to i32, !dbg !177
  store i32 1, i32* %tmp1, align 4, !dbg !177
  %1 = load i32, i32* %tmp1, align 4, !dbg !177
  %call2 = call i64 @arch_local_save_flags() #6, !dbg !179
  store i64 %call2, i64* %_flags, align 8, !dbg !179
  br label %do.end, !dbg !179

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !183, metadata !DIExpression()), !dbg !182
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !182
  %conv7 = zext i1 %cmp6 to i32, !dbg !182
  store i32 1, i32* %tmp8, align 4, !dbg !182
  %2 = load i32, i32* %tmp8, align 4, !dbg !182
  %3 = load i64, i64* %_flags, align 8, !dbg !184
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !185
  %and.i = and i64 %4, 512, !dbg !186
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !187
  %lnot.i = xor i1 %tobool.i, true, !dbg !187
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !187
  store i32 %lnot.ext.i, i32* %tmp9, align 4, !dbg !184
  %5 = load i32, i32* %tmp9, align 4, !dbg !184
  store i32 %5, i32* %tmp3, align 4, !dbg !179
  %6 = load i32, i32* %tmp3, align 4, !dbg !173
  %tobool = icmp ne i32 %6, 0, !dbg !171
  %lnot = xor i1 %tobool, true, !dbg !171
  %lnot11 = xor i1 %lnot, true, !dbg !171
  %lnot12 = xor i1 %lnot11, true, !dbg !171
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !171
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !171
  %7 = load i32, i32* %__ret_warn_once, align 4, !dbg !188
  %tobool13 = icmp ne i32 %7, 0, !dbg !188
  br i1 %tobool13, label %land.rhs, label %land.end, !dbg !188

land.rhs:                                         ; preds = %do.end
  %8 = load i8, i8* @syscore_suspend.__warned, align 1, !dbg !188
  %tobool14 = trunc i8 %8 to i1, !dbg !188
  %lnot15 = xor i1 %tobool14, true, !dbg !188
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %9 = phi i1 [ false, %do.end ], [ %lnot15, %land.rhs ], !dbg !190
  %lnot17 = xor i1 %9, true, !dbg !188
  %lnot19 = xor i1 %lnot17, true, !dbg !188
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !188
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !188
  %tobool22 = icmp ne i64 %conv21, 0, !dbg !188
  br i1 %tobool22, label %if.then23, label %if.end54, !dbg !171

if.then23:                                        ; preds = %land.end
  store i8 1, i8* @syscore_suspend.__warned, align 1, !dbg !191
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !193, metadata !DIExpression()), !dbg !195
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !195
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !196
  %tobool24 = icmp ne i32 %10, 0, !dbg !196
  %lnot25 = xor i1 %tobool24, true, !dbg !196
  %lnot27 = xor i1 %lnot25, true, !dbg !196
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !196
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !196
  %tobool30 = icmp ne i64 %conv29, 0, !dbg !196
  br i1 %tobool30, label %if.then31, label %if.end46, !dbg !195

if.then31:                                        ; preds = %if.then23
  br label %do.body32, !dbg !196

do.body32:                                        ; preds = %if.then31
  br label %do.body33, !dbg !198

do.body33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !200

do.end34:                                         ; preds = %do.body33
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !198
  br label %do.body35, !dbg !198

do.body35:                                        ; preds = %do.end34
  br label %do.body36, !dbg !202

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !204

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !202

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 60, i32 2313, i64 12) #5, !dbg !206, !srcloc !208
  br label %do.end39, !dbg !206

do.end39:                                         ; preds = %do.body38
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 300) #5, !dbg !209, !srcloc !211
  br label %do.body40, !dbg !202

do.body40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !212

do.end41:                                         ; preds = %do.body40
  br label %do.end42, !dbg !202

do.end42:                                         ; preds = %do.end41
  br label %do.body43, !dbg !198

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !214

do.end44:                                         ; preds = %do.body43
  br label %do.end45, !dbg !198

do.end45:                                         ; preds = %do.end44
  br label %if.end46, !dbg !198

if.end46:                                         ; preds = %do.end45, %if.then23
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !195
  %tobool48 = icmp ne i32 %11, 0, !dbg !195
  %lnot49 = xor i1 %tobool48, true, !dbg !195
  %lnot51 = xor i1 %lnot49, true, !dbg !195
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !195
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !195
  store i64 %conv53, i64* %tmp47, align 8, !dbg !196
  %12 = load i64, i64* %tmp47, align 8, !dbg !195
  br label %if.end54, !dbg !191

if.end54:                                         ; preds = %if.end46, %land.end
  %13 = load i32, i32* %__ret_warn_once, align 4, !dbg !171
  %tobool56 = icmp ne i32 %13, 0, !dbg !171
  %lnot57 = xor i1 %tobool56, true, !dbg !171
  %lnot59 = xor i1 %lnot57, true, !dbg !171
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !171
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !171
  store i64 %conv61, i64* %tmp55, align 8, !dbg !188
  %14 = load i64, i64* %tmp55, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !216, metadata !DIExpression()), !dbg !218
  %15 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i32 0, i32 1), align 8, !dbg !218
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !218
  store i8* %16, i8** %__mptr, align 8, !dbg !218
  br label %do.body62, !dbg !218

do.body62:                                        ; preds = %if.end54
  br label %do.end63, !dbg !219

do.end63:                                         ; preds = %do.body62
  %17 = load i8*, i8** %__mptr, align 8, !dbg !218
  %add.ptr = getelementptr i8, i8* %17, i64 0, !dbg !218
  %18 = bitcast i8* %add.ptr to %struct.syscore_ops*, !dbg !218
  store %struct.syscore_ops* %18, %struct.syscore_ops** %tmp64, align 8, !dbg !219
  %19 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp64, align 8, !dbg !218
  store %struct.syscore_ops* %19, %struct.syscore_ops** %ops, align 8, !dbg !221
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %do.end159, %do.end63
  %20 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !222
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %20, i32 0, i32 0, !dbg !222
  %cmp65 = icmp eq %struct.list_head* %node, @syscore_ops_list, !dbg !222
  %lnot67 = xor i1 %cmp65, true, !dbg !222
  br i1 %lnot67, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %21 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !223
  %suspend = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %21, i32 0, i32 1, !dbg !224
  %22 = load i32 ()*, i32 ()** %suspend, align 8, !dbg !224
  %tobool69 = icmp ne i32 ()* %22, null, !dbg !223
  br i1 %tobool69, label %if.then70, label %if.end155, !dbg !225

if.then70:                                        ; preds = %for.body
  store i32 0, i32* %tmp71, align 4, !dbg !226
  %23 = load i32, i32* %tmp71, align 4, !dbg !229
  %24 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !230
  %suspend72 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %24, i32 0, i32 1, !dbg !231
  %25 = load i32 ()*, i32 ()** %suspend72, align 8, !dbg !231
  %call73 = call i32 %25() #6, !dbg !230
  store i32 %call73, i32* %ret, align 4, !dbg !232
  %26 = load i32, i32* %ret, align 4, !dbg !233
  %tobool74 = icmp ne i32 %26, 0, !dbg !233
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !235

if.then75:                                        ; preds = %if.then70
  br label %err_out, !dbg !236

if.end76:                                         ; preds = %if.then70
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once77, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i64* %_flags78, metadata !239, metadata !DIExpression()), !dbg !240
  br label %do.body79, !dbg !240

do.body79:                                        ; preds = %if.end76
  call void @llvm.dbg.declare(metadata i64* %__dummy80, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i64* %__dummy281, metadata !245, metadata !DIExpression()), !dbg !244
  %cmp82 = icmp eq i64* %__dummy80, %__dummy281, !dbg !244
  %conv83 = zext i1 %cmp82 to i32, !dbg !244
  store i32 1, i32* %tmp84, align 4, !dbg !244
  %27 = load i32, i32* %tmp84, align 4, !dbg !244
  %call85 = call i64 @arch_local_save_flags() #6, !dbg !246
  store i64 %call85, i64* %_flags78, align 8, !dbg !246
  br label %do.end86, !dbg !246

do.end86:                                         ; preds = %do.body79
  call void @llvm.dbg.declare(metadata i64* %__dummy88, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i64* %__dummy289, metadata !250, metadata !DIExpression()), !dbg !249
  %cmp90 = icmp eq i64* %__dummy88, %__dummy289, !dbg !249
  %conv91 = zext i1 %cmp90 to i32, !dbg !249
  store i32 1, i32* %tmp92, align 4, !dbg !249
  %28 = load i32, i32* %tmp92, align 4, !dbg !249
  %29 = load i64, i64* %_flags78, align 8, !dbg !251
  store i64 %29, i64* %flags.addr.i190, align 8
  %30 = load i64, i64* %flags.addr.i190, align 8, !dbg !252
  %and.i191 = and i64 %30, 512, !dbg !253
  %tobool.i192 = icmp ne i64 %and.i191, 0, !dbg !254
  %lnot.i193 = xor i1 %tobool.i192, true, !dbg !254
  %lnot.ext.i194 = zext i1 %lnot.i193 to i32, !dbg !254
  store i32 %lnot.ext.i194, i32* %tmp93, align 4, !dbg !251
  %31 = load i32, i32* %tmp93, align 4, !dbg !251
  store i32 %31, i32* %tmp87, align 4, !dbg !246
  %32 = load i32, i32* %tmp87, align 4, !dbg !240
  %tobool95 = icmp ne i32 %32, 0, !dbg !238
  %lnot96 = xor i1 %tobool95, true, !dbg !238
  %lnot98 = xor i1 %lnot96, true, !dbg !238
  %lnot100 = xor i1 %lnot98, true, !dbg !238
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !238
  store i32 %lnot.ext101, i32* %__ret_warn_once77, align 4, !dbg !238
  %33 = load i32, i32* %__ret_warn_once77, align 4, !dbg !255
  %tobool102 = icmp ne i32 %33, 0, !dbg !255
  br i1 %tobool102, label %land.rhs103, label %land.end107, !dbg !255

land.rhs103:                                      ; preds = %do.end86
  %34 = load i8, i8* @syscore_suspend.__warned.3, align 1, !dbg !255
  %tobool104 = trunc i8 %34 to i1, !dbg !255
  %lnot105 = xor i1 %tobool104, true, !dbg !255
  br label %land.end107

land.end107:                                      ; preds = %land.rhs103, %do.end86
  %35 = phi i1 [ false, %do.end86 ], [ %lnot105, %land.rhs103 ], !dbg !257
  %lnot108 = xor i1 %35, true, !dbg !255
  %lnot110 = xor i1 %lnot108, true, !dbg !255
  %lnot.ext111 = zext i1 %lnot110 to i32, !dbg !255
  %conv112 = sext i32 %lnot.ext111 to i64, !dbg !255
  %tobool113 = icmp ne i64 %conv112, 0, !dbg !255
  br i1 %tobool113, label %if.then114, label %if.end147, !dbg !238

if.then114:                                       ; preds = %land.end107
  store i8 1, i8* @syscore_suspend.__warned.3, align 1, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on115, metadata !260, metadata !DIExpression()), !dbg !262
  store i32 1, i32* %__ret_warn_on115, align 4, !dbg !262
  %36 = load i32, i32* %__ret_warn_on115, align 4, !dbg !263
  %tobool116 = icmp ne i32 %36, 0, !dbg !263
  %lnot117 = xor i1 %tobool116, true, !dbg !263
  %lnot119 = xor i1 %lnot117, true, !dbg !263
  %lnot.ext120 = zext i1 %lnot119 to i32, !dbg !263
  %conv121 = sext i32 %lnot.ext120 to i64, !dbg !263
  %tobool122 = icmp ne i64 %conv121, 0, !dbg !263
  br i1 %tobool122, label %if.then123, label %if.end139, !dbg !262

if.then123:                                       ; preds = %if.then114
  br label %do.body124, !dbg !263

do.body124:                                       ; preds = %if.then123
  br label %do.body125, !dbg !265

do.body125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !267

do.end126:                                        ; preds = %do.body125
  %37 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !265
  %suspend127 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %37, i32 0, i32 1, !dbg !265
  %38 = load i32 ()*, i32 ()** %suspend127, align 8, !dbg !265
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 ()* %38) #6, !dbg !265
  br label %do.body128, !dbg !265

do.body128:                                       ; preds = %do.end126
  br label %do.body129, !dbg !269

do.body129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !271

do.end130:                                        ; preds = %do.body129
  br label %do.body131, !dbg !269

do.body131:                                       ; preds = %do.end130
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 69, i32 2313, i64 12) #5, !dbg !273, !srcloc !275
  br label %do.end132, !dbg !273

do.end132:                                        ; preds = %do.body131
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 303) #5, !dbg !276, !srcloc !278
  br label %do.body133, !dbg !269

do.body133:                                       ; preds = %do.end132
  br label %do.end134, !dbg !279

do.end134:                                        ; preds = %do.body133
  br label %do.end135, !dbg !269

do.end135:                                        ; preds = %do.end134
  br label %do.body136, !dbg !265

do.body136:                                       ; preds = %do.end135
  br label %do.end137, !dbg !281

do.end137:                                        ; preds = %do.body136
  br label %do.end138, !dbg !265

do.end138:                                        ; preds = %do.end137
  br label %if.end139, !dbg !265

if.end139:                                        ; preds = %do.end138, %if.then114
  %39 = load i32, i32* %__ret_warn_on115, align 4, !dbg !262
  %tobool141 = icmp ne i32 %39, 0, !dbg !262
  %lnot142 = xor i1 %tobool141, true, !dbg !262
  %lnot144 = xor i1 %lnot142, true, !dbg !262
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !262
  %conv146 = sext i32 %lnot.ext145 to i64, !dbg !262
  store i64 %conv146, i64* %tmp140, align 8, !dbg !263
  %40 = load i64, i64* %tmp140, align 8, !dbg !262
  br label %if.end147, !dbg !258

if.end147:                                        ; preds = %if.end139, %land.end107
  %41 = load i32, i32* %__ret_warn_once77, align 4, !dbg !238
  %tobool149 = icmp ne i32 %41, 0, !dbg !238
  %lnot150 = xor i1 %tobool149, true, !dbg !238
  %lnot152 = xor i1 %lnot150, true, !dbg !238
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !238
  %conv154 = sext i32 %lnot.ext153 to i64, !dbg !238
  store i64 %conv154, i64* %tmp148, align 8, !dbg !255
  %42 = load i64, i64* %tmp148, align 8, !dbg !238
  br label %if.end155, !dbg !283

if.end155:                                        ; preds = %if.end147, %for.body
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %if.end155
  call void @llvm.dbg.declare(metadata i8** %__mptr156, metadata !284, metadata !DIExpression()), !dbg !286
  %43 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !286
  %node157 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %43, i32 0, i32 0, !dbg !286
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node157, i32 0, i32 1, !dbg !286
  %44 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !286
  %45 = bitcast %struct.list_head* %44 to i8*, !dbg !286
  store i8* %45, i8** %__mptr156, align 8, !dbg !286
  br label %do.body158, !dbg !286

do.body158:                                       ; preds = %for.inc
  br label %do.end159, !dbg !287

do.end159:                                        ; preds = %do.body158
  %46 = load i8*, i8** %__mptr156, align 8, !dbg !286
  %add.ptr161 = getelementptr i8, i8* %46, i64 0, !dbg !286
  %47 = bitcast i8* %add.ptr161 to %struct.syscore_ops*, !dbg !286
  store %struct.syscore_ops* %47, %struct.syscore_ops** %tmp160, align 8, !dbg !287
  %48 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp160, align 8, !dbg !286
  store %struct.syscore_ops* %48, %struct.syscore_ops** %ops, align 8, !dbg !222
  br label %for.cond, !dbg !222, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  call void @trace_suspend_resume(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i1 zeroext false) #6, !dbg !291
  store i32 0, i32* %retval, align 4, !dbg !292
  br label %return, !dbg !292

err_out:                                          ; preds = %if.then75
  call void @llvm.dbg.label(metadata !293), !dbg !294
  %49 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !295
  %suspend162 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %49, i32 0, i32 1, !dbg !295
  %50 = load i32 ()*, i32 ()** %suspend162, align 8, !dbg !295
  %call163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 ()* %50) #7, !dbg !295
  call void @llvm.dbg.declare(metadata i8** %__mptr164, metadata !296, metadata !DIExpression()), !dbg !299
  %51 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !299
  %node165 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %51, i32 0, i32 0, !dbg !299
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node165, i32 0, i32 0, !dbg !299
  %52 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !299
  %53 = bitcast %struct.list_head* %52 to i8*, !dbg !299
  store i8* %53, i8** %__mptr164, align 8, !dbg !299
  br label %do.body166, !dbg !299

do.body166:                                       ; preds = %err_out
  br label %do.end167, !dbg !300

do.end167:                                        ; preds = %do.body166
  %54 = load i8*, i8** %__mptr164, align 8, !dbg !299
  %add.ptr169 = getelementptr i8, i8* %54, i64 0, !dbg !299
  %55 = bitcast i8* %add.ptr169 to %struct.syscore_ops*, !dbg !299
  store %struct.syscore_ops* %55, %struct.syscore_ops** %tmp168, align 8, !dbg !300
  %56 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp168, align 8, !dbg !299
  store %struct.syscore_ops* %56, %struct.syscore_ops** %ops, align 8, !dbg !302
  br label %for.cond170, !dbg !302

for.cond170:                                      ; preds = %do.end186, %do.end167
  %57 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !303
  %node171 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %57, i32 0, i32 0, !dbg !303
  %cmp172 = icmp eq %struct.list_head* %node171, @syscore_ops_list, !dbg !303
  %lnot174 = xor i1 %cmp172, true, !dbg !303
  br i1 %lnot174, label %for.body176, label %for.end189, !dbg !302

for.body176:                                      ; preds = %for.cond170
  %58 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !305
  %resume = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %58, i32 0, i32 2, !dbg !307
  %59 = load void ()*, void ()** %resume, align 8, !dbg !307
  %tobool177 = icmp ne void ()* %59, null, !dbg !305
  br i1 %tobool177, label %if.then178, label %if.end180, !dbg !308

if.then178:                                       ; preds = %for.body176
  %60 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !309
  %resume179 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %60, i32 0, i32 2, !dbg !310
  %61 = load void ()*, void ()** %resume179, align 8, !dbg !310
  call void %61() #6, !dbg !309
  br label %if.end180, !dbg !309

if.end180:                                        ; preds = %if.then178, %for.body176
  br label %for.inc181, !dbg !307

for.inc181:                                       ; preds = %if.end180
  call void @llvm.dbg.declare(metadata i8** %__mptr182, metadata !311, metadata !DIExpression()), !dbg !313
  %62 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !313
  %node183 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %62, i32 0, i32 0, !dbg !313
  %next184 = getelementptr inbounds %struct.list_head, %struct.list_head* %node183, i32 0, i32 0, !dbg !313
  %63 = load %struct.list_head*, %struct.list_head** %next184, align 8, !dbg !313
  %64 = bitcast %struct.list_head* %63 to i8*, !dbg !313
  store i8* %64, i8** %__mptr182, align 8, !dbg !313
  br label %do.body185, !dbg !313

do.body185:                                       ; preds = %for.inc181
  br label %do.end186, !dbg !314

do.end186:                                        ; preds = %do.body185
  %65 = load i8*, i8** %__mptr182, align 8, !dbg !313
  %add.ptr188 = getelementptr i8, i8* %65, i64 0, !dbg !313
  %66 = bitcast i8* %add.ptr188 to %struct.syscore_ops*, !dbg !313
  store %struct.syscore_ops* %66, %struct.syscore_ops** %tmp187, align 8, !dbg !314
  %67 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp187, align 8, !dbg !313
  store %struct.syscore_ops* %67, %struct.syscore_ops** %ops, align 8, !dbg !303
  br label %for.cond170, !dbg !303, !llvm.loop !316

for.end189:                                       ; preds = %for.cond170
  %68 = load i32, i32* %ret, align 4, !dbg !318
  store i32 %68, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

return:                                           ; preds = %for.end189, %for.end, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !320
  ret i32 %69, !dbg !320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_suspend_resume(i8* %action, i32 %val, i1 zeroext %start) #0 !dbg !321 {
entry:
  %action.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %start.addr = alloca i8, align 1
  store i8* %action, i8** %action.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %action.addr, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !330, metadata !DIExpression()), !dbg !329
  %frombool = zext i1 %start to i8
  store i8 %frombool, i8* %start.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %start.addr, metadata !331, metadata !DIExpression()), !dbg !329
  ret void, !dbg !329
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @pm_wakeup_pending() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !332 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !339, metadata !DIExpression()), !dbg !338
  %0 = load i64, i64* %__edi, align 8, !dbg !338
  store i64 %0, i64* %__edi, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !340, metadata !DIExpression()), !dbg !338
  %1 = load i64, i64* %__esi, align 8, !dbg !338
  store i64 %1, i64* %__esi, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !341, metadata !DIExpression()), !dbg !338
  %2 = load i64, i64* %__edx, align 8, !dbg !338
  store i64 %2, i64* %__edx, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !342, metadata !DIExpression()), !dbg !338
  %3 = load i64, i64* %__ecx, align 8, !dbg !338
  store i64 %3, i64* %__ecx, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !343, metadata !DIExpression()), !dbg !338
  %4 = load i64, i64* %__eax, align 8, !dbg !338
  store i64 %4, i64* %__eax, align 8, !dbg !338
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !338
  %6 = call i64 @llvm.read_register.i64(metadata !84), !dbg !344
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !344, !srcloc !347
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !344
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !344
  store i64 %asmresult, i64* %__eax, align 8, !dbg !344
  call void @llvm.write_register.i64(metadata !84, i64 %asmresult1), !dbg !344
  %8 = load i64, i64* %__eax, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !348, metadata !DIExpression()), !dbg !350
  store i64 -1, i64* %__mask, align 8, !dbg !350
  %9 = load i64, i64* %__mask, align 8, !dbg !350
  store i64 %9, i64* %tmp, align 8, !dbg !350
  %10 = load i64, i64* %tmp, align 8, !dbg !350
  %and = and i64 %8, %10, !dbg !344
  store i64 %and, i64* %__ret, align 8, !dbg !344
  %11 = load i64, i64* %__ret, align 8, !dbg !338
  store i64 %11, i64* %tmp2, align 8, !dbg !351
  %12 = load i64, i64* %tmp2, align 8, !dbg !338
  ret i64 %12, !dbg !352
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @syscore_resume() #0 !dbg !48 {
entry:
  %flags.addr.i155 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i155, metadata !138, metadata !DIExpression()), !dbg !353
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !138, metadata !DIExpression()), !dbg !362
  %ops = alloca %struct.syscore_ops*, align 8
  %__ret_warn_once = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  %tmp52 = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp61 = alloca %struct.syscore_ops*, align 8
  %tmp68 = alloca i32, align 4
  %__ret_warn_once70 = alloca i32, align 4
  %_flags71 = alloca i64, align 8
  %__dummy73 = alloca i64, align 8
  %__dummy274 = alloca i64, align 8
  %tmp77 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %__dummy81 = alloca i64, align 8
  %__dummy282 = alloca i64, align 8
  %tmp85 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  %__ret_warn_on108 = alloca i32, align 4
  %tmp133 = alloca i64, align 8
  %tmp141 = alloca i64, align 8
  %__mptr149 = alloca i8*, align 8
  %tmp153 = alloca %struct.syscore_ops*, align 8
  call void @llvm.dbg.declare(metadata %struct.syscore_ops** %ops, metadata !367, metadata !DIExpression()), !dbg !368
  call void @trace_suspend_resume(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0, i1 zeroext true) #6, !dbg !369
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !372, metadata !DIExpression()), !dbg !373
  br label %do.body, !dbg !373

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !374, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !378, metadata !DIExpression()), !dbg !377
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !377
  %conv = zext i1 %cmp to i32, !dbg !377
  store i32 1, i32* %tmp, align 4, !dbg !377
  %0 = load i32, i32* %tmp, align 4, !dbg !377
  %call = call i64 @arch_local_save_flags() #6, !dbg !379
  store i64 %call, i64* %_flags, align 8, !dbg !379
  br label %do.end, !dbg !379

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !383, metadata !DIExpression()), !dbg !382
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !382
  %conv6 = zext i1 %cmp5 to i32, !dbg !382
  store i32 1, i32* %tmp7, align 4, !dbg !382
  %1 = load i32, i32* %tmp7, align 4, !dbg !382
  %2 = load i64, i64* %_flags, align 8, !dbg !384
  store i64 %2, i64* %flags.addr.i, align 8
  %3 = load i64, i64* %flags.addr.i, align 8, !dbg !385
  %and.i = and i64 %3, 512, !dbg !386
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !387
  %lnot.i = xor i1 %tobool.i, true, !dbg !387
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !387
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !384
  %4 = load i32, i32* %tmp8, align 4, !dbg !384
  store i32 %4, i32* %tmp1, align 4, !dbg !379
  %5 = load i32, i32* %tmp1, align 4, !dbg !373
  %tobool = icmp ne i32 %5, 0, !dbg !371
  %lnot = xor i1 %tobool, true, !dbg !371
  %lnot10 = xor i1 %lnot, true, !dbg !371
  %lnot11 = xor i1 %lnot10, true, !dbg !371
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !371
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !371
  %6 = load i32, i32* %__ret_warn_once, align 4, !dbg !388
  %tobool12 = icmp ne i32 %6, 0, !dbg !388
  br i1 %tobool12, label %land.rhs, label %land.end, !dbg !388

land.rhs:                                         ; preds = %do.end
  %7 = load i8, i8* @syscore_resume.__warned, align 1, !dbg !388
  %tobool13 = trunc i8 %7 to i1, !dbg !388
  %lnot14 = xor i1 %tobool13, true, !dbg !388
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %8 = phi i1 [ false, %do.end ], [ %lnot14, %land.rhs ], !dbg !390
  %lnot16 = xor i1 %8, true, !dbg !388
  %lnot18 = xor i1 %lnot16, true, !dbg !388
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !388
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !388
  %tobool21 = icmp ne i64 %conv20, 0, !dbg !388
  br i1 %tobool21, label %if.then, label %if.end51, !dbg !371

if.then:                                          ; preds = %land.end
  store i8 1, i8* @syscore_resume.__warned, align 1, !dbg !391
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !393, metadata !DIExpression()), !dbg !395
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !395
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !396
  %tobool22 = icmp ne i32 %9, 0, !dbg !396
  %lnot23 = xor i1 %tobool22, true, !dbg !396
  %lnot25 = xor i1 %lnot23, true, !dbg !396
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !396
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !396
  %tobool28 = icmp ne i64 %conv27, 0, !dbg !396
  br i1 %tobool28, label %if.then29, label %if.end, !dbg !395

if.then29:                                        ; preds = %if.then
  br label %do.body30, !dbg !396

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !398

do.body31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !400

do.end32:                                         ; preds = %do.body31
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !398
  br label %do.body33, !dbg !398

do.body33:                                        ; preds = %do.end32
  br label %do.body34, !dbg !402

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !404

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !402

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 97, i32 2313, i64 12) #5, !dbg !406, !srcloc !408
  br label %do.end37, !dbg !406

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 306) #5, !dbg !409, !srcloc !411
  br label %do.body38, !dbg !402

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !412

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !402

do.end40:                                         ; preds = %do.end39
  br label %do.body41, !dbg !398

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !414

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !398

do.end43:                                         ; preds = %do.end42
  br label %if.end, !dbg !398

if.end:                                           ; preds = %do.end43, %if.then
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !395
  %tobool45 = icmp ne i32 %10, 0, !dbg !395
  %lnot46 = xor i1 %tobool45, true, !dbg !395
  %lnot48 = xor i1 %lnot46, true, !dbg !395
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !395
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !395
  store i64 %conv50, i64* %tmp44, align 8, !dbg !396
  %11 = load i64, i64* %tmp44, align 8, !dbg !395
  br label %if.end51, !dbg !391

if.end51:                                         ; preds = %if.end, %land.end
  %12 = load i32, i32* %__ret_warn_once, align 4, !dbg !371
  %tobool53 = icmp ne i32 %12, 0, !dbg !371
  %lnot54 = xor i1 %tobool53, true, !dbg !371
  %lnot56 = xor i1 %lnot54, true, !dbg !371
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !371
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !371
  store i64 %conv58, i64* %tmp52, align 8, !dbg !388
  %13 = load i64, i64* %tmp52, align 8, !dbg !371
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !416, metadata !DIExpression()), !dbg !418
  %14 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i32 0, i32 0), align 8, !dbg !418
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !418
  store i8* %15, i8** %__mptr, align 8, !dbg !418
  br label %do.body59, !dbg !418

do.body59:                                        ; preds = %if.end51
  br label %do.end60, !dbg !419

do.end60:                                         ; preds = %do.body59
  %16 = load i8*, i8** %__mptr, align 8, !dbg !418
  %add.ptr = getelementptr i8, i8* %16, i64 0, !dbg !418
  %17 = bitcast i8* %add.ptr to %struct.syscore_ops*, !dbg !418
  store %struct.syscore_ops* %17, %struct.syscore_ops** %tmp61, align 8, !dbg !419
  %18 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp61, align 8, !dbg !418
  store %struct.syscore_ops* %18, %struct.syscore_ops** %ops, align 8, !dbg !421
  br label %for.cond, !dbg !421

for.cond:                                         ; preds = %do.end152, %do.end60
  %19 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !422
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %19, i32 0, i32 0, !dbg !422
  %cmp62 = icmp eq %struct.list_head* %node, @syscore_ops_list, !dbg !422
  %lnot64 = xor i1 %cmp62, true, !dbg !422
  br i1 %lnot64, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %20 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !423
  %resume = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %20, i32 0, i32 2, !dbg !424
  %21 = load void ()*, void ()** %resume, align 8, !dbg !424
  %tobool66 = icmp ne void ()* %21, null, !dbg !423
  br i1 %tobool66, label %if.then67, label %if.end148, !dbg !425

if.then67:                                        ; preds = %for.body
  store i32 0, i32* %tmp68, align 4, !dbg !426
  %22 = load i32, i32* %tmp68, align 4, !dbg !429
  %23 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !430
  %resume69 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %23, i32 0, i32 2, !dbg !431
  %24 = load void ()*, void ()** %resume69, align 8, !dbg !431
  call void %24() #6, !dbg !430
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once70, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %_flags71, metadata !434, metadata !DIExpression()), !dbg !435
  br label %do.body72, !dbg !435

do.body72:                                        ; preds = %if.then67
  call void @llvm.dbg.declare(metadata i64* %__dummy73, metadata !436, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i64* %__dummy274, metadata !440, metadata !DIExpression()), !dbg !439
  %cmp75 = icmp eq i64* %__dummy73, %__dummy274, !dbg !439
  %conv76 = zext i1 %cmp75 to i32, !dbg !439
  store i32 1, i32* %tmp77, align 4, !dbg !439
  %25 = load i32, i32* %tmp77, align 4, !dbg !439
  %call78 = call i64 @arch_local_save_flags() #6, !dbg !441
  store i64 %call78, i64* %_flags71, align 8, !dbg !441
  br label %do.end79, !dbg !441

do.end79:                                         ; preds = %do.body72
  call void @llvm.dbg.declare(metadata i64* %__dummy81, metadata !442, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i64* %__dummy282, metadata !445, metadata !DIExpression()), !dbg !444
  %cmp83 = icmp eq i64* %__dummy81, %__dummy282, !dbg !444
  %conv84 = zext i1 %cmp83 to i32, !dbg !444
  store i32 1, i32* %tmp85, align 4, !dbg !444
  %26 = load i32, i32* %tmp85, align 4, !dbg !444
  %27 = load i64, i64* %_flags71, align 8, !dbg !446
  store i64 %27, i64* %flags.addr.i155, align 8
  %28 = load i64, i64* %flags.addr.i155, align 8, !dbg !447
  %and.i156 = and i64 %28, 512, !dbg !448
  %tobool.i157 = icmp ne i64 %and.i156, 0, !dbg !449
  %lnot.i158 = xor i1 %tobool.i157, true, !dbg !449
  %lnot.ext.i159 = zext i1 %lnot.i158 to i32, !dbg !449
  store i32 %lnot.ext.i159, i32* %tmp86, align 4, !dbg !446
  %29 = load i32, i32* %tmp86, align 4, !dbg !446
  store i32 %29, i32* %tmp80, align 4, !dbg !441
  %30 = load i32, i32* %tmp80, align 4, !dbg !435
  %tobool88 = icmp ne i32 %30, 0, !dbg !433
  %lnot89 = xor i1 %tobool88, true, !dbg !433
  %lnot91 = xor i1 %lnot89, true, !dbg !433
  %lnot93 = xor i1 %lnot91, true, !dbg !433
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !433
  store i32 %lnot.ext94, i32* %__ret_warn_once70, align 4, !dbg !433
  %31 = load i32, i32* %__ret_warn_once70, align 4, !dbg !450
  %tobool95 = icmp ne i32 %31, 0, !dbg !450
  br i1 %tobool95, label %land.rhs96, label %land.end100, !dbg !450

land.rhs96:                                       ; preds = %do.end79
  %32 = load i8, i8* @syscore_resume.__warned.8, align 1, !dbg !450
  %tobool97 = trunc i8 %32 to i1, !dbg !450
  %lnot98 = xor i1 %tobool97, true, !dbg !450
  br label %land.end100

land.end100:                                      ; preds = %land.rhs96, %do.end79
  %33 = phi i1 [ false, %do.end79 ], [ %lnot98, %land.rhs96 ], !dbg !452
  %lnot101 = xor i1 %33, true, !dbg !450
  %lnot103 = xor i1 %lnot101, true, !dbg !450
  %lnot.ext104 = zext i1 %lnot103 to i32, !dbg !450
  %conv105 = sext i32 %lnot.ext104 to i64, !dbg !450
  %tobool106 = icmp ne i64 %conv105, 0, !dbg !450
  br i1 %tobool106, label %if.then107, label %if.end140, !dbg !433

if.then107:                                       ; preds = %land.end100
  store i8 1, i8* @syscore_resume.__warned.8, align 1, !dbg !453
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on108, metadata !455, metadata !DIExpression()), !dbg !457
  store i32 1, i32* %__ret_warn_on108, align 4, !dbg !457
  %34 = load i32, i32* %__ret_warn_on108, align 4, !dbg !458
  %tobool109 = icmp ne i32 %34, 0, !dbg !458
  %lnot110 = xor i1 %tobool109, true, !dbg !458
  %lnot112 = xor i1 %lnot110, true, !dbg !458
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !458
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !458
  %tobool115 = icmp ne i64 %conv114, 0, !dbg !458
  br i1 %tobool115, label %if.then116, label %if.end132, !dbg !457

if.then116:                                       ; preds = %if.then107
  br label %do.body117, !dbg !458

do.body117:                                       ; preds = %if.then116
  br label %do.body118, !dbg !460

do.body118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !462

do.end119:                                        ; preds = %do.body118
  %35 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !460
  %resume120 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %35, i32 0, i32 2, !dbg !460
  %36 = load void ()*, void ()** %resume120, align 8, !dbg !460
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), void ()* %36) #6, !dbg !460
  br label %do.body121, !dbg !460

do.body121:                                       ; preds = %do.end119
  br label %do.body122, !dbg !464

do.body122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !466

do.end123:                                        ; preds = %do.body122
  br label %do.body124, !dbg !464

do.body124:                                       ; preds = %do.end123
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 104, i32 2313, i64 12) #5, !dbg !468, !srcloc !470
  br label %do.end125, !dbg !468

do.end125:                                        ; preds = %do.body124
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 309) #5, !dbg !471, !srcloc !473
  br label %do.body126, !dbg !464

do.body126:                                       ; preds = %do.end125
  br label %do.end127, !dbg !474

do.end127:                                        ; preds = %do.body126
  br label %do.end128, !dbg !464

do.end128:                                        ; preds = %do.end127
  br label %do.body129, !dbg !460

do.body129:                                       ; preds = %do.end128
  br label %do.end130, !dbg !476

do.end130:                                        ; preds = %do.body129
  br label %do.end131, !dbg !460

do.end131:                                        ; preds = %do.end130
  br label %if.end132, !dbg !460

if.end132:                                        ; preds = %do.end131, %if.then107
  %37 = load i32, i32* %__ret_warn_on108, align 4, !dbg !457
  %tobool134 = icmp ne i32 %37, 0, !dbg !457
  %lnot135 = xor i1 %tobool134, true, !dbg !457
  %lnot137 = xor i1 %lnot135, true, !dbg !457
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !457
  %conv139 = sext i32 %lnot.ext138 to i64, !dbg !457
  store i64 %conv139, i64* %tmp133, align 8, !dbg !458
  %38 = load i64, i64* %tmp133, align 8, !dbg !457
  br label %if.end140, !dbg !453

if.end140:                                        ; preds = %if.end132, %land.end100
  %39 = load i32, i32* %__ret_warn_once70, align 4, !dbg !433
  %tobool142 = icmp ne i32 %39, 0, !dbg !433
  %lnot143 = xor i1 %tobool142, true, !dbg !433
  %lnot145 = xor i1 %lnot143, true, !dbg !433
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !433
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !433
  store i64 %conv147, i64* %tmp141, align 8, !dbg !450
  %40 = load i64, i64* %tmp141, align 8, !dbg !433
  br label %if.end148, !dbg !478

if.end148:                                        ; preds = %if.end140, %for.body
  br label %for.inc, !dbg !424

for.inc:                                          ; preds = %if.end148
  call void @llvm.dbg.declare(metadata i8** %__mptr149, metadata !479, metadata !DIExpression()), !dbg !481
  %41 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !481
  %node150 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %41, i32 0, i32 0, !dbg !481
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node150, i32 0, i32 0, !dbg !481
  %42 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !481
  %43 = bitcast %struct.list_head* %42 to i8*, !dbg !481
  store i8* %43, i8** %__mptr149, align 8, !dbg !481
  br label %do.body151, !dbg !481

do.body151:                                       ; preds = %for.inc
  br label %do.end152, !dbg !482

do.end152:                                        ; preds = %do.body151
  %44 = load i8*, i8** %__mptr149, align 8, !dbg !481
  %add.ptr154 = getelementptr i8, i8* %44, i64 0, !dbg !481
  %45 = bitcast i8* %add.ptr154 to %struct.syscore_ops*, !dbg !481
  store %struct.syscore_ops* %45, %struct.syscore_ops** %tmp153, align 8, !dbg !482
  %46 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp153, align 8, !dbg !481
  store %struct.syscore_ops* %46, %struct.syscore_ops** %ops, align 8, !dbg !422
  br label %for.cond, !dbg !422, !llvm.loop !484

for.end:                                          ; preds = %for.cond
  call void @trace_suspend_resume(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0, i1 zeroext false) #6, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @syscore_shutdown() #0 !dbg !488 {
entry:
  %ops = alloca %struct.syscore_ops*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.syscore_ops*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.syscore_ops*, align 8
  call void @llvm.dbg.declare(metadata %struct.syscore_ops** %ops, metadata !489, metadata !DIExpression()), !dbg !490
  call void @mutex_lock(%struct.mutex* @syscore_ops_lock) #6, !dbg !491
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !492, metadata !DIExpression()), !dbg !495
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i32 0, i32 1), align 8, !dbg !495
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !495
  store i8* %1, i8** %__mptr, align 8, !dbg !495
  br label %do.body, !dbg !495

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !496

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !495
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !495
  %3 = bitcast i8* %add.ptr to %struct.syscore_ops*, !dbg !495
  store %struct.syscore_ops* %3, %struct.syscore_ops** %tmp, align 8, !dbg !496
  %4 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp, align 8, !dbg !495
  store %struct.syscore_ops* %4, %struct.syscore_ops** %ops, align 8, !dbg !498
  br label %for.cond, !dbg !498

for.cond:                                         ; preds = %do.end9, %do.end
  %5 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !499
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %5, i32 0, i32 0, !dbg !499
  %cmp = icmp eq %struct.list_head* %node, @syscore_ops_list, !dbg !499
  %lnot = xor i1 %cmp, true, !dbg !499
  br i1 %lnot, label %for.body, label %for.end, !dbg !498

for.body:                                         ; preds = %for.cond
  %6 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !501
  %shutdown = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %6, i32 0, i32 3, !dbg !503
  %7 = load void ()*, void ()** %shutdown, align 8, !dbg !503
  %tobool = icmp ne void ()* %7, null, !dbg !501
  br i1 %tobool, label %if.then, label %if.end5, !dbg !504

if.then:                                          ; preds = %for.body
  %8 = load i8, i8* @initcall_debug, align 1, !dbg !505
  %tobool1 = trunc i8 %8 to i1, !dbg !505
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !508

if.then2:                                         ; preds = %if.then
  %9 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !509
  %shutdown3 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %9, i32 0, i32 3, !dbg !509
  %10 = load void ()*, void ()** %shutdown3, align 8, !dbg !509
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), void ()* %10) #7, !dbg !509
  br label %if.end, !dbg !509

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !510
  %shutdown4 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %11, i32 0, i32 3, !dbg !511
  %12 = load void ()*, void ()** %shutdown4, align 8, !dbg !511
  call void %12() #6, !dbg !510
  br label %if.end5, !dbg !512

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !503

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !513, metadata !DIExpression()), !dbg !515
  %13 = load %struct.syscore_ops*, %struct.syscore_ops** %ops, align 8, !dbg !515
  %node7 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %13, i32 0, i32 0, !dbg !515
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node7, i32 0, i32 1, !dbg !515
  %14 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !515
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !515
  store i8* %15, i8** %__mptr6, align 8, !dbg !515
  br label %do.body8, !dbg !515

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !516

do.end9:                                          ; preds = %do.body8
  %16 = load i8*, i8** %__mptr6, align 8, !dbg !515
  %add.ptr11 = getelementptr i8, i8* %16, i64 0, !dbg !515
  %17 = bitcast i8* %add.ptr11 to %struct.syscore_ops*, !dbg !515
  store %struct.syscore_ops* %17, %struct.syscore_ops** %tmp10, align 8, !dbg !516
  %18 = load %struct.syscore_ops*, %struct.syscore_ops** %tmp10, align 8, !dbg !515
  store %struct.syscore_ops* %18, %struct.syscore_ops** %ops, align 8, !dbg !499
  br label %for.cond, !dbg !499, !llvm.loop !518

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @syscore_ops_lock) #6, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !522 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !531
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !533
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !534
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !535
  br i1 %call, label %if.end, label %if.then, !dbg !536

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !537

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !538
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !539
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !540
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !541
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !542
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !543
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !544
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !545
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !546
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !547
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !548
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !549
  br label %do.body, !dbg !550

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !551

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !553

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !551

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !555
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !555
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !555
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !555
  br label %do.end7, !dbg !555

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !551

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !558 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !563, metadata !DIExpression()), !dbg !564
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !565, metadata !DIExpression()), !dbg !566
  ret i1 true, !dbg !567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !568 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !569, metadata !DIExpression()), !dbg !570
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !571
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !573
  br i1 %call, label %if.end, label %if.then, !dbg !574

if.then:                                          ; preds = %entry
  br label %return, !dbg !575

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !576
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !577
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !577
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !578
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !579
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !579
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !580
  br label %return, !dbg !581

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !582 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !585, metadata !DIExpression()), !dbg !586
  ret i1 true, !dbg !587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !588 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !589, metadata !DIExpression()), !dbg !590
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !593
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !594
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !595
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !596
  br label %do.body, !dbg !597

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !598

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !600

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !598

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !602
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !602
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !602
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !602
  br label %do.end5, !dbg !602

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !598

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !604
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "syscore_ops_lock", scope: !2, file: !3, line: 15, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/syscore.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!12, !13, !34, !36}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !15, line: 13, size: 320, elements: !16)
!15 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !24, !29, !33}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !15, line: 14, baseType: !18, size: 128)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 178, size: 128, elements: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !19, line: 179, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !18, file: !19, line: 179, baseType: !22, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !14, file: !15, line: 15, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !14, file: !15, line: 16, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !15, line: 17, baseType: !30, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !44, !46, !49, !0, !51}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__warned", scope: !40, file: !3, line: 59, type: !42, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "syscore_suspend", scope: !3, file: !3, line: 47, type: !26, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!41 = !{}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 30, baseType: !43)
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__warned", scope: !40, file: !3, line: 68, type: !42, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__warned", scope: !48, file: !3, line: 96, type: !42, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "syscore_resume", scope: !3, file: !3, line: 91, type: !31, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__warned", scope: !48, file: !3, line: 103, type: !42, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "syscore_ops_list", scope: !2, file: !3, line: 14, type: !18, isLocal: true, isDefinition: true)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !54, line: 53, size: 192, elements: !55)
!54 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !68, !83}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !53, file: !54, line: 54, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !58, line: 13, baseType: !59)
!58 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 175, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 173, size: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !19, line: 174, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !64, line: 22, baseType: !65)
!64 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !66, line: 30, baseType: !67)
!66 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!67 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !53, file: !54, line: 55, baseType: !69, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !70, line: 83, baseType: !71)
!70 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !70, line: 71, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !70, line: 72, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !70, line: 72, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !74, file: !70, line: 73, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !70, line: 20, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !77, file: !70, line: 21, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !81, line: 25, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 25, elements: !41)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !53, file: !54, line: 59, baseType: !18, size: 128, offset: 64)
!84 = !{!"rsp"}
!85 = !{i32 7, !"Dwarf Version", i32 4}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"Code Model", i32 2}
!89 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!90 = distinct !DISubprogram(name: "register_syscore_ops", scope: !3, file: !3, line: 21, type: !91, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !13}
!93 = !DILocalVariable(name: "ops", arg: 1, scope: !90, file: !3, line: 21, type: !13)
!94 = !DILocation(line: 21, column: 47, scope: !90)
!95 = !DILocation(line: 23, column: 2, scope: !90)
!96 = !DILocation(line: 24, column: 17, scope: !90)
!97 = !DILocation(line: 24, column: 22, scope: !90)
!98 = !DILocation(line: 24, column: 2, scope: !90)
!99 = !DILocation(line: 25, column: 2, scope: !90)
!100 = !DILocation(line: 26, column: 1, scope: !90)
!101 = distinct !DISubprogram(name: "list_add_tail", scope: !102, file: !102, line: 98, type: !103, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!102 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !22, !22}
!105 = !DILocalVariable(name: "new", arg: 1, scope: !101, file: !102, line: 98, type: !22)
!106 = !DILocation(line: 98, column: 52, scope: !101)
!107 = !DILocalVariable(name: "head", arg: 2, scope: !101, file: !102, line: 98, type: !22)
!108 = !DILocation(line: 98, column: 75, scope: !101)
!109 = !DILocation(line: 100, column: 13, scope: !101)
!110 = !DILocation(line: 100, column: 18, scope: !101)
!111 = !DILocation(line: 100, column: 24, scope: !101)
!112 = !DILocation(line: 100, column: 30, scope: !101)
!113 = !DILocation(line: 100, column: 2, scope: !101)
!114 = !DILocation(line: 101, column: 1, scope: !101)
!115 = distinct !DISubprogram(name: "unregister_syscore_ops", scope: !3, file: !3, line: 33, type: !91, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!116 = !DILocalVariable(name: "ops", arg: 1, scope: !115, file: !3, line: 33, type: !13)
!117 = !DILocation(line: 33, column: 49, scope: !115)
!118 = !DILocation(line: 35, column: 2, scope: !115)
!119 = !DILocation(line: 36, column: 12, scope: !115)
!120 = !DILocation(line: 36, column: 17, scope: !115)
!121 = !DILocation(line: 36, column: 2, scope: !115)
!122 = !DILocation(line: 37, column: 2, scope: !115)
!123 = !DILocation(line: 38, column: 1, scope: !115)
!124 = distinct !DISubprogram(name: "list_del", scope: !102, file: !102, line: 144, type: !125, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !22}
!127 = !DILocalVariable(name: "entry", arg: 1, scope: !124, file: !102, line: 144, type: !22)
!128 = !DILocation(line: 144, column: 47, scope: !124)
!129 = !DILocation(line: 146, column: 19, scope: !124)
!130 = !DILocation(line: 146, column: 2, scope: !124)
!131 = !DILocation(line: 147, column: 2, scope: !124)
!132 = !DILocation(line: 147, column: 9, scope: !124)
!133 = !DILocation(line: 147, column: 14, scope: !124)
!134 = !DILocation(line: 148, column: 2, scope: !124)
!135 = !DILocation(line: 148, column: 9, scope: !124)
!136 = !DILocation(line: 148, column: 14, scope: !124)
!137 = !DILocation(line: 149, column: 1, scope: !124)
!138 = !DILocalVariable(name: "flags", arg: 1, scope: !139, file: !140, line: 162, type: !36)
!139 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !140, file: !140, line: 162, type: !141, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!140 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DISubroutineType(types: !142)
!142 = !{!28, !36}
!143 = !DILocation(line: 162, column: 67, scope: !139, inlinedAt: !144)
!144 = distinct !DILocation(line: 68, column: 4, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 68, column: 4)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 68, column: 4)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 68, column: 4)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 63, column: 21)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 63, column: 7)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 62, column: 2)
!151 = distinct !DILexicalBlock(scope: !40, file: !3, line: 62, column: 2)
!152 = !DILocation(line: 162, column: 67, scope: !139, inlinedAt: !153)
!153 = distinct !DILocation(line: 59, column: 2, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 59, column: 2)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 59, column: 2)
!156 = distinct !DILexicalBlock(scope: !40, file: !3, line: 59, column: 2)
!157 = !DILocalVariable(name: "ops", scope: !40, file: !3, line: 49, type: !13)
!158 = !DILocation(line: 49, column: 22, scope: !40)
!159 = !DILocalVariable(name: "ret", scope: !40, file: !3, line: 50, type: !28)
!160 = !DILocation(line: 50, column: 6, scope: !40)
!161 = !DILocation(line: 52, column: 2, scope: !40)
!162 = !DILocation(line: 53, column: 2, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 53, column: 2)
!164 = distinct !DILexicalBlock(scope: !40, file: !3, line: 53, column: 2)
!165 = !DILocation(line: 53, column: 2, scope: !164)
!166 = !DILocation(line: 56, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !40, file: !3, line: 56, column: 6)
!168 = !DILocation(line: 56, column: 6, scope: !40)
!169 = !DILocation(line: 57, column: 3, scope: !167)
!170 = !DILocalVariable(name: "__ret_warn_once", scope: !156, file: !3, line: 59, type: !28)
!171 = !DILocation(line: 59, column: 2, scope: !156)
!172 = !DILocalVariable(name: "_flags", scope: !155, file: !3, line: 59, type: !36)
!173 = !DILocation(line: 59, column: 2, scope: !155)
!174 = !DILocalVariable(name: "__dummy", scope: !175, file: !3, line: 59, type: !36)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 59, column: 2)
!176 = distinct !DILexicalBlock(scope: !155, file: !3, line: 59, column: 2)
!177 = !DILocation(line: 59, column: 2, scope: !175)
!178 = !DILocalVariable(name: "__dummy2", scope: !175, file: !3, line: 59, type: !36)
!179 = !DILocation(line: 59, column: 2, scope: !176)
!180 = !DILocalVariable(name: "__dummy", scope: !181, file: !3, line: 59, type: !36)
!181 = distinct !DILexicalBlock(scope: !154, file: !3, line: 59, column: 2)
!182 = !DILocation(line: 59, column: 2, scope: !181)
!183 = !DILocalVariable(name: "__dummy2", scope: !181, file: !3, line: 59, type: !36)
!184 = !DILocation(line: 59, column: 2, scope: !154)
!185 = !DILocation(line: 164, column: 11, scope: !139, inlinedAt: !153)
!186 = !DILocation(line: 164, column: 17, scope: !139, inlinedAt: !153)
!187 = !DILocation(line: 164, column: 9, scope: !139, inlinedAt: !153)
!188 = !DILocation(line: 59, column: 2, scope: !189)
!189 = distinct !DILexicalBlock(scope: !156, file: !3, line: 59, column: 2)
!190 = !DILocation(line: 0, scope: !189)
!191 = !DILocation(line: 59, column: 2, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 59, column: 2)
!193 = !DILocalVariable(name: "__ret_warn_on", scope: !194, file: !3, line: 59, type: !28)
!194 = distinct !DILexicalBlock(scope: !192, file: !3, line: 59, column: 2)
!195 = !DILocation(line: 59, column: 2, scope: !194)
!196 = !DILocation(line: 59, column: 2, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 59, column: 2)
!198 = !DILocation(line: 59, column: 2, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !3, line: 59, column: 2)
!200 = !DILocation(line: 59, column: 2, scope: !201)
!201 = distinct !DILexicalBlock(scope: !199, file: !3, line: 59, column: 2)
!202 = !DILocation(line: 59, column: 2, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 59, column: 2)
!204 = !DILocation(line: 59, column: 2, scope: !205)
!205 = distinct !DILexicalBlock(scope: !203, file: !3, line: 59, column: 2)
!206 = !DILocation(line: 59, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 59, column: 2)
!208 = !{i32 -2140325053, i32 -2140325024, i32 -2140324978, i32 -2140324920, i32 -2140324866, i32 -2140324812, i32 -2140324757, i32 -2140324726}
!209 = !DILocation(line: 59, column: 2, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !3, line: 59, column: 2)
!211 = !{i32 -2140324312, i32 -2140324305, i32 -2140324253, i32 -2140324222, i32 -2140324192}
!212 = !DILocation(line: 59, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !3, line: 59, column: 2)
!214 = !DILocation(line: 59, column: 2, scope: !215)
!215 = distinct !DILexicalBlock(scope: !199, file: !3, line: 59, column: 2)
!216 = !DILocalVariable(name: "__mptr", scope: !217, file: !3, line: 62, type: !12)
!217 = distinct !DILexicalBlock(scope: !151, file: !3, line: 62, column: 2)
!218 = !DILocation(line: 62, column: 2, scope: !217)
!219 = !DILocation(line: 62, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 62, column: 2)
!221 = !DILocation(line: 62, column: 2, scope: !151)
!222 = !DILocation(line: 62, column: 2, scope: !150)
!223 = !DILocation(line: 63, column: 7, scope: !149)
!224 = !DILocation(line: 63, column: 12, scope: !149)
!225 = !DILocation(line: 63, column: 7, scope: !150)
!226 = !DILocation(line: 64, column: 4, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 64, column: 4)
!228 = distinct !DILexicalBlock(scope: !148, file: !3, line: 64, column: 4)
!229 = !DILocation(line: 64, column: 4, scope: !228)
!230 = !DILocation(line: 65, column: 10, scope: !148)
!231 = !DILocation(line: 65, column: 15, scope: !148)
!232 = !DILocation(line: 65, column: 8, scope: !148)
!233 = !DILocation(line: 66, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !148, file: !3, line: 66, column: 8)
!235 = !DILocation(line: 66, column: 8, scope: !148)
!236 = !DILocation(line: 67, column: 5, scope: !234)
!237 = !DILocalVariable(name: "__ret_warn_once", scope: !147, file: !3, line: 68, type: !28)
!238 = !DILocation(line: 68, column: 4, scope: !147)
!239 = !DILocalVariable(name: "_flags", scope: !146, file: !3, line: 68, type: !36)
!240 = !DILocation(line: 68, column: 4, scope: !146)
!241 = !DILocalVariable(name: "__dummy", scope: !242, file: !3, line: 68, type: !36)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 68, column: 4)
!243 = distinct !DILexicalBlock(scope: !146, file: !3, line: 68, column: 4)
!244 = !DILocation(line: 68, column: 4, scope: !242)
!245 = !DILocalVariable(name: "__dummy2", scope: !242, file: !3, line: 68, type: !36)
!246 = !DILocation(line: 68, column: 4, scope: !243)
!247 = !DILocalVariable(name: "__dummy", scope: !248, file: !3, line: 68, type: !36)
!248 = distinct !DILexicalBlock(scope: !145, file: !3, line: 68, column: 4)
!249 = !DILocation(line: 68, column: 4, scope: !248)
!250 = !DILocalVariable(name: "__dummy2", scope: !248, file: !3, line: 68, type: !36)
!251 = !DILocation(line: 68, column: 4, scope: !145)
!252 = !DILocation(line: 164, column: 11, scope: !139, inlinedAt: !144)
!253 = !DILocation(line: 164, column: 17, scope: !139, inlinedAt: !144)
!254 = !DILocation(line: 164, column: 9, scope: !139, inlinedAt: !144)
!255 = !DILocation(line: 68, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !147, file: !3, line: 68, column: 4)
!257 = !DILocation(line: 0, scope: !256)
!258 = !DILocation(line: 68, column: 4, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 68, column: 4)
!260 = !DILocalVariable(name: "__ret_warn_on", scope: !261, file: !3, line: 68, type: !28)
!261 = distinct !DILexicalBlock(scope: !259, file: !3, line: 68, column: 4)
!262 = !DILocation(line: 68, column: 4, scope: !261)
!263 = !DILocation(line: 68, column: 4, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !3, line: 68, column: 4)
!265 = !DILocation(line: 68, column: 4, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !3, line: 68, column: 4)
!267 = !DILocation(line: 68, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !3, line: 68, column: 4)
!269 = !DILocation(line: 68, column: 4, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 68, column: 4)
!271 = !DILocation(line: 68, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !3, line: 68, column: 4)
!273 = !DILocation(line: 68, column: 4, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 68, column: 4)
!275 = !{i32 -2140317817, i32 -2140317788, i32 -2140317742, i32 -2140317684, i32 -2140317630, i32 -2140317576, i32 -2140317521, i32 -2140317490}
!276 = !DILocation(line: 68, column: 4, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !3, line: 68, column: 4)
!278 = !{i32 -2140317076, i32 -2140317069, i32 -2140317017, i32 -2140316986, i32 -2140316956}
!279 = !DILocation(line: 68, column: 4, scope: !280)
!280 = distinct !DILexicalBlock(scope: !270, file: !3, line: 68, column: 4)
!281 = !DILocation(line: 68, column: 4, scope: !282)
!282 = distinct !DILexicalBlock(scope: !266, file: !3, line: 68, column: 4)
!283 = !DILocation(line: 70, column: 3, scope: !148)
!284 = !DILocalVariable(name: "__mptr", scope: !285, file: !3, line: 62, type: !12)
!285 = distinct !DILexicalBlock(scope: !150, file: !3, line: 62, column: 2)
!286 = !DILocation(line: 62, column: 2, scope: !285)
!287 = !DILocation(line: 62, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 62, column: 2)
!289 = distinct !{!289, !221, !290}
!290 = !DILocation(line: 70, column: 3, scope: !151)
!291 = !DILocation(line: 72, column: 2, scope: !40)
!292 = !DILocation(line: 73, column: 2, scope: !40)
!293 = !DILabel(scope: !40, name: "err_out", file: !3, line: 75)
!294 = !DILocation(line: 75, column: 2, scope: !40)
!295 = !DILocation(line: 76, column: 2, scope: !40)
!296 = !DILocalVariable(name: "__mptr", scope: !297, file: !3, line: 78, type: !12)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 78, column: 2)
!298 = distinct !DILexicalBlock(scope: !40, file: !3, line: 78, column: 2)
!299 = !DILocation(line: 78, column: 2, scope: !297)
!300 = !DILocation(line: 78, column: 2, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !3, line: 78, column: 2)
!302 = !DILocation(line: 78, column: 2, scope: !298)
!303 = !DILocation(line: 78, column: 2, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !3, line: 78, column: 2)
!305 = !DILocation(line: 79, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !304, file: !3, line: 79, column: 7)
!307 = !DILocation(line: 79, column: 12, scope: !306)
!308 = !DILocation(line: 79, column: 7, scope: !304)
!309 = !DILocation(line: 80, column: 4, scope: !306)
!310 = !DILocation(line: 80, column: 9, scope: !306)
!311 = !DILocalVariable(name: "__mptr", scope: !312, file: !3, line: 78, type: !12)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 78, column: 2)
!313 = !DILocation(line: 78, column: 2, scope: !312)
!314 = !DILocation(line: 78, column: 2, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 78, column: 2)
!316 = distinct !{!316, !302, !317}
!317 = !DILocation(line: 80, column: 16, scope: !298)
!318 = !DILocation(line: 82, column: 9, scope: !40)
!319 = !DILocation(line: 82, column: 2, scope: !40)
!320 = !DILocation(line: 83, column: 1, scope: !40)
!321 = distinct !DISubprogram(name: "trace_suspend_resume", scope: !322, file: !322, line: 226, type: !323, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!322 = !DIFile(filename: "./include/trace/events/power.h", directory: "/home/lizy2001/genbc/linux")
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325, !28, !42}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!328 = !DILocalVariable(name: "action", arg: 1, scope: !321, file: !322, line: 226, type: !325)
!329 = !DILocation(line: 226, column: 1, scope: !321)
!330 = !DILocalVariable(name: "val", arg: 2, scope: !321, file: !322, line: 226, type: !28)
!331 = !DILocalVariable(name: "start", arg: 3, scope: !321, file: !322, line: 226, type: !42)
!332 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !333, file: !333, line: 646, type: !334, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!333 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DISubroutineType(types: !335)
!335 = !{!36}
!336 = !DILocalVariable(name: "__ret", scope: !337, file: !333, line: 648, type: !36)
!337 = distinct !DILexicalBlock(scope: !332, file: !333, line: 648, column: 9)
!338 = !DILocation(line: 648, column: 9, scope: !337)
!339 = !DILocalVariable(name: "__edi", scope: !337, file: !333, line: 648, type: !36)
!340 = !DILocalVariable(name: "__esi", scope: !337, file: !333, line: 648, type: !36)
!341 = !DILocalVariable(name: "__edx", scope: !337, file: !333, line: 648, type: !36)
!342 = !DILocalVariable(name: "__ecx", scope: !337, file: !333, line: 648, type: !36)
!343 = !DILocalVariable(name: "__eax", scope: !337, file: !333, line: 648, type: !36)
!344 = !DILocation(line: 648, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !333, line: 648, column: 9)
!346 = distinct !DILexicalBlock(scope: !337, file: !333, line: 648, column: 9)
!347 = !{i32 -2145814159, i32 -2145811844, i32 -2145811610, i32 -2145811559, i32 -2145811531, i32 -2145811506, i32 -2145811822, i32 -2145811809, i32 -2145811371, i32 -2145811252, i32 -2145811717, i32 -2145811690, i32 -2145811662, i32 -2145811632}
!348 = !DILocalVariable(name: "__mask", scope: !349, file: !333, line: 648, type: !36)
!349 = distinct !DILexicalBlock(scope: !345, file: !333, line: 648, column: 9)
!350 = !DILocation(line: 648, column: 9, scope: !349)
!351 = !DILocation(line: 648, column: 9, scope: !346)
!352 = !DILocation(line: 648, column: 2, scope: !332)
!353 = !DILocation(line: 162, column: 67, scope: !139, inlinedAt: !354)
!354 = distinct !DILocation(line: 103, column: 4, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 103, column: 4)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 103, column: 4)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 103, column: 4)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 100, column: 20)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 100, column: 7)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 99, column: 2)
!361 = distinct !DILexicalBlock(scope: !48, file: !3, line: 99, column: 2)
!362 = !DILocation(line: 162, column: 67, scope: !139, inlinedAt: !363)
!363 = distinct !DILocation(line: 96, column: 2, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 96, column: 2)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 96, column: 2)
!366 = distinct !DILexicalBlock(scope: !48, file: !3, line: 96, column: 2)
!367 = !DILocalVariable(name: "ops", scope: !48, file: !3, line: 93, type: !13)
!368 = !DILocation(line: 93, column: 22, scope: !48)
!369 = !DILocation(line: 95, column: 2, scope: !48)
!370 = !DILocalVariable(name: "__ret_warn_once", scope: !366, file: !3, line: 96, type: !28)
!371 = !DILocation(line: 96, column: 2, scope: !366)
!372 = !DILocalVariable(name: "_flags", scope: !365, file: !3, line: 96, type: !36)
!373 = !DILocation(line: 96, column: 2, scope: !365)
!374 = !DILocalVariable(name: "__dummy", scope: !375, file: !3, line: 96, type: !36)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 96, column: 2)
!376 = distinct !DILexicalBlock(scope: !365, file: !3, line: 96, column: 2)
!377 = !DILocation(line: 96, column: 2, scope: !375)
!378 = !DILocalVariable(name: "__dummy2", scope: !375, file: !3, line: 96, type: !36)
!379 = !DILocation(line: 96, column: 2, scope: !376)
!380 = !DILocalVariable(name: "__dummy", scope: !381, file: !3, line: 96, type: !36)
!381 = distinct !DILexicalBlock(scope: !364, file: !3, line: 96, column: 2)
!382 = !DILocation(line: 96, column: 2, scope: !381)
!383 = !DILocalVariable(name: "__dummy2", scope: !381, file: !3, line: 96, type: !36)
!384 = !DILocation(line: 96, column: 2, scope: !364)
!385 = !DILocation(line: 164, column: 11, scope: !139, inlinedAt: !363)
!386 = !DILocation(line: 164, column: 17, scope: !139, inlinedAt: !363)
!387 = !DILocation(line: 164, column: 9, scope: !139, inlinedAt: !363)
!388 = !DILocation(line: 96, column: 2, scope: !389)
!389 = distinct !DILexicalBlock(scope: !366, file: !3, line: 96, column: 2)
!390 = !DILocation(line: 0, scope: !389)
!391 = !DILocation(line: 96, column: 2, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 96, column: 2)
!393 = !DILocalVariable(name: "__ret_warn_on", scope: !394, file: !3, line: 96, type: !28)
!394 = distinct !DILexicalBlock(scope: !392, file: !3, line: 96, column: 2)
!395 = !DILocation(line: 96, column: 2, scope: !394)
!396 = !DILocation(line: 96, column: 2, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !3, line: 96, column: 2)
!398 = !DILocation(line: 96, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !3, line: 96, column: 2)
!400 = !DILocation(line: 96, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !3, line: 96, column: 2)
!402 = !DILocation(line: 96, column: 2, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 96, column: 2)
!404 = !DILocation(line: 96, column: 2, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !3, line: 96, column: 2)
!406 = !DILocation(line: 96, column: 2, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !3, line: 96, column: 2)
!408 = !{i32 -2140310549, i32 -2140310520, i32 -2140310474, i32 -2140310416, i32 -2140310362, i32 -2140310308, i32 -2140310253, i32 -2140310222}
!409 = !DILocation(line: 96, column: 2, scope: !410)
!410 = distinct !DILexicalBlock(scope: !403, file: !3, line: 96, column: 2)
!411 = !{i32 -2140309808, i32 -2140309801, i32 -2140309749, i32 -2140309718, i32 -2140309688}
!412 = !DILocation(line: 96, column: 2, scope: !413)
!413 = distinct !DILexicalBlock(scope: !403, file: !3, line: 96, column: 2)
!414 = !DILocation(line: 96, column: 2, scope: !415)
!415 = distinct !DILexicalBlock(scope: !399, file: !3, line: 96, column: 2)
!416 = !DILocalVariable(name: "__mptr", scope: !417, file: !3, line: 99, type: !12)
!417 = distinct !DILexicalBlock(scope: !361, file: !3, line: 99, column: 2)
!418 = !DILocation(line: 99, column: 2, scope: !417)
!419 = !DILocation(line: 99, column: 2, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 99, column: 2)
!421 = !DILocation(line: 99, column: 2, scope: !361)
!422 = !DILocation(line: 99, column: 2, scope: !360)
!423 = !DILocation(line: 100, column: 7, scope: !359)
!424 = !DILocation(line: 100, column: 12, scope: !359)
!425 = !DILocation(line: 100, column: 7, scope: !360)
!426 = !DILocation(line: 101, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 101, column: 4)
!428 = distinct !DILexicalBlock(scope: !358, file: !3, line: 101, column: 4)
!429 = !DILocation(line: 101, column: 4, scope: !428)
!430 = !DILocation(line: 102, column: 4, scope: !358)
!431 = !DILocation(line: 102, column: 9, scope: !358)
!432 = !DILocalVariable(name: "__ret_warn_once", scope: !357, file: !3, line: 103, type: !28)
!433 = !DILocation(line: 103, column: 4, scope: !357)
!434 = !DILocalVariable(name: "_flags", scope: !356, file: !3, line: 103, type: !36)
!435 = !DILocation(line: 103, column: 4, scope: !356)
!436 = !DILocalVariable(name: "__dummy", scope: !437, file: !3, line: 103, type: !36)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 103, column: 4)
!438 = distinct !DILexicalBlock(scope: !356, file: !3, line: 103, column: 4)
!439 = !DILocation(line: 103, column: 4, scope: !437)
!440 = !DILocalVariable(name: "__dummy2", scope: !437, file: !3, line: 103, type: !36)
!441 = !DILocation(line: 103, column: 4, scope: !438)
!442 = !DILocalVariable(name: "__dummy", scope: !443, file: !3, line: 103, type: !36)
!443 = distinct !DILexicalBlock(scope: !355, file: !3, line: 103, column: 4)
!444 = !DILocation(line: 103, column: 4, scope: !443)
!445 = !DILocalVariable(name: "__dummy2", scope: !443, file: !3, line: 103, type: !36)
!446 = !DILocation(line: 103, column: 4, scope: !355)
!447 = !DILocation(line: 164, column: 11, scope: !139, inlinedAt: !354)
!448 = !DILocation(line: 164, column: 17, scope: !139, inlinedAt: !354)
!449 = !DILocation(line: 164, column: 9, scope: !139, inlinedAt: !354)
!450 = !DILocation(line: 103, column: 4, scope: !451)
!451 = distinct !DILexicalBlock(scope: !357, file: !3, line: 103, column: 4)
!452 = !DILocation(line: 0, scope: !451)
!453 = !DILocation(line: 103, column: 4, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 103, column: 4)
!455 = !DILocalVariable(name: "__ret_warn_on", scope: !456, file: !3, line: 103, type: !28)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 4)
!457 = !DILocation(line: 103, column: 4, scope: !456)
!458 = !DILocation(line: 103, column: 4, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 103, column: 4)
!460 = !DILocation(line: 103, column: 4, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !3, line: 103, column: 4)
!462 = !DILocation(line: 103, column: 4, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !3, line: 103, column: 4)
!464 = !DILocation(line: 103, column: 4, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 103, column: 4)
!466 = !DILocation(line: 103, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 4)
!468 = !DILocation(line: 103, column: 4, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 4)
!470 = !{i32 -2140303320, i32 -2140303291, i32 -2140303245, i32 -2140303187, i32 -2140303133, i32 -2140303079, i32 -2140303024, i32 -2140302993}
!471 = !DILocation(line: 103, column: 4, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 4)
!473 = !{i32 -2140302578, i32 -2140302571, i32 -2140302519, i32 -2140302488, i32 -2140302458}
!474 = !DILocation(line: 103, column: 4, scope: !475)
!475 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 4)
!476 = !DILocation(line: 103, column: 4, scope: !477)
!477 = distinct !DILexicalBlock(scope: !461, file: !3, line: 103, column: 4)
!478 = !DILocation(line: 105, column: 3, scope: !358)
!479 = !DILocalVariable(name: "__mptr", scope: !480, file: !3, line: 99, type: !12)
!480 = distinct !DILexicalBlock(scope: !360, file: !3, line: 99, column: 2)
!481 = !DILocation(line: 99, column: 2, scope: !480)
!482 = !DILocation(line: 99, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !3, line: 99, column: 2)
!484 = distinct !{!484, !421, !485}
!485 = !DILocation(line: 105, column: 3, scope: !361)
!486 = !DILocation(line: 106, column: 2, scope: !48)
!487 = !DILocation(line: 107, column: 1, scope: !48)
!488 = distinct !DISubprogram(name: "syscore_shutdown", scope: !3, file: !3, line: 114, type: !31, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!489 = !DILocalVariable(name: "ops", scope: !488, file: !3, line: 116, type: !13)
!490 = !DILocation(line: 116, column: 22, scope: !488)
!491 = !DILocation(line: 118, column: 2, scope: !488)
!492 = !DILocalVariable(name: "__mptr", scope: !493, file: !3, line: 120, type: !12)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 120, column: 2)
!494 = distinct !DILexicalBlock(scope: !488, file: !3, line: 120, column: 2)
!495 = !DILocation(line: 120, column: 2, scope: !493)
!496 = !DILocation(line: 120, column: 2, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 120, column: 2)
!498 = !DILocation(line: 120, column: 2, scope: !494)
!499 = !DILocation(line: 120, column: 2, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !3, line: 120, column: 2)
!501 = !DILocation(line: 121, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !3, line: 121, column: 7)
!503 = !DILocation(line: 121, column: 12, scope: !502)
!504 = !DILocation(line: 121, column: 7, scope: !500)
!505 = !DILocation(line: 122, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 122, column: 8)
!507 = distinct !DILexicalBlock(scope: !502, file: !3, line: 121, column: 22)
!508 = !DILocation(line: 122, column: 8, scope: !507)
!509 = !DILocation(line: 123, column: 5, scope: !506)
!510 = !DILocation(line: 124, column: 4, scope: !507)
!511 = !DILocation(line: 124, column: 9, scope: !507)
!512 = !DILocation(line: 125, column: 3, scope: !507)
!513 = !DILocalVariable(name: "__mptr", scope: !514, file: !3, line: 120, type: !12)
!514 = distinct !DILexicalBlock(scope: !500, file: !3, line: 120, column: 2)
!515 = !DILocation(line: 120, column: 2, scope: !514)
!516 = !DILocation(line: 120, column: 2, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !3, line: 120, column: 2)
!518 = distinct !{!518, !498, !519}
!519 = !DILocation(line: 125, column: 3, scope: !494)
!520 = !DILocation(line: 127, column: 2, scope: !488)
!521 = !DILocation(line: 128, column: 1, scope: !488)
!522 = distinct !DISubprogram(name: "__list_add", scope: !102, file: !102, line: 63, type: !523, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !22, !22, !22}
!525 = !DILocalVariable(name: "new", arg: 1, scope: !522, file: !102, line: 63, type: !22)
!526 = !DILocation(line: 63, column: 49, scope: !522)
!527 = !DILocalVariable(name: "prev", arg: 2, scope: !522, file: !102, line: 64, type: !22)
!528 = !DILocation(line: 64, column: 28, scope: !522)
!529 = !DILocalVariable(name: "next", arg: 3, scope: !522, file: !102, line: 65, type: !22)
!530 = !DILocation(line: 65, column: 28, scope: !522)
!531 = !DILocation(line: 67, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !522, file: !102, line: 67, column: 6)
!533 = !DILocation(line: 67, column: 29, scope: !532)
!534 = !DILocation(line: 67, column: 35, scope: !532)
!535 = !DILocation(line: 67, column: 7, scope: !532)
!536 = !DILocation(line: 67, column: 6, scope: !522)
!537 = !DILocation(line: 68, column: 3, scope: !532)
!538 = !DILocation(line: 70, column: 15, scope: !522)
!539 = !DILocation(line: 70, column: 2, scope: !522)
!540 = !DILocation(line: 70, column: 8, scope: !522)
!541 = !DILocation(line: 70, column: 13, scope: !522)
!542 = !DILocation(line: 71, column: 14, scope: !522)
!543 = !DILocation(line: 71, column: 2, scope: !522)
!544 = !DILocation(line: 71, column: 7, scope: !522)
!545 = !DILocation(line: 71, column: 12, scope: !522)
!546 = !DILocation(line: 72, column: 14, scope: !522)
!547 = !DILocation(line: 72, column: 2, scope: !522)
!548 = !DILocation(line: 72, column: 7, scope: !522)
!549 = !DILocation(line: 72, column: 12, scope: !522)
!550 = !DILocation(line: 73, column: 2, scope: !522)
!551 = !DILocation(line: 73, column: 2, scope: !552)
!552 = distinct !DILexicalBlock(scope: !522, file: !102, line: 73, column: 2)
!553 = !DILocation(line: 73, column: 2, scope: !554)
!554 = distinct !DILexicalBlock(scope: !552, file: !102, line: 73, column: 2)
!555 = !DILocation(line: 73, column: 2, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !102, line: 73, column: 2)
!557 = !DILocation(line: 74, column: 1, scope: !522)
!558 = distinct !DISubprogram(name: "__list_add_valid", scope: !102, file: !102, line: 45, type: !559, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!559 = !DISubroutineType(types: !560)
!560 = !{!42, !22, !22, !22}
!561 = !DILocalVariable(name: "new", arg: 1, scope: !558, file: !102, line: 45, type: !22)
!562 = !DILocation(line: 45, column: 55, scope: !558)
!563 = !DILocalVariable(name: "prev", arg: 2, scope: !558, file: !102, line: 46, type: !22)
!564 = !DILocation(line: 46, column: 23, scope: !558)
!565 = !DILocalVariable(name: "next", arg: 3, scope: !558, file: !102, line: 47, type: !22)
!566 = !DILocation(line: 47, column: 23, scope: !558)
!567 = !DILocation(line: 49, column: 2, scope: !558)
!568 = distinct !DISubprogram(name: "__list_del_entry", scope: !102, file: !102, line: 130, type: !125, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!569 = !DILocalVariable(name: "entry", arg: 1, scope: !568, file: !102, line: 130, type: !22)
!570 = !DILocation(line: 130, column: 55, scope: !568)
!571 = !DILocation(line: 132, column: 30, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !102, line: 132, column: 6)
!573 = !DILocation(line: 132, column: 7, scope: !572)
!574 = !DILocation(line: 132, column: 6, scope: !568)
!575 = !DILocation(line: 133, column: 3, scope: !572)
!576 = !DILocation(line: 135, column: 13, scope: !568)
!577 = !DILocation(line: 135, column: 20, scope: !568)
!578 = !DILocation(line: 135, column: 26, scope: !568)
!579 = !DILocation(line: 135, column: 33, scope: !568)
!580 = !DILocation(line: 135, column: 2, scope: !568)
!581 = !DILocation(line: 136, column: 1, scope: !568)
!582 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !102, file: !102, line: 51, type: !583, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!583 = !DISubroutineType(types: !584)
!584 = !{!42, !22}
!585 = !DILocalVariable(name: "entry", arg: 1, scope: !582, file: !102, line: 51, type: !22)
!586 = !DILocation(line: 51, column: 61, scope: !582)
!587 = !DILocation(line: 53, column: 2, scope: !582)
!588 = distinct !DISubprogram(name: "__list_del", scope: !102, file: !102, line: 110, type: !103, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!589 = !DILocalVariable(name: "prev", arg: 1, scope: !588, file: !102, line: 110, type: !22)
!590 = !DILocation(line: 110, column: 50, scope: !588)
!591 = !DILocalVariable(name: "next", arg: 2, scope: !588, file: !102, line: 110, type: !22)
!592 = !DILocation(line: 110, column: 75, scope: !588)
!593 = !DILocation(line: 112, column: 15, scope: !588)
!594 = !DILocation(line: 112, column: 2, scope: !588)
!595 = !DILocation(line: 112, column: 8, scope: !588)
!596 = !DILocation(line: 112, column: 13, scope: !588)
!597 = !DILocation(line: 113, column: 2, scope: !588)
!598 = !DILocation(line: 113, column: 2, scope: !599)
!599 = distinct !DILexicalBlock(scope: !588, file: !102, line: 113, column: 2)
!600 = !DILocation(line: 113, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !102, line: 113, column: 2)
!602 = !DILocation(line: 113, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !102, line: 113, column: 2)
!604 = !DILocation(line: 114, column: 1, scope: !588)
