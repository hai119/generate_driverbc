; ModuleID = '../bcout/drivers/media/radio/si470x/radio-si470x-common.llvm.bc'
source_filename = "drivers/media/radio/si470x/radio-si470x-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_ctrl_ops = type { i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)* }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl**, i32, i24, %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_type_ops*, i32, i8*, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.71, %union.anon.72, i64, i8*, i32, %struct.anon.73, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.v4l2_ctrl_handler = type { %struct.mutex, %struct.mutex*, %struct.list_head, %struct.list_head, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref**, void (%struct.v4l2_ctrl*, i8*)*, i8*, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.v4l2_ctrl_ref = type { %struct.list_head, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl_helper*, i8, i8, %struct.v4l2_ctrl_ref*, %union.v4l2_ctrl_ptr }
%struct.v4l2_ctrl_helper = type opaque
%struct.media_request_object = type { %struct.media_request_object_ops*, i8*, %struct.media_request*, %struct.list_head, %struct.kref, i8 }
%struct.media_request_object_ops = type { i32 (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)* }
%struct.media_request = type { %struct.media_device*, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.media_device = type { %struct.device*, %struct.media_devnode*, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, i8*, i32 (%struct.media_entity*, %struct.media_pipeline*)*, void (%struct.media_entity*)*, %struct.media_device_ops*, %struct.mutex, %struct.atomic_t }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
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
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
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
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
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
%struct.media_devnode = type { %struct.media_device*, %struct.media_file_operations*, %struct.device, %struct.cdev, %struct.device*, i32, i64, void (%struct.media_devnode*)* }
%struct.media_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.media_graph = type { [16 x %struct.anon.66], %struct.media_entity_enum, i32 }
%struct.anon.66 = type { %struct.media_entity*, %struct.list_head* }
%struct.media_entity = type { %struct.media_gobj, i8*, i32, i32, i64, i16, i16, i16, i32, %struct.media_pad*, %struct.list_head, %struct.media_entity_operations*, i32, i32, %struct.media_pipeline*, %union.anon.69 }
%struct.media_gobj = type { %struct.media_device*, i32, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, %struct.media_entity*, i16, i32, i64 }
%struct.media_entity_operations = type { i32 (%struct.media_entity*, %struct.fwnode_endpoint*)*, i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)*, i32 (%struct.media_link*)* }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.67, %union.anon.68, %struct.media_link*, i64, i8 }
%union.anon.67 = type { %struct.media_gobj* }
%union.anon.68 = type { %struct.media_gobj* }
%struct.media_pipeline = type { i32, %struct.media_graph }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32 }
%struct.media_entity_enum = type { i64*, i32 }
%struct.media_device_ops = type { i32 (%struct.media_link*, i32, i32)*, %struct.media_request* (%struct.media_device*)*, void (%struct.media_request*)*, i32 (%struct.media_request*)*, void (%struct.media_request*)* }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.v4l2_ctrl_type_ops = type { i1 (%struct.v4l2_ctrl*, i32, i32*, i32*)*, void (%struct.v4l2_ctrl*, i32, i32*)*, void (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*, i32, i32*)* }
%union.anon.71 = type { i64 }
%union.anon.72 = type { i8** }
%struct.anon.73 = type { i32 }
%union.v4l2_ctrl_ptr = type { i32* }
%struct.v4l2_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_capability*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_format*)*, i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)*, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)*, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)*, i32 (%struct.file*, i8*, %struct.v4l2_exportbuffer*)*, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)*, i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)*, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)*, i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)*, i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)*, i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, i64*)*, i32 (%struct.file*, i8*, i64)*, i32 (%struct.file*, i8*, i64*)*, i32 (%struct.file*, i8*, %struct.v4l2_input*)*, i32 (%struct.file*, i8*, i32*)*, i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, %struct.v4l2_output*)*, i32 (%struct.file*, i8*, i32*)*, i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)*, i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)*, i32 (%struct.file*, i8*, %struct.v4l2_audio*)*, i32 (%struct.file*, i8*, %struct.v4l2_audio*)*, i32 (%struct.file*, i8*, %struct.v4l2_audio*)*, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)*, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)*, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)*, i32 (%struct.file*, i8*, %struct.v4l2_modulator*)*, i32 (%struct.file*, i8*, %struct.v4l2_modulator*)*, i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)*, i32 (%struct.file*, i8*, %struct.v4l2_selection*)*, i32 (%struct.file*, i8*, %struct.v4l2_selection*)*, i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)*, i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)*, i32 (%struct.file*, i8*, %struct.v4l2_enc_idx*)*, i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)*, i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)*, i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)*, i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)*, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file*, i8*, %struct.v4l2_tuner*)*, i32 (%struct.file*, i8*, %struct.v4l2_tuner*)*, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)*, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)*, i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)*, i32 (%struct.file*, i8*, %struct.v4l2_sliced_vbi_cap*)*, i32 (%struct.file*, i8*)*, i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)*, i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)*, i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)*, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)*, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)*, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)*, i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)*, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings_cap*)*, i32 (%struct.file*, i8*, %struct.v4l2_edid*)*, i32 (%struct.file*, i8*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)*, i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)*, i64 (%struct.file*, i8*, i1, i32, i8*)* }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.v4l2_window, [144 x i8] }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, %struct.v4l2_clip*, i32, i8*, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, %struct.v4l2_clip* }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, [1 x i32] }
%struct.v4l2_exportbuffer = type { i32, i32, i32, i32, i32, [11 x i32] }
%struct.v4l2_create_buffers = type { i32, i32, i32, %struct.v4l2_format, i32, [7 x i32] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.77, i32, i32, %union.anon.79 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.77 = type { i64 }
%union.anon.79 = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32, i8*, %struct.anon.80 }
%struct.anon.80 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_query_ext_ctrl = type { i32, i32, [32 x i8], i64, i64, i64, i64, i32, i32, i32, i32, [4 x i32], [32 x i32] }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_ext_controls = type { %union.anon.81, i32, i32, i32, [1 x i32], %struct.v4l2_ext_control* }
%union.anon.81 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.82 }>
%union.anon.82 = type { i64 }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.83, i32 }>
%union.anon.83 = type { i64, [24 x i8] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_enc_idx = type { i32, i32, [4 x i32], [64 x %struct.v4l2_enc_idx_entry] }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { [8 x i32] }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87, [56 x i8] }
%struct.anon.87 = type { i64 }
%struct.v4l2_streamparm = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.91, [2 x i32] }
%union.anon.91 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.92, [2 x i32] }
%union.anon.92 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], i8* }
%struct.v4l2_fh = type { %struct.list_head, %struct.video_device*, %struct.v4l2_ctrl_handler*, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, %struct.v4l2_m2m_ctx* }
%struct.video_device = type { %struct.media_entity, %struct.media_intf_devnode*, %struct.media_pipeline, %struct.v4l2_file_operations*, i32, %struct.device, %struct.cdev*, %struct.v4l2_device*, %struct.device*, %struct.v4l2_ctrl_handler*, %struct.vb2_queue*, %struct.v4l2_prio_state*, [32 x i8], i32, i32, i32, i16, i64, i32, %struct.spinlock, %struct.list_head, i32, i64, void (%struct.video_device*)*, %struct.v4l2_ioctl_ops*, [3 x i64], %struct.mutex* }
%struct.media_intf_devnode = type { %struct.media_interface, i32, i32 }
%struct.media_interface = type { %struct.media_gobj, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { %struct.device*, %struct.media_device*, %struct.list_head, %struct.spinlock, [36 x i8], void (%struct.v4l2_subdev*, i32, i8*)*, %struct.v4l2_ctrl_handler*, %struct.v4l2_prio_state, %struct.kref, void (%struct.v4l2_device*)* }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, %struct.module*, i8, i32, %struct.v4l2_device*, %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_internal_ops*, %struct.v4l2_ctrl_handler*, [32 x i8], i32, i8*, i8*, %struct.video_device*, %struct.device*, %struct.fwnode_handle*, %struct.list_head, %struct.v4l2_async_subdev*, %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier*, %struct.v4l2_subdev_platform_data* }
%struct.v4l2_subdev_ops = type { %struct.v4l2_subdev_core_ops*, %struct.v4l2_subdev_tuner_ops*, %struct.v4l2_subdev_audio_ops*, %struct.v4l2_subdev_video_ops*, %struct.v4l2_subdev_vbi_ops*, %struct.v4l2_subdev_ir_ops*, %struct.v4l2_subdev_sensor_ops*, %struct.v4l2_subdev_pad_ops* }
%struct.v4l2_subdev_core_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i64 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* }
%struct.v4l2_subdev_io_pin_config = type { i32, i8, i8, i8, i8 }
%struct.v4l2_subdev_tuner_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_priv_tun_config*)* }
%struct.tuner_setup = type opaque
%struct.v4l2_priv_tun_config = type { i32, i8* }
%struct.v4l2_subdev_audio_ops = type { i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32)* }
%struct.v4l2_subdev_video_ops = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, i8*, i32*)* }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_vbi_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_decode_vbi_line*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* }
%struct.v4l2_decode_vbi_line = type { i32, i8*, i32, i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_subdev_ir_ops = type { i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev_sensor_ops = type { i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32*)* }
%struct.v4l2_subdev_pad_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_enum_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)* }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.95, i16, i16, i16, [10 x i16] }
%union.anon.95 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_subdev_internal_ops = type { i32 (%struct.v4l2_subdev*)*, void (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, void (%struct.v4l2_subdev*)* }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, %struct.module*, %struct.v4l2_subdev_pad_config* }
%struct.v4l2_async_subdev = type { i32, %union.anon.96, %struct.list_head, %struct.list_head }
%union.anon.96 = type { %struct.anon.98 }
%struct.anon.98 = type { i1 (%struct.device*, %struct.v4l2_async_subdev*)*, i8* }
%struct.v4l2_async_notifier = type { %struct.v4l2_async_notifier_operations*, %struct.v4l2_device*, %struct.v4l2_subdev*, %struct.v4l2_async_notifier*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_async_notifier_operations = type { i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)*, i32 (%struct.v4l2_async_notifier*)*, void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* }
%struct.v4l2_subdev_platform_data = type { %struct.regulator_bulk_data*, i32, i8* }
%struct.regulator_bulk_data = type opaque
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type opaque
%struct.v4l2_m2m_ctx = type opaque
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.si470x_device = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, i32, [16 x i16], %struct.wait_queue_head, %struct.mutex, i8*, i32, i32, i32, %struct.completion, i8, i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)*, i32 (%struct.file*)*, i32 (%struct.file*)*, i32 (%struct.file*, i8*, %struct.v4l2_capability*)*, %struct.usb_device*, %struct.usb_interface*, i8*, i8*, %struct.usb_endpoint_descriptor*, %struct.urb*, i32, i8, i8 }
%struct.usb_device = type opaque
%struct.usb_interface = type opaque
%struct.usb_endpoint_descriptor = type opaque
%struct.urb = type opaque
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__param_str_space = internal constant [26 x i8] c"radio_si470x_common.space\00", align 16, !dbg !0
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@space = internal global i16 2, align 2, !dbg !6419
@__param_space = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_space, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @space to i8*) } }, section "__param", align 8, !dbg !6316
@__UNIQUE_ID_spacetype253 = internal constant [42 x i8] c"radio_si470x_common.parmtype=space:ushort\00", section ".modinfo", align 1, !dbg !6366
@__UNIQUE_ID_space254 = internal constant [68 x i8] c"radio_si470x_common.parm=space:Spacing: 0=200kHz 1=100kHz *2=50kHz*\00", section ".modinfo", align 1, !dbg !6371
@__param_str_de = internal constant [23 x i8] c"radio_si470x_common.de\00", align 16, !dbg !6421
@de = internal global i16 1, align 2, !dbg !6426
@__param_de = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_de, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @de to i8*) } }, section "__param", align 8, !dbg !6376
@__UNIQUE_ID_detype255 = internal constant [39 x i8] c"radio_si470x_common.parmtype=de:ushort\00", section ".modinfo", align 1, !dbg !6378
@__UNIQUE_ID_de256 = internal constant [57 x i8] c"radio_si470x_common.parm=de:De-emphasis: 0=75us *1=50us*\00", section ".modinfo", align 1, !dbg !6383
@__param_str_tune_timeout = internal constant [33 x i8] c"radio_si470x_common.tune_timeout\00", align 16, !dbg !6428
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@tune_timeout = internal global i32 3000, align 4, !dbg !6433
@__param_tune_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__param_str_tune_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @tune_timeout to i8*) } }, section "__param", align 8, !dbg !6388
@__UNIQUE_ID_tune_timeouttype257 = internal constant [47 x i8] c"radio_si470x_common.parmtype=tune_timeout:uint\00", section ".modinfo", align 1, !dbg !6390
@__UNIQUE_ID_tune_timeout258 = internal constant [59 x i8] c"radio_si470x_common.parm=tune_timeout:Tune timeout: *3000*\00", section ".modinfo", align 1, !dbg !6395
@__param_str_seek_timeout = internal constant [33 x i8] c"radio_si470x_common.seek_timeout\00", align 16, !dbg !6435
@seek_timeout = internal global i32 5000, align 4, !dbg !6437
@__param_seek_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__param_str_seek_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @seek_timeout to i8*) } }, section "__param", align 8, !dbg !6400
@__UNIQUE_ID_seek_timeouttype259 = internal constant [47 x i8] c"radio_si470x_common.parmtype=seek_timeout:uint\00", section ".modinfo", align 1, !dbg !6402
@__UNIQUE_ID_seek_timeout260 = internal constant [59 x i8] c"radio_si470x_common.parm=seek_timeout:Seek timeout: *5000*\00", section ".modinfo", align 1, !dbg !6404
@bands = internal constant [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1437, i32 1400000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1437, i32 1216000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 2, i32 1437, i32 1216000, i32 1440000, i32 4, [9 x i32] zeroinitializer }], align 16, !dbg !6439
@si470x_ctrl_ops = dso_local constant %struct.v4l2_ctrl_ops { i32 (%struct.v4l2_ctrl*)* null, i32 (%struct.v4l2_ctrl*)* null, i32 (%struct.v4l2_ctrl*)* @si470x_s_ctrl }, align 8, !dbg !6406
@si470x_fops = internal constant %struct.v4l2_file_operations { %struct.module* null, i64 (%struct.file*, i8*, i64, i64*)* @si470x_fops_read, i64 (%struct.file*, i8*, i64, i64*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @si470x_fops_poll, i64 (%struct.file*, i32, i64)* @video_ioctl2, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i32 (%struct.file*)* @si470x_fops_open, i32 (%struct.file*)* @si470x_fops_release }, align 8, !dbg !6443
@si470x_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @si470x_vidioc_querycap, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_format*)* null, i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* null, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* null, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* null, i32 (%struct.file*, i8*, %struct.v4l2_exportbuffer*)* null, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* null, i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)* null, i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* null, i32 (%struct.file*, i8*, i32)* null, i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* null, i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* null, i32 (%struct.file*, i8*, i32)* null, i32 (%struct.file*, i8*, i32)* null, i32 (%struct.file*, i8*, i64*)* null, i32 (%struct.file*, i8*, i64)* null, i32 (%struct.file*, i8*, i64*)* null, i32 (%struct.file*, i8*, %struct.v4l2_input*)* null, i32 (%struct.file*, i8*, i32*)* null, i32 (%struct.file*, i8*, i32)* null, i32 (%struct.file*, i8*, %struct.v4l2_output*)* null, i32 (%struct.file*, i8*, i32*)* null, i32 (%struct.file*, i8*, i32)* null, i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* null, i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)* null, i32 (%struct.file*, i8*, %struct.v4l2_control*)* null, i32 (%struct.file*, i8*, %struct.v4l2_control*)* null, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* null, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* null, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* null, i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audio*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audio*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audio*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)* null, i32 (%struct.file*, i8*, %struct.v4l2_audioout*)* null, i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* null, i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* null, i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* null, i32 (%struct.file*, i8*, %struct.v4l2_selection*)* null, i32 (%struct.file*, i8*, %struct.v4l2_selection*)* null, i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* null, i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* null, i32 (%struct.file*, i8*, %struct.v4l2_enc_idx*)* null, i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* null, i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* null, i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)* null, i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)* null, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* null, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* null, i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @si470x_vidioc_g_tuner, i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @si470x_vidioc_s_tuner, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @si470x_vidioc_g_frequency, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @si470x_vidioc_s_frequency, i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @si470x_vidioc_enum_freq_bands, i32 (%struct.file*, i8*, %struct.v4l2_sliced_vbi_cap*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @si470x_vidioc_s_hw_freq_seek, i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* null, i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* null, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* null, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* null, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* null, i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)* null, i32 (%struct.file*, i8*, %struct.v4l2_dv_timings_cap*)* null, i32 (%struct.file*, i8*, %struct.v4l2_edid*)* null, i32 (%struct.file*, i8*, %struct.v4l2_edid*)* null, i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)* @v4l2_ctrl_subscribe_event, i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)* @v4l2_event_unsubscribe, i64 (%struct.file*, i8*, i1, i32, i8*)* null }, align 8, !dbg !6445
@si470x_viddev_template = dso_local constant %struct.video_device { %struct.media_entity zeroinitializer, %struct.media_intf_devnode* null, %struct.media_pipeline zeroinitializer, %struct.v4l2_file_operations* @si470x_fops, i32 0, %struct.device zeroinitializer, %struct.cdev* null, %struct.v4l2_device* null, %struct.device* null, %struct.v4l2_ctrl_handler* null, %struct.vb2_queue* null, %struct.v4l2_prio_state* null, [32 x i8] c"radio-si470x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i64 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, void (%struct.video_device*)* @video_device_release_empty, %struct.v4l2_ioctl_ops* @si470x_ioctl_ops, [3 x i64] zeroinitializer, %struct.mutex* null }, align 8, !dbg !6408
@__UNIQUE_ID_file266 = internal constant [72 x i8] c"radio_si470x_common.file=drivers/media/radio/si470x/radio-si470x-common\00", section ".modinfo", align 1, !dbg !6411
@__UNIQUE_ID_license267 = internal constant [32 x i8] c"radio_si470x_common.license=GPL\00", section ".modinfo", align 1, !dbg !6416
@.str = private unnamed_addr constant [24 x i8] c"tune does not complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tune timed out after %u ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"seek does not complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"seek failed / band limit reached\0A\00", align 1
@llvm.used = appending global [14 x i8*] [i8* bitcast (%struct.kernel_param* @__param_space to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_spacetype253, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_space254, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_de to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_detype255, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_de256, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_tune_timeout to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_tune_timeouttype257, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_tune_timeout258, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_seek_timeout to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_seek_timeouttype259, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_seek_timeout260, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__UNIQUE_ID_file266, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_license267, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @si470x_set_freq(%struct.si470x_device* %radio, i32 %freq) #0 !dbg !6455 {
entry:
  %radio.addr = alloca %struct.si470x_device*, align 8
  %freq.addr = alloca i32, align 4
  %chan = alloca i16, align 2
  %__UNIQUE_ID___x263 = alloca i32, align 4
  %__UNIQUE_ID___x261 = alloca i32, align 4
  %__UNIQUE_ID___y262 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y264 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  call void @llvm.dbg.declare(metadata i16* %chan, metadata !6462, metadata !DIExpression()), !dbg !6463
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x263, metadata !6464, metadata !DIExpression()), !dbg !6466
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x261, metadata !6467, metadata !DIExpression()), !dbg !6469
  %0 = load i32, i32* %freq.addr, align 4, !dbg !6469
  store i32 %0, i32* %__UNIQUE_ID___x261, align 4, !dbg !6469
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y262, metadata !6470, metadata !DIExpression()), !dbg !6469
  %1 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6469
  %band = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %1, i32 0, i32 3, !dbg !6469
  %2 = load i32, i32* %band, align 8, !dbg !6469
  %idxprom = sext i32 %2 to i64, !dbg !6469
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !6469
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx, i32 0, i32 4, !dbg !6469
  %3 = load i32, i32* %rangelow, align 16, !dbg !6469
  store i32 %3, i32* %__UNIQUE_ID___y262, align 4, !dbg !6469
  %4 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !6469
  %5 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !6469
  %cmp = icmp ugt i32 %4, %5, !dbg !6469
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6469

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !6469
  br label %cond.end, !dbg !6469

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !6469
  br label %cond.end, !dbg !6469

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !6469
  store i32 %cond, i32* %tmp, align 4, !dbg !6469
  %8 = load i32, i32* %tmp, align 4, !dbg !6469
  store i32 %8, i32* %__UNIQUE_ID___x263, align 4, !dbg !6466
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y264, metadata !6472, metadata !DIExpression()), !dbg !6466
  %9 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6466
  %band1 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 3, !dbg !6466
  %10 = load i32, i32* %band1, align 8, !dbg !6466
  %idxprom2 = sext i32 %10 to i64, !dbg !6466
  %arrayidx3 = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom2, !dbg !6466
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx3, i32 0, i32 5, !dbg !6466
  %11 = load i32, i32* %rangehigh, align 4, !dbg !6466
  store i32 %11, i32* %__UNIQUE_ID___y264, align 4, !dbg !6466
  %12 = load i32, i32* %__UNIQUE_ID___x263, align 4, !dbg !6466
  %13 = load i32, i32* %__UNIQUE_ID___y264, align 4, !dbg !6466
  %cmp5 = icmp ult i32 %12, %13, !dbg !6466
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !6466

cond.true6:                                       ; preds = %cond.end
  %14 = load i32, i32* %__UNIQUE_ID___x263, align 4, !dbg !6466
  br label %cond.end8, !dbg !6466

cond.false7:                                      ; preds = %cond.end
  %15 = load i32, i32* %__UNIQUE_ID___y264, align 4, !dbg !6466
  br label %cond.end8, !dbg !6466

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %14, %cond.true6 ], [ %15, %cond.false7 ], !dbg !6466
  store i32 %cond9, i32* %tmp4, align 4, !dbg !6466
  %16 = load i32, i32* %tmp4, align 4, !dbg !6466
  store i32 %16, i32* %freq.addr, align 4, !dbg !6473
  %17 = load i32, i32* %freq.addr, align 4, !dbg !6474
  %18 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6475
  %band10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 3, !dbg !6476
  %19 = load i32, i32* %band10, align 8, !dbg !6476
  %idxprom11 = sext i32 %19 to i64, !dbg !6477
  %arrayidx12 = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom11, !dbg !6477
  %rangelow13 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx12, i32 0, i32 4, !dbg !6478
  %20 = load i32, i32* %rangelow13, align 16, !dbg !6478
  %sub = sub i32 %17, %20, !dbg !6479
  %21 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6480
  %call = call i32 @si470x_get_step(%struct.si470x_device* %21) #6, !dbg !6481
  %div = udiv i32 %sub, %call, !dbg !6482
  %conv = trunc i32 %div to i16, !dbg !6483
  store i16 %conv, i16* %chan, align 2, !dbg !6484
  %22 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6485
  %23 = load i16, i16* %chan, align 2, !dbg !6486
  %call14 = call i32 @si470x_set_chan(%struct.si470x_device* %22, i16 zeroext %23) #6, !dbg !6487
  ret i32 %call14, !dbg !6488
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_get_step(%struct.si470x_device* %radio) #0 !dbg !6489 {
entry:
  %retval = alloca i32, align 4
  %radio.addr = alloca %struct.si470x_device*, align 8
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6494
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 4, !dbg !6495
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 5, !dbg !6494
  %1 = load i16, i16* %arrayidx, align 2, !dbg !6494
  %conv = zext i16 %1 to i32, !dbg !6494
  %and = and i32 %conv, 48, !dbg !6496
  %shr = ashr i32 %and, 4, !dbg !6497
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !6498

sw.bb:                                            ; preds = %entry
  store i32 3200, i32* %retval, align 4, !dbg !6499
  br label %return, !dbg !6499

sw.bb1:                                           ; preds = %entry
  store i32 1600, i32* %retval, align 4, !dbg !6501
  br label %return, !dbg !6501

sw.default:                                       ; preds = %entry
  store i32 800, i32* %retval, align 4, !dbg !6502
  br label %return, !dbg !6502

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %2 = load i32, i32* %retval, align 4, !dbg !6503
  ret i32 %2, !dbg !6503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_set_chan(%struct.si470x_device* %radio, i16 zeroext %chan) #0 !dbg !6504 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6507, metadata !DIExpression()), !dbg !6512
  %retval = alloca i32, align 4
  %radio.addr = alloca %struct.si470x_device*, align 8
  %chan.addr = alloca i16, align 2
  %retval1 = alloca i32, align 4
  %time_left = alloca i64, align 8
  %timed_out = alloca i8, align 1
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !6514, metadata !DIExpression()), !dbg !6515
  store i16 %chan, i16* %chan.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %chan.addr, metadata !6516, metadata !DIExpression()), !dbg !6517
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6518, metadata !DIExpression()), !dbg !6519
  call void @llvm.dbg.declare(metadata i64* %time_left, metadata !6520, metadata !DIExpression()), !dbg !6521
  call void @llvm.dbg.declare(metadata i8* %timed_out, metadata !6522, metadata !DIExpression()), !dbg !6523
  store i8 0, i8* %timed_out, align 1, !dbg !6523
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6524
  %get_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 13, !dbg !6525
  %1 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %get_register, align 8, !dbg !6525
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6526
  %call = call i32 %1(%struct.si470x_device* %2, i32 2) #6, !dbg !6524
  store i32 %call, i32* %retval1, align 4, !dbg !6527
  %3 = load i32, i32* %retval1, align 4, !dbg !6528
  %tobool = icmp ne i32 %3, 0, !dbg !6528
  br i1 %tobool, label %if.then, label %if.end, !dbg !6530

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %retval1, align 4, !dbg !6531
  store i32 %4, i32* %retval, align 4, !dbg !6532
  br label %return, !dbg !6532

if.end:                                           ; preds = %entry
  %5 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6533
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 4, !dbg !6535
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 2, !dbg !6533
  %6 = load i16, i16* %arrayidx, align 4, !dbg !6533
  %conv = zext i16 %6 to i32, !dbg !6533
  %and = and i32 %conv, 16385, !dbg !6536
  %cmp = icmp ne i32 %and, 16385, !dbg !6537
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6538

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end4:                                          ; preds = %if.end
  %7 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6541
  %registers5 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 4, !dbg !6542
  %arrayidx6 = getelementptr [16 x i16], [16 x i16]* %registers5, i64 0, i64 3, !dbg !6541
  %8 = load i16, i16* %arrayidx6, align 2, !dbg !6543
  %conv7 = zext i16 %8 to i32, !dbg !6543
  %and8 = and i32 %conv7, -1024, !dbg !6543
  %conv9 = trunc i32 %and8 to i16, !dbg !6543
  store i16 %conv9, i16* %arrayidx6, align 2, !dbg !6543
  %9 = load i16, i16* %chan.addr, align 2, !dbg !6544
  %conv10 = zext i16 %9 to i32, !dbg !6544
  %or = or i32 32768, %conv10, !dbg !6545
  %10 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6546
  %registers11 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 4, !dbg !6547
  %arrayidx12 = getelementptr [16 x i16], [16 x i16]* %registers11, i64 0, i64 3, !dbg !6546
  %11 = load i16, i16* %arrayidx12, align 2, !dbg !6548
  %conv13 = zext i16 %11 to i32, !dbg !6548
  %or14 = or i32 %conv13, %or, !dbg !6548
  %conv15 = trunc i32 %or14 to i16, !dbg !6548
  store i16 %conv15, i16* %arrayidx12, align 2, !dbg !6548
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6549
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 14, !dbg !6550
  %13 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !6550
  %14 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6551
  %call16 = call i32 %13(%struct.si470x_device* %14, i32 3) #6, !dbg !6549
  store i32 %call16, i32* %retval1, align 4, !dbg !6552
  %15 = load i32, i32* %retval1, align 4, !dbg !6553
  %cmp17 = icmp slt i32 %15, 0, !dbg !6555
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6556

if.then19:                                        ; preds = %if.end4
  br label %done, !dbg !6557

if.end20:                                         ; preds = %if.end4
  %16 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6558
  %completion = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %16, i32 0, i32 11, !dbg !6559
  call void @reinit_completion(%struct.completion* %completion) #6, !dbg !6560
  %17 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6561
  %completion21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %17, i32 0, i32 11, !dbg !6562
  %18 = load i32, i32* @tune_timeout, align 4, !dbg !6563
  store i32 %18, i32* %m.addr.i, align 4
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !6564
  %20 = call i1 @llvm.is.constant.i32(i32 %19) #7, !dbg !6566
  br i1 %20, label %if.then.i, label %if.else.i, !dbg !6567

if.then.i:                                        ; preds = %if.end20
  %21 = load i32, i32* %m.addr.i, align 4, !dbg !6568
  %cmp.i = icmp slt i32 %21, 0, !dbg !6571
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6572

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6573
  br label %msecs_to_jiffies.exit, !dbg !6573

if.end.i:                                         ; preds = %if.then.i
  %22 = load i32, i32* %m.addr.i, align 4, !dbg !6574
  %call.i = call i64 @_msecs_to_jiffies(i32 %22) #8, !dbg !6575
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6576
  br label %msecs_to_jiffies.exit, !dbg !6576

if.else.i:                                        ; preds = %if.end20
  %23 = load i32, i32* %m.addr.i, align 4, !dbg !6577
  %call2.i = call i64 @__msecs_to_jiffies(i32 %23) #8, !dbg !6579
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6580
  br label %msecs_to_jiffies.exit, !dbg !6580

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %24 = load i64, i64* %retval.i, align 8, !dbg !6581
  %call23 = call i64 @wait_for_completion_timeout(%struct.completion* %completion21, i64 %24) #6, !dbg !6582
  store i64 %call23, i64* %time_left, align 8, !dbg !6583
  %25 = load i64, i64* %time_left, align 8, !dbg !6584
  %cmp24 = icmp eq i64 %25, 0, !dbg !6586
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6587

if.then26:                                        ; preds = %msecs_to_jiffies.exit
  store i8 1, i8* %timed_out, align 1, !dbg !6588
  br label %if.end27, !dbg !6589

if.end27:                                         ; preds = %if.then26, %msecs_to_jiffies.exit
  %26 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6590
  %registers28 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 4, !dbg !6592
  %arrayidx29 = getelementptr [16 x i16], [16 x i16]* %registers28, i64 0, i64 10, !dbg !6590
  %27 = load i16, i16* %arrayidx29, align 4, !dbg !6590
  %conv30 = zext i16 %27 to i32, !dbg !6590
  %and31 = and i32 %conv30, 16384, !dbg !6593
  %cmp32 = icmp eq i32 %and31, 0, !dbg !6594
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !6595

if.then34:                                        ; preds = %if.end27
  %28 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6596
  %videodev = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %28, i32 0, i32 1, !dbg !6596
  %dev = getelementptr inbounds %struct.video_device, %struct.video_device* %videodev, i32 0, i32 5, !dbg !6596
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #9, !dbg !6596
  br label %if.end35, !dbg !6596

if.end35:                                         ; preds = %if.then34, %if.end27
  %29 = load i8, i8* %timed_out, align 1, !dbg !6597
  %tobool36 = trunc i8 %29 to i1, !dbg !6597
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !6599

if.then37:                                        ; preds = %if.end35
  %30 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6600
  %videodev38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %30, i32 0, i32 1, !dbg !6600
  %dev39 = getelementptr inbounds %struct.video_device, %struct.video_device* %videodev38, i32 0, i32 5, !dbg !6600
  %31 = load i32, i32* @tune_timeout, align 4, !dbg !6600
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31) #9, !dbg !6600
  br label %if.end40, !dbg !6600

if.end40:                                         ; preds = %if.then37, %if.end35
  %32 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6601
  %registers41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 4, !dbg !6602
  %arrayidx42 = getelementptr [16 x i16], [16 x i16]* %registers41, i64 0, i64 3, !dbg !6601
  %33 = load i16, i16* %arrayidx42, align 2, !dbg !6603
  %conv43 = zext i16 %33 to i32, !dbg !6603
  %and44 = and i32 %conv43, -32769, !dbg !6603
  %conv45 = trunc i32 %and44 to i16, !dbg !6603
  store i16 %conv45, i16* %arrayidx42, align 2, !dbg !6603
  %34 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6604
  %set_register46 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %34, i32 0, i32 14, !dbg !6605
  %35 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register46, align 8, !dbg !6605
  %36 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6606
  %call47 = call i32 %35(%struct.si470x_device* %36, i32 3) #6, !dbg !6604
  store i32 %call47, i32* %retval1, align 4, !dbg !6607
  br label %done, !dbg !6608

done:                                             ; preds = %if.end40, %if.then19
  call void @llvm.dbg.label(metadata !6609), !dbg !6610
  %37 = load i32, i32* %retval1, align 4, !dbg !6611
  store i32 %37, i32* %retval, align 4, !dbg !6612
  br label %return, !dbg !6612

return:                                           ; preds = %done, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !6613
  ret i32 %38, !dbg !6613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @si470x_start(%struct.si470x_device* %radio) #0 !dbg !6614 {
entry:
  %radio.addr = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !6617, metadata !DIExpression()), !dbg !6618
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6619, metadata !DIExpression()), !dbg !6620
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6621
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 4, !dbg !6622
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 2, !dbg !6621
  store i16 18433, i16* %arrayidx, align 4, !dbg !6623
  %1 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6624
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %1, i32 0, i32 14, !dbg !6625
  %2 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !6625
  %3 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6626
  %call = call i32 %2(%struct.si470x_device* %3, i32 2) #6, !dbg !6624
  store i32 %call, i32* %retval1, align 4, !dbg !6627
  %4 = load i32, i32* %retval1, align 4, !dbg !6628
  %cmp = icmp slt i32 %4, 0, !dbg !6630
  br i1 %cmp, label %if.then, label %if.end, !dbg !6631

if.then:                                          ; preds = %entry
  br label %done, !dbg !6632

if.end:                                           ; preds = %entry
  %5 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6633
  %registers2 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 4, !dbg !6634
  %arrayidx3 = getelementptr [16 x i16], [16 x i16]* %registers2, i64 0, i64 4, !dbg !6633
  %6 = load i16, i16* %arrayidx3, align 4, !dbg !6635
  %conv = zext i16 %6 to i32, !dbg !6635
  %or = or i32 %conv, 53248, !dbg !6635
  %conv4 = trunc i32 %or to i16, !dbg !6635
  store i16 %conv4, i16* %arrayidx3, align 4, !dbg !6635
  %7 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6636
  %registers5 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 4, !dbg !6637
  %arrayidx6 = getelementptr [16 x i16], [16 x i16]* %registers5, i64 0, i64 4, !dbg !6636
  %8 = load i16, i16* %arrayidx6, align 4, !dbg !6638
  %conv7 = zext i16 %8 to i32, !dbg !6638
  %and = and i32 %conv7, -13, !dbg !6638
  %conv8 = trunc i32 %and to i16, !dbg !6638
  store i16 %conv8, i16* %arrayidx6, align 4, !dbg !6638
  %9 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6639
  %registers9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 4, !dbg !6640
  %arrayidx10 = getelementptr [16 x i16], [16 x i16]* %registers9, i64 0, i64 4, !dbg !6639
  %10 = load i16, i16* %arrayidx10, align 4, !dbg !6641
  %conv11 = zext i16 %10 to i32, !dbg !6641
  %or12 = or i32 %conv11, 4, !dbg !6641
  %conv13 = trunc i32 %or12 to i16, !dbg !6641
  store i16 %conv13, i16* %arrayidx10, align 4, !dbg !6641
  %11 = load i16, i16* @de, align 2, !dbg !6642
  %tobool = icmp ne i16 %11, 0, !dbg !6642
  br i1 %tobool, label %if.then14, label %if.end20, !dbg !6644

if.then14:                                        ; preds = %if.end
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6645
  %registers15 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 4, !dbg !6646
  %arrayidx16 = getelementptr [16 x i16], [16 x i16]* %registers15, i64 0, i64 4, !dbg !6645
  %13 = load i16, i16* %arrayidx16, align 4, !dbg !6647
  %conv17 = zext i16 %13 to i32, !dbg !6647
  %or18 = or i32 %conv17, 2048, !dbg !6647
  %conv19 = trunc i32 %or18 to i16, !dbg !6647
  store i16 %conv19, i16* %arrayidx16, align 4, !dbg !6647
  br label %if.end20, !dbg !6645

if.end20:                                         ; preds = %if.then14, %if.end
  %14 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6648
  %set_register21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %14, i32 0, i32 14, !dbg !6649
  %15 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register21, align 8, !dbg !6649
  %16 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6650
  %call22 = call i32 %15(%struct.si470x_device* %16, i32 4) #6, !dbg !6648
  store i32 %call22, i32* %retval1, align 4, !dbg !6651
  %17 = load i32, i32* %retval1, align 4, !dbg !6652
  %cmp23 = icmp slt i32 %17, 0, !dbg !6654
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6655

if.then25:                                        ; preds = %if.end20
  br label %done, !dbg !6656

if.end26:                                         ; preds = %if.end20
  %18 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6657
  %band = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 3, !dbg !6658
  %19 = load i32, i32* %band, align 8, !dbg !6658
  %shl = shl i32 %19, 6, !dbg !6659
  %and27 = and i32 %shl, 192, !dbg !6660
  %or28 = or i32 7936, %and27, !dbg !6661
  %20 = load i16, i16* @space, align 2, !dbg !6662
  %conv29 = zext i16 %20 to i32, !dbg !6662
  %shl30 = shl i32 %conv29, 4, !dbg !6663
  %and31 = and i32 %shl30, 48, !dbg !6664
  %or32 = or i32 %or28, %and31, !dbg !6665
  %or33 = or i32 %or32, 15, !dbg !6666
  %conv34 = trunc i32 %or33 to i16, !dbg !6667
  %21 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6668
  %registers35 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %21, i32 0, i32 4, !dbg !6669
  %arrayidx36 = getelementptr [16 x i16], [16 x i16]* %registers35, i64 0, i64 5, !dbg !6668
  store i16 %conv34, i16* %arrayidx36, align 2, !dbg !6670
  %22 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6671
  %set_register37 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 14, !dbg !6672
  %23 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register37, align 8, !dbg !6672
  %24 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6673
  %call38 = call i32 %23(%struct.si470x_device* %24, i32 5) #6, !dbg !6671
  store i32 %call38, i32* %retval1, align 4, !dbg !6674
  %25 = load i32, i32* %retval1, align 4, !dbg !6675
  %cmp39 = icmp slt i32 %25, 0, !dbg !6677
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !6678

if.then41:                                        ; preds = %if.end26
  br label %done, !dbg !6679

if.end42:                                         ; preds = %if.end26
  %26 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6680
  %27 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6681
  %registers43 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %27, i32 0, i32 4, !dbg !6682
  %arrayidx44 = getelementptr [16 x i16], [16 x i16]* %registers43, i64 0, i64 3, !dbg !6681
  %28 = load i16, i16* %arrayidx44, align 2, !dbg !6681
  %conv45 = zext i16 %28 to i32, !dbg !6681
  %and46 = and i32 %conv45, 1023, !dbg !6683
  %conv47 = trunc i32 %and46 to i16, !dbg !6681
  %call48 = call i32 @si470x_set_chan(%struct.si470x_device* %26, i16 zeroext %conv47) #6, !dbg !6684
  store i32 %call48, i32* %retval1, align 4, !dbg !6685
  br label %done, !dbg !6686

done:                                             ; preds = %if.end42, %if.then41, %if.then25, %if.then
  call void @llvm.dbg.label(metadata !6687), !dbg !6688
  %29 = load i32, i32* %retval1, align 4, !dbg !6689
  ret i32 %29, !dbg !6690
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @si470x_stop(%struct.si470x_device* %radio) #0 !dbg !6691 {
entry:
  %radio.addr = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !6692, metadata !DIExpression()), !dbg !6693
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6694, metadata !DIExpression()), !dbg !6695
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6696
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 4, !dbg !6697
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 4, !dbg !6696
  %1 = load i16, i16* %arrayidx, align 4, !dbg !6698
  %conv = zext i16 %1 to i32, !dbg !6698
  %and = and i32 %conv, -4097, !dbg !6698
  %conv2 = trunc i32 %and to i16, !dbg !6698
  store i16 %conv2, i16* %arrayidx, align 4, !dbg !6698
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6699
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 14, !dbg !6700
  %3 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !6700
  %4 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6701
  %call = call i32 %3(%struct.si470x_device* %4, i32 4) #6, !dbg !6699
  store i32 %call, i32* %retval1, align 4, !dbg !6702
  %5 = load i32, i32* %retval1, align 4, !dbg !6703
  %cmp = icmp slt i32 %5, 0, !dbg !6705
  br i1 %cmp, label %if.then, label %if.end, !dbg !6706

if.then:                                          ; preds = %entry
  br label %done, !dbg !6707

if.end:                                           ; preds = %entry
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6708
  %registers4 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 4, !dbg !6709
  %arrayidx5 = getelementptr [16 x i16], [16 x i16]* %registers4, i64 0, i64 2, !dbg !6708
  %7 = load i16, i16* %arrayidx5, align 4, !dbg !6710
  %conv6 = zext i16 %7 to i32, !dbg !6710
  %and7 = and i32 %conv6, -16385, !dbg !6710
  %conv8 = trunc i32 %and7 to i16, !dbg !6710
  store i16 %conv8, i16* %arrayidx5, align 4, !dbg !6710
  %8 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6711
  %registers9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 4, !dbg !6712
  %arrayidx10 = getelementptr [16 x i16], [16 x i16]* %registers9, i64 0, i64 2, !dbg !6711
  %9 = load i16, i16* %arrayidx10, align 4, !dbg !6713
  %conv11 = zext i16 %9 to i32, !dbg !6713
  %or = or i32 %conv11, 65, !dbg !6713
  %conv12 = trunc i32 %or to i16, !dbg !6713
  store i16 %conv12, i16* %arrayidx10, align 4, !dbg !6713
  %10 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6714
  %set_register13 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 14, !dbg !6715
  %11 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register13, align 8, !dbg !6715
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !6716
  %call14 = call i32 %11(%struct.si470x_device* %12, i32 2) #6, !dbg !6714
  store i32 %call14, i32* %retval1, align 4, !dbg !6717
  br label %done, !dbg !6718

done:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6719), !dbg !6720
  %13 = load i32, i32* %retval1, align 4, !dbg !6721
  ret i32 %13, !dbg !6722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_s_ctrl(%struct.v4l2_ctrl* %ctrl) #0 !dbg !6723 {
entry:
  %retval = alloca i32, align 4
  %ctrl.addr = alloca %struct.v4l2_ctrl*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.si470x_device*, align 8
  store %struct.v4l2_ctrl* %ctrl, %struct.v4l2_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_ctrl** %ctrl.addr, metadata !6724, metadata !DIExpression()), !dbg !6725
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !6726, metadata !DIExpression()), !dbg !6727
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6728, metadata !DIExpression()), !dbg !6730
  %0 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !6730
  %handler = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %0, i32 0, i32 2, !dbg !6730
  %1 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %handler, align 8, !dbg !6730
  %2 = bitcast %struct.v4l2_ctrl_handler* %1 to i8*, !dbg !6730
  store i8* %2, i8** %__mptr, align 8, !dbg !6730
  br label %do.body, !dbg !6730

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6731

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !6730
  %add.ptr = getelementptr i8, i8* %3, i64 -1448, !dbg !6730
  %4 = bitcast i8* %add.ptr to %struct.si470x_device*, !dbg !6730
  store %struct.si470x_device* %4, %struct.si470x_device** %tmp, align 8, !dbg !6731
  %5 = load %struct.si470x_device*, %struct.si470x_device** %tmp, align 8, !dbg !6730
  store %struct.si470x_device* %5, %struct.si470x_device** %radio, align 8, !dbg !6727
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !6733
  %id = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %6, i32 0, i32 8, !dbg !6734
  %7 = load i32, i32* %id, align 8, !dbg !6734
  switch i32 %7, label %sw.default [
    i32 9963781, label %sw.bb
    i32 9963785, label %sw.bb6
  ], !dbg !6735

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6736
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 4, !dbg !6738
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 5, !dbg !6736
  %9 = load i16, i16* %arrayidx, align 2, !dbg !6739
  %conv = zext i16 %9 to i32, !dbg !6739
  %and = and i32 %conv, -16, !dbg !6739
  %conv1 = trunc i32 %and to i16, !dbg !6739
  store i16 %conv1, i16* %arrayidx, align 2, !dbg !6739
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !6740
  %val = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 22, !dbg !6741
  %11 = load i32, i32* %val, align 8, !dbg !6741
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6742
  %registers2 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 4, !dbg !6743
  %arrayidx3 = getelementptr [16 x i16], [16 x i16]* %registers2, i64 0, i64 5, !dbg !6742
  %13 = load i16, i16* %arrayidx3, align 2, !dbg !6744
  %conv4 = zext i16 %13 to i32, !dbg !6744
  %or = or i32 %conv4, %11, !dbg !6744
  %conv5 = trunc i32 %or to i16, !dbg !6744
  store i16 %conv5, i16* %arrayidx3, align 2, !dbg !6744
  %14 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6745
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %14, i32 0, i32 14, !dbg !6746
  %15 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !6746
  %16 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6747
  %call = call i32 %15(%struct.si470x_device* %16, i32 5) #6, !dbg !6745
  store i32 %call, i32* %retval, align 4, !dbg !6748
  br label %return, !dbg !6748

sw.bb6:                                           ; preds = %do.end
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !6749
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 22, !dbg !6751
  %18 = load i32, i32* %val7, align 8, !dbg !6751
  %tobool = icmp ne i32 %18, 0, !dbg !6749
  br i1 %tobool, label %if.then, label %if.else, !dbg !6752

if.then:                                          ; preds = %sw.bb6
  %19 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6753
  %registers8 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %19, i32 0, i32 4, !dbg !6754
  %arrayidx9 = getelementptr [16 x i16], [16 x i16]* %registers8, i64 0, i64 2, !dbg !6753
  %20 = load i16, i16* %arrayidx9, align 4, !dbg !6755
  %conv10 = zext i16 %20 to i32, !dbg !6755
  %and11 = and i32 %conv10, -16385, !dbg !6755
  %conv12 = trunc i32 %and11 to i16, !dbg !6755
  store i16 %conv12, i16* %arrayidx9, align 4, !dbg !6755
  br label %if.end, !dbg !6753

if.else:                                          ; preds = %sw.bb6
  %21 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6756
  %registers13 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %21, i32 0, i32 4, !dbg !6757
  %arrayidx14 = getelementptr [16 x i16], [16 x i16]* %registers13, i64 0, i64 2, !dbg !6756
  %22 = load i16, i16* %arrayidx14, align 4, !dbg !6758
  %conv15 = zext i16 %22 to i32, !dbg !6758
  %or16 = or i32 %conv15, 16384, !dbg !6758
  %conv17 = trunc i32 %or16 to i16, !dbg !6758
  store i16 %conv17, i16* %arrayidx14, align 4, !dbg !6758
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6759
  %set_register18 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %23, i32 0, i32 14, !dbg !6760
  %24 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register18, align 8, !dbg !6760
  %25 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6761
  %call19 = call i32 %24(%struct.si470x_device* %25, i32 2) #6, !dbg !6759
  store i32 %call19, i32* %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6763
  br label %return, !dbg !6763

return:                                           ; preds = %sw.default, %if.end, %sw.bb
  %26 = load i32, i32* %retval, align 4, !dbg !6764
  ret i32 %26, !dbg !6764
}

; Function Attrs: noredzone
declare dso_local void @video_device_release_empty(%struct.video_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #0 !dbg !6765 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !6768, metadata !DIExpression()), !dbg !6769
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !6770
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !6771
  store i32 0, i32* %done, align 8, !dbg !6772
  ret void, !dbg !6773
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6774 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  %0 = load i32, i32* %m.addr, align 4, !dbg !6777
  %conv = zext i32 %0 to i64, !dbg !6777
  %add = add i64 %conv, 4, !dbg !6778
  %sub = sub i64 %add, 1, !dbg !6779
  %div = sdiv i64 %sub, 4, !dbg !6780
  ret i64 %div, !dbg !6781
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @si470x_fops_read(%struct.file* %file, i8* %buf, i64 %count, i64* %ppos) #0 !dbg !6782 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !6783, metadata !DIExpression()), !dbg !6788
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !6798, metadata !DIExpression()), !dbg !6799
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !6800, metadata !DIExpression()), !dbg !6801
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !6802, metadata !DIExpression()), !dbg !6803
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !6804, metadata !DIExpression()), !dbg !6807
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !6808, metadata !DIExpression()), !dbg !6809
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !6810, metadata !DIExpression()), !dbg !6811
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !6812, metadata !DIExpression()), !dbg !6813
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  %block_count = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret16 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6814, metadata !DIExpression()), !dbg !6815
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6816, metadata !DIExpression()), !dbg !6817
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !6820, metadata !DIExpression()), !dbg !6821
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !6822, metadata !DIExpression()), !dbg !6823
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6824
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !6825
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !6825
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !6823
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6826, metadata !DIExpression()), !dbg !6827
  store i32 0, i32* %retval1, align 4, !dbg !6827
  call void @llvm.dbg.declare(metadata i32* %block_count, metadata !6828, metadata !DIExpression()), !dbg !6829
  store i32 0, i32* %block_count, align 4, !dbg !6829
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6830
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 4, !dbg !6832
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 4, !dbg !6830
  %3 = load i16, i16* %arrayidx, align 4, !dbg !6830
  %conv = zext i16 %3 to i32, !dbg !6830
  %and = and i32 %conv, 4096, !dbg !6833
  %cmp = icmp eq i32 %and, 0, !dbg !6834
  br i1 %cmp, label %if.then, label %if.end, !dbg !6835

if.then:                                          ; preds = %entry
  %4 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6836
  %call3 = call i32 @si470x_rds_on(%struct.si470x_device* %4) #6, !dbg !6837
  br label %if.end, !dbg !6837

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !6838

while.cond:                                       ; preds = %if.end34, %if.end
  %5 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6839
  %wr_index = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 10, !dbg !6840
  %6 = load i32, i32* %wr_index, align 8, !dbg !6840
  %7 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6841
  %rd_index = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 9, !dbg !6842
  %8 = load i32, i32* %rd_index, align 4, !dbg !6842
  %cmp4 = icmp eq i32 %6, %8, !dbg !6843
  br i1 %cmp4, label %while.body, label %while.end, !dbg !6838

while.body:                                       ; preds = %while.cond
  %9 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6844
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 7, !dbg !6847
  %10 = load i32, i32* %f_flags, align 8, !dbg !6847
  %and6 = and i32 %10, 2048, !dbg !6848
  %tobool = icmp ne i32 %and6, 0, !dbg !6848
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !6849

if.then7:                                         ; preds = %while.body
  store i32 -11, i32* %retval1, align 4, !dbg !6850
  br label %done, !dbg !6852

if.end8:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !6853, metadata !DIExpression()), !dbg !6856
  store i32 0, i32* %__ret, align 4, !dbg !6856
  br label %do.body, !dbg !6856

do.body:                                          ; preds = %if.end8
  br label %do.body9, !dbg !6857

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !6859

do.end:                                           ; preds = %do.body9
  br label %do.end10, !dbg !6857

do.end10:                                         ; preds = %do.end
  %11 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6861
  %wr_index11 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 10, !dbg !6861
  %12 = load i32, i32* %wr_index11, align 8, !dbg !6861
  %13 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6861
  %rd_index12 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %13, i32 0, i32 9, !dbg !6861
  %14 = load i32, i32* %rd_index12, align 4, !dbg !6861
  %cmp13 = icmp ne i32 %12, %14, !dbg !6861
  br i1 %cmp13, label %if.end29, label %if.then15, !dbg !6856

if.then15:                                        ; preds = %do.end10
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !6863, metadata !DIExpression()), !dbg !6876
  call void @llvm.dbg.declare(metadata i64* %__ret16, metadata !6877, metadata !DIExpression()), !dbg !6876
  store i64 0, i64* %__ret16, align 8, !dbg !6876
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #6, !dbg !6876
  br label %for.cond, !dbg !6876

for.cond:                                         ; preds = %if.end26, %if.then15
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !6878, metadata !DIExpression()), !dbg !6882
  %15 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6882
  %read_queue = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %15, i32 0, i32 5, !dbg !6882
  %call17 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %read_queue, %struct.wait_queue_entry* %__wq_entry, i32 1) #6, !dbg !6882
  store i64 %call17, i64* %__int, align 8, !dbg !6882
  %16 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6883
  %wr_index18 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %16, i32 0, i32 10, !dbg !6883
  %17 = load i32, i32* %wr_index18, align 8, !dbg !6883
  %18 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6883
  %rd_index19 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 9, !dbg !6883
  %19 = load i32, i32* %rd_index19, align 4, !dbg !6883
  %cmp20 = icmp ne i32 %17, %19, !dbg !6883
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !6882

if.then22:                                        ; preds = %for.cond
  br label %for.end, !dbg !6883

if.end23:                                         ; preds = %for.cond
  %20 = load i64, i64* %__int, align 8, !dbg !6885
  %tobool24 = icmp ne i64 %20, 0, !dbg !6885
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6882

if.then25:                                        ; preds = %if.end23
  %21 = load i64, i64* %__int, align 8, !dbg !6887
  store i64 %21, i64* %__ret16, align 8, !dbg !6887
  br label %__out, !dbg !6887

if.end26:                                         ; preds = %if.end23
  call void @schedule() #6, !dbg !6882
  br label %for.cond, !dbg !6889, !llvm.loop !6890

for.end:                                          ; preds = %if.then22
  %22 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6876
  %read_queue27 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 5, !dbg !6876
  call void @finish_wait(%struct.wait_queue_head* %read_queue27, %struct.wait_queue_entry* %__wq_entry) #6, !dbg !6876
  br label %__out, !dbg !6876

__out:                                            ; preds = %for.end, %if.then25
  call void @llvm.dbg.label(metadata !6892), !dbg !6876
  %23 = load i64, i64* %__ret16, align 8, !dbg !6876
  store i64 %23, i64* %tmp, align 8, !dbg !6876
  %24 = load i64, i64* %tmp, align 8, !dbg !6876
  %conv28 = trunc i64 %24 to i32, !dbg !6861
  store i32 %conv28, i32* %__ret, align 4, !dbg !6861
  br label %if.end29, !dbg !6861

if.end29:                                         ; preds = %__out, %do.end10
  %25 = load i32, i32* %__ret, align 4, !dbg !6856
  store i32 %25, i32* %tmp30, align 4, !dbg !6861
  %26 = load i32, i32* %tmp30, align 4, !dbg !6856
  %cmp31 = icmp slt i32 %26, 0, !dbg !6893
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6894

if.then33:                                        ; preds = %if.end29
  store i32 -4, i32* %retval1, align 4, !dbg !6895
  br label %done, !dbg !6897

if.end34:                                         ; preds = %if.end29
  br label %while.cond, !dbg !6838, !llvm.loop !6898

while.end:                                        ; preds = %while.cond
  %27 = load i64, i64* %count.addr, align 8, !dbg !6900
  %div = udiv i64 %27, 3, !dbg !6900
  store i64 %div, i64* %count.addr, align 8, !dbg !6900
  br label %while.cond35, !dbg !6901

while.cond35:                                     ; preds = %if.end58, %while.end
  %28 = load i32, i32* %block_count, align 4, !dbg !6902
  %conv36 = zext i32 %28 to i64, !dbg !6902
  %29 = load i64, i64* %count.addr, align 8, !dbg !6903
  %cmp37 = icmp ult i64 %conv36, %29, !dbg !6904
  br i1 %cmp37, label %while.body39, label %while.end60, !dbg !6901

while.body39:                                     ; preds = %while.cond35
  %30 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6905
  %rd_index40 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %30, i32 0, i32 9, !dbg !6907
  %31 = load i32, i32* %rd_index40, align 4, !dbg !6907
  %32 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6908
  %wr_index41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 10, !dbg !6909
  %33 = load i32, i32* %wr_index41, align 8, !dbg !6909
  %cmp42 = icmp eq i32 %31, %33, !dbg !6910
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !6911

if.then44:                                        ; preds = %while.body39
  br label %while.end60, !dbg !6912

if.end45:                                         ; preds = %while.body39
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !6913
  %35 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6914
  %buffer = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 7, !dbg !6915
  %36 = load i8*, i8** %buffer, align 8, !dbg !6915
  %37 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6916
  %rd_index46 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 9, !dbg !6917
  %38 = load i32, i32* %rd_index46, align 4, !dbg !6917
  %idxprom = zext i32 %38 to i64, !dbg !6914
  %arrayidx47 = getelementptr i8, i8* %36, i64 %idxprom, !dbg !6914
  store i8* %34, i8** %to.addr.i, align 8
  store i8* %arrayidx47, i8** %from.addr.i, align 8
  store i64 3, i64* %n.addr.i, align 8
  %39 = load i8*, i8** %from.addr.i, align 8, !dbg !6918
  %40 = load i64, i64* %n.addr.i, align 8, !dbg !6918
  store i8* %39, i8** %addr.addr.i.i, align 8
  store i64 %40, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6803
  %41 = load i32, i32* %sz.i.i, align 4, !dbg !6919
  %cmp.i.i = icmp sge i32 %41, 0, !dbg !6919
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6919

land.rhs.i.i:                                     ; preds = %if.end45
  %42 = load i32, i32* %sz.i.i, align 4, !dbg !6919
  %conv.i.i = sext i32 %42 to i64, !dbg !6919
  %43 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6919
  %cmp1.i.i = icmp ult i64 %conv.i.i, %43, !dbg !6919
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end45
  %44 = phi i1 [ false, %if.end45 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6921
  %lnot.i.i = xor i1 %44, true, !dbg !6919
  %lnot.ext.i.i = zext i1 %44 to i32, !dbg !6919
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6919
  br i1 %44, label %if.then.i.i, label %if.end10.i.i, !dbg !6922

if.then.i.i:                                      ; preds = %land.end.i.i
  %45 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6923
  %46 = call i1 @llvm.is.constant.i64(i64 %45) #7, !dbg !6926
  br i1 %46, label %if.else.i.i, label %if.then5.i.i, !dbg !6927

if.then5.i.i:                                     ; preds = %if.then.i.i
  %47 = load i32, i32* %sz.i.i, align 4, !dbg !6928
  %48 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6929
  call void @copy_overflow(i32 %47, i64 %48) #8, !dbg !6930
  br label %if.end9.i.i, !dbg !6930

if.else.i.i:                                      ; preds = %if.then.i.i
  %49 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6931
  %tobool6.i.i = trunc i8 %49 to i1, !dbg !6931
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6933

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !6934
  br label %if.end.i.i, !dbg !6934

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !6935
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6936
  br label %check_copy_size.exit.i, !dbg !6936

if.end10.i.i:                                     ; preds = %land.end.i.i
  %50 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6807
  %cmp11.i.i = icmp ugt i64 %50, 2147483647, !dbg !6807
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6807
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6807
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6807
  %51 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6937
  %tobool17.i.i = icmp ne i32 %51, 0, !dbg !6937
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6937
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6937
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6937
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6807

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !6939, !srcloc !6942
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !6943, !srcloc !6945
  br label %if.end31.i.i, !dbg !6946

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %52 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6807
  %tobool32.i.i = icmp ne i32 %52, 0, !dbg !6807
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6807
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6807
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6807
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6937
  %53 = load i64, i64* %tmp.i.i, align 8, !dbg !6807
  %tobool38.i.i = icmp ne i64 %53, 0, !dbg !6947
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6948

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6949
  br label %check_copy_size.exit.i, !dbg !6949

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %54 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6950
  %55 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6951
  %56 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6952
  %tobool41.i.i = trunc i8 %56 to i1, !dbg !6952
  call void @check_object_size(i8* %54, i64 %55, i1 zeroext %tobool41.i.i) #8, !dbg !6953
  store i1 true, i1* %retval.i.i, align 1, !dbg !6954
  br label %check_copy_size.exit.i, !dbg !6954

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %57 = load i1, i1* %retval.i.i, align 1, !dbg !6955
  %lnot.i = xor i1 %57, true, !dbg !6918
  %lnot.ext.i = zext i1 %57 to i32, !dbg !6918
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6918
  br i1 %57, label %if.then.i, label %copy_to_user.exit, !dbg !6956

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %58 = load i8*, i8** %to.addr.i, align 8, !dbg !6957
  %59 = load i8*, i8** %from.addr.i, align 8, !dbg !6958
  %60 = load i64, i64* %n.addr.i, align 8, !dbg !6959
  %call2.i = call i64 @_copy_to_user(i8* %58, i8* %59, i64 %60) #8, !dbg !6960
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6961
  br label %copy_to_user.exit, !dbg !6962

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %61 = load i64, i64* %n.addr.i, align 8, !dbg !6963
  %tobool49 = icmp ne i64 %61, 0, !dbg !6964
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !6965

if.then50:                                        ; preds = %copy_to_user.exit
  br label %while.end60, !dbg !6966

if.end51:                                         ; preds = %copy_to_user.exit
  %62 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6967
  %rd_index52 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %62, i32 0, i32 9, !dbg !6968
  %63 = load i32, i32* %rd_index52, align 4, !dbg !6969
  %add = add i32 %63, 3, !dbg !6969
  store i32 %add, i32* %rd_index52, align 4, !dbg !6969
  %64 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6970
  %rd_index53 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %64, i32 0, i32 9, !dbg !6972
  %65 = load i32, i32* %rd_index53, align 4, !dbg !6972
  %66 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6973
  %buf_size = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %66, i32 0, i32 8, !dbg !6974
  %67 = load i32, i32* %buf_size, align 8, !dbg !6974
  %cmp54 = icmp uge i32 %65, %67, !dbg !6975
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !6976

if.then56:                                        ; preds = %if.end51
  %68 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !6977
  %rd_index57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %68, i32 0, i32 9, !dbg !6978
  store i32 0, i32* %rd_index57, align 4, !dbg !6979
  br label %if.end58, !dbg !6977

if.end58:                                         ; preds = %if.then56, %if.end51
  %69 = load i32, i32* %block_count, align 4, !dbg !6980
  %inc = add i32 %69, 1, !dbg !6980
  store i32 %inc, i32* %block_count, align 4, !dbg !6980
  %70 = load i8*, i8** %buf.addr, align 8, !dbg !6981
  %add.ptr = getelementptr i8, i8* %70, i64 3, !dbg !6981
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !6981
  %71 = load i32, i32* %retval1, align 4, !dbg !6982
  %add59 = add i32 %71, 3, !dbg !6982
  store i32 %add59, i32* %retval1, align 4, !dbg !6982
  br label %while.cond35, !dbg !6901, !llvm.loop !6983

while.end60:                                      ; preds = %if.then50, %if.then44, %while.cond35
  br label %done, !dbg !6901

done:                                             ; preds = %while.end60, %if.then33, %if.then7
  call void @llvm.dbg.label(metadata !6985), !dbg !6986
  %72 = load i32, i32* %retval1, align 4, !dbg !6987
  %conv61 = sext i32 %72 to i64, !dbg !6987
  ret i64 %conv61, !dbg !6988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_fops_poll(%struct.file* %file, %struct.poll_table_struct* %pts) #0 !dbg !6989 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %pts.addr = alloca %struct.poll_table_struct*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  %req_events = alloca i32, align 4
  %retval2 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6990, metadata !DIExpression()), !dbg !6991
  store %struct.poll_table_struct* %pts, %struct.poll_table_struct** %pts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %pts.addr, metadata !6992, metadata !DIExpression()), !dbg !6993
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !6994, metadata !DIExpression()), !dbg !6995
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6996
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !6997
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !6997
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !6995
  call void @llvm.dbg.declare(metadata i32* %req_events, metadata !6998, metadata !DIExpression()), !dbg !6999
  %2 = load %struct.poll_table_struct*, %struct.poll_table_struct** %pts.addr, align 8, !dbg !7000
  %call1 = call i32 @poll_requested_events(%struct.poll_table_struct* %2) #6, !dbg !7001
  store i32 %call1, i32* %req_events, align 4, !dbg !6999
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !7002, metadata !DIExpression()), !dbg !7003
  %3 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7004
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %pts.addr, align 8, !dbg !7005
  %call3 = call i32 @v4l2_ctrl_poll(%struct.file* %3, %struct.poll_table_struct* %4) #6, !dbg !7006
  store i32 %call3, i32* %retval2, align 4, !dbg !7003
  %5 = load i32, i32* %req_events, align 4, !dbg !7007
  %and = and i32 %5, 65, !dbg !7009
  %tobool = icmp ne i32 %and, 0, !dbg !7009
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7010

if.then:                                          ; preds = %entry
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7011
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 4, !dbg !7014
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 4, !dbg !7011
  %7 = load i16, i16* %arrayidx, align 4, !dbg !7011
  %conv = zext i16 %7 to i32, !dbg !7011
  %and4 = and i32 %conv, 4096, !dbg !7015
  %cmp = icmp eq i32 %and4, 0, !dbg !7016
  br i1 %cmp, label %if.then6, label %if.end, !dbg !7017

if.then6:                                         ; preds = %if.then
  %8 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7018
  %call7 = call i32 @si470x_rds_on(%struct.si470x_device* %8) #6, !dbg !7019
  br label %if.end, !dbg !7019

if.end:                                           ; preds = %if.then6, %if.then
  %9 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7020
  %10 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7021
  %read_queue = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 5, !dbg !7022
  %11 = load %struct.poll_table_struct*, %struct.poll_table_struct** %pts.addr, align 8, !dbg !7023
  call void @poll_wait(%struct.file* %9, %struct.wait_queue_head* %read_queue, %struct.poll_table_struct* %11) #6, !dbg !7024
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7025
  %rd_index = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 9, !dbg !7027
  %13 = load i32, i32* %rd_index, align 4, !dbg !7027
  %14 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7028
  %wr_index = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %14, i32 0, i32 10, !dbg !7029
  %15 = load i32, i32* %wr_index, align 8, !dbg !7029
  %cmp8 = icmp ne i32 %13, %15, !dbg !7030
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !7031

if.then10:                                        ; preds = %if.end
  %16 = load i32, i32* %retval2, align 4, !dbg !7032
  %or = or i32 %16, 65, !dbg !7032
  store i32 %or, i32* %retval2, align 4, !dbg !7032
  br label %if.end11, !dbg !7033

if.end11:                                         ; preds = %if.then10, %if.end
  br label %if.end12, !dbg !7034

if.end12:                                         ; preds = %if.end11, %entry
  %17 = load i32, i32* %retval2, align 4, !dbg !7035
  ret i32 %17, !dbg !7036
}

; Function Attrs: noredzone
declare dso_local i64 @video_ioctl2(%struct.file*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_fops_open(%struct.file* %file) #0 !dbg !7037 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7038, metadata !DIExpression()), !dbg !7039
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7040, metadata !DIExpression()), !dbg !7041
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7042
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7043
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7043
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7041
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7044
  %fops_open = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 15, !dbg !7045
  %3 = load i32 (%struct.file*)*, i32 (%struct.file*)** %fops_open, align 8, !dbg !7045
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7046
  %call1 = call i32 %3(%struct.file* %4) #6, !dbg !7044
  ret i32 %call1, !dbg !7047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_fops_release(%struct.file* %file) #0 !dbg !7048 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7049, metadata !DIExpression()), !dbg !7050
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7051, metadata !DIExpression()), !dbg !7052
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7053
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7054
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7054
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7052
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7055
  %fops_release = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 16, !dbg !7056
  %3 = load i32 (%struct.file*)*, i32 (%struct.file*)** %fops_release, align 8, !dbg !7056
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7057
  %call1 = call i32 %3(%struct.file* %4) #6, !dbg !7055
  ret i32 %call1, !dbg !7058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @video_drvdata(%struct.file* %file) #0 !dbg !7059 {
entry:
  %file.addr = alloca %struct.file*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7062, metadata !DIExpression()), !dbg !7063
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7064
  %call = call %struct.video_device* @video_devdata(%struct.file* %0) #6, !dbg !7065
  %call1 = call i8* @video_get_drvdata(%struct.video_device* %call) #6, !dbg !7066
  ret i8* %call1, !dbg !7067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_rds_on(%struct.si470x_device* %radio) #0 !dbg !7068 {
entry:
  %radio.addr = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !7069, metadata !DIExpression()), !dbg !7070
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !7071, metadata !DIExpression()), !dbg !7072
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7073
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 4, !dbg !7074
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 4, !dbg !7073
  %1 = load i16, i16* %arrayidx, align 4, !dbg !7075
  %conv = zext i16 %1 to i32, !dbg !7075
  %or = or i32 %conv, 4096, !dbg !7075
  %conv2 = trunc i32 %or to i16, !dbg !7075
  store i16 %conv2, i16* %arrayidx, align 4, !dbg !7075
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7076
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 14, !dbg !7077
  %3 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !7077
  %4 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7078
  %call = call i32 %3(%struct.si470x_device* %4, i32 4) #6, !dbg !7076
  store i32 %call, i32* %retval1, align 4, !dbg !7079
  %5 = load i32, i32* %retval1, align 4, !dbg !7080
  %cmp = icmp slt i32 %5, 0, !dbg !7082
  br i1 %cmp, label %if.then, label %if.end, !dbg !7083

if.then:                                          ; preds = %entry
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7084
  %registers4 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 4, !dbg !7085
  %arrayidx5 = getelementptr [16 x i16], [16 x i16]* %registers4, i64 0, i64 4, !dbg !7084
  %7 = load i16, i16* %arrayidx5, align 4, !dbg !7086
  %conv6 = zext i16 %7 to i32, !dbg !7086
  %and = and i32 %conv6, -4097, !dbg !7086
  %conv7 = trunc i32 %and to i16, !dbg !7086
  store i16 %conv7, i16* %arrayidx5, align 4, !dbg !7086
  br label %if.end, !dbg !7084

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %retval1, align 4, !dbg !7087
  ret i32 %8, !dbg !7088
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @video_get_drvdata(%struct.video_device* %vdev) #0 !dbg !7089 {
entry:
  %vdev.addr = alloca %struct.video_device*, align 8
  store %struct.video_device* %vdev, %struct.video_device** %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.video_device** %vdev.addr, metadata !7092, metadata !DIExpression()), !dbg !7093
  %0 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !7094
  %dev = getelementptr inbounds %struct.video_device, %struct.video_device* %0, i32 0, i32 5, !dbg !7095
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !7096
  ret i8* %call, !dbg !7097
}

; Function Attrs: noredzone
declare dso_local %struct.video_device* @video_devdata(%struct.file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !7098 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7101, metadata !DIExpression()), !dbg !7102
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7103
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !7104
  %1 = load i8*, i8** %driver_data, align 8, !dbg !7104
  ret i8* %1, !dbg !7105
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !7106 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7109, metadata !DIExpression()), !dbg !7110
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !7111, metadata !DIExpression()), !dbg !7112
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !7113, metadata !DIExpression()), !dbg !7115
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !7115
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !7116
  %tobool = icmp ne i32 %0, 0, !dbg !7116
  %lnot = xor i1 %tobool, true, !dbg !7116
  %lnot1 = xor i1 %lnot, true, !dbg !7116
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7116
  %conv = sext i32 %lnot.ext to i64, !dbg !7116
  %tobool2 = icmp ne i64 %conv, 0, !dbg !7116
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7115

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7116

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !7118

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !7120

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !7118
  %2 = load i64, i64* %count.addr, align 8, !dbg !7118
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %1, i64 %2) #6, !dbg !7118
  br label %do.body4, !dbg !7118

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !7122

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7124

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !7122

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 134, i32 2313, i64 12) #7, !dbg !7126, !srcloc !7128
  br label %do.end8, !dbg !7126

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #7, !dbg !7129, !srcloc !7131
  br label %do.body9, !dbg !7122

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7132

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !7122

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !7118

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !7134

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !7118

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !7118

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !7115
  %tobool15 = icmp ne i32 %3, 0, !dbg !7115
  %lnot16 = xor i1 %tobool15, true, !dbg !7115
  %lnot18 = xor i1 %lnot16, true, !dbg !7115
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !7115
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !7115
  store i64 %conv20, i64* %tmp, align 8, !dbg !7116
  %4 = load i64, i64* %tmp, align 8, !dbg !7115
  ret void, !dbg !7136
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !7137 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7140, metadata !DIExpression()), !dbg !7141
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !7142, metadata !DIExpression()), !dbg !7143
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !7144, metadata !DIExpression()), !dbg !7145
  ret void, !dbg !7146
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poll_requested_events(%struct.poll_table_struct* %p) #0 !dbg !7147 {
entry:
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !7153, metadata !DIExpression()), !dbg !7154
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7155
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !7155
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7155

cond.true:                                        ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7156
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 1, !dbg !7157
  %2 = load i32, i32* %_key, align 8, !dbg !7157
  br label %cond.end, !dbg !7155

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ], !dbg !7155
  ret i32 %cond, !dbg !7158
}

; Function Attrs: noredzone
declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, %struct.poll_table_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !7159 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !7163, metadata !DIExpression()), !dbg !7164
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !7165, metadata !DIExpression()), !dbg !7166
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !7167, metadata !DIExpression()), !dbg !7168
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7169
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !7169
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7171

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7172
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !7173
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !7173
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !7172
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !7174

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !7175
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !7175
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7176

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7177
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !7178
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !7178
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !7179
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !7180
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !7181
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #6, !dbg !7177
  br label %if.end, !dbg !7177

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !7182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_querycap(%struct.file* %file, i8* %priv, %struct.v4l2_capability* %capability) #0 !dbg !7183 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %capability.addr = alloca %struct.v4l2_capability*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7184, metadata !DIExpression()), !dbg !7185
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7186, metadata !DIExpression()), !dbg !7187
  store %struct.v4l2_capability* %capability, %struct.v4l2_capability** %capability.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_capability** %capability.addr, metadata !7188, metadata !DIExpression()), !dbg !7189
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7190, metadata !DIExpression()), !dbg !7191
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7192
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7193
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7193
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7191
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7194
  %vidioc_querycap = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %2, i32 0, i32 17, !dbg !7195
  %3 = load i32 (%struct.file*, i8*, %struct.v4l2_capability*)*, i32 (%struct.file*, i8*, %struct.v4l2_capability*)** %vidioc_querycap, align 8, !dbg !7195
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7196
  %5 = load i8*, i8** %priv.addr, align 8, !dbg !7197
  %6 = load %struct.v4l2_capability*, %struct.v4l2_capability** %capability.addr, align 8, !dbg !7198
  %call1 = call i32 %3(%struct.file* %4, i8* %5, %struct.v4l2_capability* %6) #6, !dbg !7194
  ret i32 %call1, !dbg !7199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_g_tuner(%struct.file* %file, i8* %priv, %struct.v4l2_tuner* %tuner) #0 !dbg !7200 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %tuner.addr = alloca %struct.v4l2_tuner*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7201, metadata !DIExpression()), !dbg !7202
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7203, metadata !DIExpression()), !dbg !7204
  store %struct.v4l2_tuner* %tuner, %struct.v4l2_tuner** %tuner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %tuner.addr, metadata !7205, metadata !DIExpression()), !dbg !7206
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7207, metadata !DIExpression()), !dbg !7208
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7209
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7210
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7210
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7208
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !7211, metadata !DIExpression()), !dbg !7212
  store i32 0, i32* %retval1, align 4, !dbg !7212
  %2 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7213
  %index = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %2, i32 0, i32 0, !dbg !7215
  %3 = load i32, i32* %index, align 4, !dbg !7215
  %cmp = icmp ne i32 %3, 0, !dbg !7216
  br i1 %cmp, label %if.then, label %if.end, !dbg !7217

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7218
  br label %return, !dbg !7218

if.end:                                           ; preds = %entry
  %4 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7219
  %status_rssi_auto_update = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %4, i32 0, i32 12, !dbg !7221
  %5 = load i8, i8* %status_rssi_auto_update, align 8, !dbg !7221
  %tobool = trunc i8 %5 to i1, !dbg !7221
  br i1 %tobool, label %if.end7, label %if.then2, !dbg !7222

if.then2:                                         ; preds = %if.end
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7223
  %get_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 13, !dbg !7225
  %7 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %get_register, align 8, !dbg !7225
  %8 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7226
  %call3 = call i32 %7(%struct.si470x_device* %8, i32 10) #6, !dbg !7223
  store i32 %call3, i32* %retval1, align 4, !dbg !7227
  %9 = load i32, i32* %retval1, align 4, !dbg !7228
  %cmp4 = icmp slt i32 %9, 0, !dbg !7230
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7231

if.then5:                                         ; preds = %if.then2
  %10 = load i32, i32* %retval1, align 4, !dbg !7232
  store i32 %10, i32* %retval, align 4, !dbg !7233
  br label %return, !dbg !7233

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !7234

if.end7:                                          ; preds = %if.end6, %if.end
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7235
  %name = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 1, !dbg !7236
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !7235
  %call8 = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 32) #6, !dbg !7237
  %12 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7238
  %type = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 2, !dbg !7239
  store i32 1, i32* %type, align 4, !dbg !7240
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7241
  %capability = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 3, !dbg !7242
  store i32 413, i32* %capability, align 4, !dbg !7243
  %14 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7244
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %14, i32 0, i32 4, !dbg !7245
  store i32 1216000, i32* %rangelow, align 4, !dbg !7246
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7247
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 5, !dbg !7248
  store i32 1728000, i32* %rangehigh, align 4, !dbg !7249
  %16 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7250
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %16, i32 0, i32 4, !dbg !7252
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 10, !dbg !7250
  %17 = load i16, i16* %arrayidx, align 4, !dbg !7250
  %conv = zext i16 %17 to i32, !dbg !7250
  %and = and i32 %conv, 256, !dbg !7253
  %cmp9 = icmp eq i32 %and, 0, !dbg !7254
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !7255

if.then11:                                        ; preds = %if.end7
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7256
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 6, !dbg !7257
  store i32 1, i32* %rxsubchans, align 4, !dbg !7258
  br label %if.end13, !dbg !7256

if.else:                                          ; preds = %if.end7
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7259
  %rxsubchans12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 6, !dbg !7260
  store i32 2, i32* %rxsubchans12, align 4, !dbg !7261
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7262
  %rxsubchans14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 6, !dbg !7263
  %21 = load i32, i32* %rxsubchans14, align 4, !dbg !7264
  %or = or i32 %21, 16, !dbg !7264
  store i32 %or, i32* %rxsubchans14, align 4, !dbg !7264
  %22 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7265
  %registers15 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 4, !dbg !7267
  %arrayidx16 = getelementptr [16 x i16], [16 x i16]* %registers15, i64 0, i64 2, !dbg !7265
  %23 = load i16, i16* %arrayidx16, align 4, !dbg !7265
  %conv17 = zext i16 %23 to i32, !dbg !7265
  %and18 = and i32 %conv17, 8192, !dbg !7268
  %cmp19 = icmp eq i32 %and18, 0, !dbg !7269
  br i1 %cmp19, label %if.then21, label %if.else22, !dbg !7270

if.then21:                                        ; preds = %if.end13
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7271
  %audmode = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 7, !dbg !7272
  store i32 1, i32* %audmode, align 4, !dbg !7273
  br label %if.end24, !dbg !7271

if.else22:                                        ; preds = %if.end13
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7274
  %audmode23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 7, !dbg !7275
  store i32 0, i32* %audmode23, align 4, !dbg !7276
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  %26 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7277
  %registers25 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 4, !dbg !7278
  %arrayidx26 = getelementptr [16 x i16], [16 x i16]* %registers25, i64 0, i64 10, !dbg !7277
  %27 = load i16, i16* %arrayidx26, align 4, !dbg !7277
  %conv27 = zext i16 %27 to i32, !dbg !7277
  %and28 = and i32 %conv27, 255, !dbg !7279
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7280
  %signal = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 8, !dbg !7281
  store i32 %and28, i32* %signal, align 4, !dbg !7282
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7283
  %signal29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 8, !dbg !7284
  %30 = load i32, i32* %signal29, align 4, !dbg !7284
  %mul = mul i32 %30, 873, !dbg !7285
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7286
  %signal30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 8, !dbg !7287
  %32 = load i32, i32* %signal30, align 4, !dbg !7287
  %mul31 = mul i32 8, %32, !dbg !7288
  %div = sdiv i32 %mul31, 10, !dbg !7289
  %add = add i32 %mul, %div, !dbg !7290
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7291
  %signal32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 8, !dbg !7292
  store i32 %add, i32* %signal32, align 4, !dbg !7293
  %34 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7294
  %signal33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %34, i32 0, i32 8, !dbg !7296
  %35 = load i32, i32* %signal33, align 4, !dbg !7296
  %cmp34 = icmp sgt i32 %35, 65535, !dbg !7297
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !7298

if.then36:                                        ; preds = %if.end24
  %36 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7299
  %signal37 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %36, i32 0, i32 8, !dbg !7300
  store i32 65535, i32* %signal37, align 4, !dbg !7301
  br label %if.end38, !dbg !7299

if.end38:                                         ; preds = %if.then36, %if.end24
  %37 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7302
  %registers39 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 4, !dbg !7303
  %arrayidx40 = getelementptr [16 x i16], [16 x i16]* %registers39, i64 0, i64 10, !dbg !7302
  %38 = load i16, i16* %arrayidx40, align 4, !dbg !7302
  %conv41 = zext i16 %38 to i32, !dbg !7302
  %and42 = and i32 %conv41, 4096, !dbg !7304
  %tobool43 = icmp ne i32 %and42, 0, !dbg !7305
  %39 = zext i1 %tobool43 to i64, !dbg !7305
  %cond = select i1 %tobool43, i32 1, i32 0, !dbg !7305
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7306
  %afc = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 9, !dbg !7307
  store i32 %cond, i32* %afc, align 4, !dbg !7308
  %41 = load i32, i32* %retval1, align 4, !dbg !7309
  store i32 %41, i32* %retval, align 4, !dbg !7310
  br label %return, !dbg !7310

return:                                           ; preds = %if.end38, %if.then5, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !7311
  ret i32 %42, !dbg !7311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_s_tuner(%struct.file* %file, i8* %priv, %struct.v4l2_tuner* %tuner) #0 !dbg !7312 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %tuner.addr = alloca %struct.v4l2_tuner*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7313, metadata !DIExpression()), !dbg !7314
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7315, metadata !DIExpression()), !dbg !7316
  store %struct.v4l2_tuner* %tuner, %struct.v4l2_tuner** %tuner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %tuner.addr, metadata !7317, metadata !DIExpression()), !dbg !7318
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7319, metadata !DIExpression()), !dbg !7320
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7321
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7322
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7322
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7320
  %2 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7323
  %index = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %2, i32 0, i32 0, !dbg !7325
  %3 = load i32, i32* %index, align 4, !dbg !7325
  %cmp = icmp ne i32 %3, 0, !dbg !7326
  br i1 %cmp, label %if.then, label %if.end, !dbg !7327

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7328
  br label %return, !dbg !7328

if.end:                                           ; preds = %entry
  %4 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %tuner.addr, align 8, !dbg !7329
  %audmode = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %4, i32 0, i32 7, !dbg !7330
  %5 = load i32, i32* %audmode, align 4, !dbg !7330
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !7331

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7332
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 4, !dbg !7334
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 2, !dbg !7332
  %7 = load i16, i16* %arrayidx, align 4, !dbg !7335
  %conv = zext i16 %7 to i32, !dbg !7335
  %or = or i32 %conv, 8192, !dbg !7335
  %conv1 = trunc i32 %or to i16, !dbg !7335
  store i16 %conv1, i16* %arrayidx, align 4, !dbg !7335
  br label %sw.epilog, !dbg !7336

sw.bb2:                                           ; preds = %if.end
  br label %sw.default, !dbg !7336

sw.default:                                       ; preds = %if.end, %sw.bb2
  %8 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7337
  %registers3 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 4, !dbg !7338
  %arrayidx4 = getelementptr [16 x i16], [16 x i16]* %registers3, i64 0, i64 2, !dbg !7337
  %9 = load i16, i16* %arrayidx4, align 4, !dbg !7339
  %conv5 = zext i16 %9 to i32, !dbg !7339
  %and = and i32 %conv5, -8193, !dbg !7339
  %conv6 = trunc i32 %and to i16, !dbg !7339
  store i16 %conv6, i16* %arrayidx4, align 4, !dbg !7339
  br label %sw.epilog, !dbg !7340

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7341
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 14, !dbg !7342
  %11 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !7342
  %12 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7343
  %call7 = call i32 %11(%struct.si470x_device* %12, i32 2) #6, !dbg !7341
  store i32 %call7, i32* %retval, align 4, !dbg !7344
  br label %return, !dbg !7344

return:                                           ; preds = %sw.epilog, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !7345
  ret i32 %13, !dbg !7345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_g_frequency(%struct.file* %file, i8* %priv, %struct.v4l2_frequency* %freq) #0 !dbg !7346 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %freq.addr = alloca %struct.v4l2_frequency*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7347, metadata !DIExpression()), !dbg !7348
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7349, metadata !DIExpression()), !dbg !7350
  store %struct.v4l2_frequency* %freq, %struct.v4l2_frequency** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency** %freq.addr, metadata !7351, metadata !DIExpression()), !dbg !7352
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7353, metadata !DIExpression()), !dbg !7354
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7355
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7356
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7356
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7354
  %2 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7357
  %tuner = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %2, i32 0, i32 0, !dbg !7359
  %3 = load i32, i32* %tuner, align 4, !dbg !7359
  %cmp = icmp ne i32 %3, 0, !dbg !7360
  br i1 %cmp, label %if.then, label %if.end, !dbg !7361

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7362
  br label %return, !dbg !7362

if.end:                                           ; preds = %entry
  %4 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7363
  %type = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 1, !dbg !7364
  store i32 1, i32* %type, align 4, !dbg !7365
  %5 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7366
  %6 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7367
  %frequency = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 2, !dbg !7368
  %call1 = call i32 @si470x_get_freq(%struct.si470x_device* %5, i32* %frequency) #6, !dbg !7369
  store i32 %call1, i32* %retval, align 4, !dbg !7370
  br label %return, !dbg !7370

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7371
  ret i32 %7, !dbg !7371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_s_frequency(%struct.file* %file, i8* %priv, %struct.v4l2_frequency* %freq) #0 !dbg !7372 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %freq.addr = alloca %struct.v4l2_frequency*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7373, metadata !DIExpression()), !dbg !7374
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7375, metadata !DIExpression()), !dbg !7376
  store %struct.v4l2_frequency* %freq, %struct.v4l2_frequency** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency** %freq.addr, metadata !7377, metadata !DIExpression()), !dbg !7378
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7379, metadata !DIExpression()), !dbg !7380
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7381
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7382
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7382
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7380
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !7383, metadata !DIExpression()), !dbg !7384
  %2 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7385
  %tuner = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %2, i32 0, i32 0, !dbg !7387
  %3 = load i32, i32* %tuner, align 4, !dbg !7387
  %cmp = icmp ne i32 %3, 0, !dbg !7388
  br i1 %cmp, label %if.then, label %if.end, !dbg !7389

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7390
  br label %return, !dbg !7390

if.end:                                           ; preds = %entry
  %4 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7391
  %frequency = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 2, !dbg !7393
  %5 = load i32, i32* %frequency, align 4, !dbg !7393
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7394
  %band = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 3, !dbg !7395
  %7 = load i32, i32* %band, align 8, !dbg !7395
  %idxprom = sext i32 %7 to i64, !dbg !7396
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !7396
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx, i32 0, i32 4, !dbg !7397
  %8 = load i32, i32* %rangelow, align 16, !dbg !7397
  %cmp2 = icmp ult i32 %5, %8, !dbg !7398
  br i1 %cmp2, label %if.then8, label %lor.lhs.false, !dbg !7399

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7400
  %frequency3 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 2, !dbg !7401
  %10 = load i32, i32* %frequency3, align 4, !dbg !7401
  %11 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7402
  %band4 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 3, !dbg !7403
  %12 = load i32, i32* %band4, align 8, !dbg !7403
  %idxprom5 = sext i32 %12 to i64, !dbg !7404
  %arrayidx6 = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom5, !dbg !7404
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx6, i32 0, i32 5, !dbg !7405
  %13 = load i32, i32* %rangehigh, align 4, !dbg !7405
  %cmp7 = icmp ugt i32 %10, %13, !dbg !7406
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !7407

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7408
  %call9 = call i32 @si470x_set_band(%struct.si470x_device* %14, i32 1) #6, !dbg !7410
  store i32 %call9, i32* %retval1, align 4, !dbg !7411
  %15 = load i32, i32* %retval1, align 4, !dbg !7412
  %tobool = icmp ne i32 %15, 0, !dbg !7412
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !7414

if.then10:                                        ; preds = %if.then8
  %16 = load i32, i32* %retval1, align 4, !dbg !7415
  store i32 %16, i32* %retval, align 4, !dbg !7416
  br label %return, !dbg !7416

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !7417

if.end12:                                         ; preds = %if.end11, %lor.lhs.false
  %17 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7418
  %18 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %freq.addr, align 8, !dbg !7419
  %frequency13 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %18, i32 0, i32 2, !dbg !7420
  %19 = load i32, i32* %frequency13, align 4, !dbg !7420
  %call14 = call i32 @si470x_set_freq(%struct.si470x_device* %17, i32 %19) #6, !dbg !7421
  store i32 %call14, i32* %retval, align 4, !dbg !7422
  br label %return, !dbg !7422

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !7423
  ret i32 %20, !dbg !7423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_enum_freq_bands(%struct.file* %file, i8* %priv, %struct.v4l2_frequency_band* %band) #0 !dbg !7424 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %band.addr = alloca %struct.v4l2_frequency_band*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7425, metadata !DIExpression()), !dbg !7426
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7427, metadata !DIExpression()), !dbg !7428
  store %struct.v4l2_frequency_band* %band, %struct.v4l2_frequency_band** %band.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency_band** %band.addr, metadata !7429, metadata !DIExpression()), !dbg !7430
  %0 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !7431
  %tuner = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %0, i32 0, i32 0, !dbg !7433
  %1 = load i32, i32* %tuner, align 4, !dbg !7433
  %cmp = icmp ne i32 %1, 0, !dbg !7434
  br i1 %cmp, label %if.then, label %if.end, !dbg !7435

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7436
  br label %return, !dbg !7436

if.end:                                           ; preds = %entry
  %2 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !7437
  %index = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %2, i32 0, i32 2, !dbg !7439
  %3 = load i32, i32* %index, align 4, !dbg !7439
  %conv = zext i32 %3 to i64, !dbg !7437
  %cmp1 = icmp uge i64 %conv, 3, !dbg !7440
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !7441

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !7442
  br label %return, !dbg !7442

if.end4:                                          ; preds = %if.end
  %4 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !7443
  %5 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !7444
  %index5 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %5, i32 0, i32 2, !dbg !7445
  %6 = load i32, i32* %index5, align 4, !dbg !7445
  %idxprom = zext i32 %6 to i64, !dbg !7446
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !7446
  %7 = bitcast %struct.v4l2_frequency_band* %4 to i8*, !dbg !7446
  %8 = bitcast %struct.v4l2_frequency_band* %arrayidx to i8*, !dbg !7446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 16 %8, i64 64, i1 false), !dbg !7446
  store i32 0, i32* %retval, align 4, !dbg !7447
  br label %return, !dbg !7447

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !7448
  ret i32 %9, !dbg !7448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_vidioc_s_hw_freq_seek(%struct.file* %file, i8* %priv, %struct.v4l2_hw_freq_seek* %seek) #0 !dbg !7449 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %priv.addr = alloca i8*, align 8
  %seek.addr = alloca %struct.v4l2_hw_freq_seek*, align 8
  %radio = alloca %struct.si470x_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7450, metadata !DIExpression()), !dbg !7451
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !7452, metadata !DIExpression()), !dbg !7453
  store %struct.v4l2_hw_freq_seek* %seek, %struct.v4l2_hw_freq_seek** %seek.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_hw_freq_seek** %seek.addr, metadata !7454, metadata !DIExpression()), !dbg !7455
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio, metadata !7456, metadata !DIExpression()), !dbg !7457
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7458
  %call = call i8* @video_drvdata(%struct.file* %0) #6, !dbg !7459
  %1 = bitcast i8* %call to %struct.si470x_device*, !dbg !7459
  store %struct.si470x_device* %1, %struct.si470x_device** %radio, align 8, !dbg !7457
  %2 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7460
  %tuner = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %2, i32 0, i32 0, !dbg !7462
  %3 = load i32, i32* %tuner, align 4, !dbg !7462
  %cmp = icmp ne i32 %3, 0, !dbg !7463
  br i1 %cmp, label %if.then, label %if.end, !dbg !7464

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7465
  br label %return, !dbg !7465

if.end:                                           ; preds = %entry
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7466
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 7, !dbg !7468
  %5 = load i32, i32* %f_flags, align 8, !dbg !7468
  %and = and i32 %5, 2048, !dbg !7469
  %tobool = icmp ne i32 %and, 0, !dbg !7469
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !7470

if.then1:                                         ; preds = %if.end
  store i32 -11, i32* %retval, align 4, !dbg !7471
  br label %return, !dbg !7471

if.end2:                                          ; preds = %if.end
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio, align 8, !dbg !7472
  %7 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7473
  %call3 = call i32 @si470x_set_seek(%struct.si470x_device* %6, %struct.v4l2_hw_freq_seek* %7) #6, !dbg !7474
  store i32 %call3, i32* %retval, align 4, !dbg !7475
  br label %return, !dbg !7475

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !7476
  ret i32 %8, !dbg !7476
}

; Function Attrs: noredzone
declare dso_local i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #2

; Function Attrs: noredzone
declare dso_local i32 @v4l2_event_unsubscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #2

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_get_freq(%struct.si470x_device* %radio, i32* %freq) #0 !dbg !7477 {
entry:
  %radio.addr = alloca %struct.si470x_device*, align 8
  %freq.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !7480, metadata !DIExpression()), !dbg !7481
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !7482, metadata !DIExpression()), !dbg !7483
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !7484, metadata !DIExpression()), !dbg !7485
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !7486, metadata !DIExpression()), !dbg !7487
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7488
  %get_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 13, !dbg !7489
  %1 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %get_register, align 8, !dbg !7489
  %2 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7490
  %call = call i32 %1(%struct.si470x_device* %2, i32 11) #6, !dbg !7488
  store i32 %call, i32* %retval1, align 4, !dbg !7491
  %3 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7492
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %3, i32 0, i32 4, !dbg !7493
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 11, !dbg !7492
  %4 = load i16, i16* %arrayidx, align 2, !dbg !7492
  %conv = zext i16 %4 to i32, !dbg !7492
  %and = and i32 %conv, 1023, !dbg !7494
  store i32 %and, i32* %chan, align 4, !dbg !7495
  %5 = load i32, i32* %chan, align 4, !dbg !7496
  %6 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7497
  %call2 = call i32 @si470x_get_step(%struct.si470x_device* %6) #6, !dbg !7498
  %mul = mul i32 %5, %call2, !dbg !7499
  %7 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7500
  %band = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 3, !dbg !7501
  %8 = load i32, i32* %band, align 8, !dbg !7501
  %idxprom = sext i32 %8 to i64, !dbg !7502
  %arrayidx3 = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !7502
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx3, i32 0, i32 4, !dbg !7503
  %9 = load i32, i32* %rangelow, align 16, !dbg !7503
  %add = add i32 %mul, %9, !dbg !7504
  %10 = load i32*, i32** %freq.addr, align 8, !dbg !7505
  store i32 %add, i32* %10, align 4, !dbg !7506
  %11 = load i32, i32* %retval1, align 4, !dbg !7507
  ret i32 %11, !dbg !7508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_set_band(%struct.si470x_device* %radio, i32 %band) #0 !dbg !7509 {
entry:
  %retval = alloca i32, align 4
  %radio.addr = alloca %struct.si470x_device*, align 8
  %band.addr = alloca i32, align 4
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !7510, metadata !DIExpression()), !dbg !7511
  store i32 %band, i32* %band.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %band.addr, metadata !7512, metadata !DIExpression()), !dbg !7513
  %0 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7514
  %band1 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %0, i32 0, i32 3, !dbg !7516
  %1 = load i32, i32* %band1, align 8, !dbg !7516
  %2 = load i32, i32* %band.addr, align 4, !dbg !7517
  %cmp = icmp eq i32 %1, %2, !dbg !7518
  br i1 %cmp, label %if.then, label %if.end, !dbg !7519

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7520
  br label %return, !dbg !7520

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %band.addr, align 4, !dbg !7521
  %4 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7522
  %band2 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %4, i32 0, i32 3, !dbg !7523
  store i32 %3, i32* %band2, align 8, !dbg !7524
  %5 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7525
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 4, !dbg !7526
  %arrayidx = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 5, !dbg !7525
  %6 = load i16, i16* %arrayidx, align 2, !dbg !7527
  %conv = zext i16 %6 to i32, !dbg !7527
  %and = and i32 %conv, -193, !dbg !7527
  %conv3 = trunc i32 %and to i16, !dbg !7527
  store i16 %conv3, i16* %arrayidx, align 2, !dbg !7527
  %7 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7528
  %band4 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 3, !dbg !7529
  %8 = load i32, i32* %band4, align 8, !dbg !7529
  %shl = shl i32 %8, 6, !dbg !7530
  %9 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7531
  %registers5 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 4, !dbg !7532
  %arrayidx6 = getelementptr [16 x i16], [16 x i16]* %registers5, i64 0, i64 5, !dbg !7531
  %10 = load i16, i16* %arrayidx6, align 2, !dbg !7533
  %conv7 = zext i16 %10 to i32, !dbg !7533
  %or = or i32 %conv7, %shl, !dbg !7533
  %conv8 = trunc i32 %or to i16, !dbg !7533
  store i16 %conv8, i16* %arrayidx6, align 2, !dbg !7533
  %11 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7534
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 14, !dbg !7535
  %12 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !7535
  %13 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7536
  %call = call i32 %12(%struct.si470x_device* %13, i32 5) #6, !dbg !7534
  store i32 %call, i32* %retval, align 4, !dbg !7537
  br label %return, !dbg !7537

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !7538
  ret i32 %14, !dbg !7538
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si470x_set_seek(%struct.si470x_device* %radio, %struct.v4l2_hw_freq_seek* %seek) #0 !dbg !7539 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6507, metadata !DIExpression()), !dbg !7542
  %retval = alloca i32, align 4
  %radio.addr = alloca %struct.si470x_device*, align 8
  %seek.addr = alloca %struct.v4l2_hw_freq_seek*, align 8
  %band = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %freq = alloca i32, align 4
  %timed_out = alloca i8, align 1
  %time_left = alloca i64, align 8
  store %struct.si470x_device* %radio, %struct.si470x_device** %radio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si470x_device** %radio.addr, metadata !7544, metadata !DIExpression()), !dbg !7545
  store %struct.v4l2_hw_freq_seek* %seek, %struct.v4l2_hw_freq_seek** %seek.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_hw_freq_seek** %seek.addr, metadata !7546, metadata !DIExpression()), !dbg !7547
  call void @llvm.dbg.declare(metadata i32* %band, metadata !7548, metadata !DIExpression()), !dbg !7549
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !7550, metadata !DIExpression()), !dbg !7551
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !7552, metadata !DIExpression()), !dbg !7553
  call void @llvm.dbg.declare(metadata i8* %timed_out, metadata !7554, metadata !DIExpression()), !dbg !7555
  store i8 0, i8* %timed_out, align 1, !dbg !7555
  call void @llvm.dbg.declare(metadata i64* %time_left, metadata !7556, metadata !DIExpression()), !dbg !7557
  %0 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7558
  %rangelow = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %0, i32 0, i32 5, !dbg !7560
  %1 = load i32, i32* %rangelow, align 4, !dbg !7560
  %tobool = icmp ne i32 %1, 0, !dbg !7558
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !7561

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7562
  %rangehigh = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %2, i32 0, i32 6, !dbg !7563
  %3 = load i32, i32* %rangehigh, align 4, !dbg !7563
  %tobool2 = icmp ne i32 %3, 0, !dbg !7562
  br i1 %tobool2, label %if.then, label %if.else, !dbg !7564

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %band, align 4, !dbg !7565
  br label %for.cond, !dbg !7568

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %band, align 4, !dbg !7569
  %conv = sext i32 %4 to i64, !dbg !7569
  %cmp = icmp ult i64 %conv, 3, !dbg !7571
  br i1 %cmp, label %for.body, label %for.end, !dbg !7572

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %band, align 4, !dbg !7573
  %idxprom = sext i32 %5 to i64, !dbg !7576
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !7576
  %rangelow4 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx, i32 0, i32 4, !dbg !7577
  %6 = load i32, i32* %rangelow4, align 16, !dbg !7577
  %7 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7578
  %rangelow5 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %7, i32 0, i32 5, !dbg !7579
  %8 = load i32, i32* %rangelow5, align 4, !dbg !7579
  %cmp6 = icmp eq i32 %6, %8, !dbg !7580
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !7581

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %band, align 4, !dbg !7582
  %idxprom8 = sext i32 %9 to i64, !dbg !7583
  %arrayidx9 = getelementptr [3 x %struct.v4l2_frequency_band], [3 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom8, !dbg !7583
  %rangehigh10 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx9, i32 0, i32 5, !dbg !7584
  %10 = load i32, i32* %rangehigh10, align 4, !dbg !7584
  %11 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7585
  %rangehigh11 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %11, i32 0, i32 6, !dbg !7586
  %12 = load i32, i32* %rangehigh11, align 4, !dbg !7586
  %cmp12 = icmp eq i32 %10, %12, !dbg !7587
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !7588

if.then14:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !7589

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !7590

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %band, align 4, !dbg !7591
  %inc = add i32 %13, 1, !dbg !7591
  store i32 %inc, i32* %band, align 4, !dbg !7591
  br label %for.cond, !dbg !7592, !llvm.loop !7593

for.end:                                          ; preds = %if.then14, %for.cond
  %14 = load i32, i32* %band, align 4, !dbg !7595
  %conv15 = sext i32 %14 to i64, !dbg !7595
  %cmp16 = icmp eq i64 %conv15, 3, !dbg !7597
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !7598

if.then18:                                        ; preds = %for.end
  store i32 -22, i32* %retval, align 4, !dbg !7599
  br label %return, !dbg !7599

if.end19:                                         ; preds = %for.end
  br label %if.end20, !dbg !7600

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %band, align 4, !dbg !7601
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end19
  %15 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7602
  %band21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %15, i32 0, i32 3, !dbg !7604
  %16 = load i32, i32* %band21, align 8, !dbg !7604
  %17 = load i32, i32* %band, align 4, !dbg !7605
  %cmp22 = icmp ne i32 %16, %17, !dbg !7606
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !7607

if.then24:                                        ; preds = %if.end20
  %18 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7608
  %call = call i32 @si470x_get_freq(%struct.si470x_device* %18, i32* %freq) #6, !dbg !7610
  store i32 %call, i32* %retval1, align 4, !dbg !7611
  %19 = load i32, i32* %retval1, align 4, !dbg !7612
  %tobool25 = icmp ne i32 %19, 0, !dbg !7612
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !7614

if.then26:                                        ; preds = %if.then24
  %20 = load i32, i32* %retval1, align 4, !dbg !7615
  store i32 %20, i32* %retval, align 4, !dbg !7616
  br label %return, !dbg !7616

if.end27:                                         ; preds = %if.then24
  %21 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7617
  %22 = load i32, i32* %band, align 4, !dbg !7618
  %call28 = call i32 @si470x_set_band(%struct.si470x_device* %21, i32 %22) #6, !dbg !7619
  store i32 %call28, i32* %retval1, align 4, !dbg !7620
  %23 = load i32, i32* %retval1, align 4, !dbg !7621
  %tobool29 = icmp ne i32 %23, 0, !dbg !7621
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !7623

if.then30:                                        ; preds = %if.end27
  %24 = load i32, i32* %retval1, align 4, !dbg !7624
  store i32 %24, i32* %retval, align 4, !dbg !7625
  br label %return, !dbg !7625

if.end31:                                         ; preds = %if.end27
  %25 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7626
  %26 = load i32, i32* %freq, align 4, !dbg !7627
  %call32 = call i32 @si470x_set_freq(%struct.si470x_device* %25, i32 %26) #6, !dbg !7628
  store i32 %call32, i32* %retval1, align 4, !dbg !7629
  %27 = load i32, i32* %retval1, align 4, !dbg !7630
  %tobool33 = icmp ne i32 %27, 0, !dbg !7630
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !7632

if.then34:                                        ; preds = %if.end31
  %28 = load i32, i32* %retval1, align 4, !dbg !7633
  store i32 %28, i32* %retval, align 4, !dbg !7634
  br label %return, !dbg !7634

if.end35:                                         ; preds = %if.end31
  br label %if.end36, !dbg !7635

if.end36:                                         ; preds = %if.end35, %if.end20
  %29 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7636
  %registers = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %29, i32 0, i32 4, !dbg !7637
  %arrayidx37 = getelementptr [16 x i16], [16 x i16]* %registers, i64 0, i64 2, !dbg !7636
  %30 = load i16, i16* %arrayidx37, align 4, !dbg !7638
  %conv38 = zext i16 %30 to i32, !dbg !7638
  %or = or i32 %conv38, 256, !dbg !7638
  %conv39 = trunc i32 %or to i16, !dbg !7638
  store i16 %conv39, i16* %arrayidx37, align 4, !dbg !7638
  %31 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7639
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %31, i32 0, i32 3, !dbg !7641
  %32 = load i32, i32* %wrap_around, align 4, !dbg !7641
  %tobool40 = icmp ne i32 %32, 0, !dbg !7639
  br i1 %tobool40, label %if.then41, label %if.else46, !dbg !7642

if.then41:                                        ; preds = %if.end36
  %33 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7643
  %registers42 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %33, i32 0, i32 4, !dbg !7644
  %arrayidx43 = getelementptr [16 x i16], [16 x i16]* %registers42, i64 0, i64 2, !dbg !7643
  %34 = load i16, i16* %arrayidx43, align 4, !dbg !7645
  %conv44 = zext i16 %34 to i32, !dbg !7645
  %and = and i32 %conv44, -1025, !dbg !7645
  %conv45 = trunc i32 %and to i16, !dbg !7645
  store i16 %conv45, i16* %arrayidx43, align 4, !dbg !7645
  br label %if.end52, !dbg !7643

if.else46:                                        ; preds = %if.end36
  %35 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7646
  %registers47 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 4, !dbg !7647
  %arrayidx48 = getelementptr [16 x i16], [16 x i16]* %registers47, i64 0, i64 2, !dbg !7646
  %36 = load i16, i16* %arrayidx48, align 4, !dbg !7648
  %conv49 = zext i16 %36 to i32, !dbg !7648
  %or50 = or i32 %conv49, 1024, !dbg !7648
  %conv51 = trunc i32 %or50 to i16, !dbg !7648
  store i16 %conv51, i16* %arrayidx48, align 4, !dbg !7648
  br label %if.end52

if.end52:                                         ; preds = %if.else46, %if.then41
  %37 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %seek.addr, align 8, !dbg !7649
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %37, i32 0, i32 2, !dbg !7651
  %38 = load i32, i32* %seek_upward, align 4, !dbg !7651
  %tobool53 = icmp ne i32 %38, 0, !dbg !7649
  br i1 %tobool53, label %if.then54, label %if.else60, !dbg !7652

if.then54:                                        ; preds = %if.end52
  %39 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7653
  %registers55 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %39, i32 0, i32 4, !dbg !7654
  %arrayidx56 = getelementptr [16 x i16], [16 x i16]* %registers55, i64 0, i64 2, !dbg !7653
  %40 = load i16, i16* %arrayidx56, align 4, !dbg !7655
  %conv57 = zext i16 %40 to i32, !dbg !7655
  %or58 = or i32 %conv57, 512, !dbg !7655
  %conv59 = trunc i32 %or58 to i16, !dbg !7655
  store i16 %conv59, i16* %arrayidx56, align 4, !dbg !7655
  br label %if.end66, !dbg !7653

if.else60:                                        ; preds = %if.end52
  %41 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7656
  %registers61 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %41, i32 0, i32 4, !dbg !7657
  %arrayidx62 = getelementptr [16 x i16], [16 x i16]* %registers61, i64 0, i64 2, !dbg !7656
  %42 = load i16, i16* %arrayidx62, align 4, !dbg !7658
  %conv63 = zext i16 %42 to i32, !dbg !7658
  %and64 = and i32 %conv63, -513, !dbg !7658
  %conv65 = trunc i32 %and64 to i16, !dbg !7658
  store i16 %conv65, i16* %arrayidx62, align 4, !dbg !7658
  br label %if.end66

if.end66:                                         ; preds = %if.else60, %if.then54
  %43 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7659
  %set_register = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %43, i32 0, i32 14, !dbg !7660
  %44 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register, align 8, !dbg !7660
  %45 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7661
  %call67 = call i32 %44(%struct.si470x_device* %45, i32 2) #6, !dbg !7659
  store i32 %call67, i32* %retval1, align 4, !dbg !7662
  %46 = load i32, i32* %retval1, align 4, !dbg !7663
  %cmp68 = icmp slt i32 %46, 0, !dbg !7665
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !7666

if.then70:                                        ; preds = %if.end66
  %47 = load i32, i32* %retval1, align 4, !dbg !7667
  store i32 %47, i32* %retval, align 4, !dbg !7668
  br label %return, !dbg !7668

if.end71:                                         ; preds = %if.end66
  %48 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7669
  %completion = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %48, i32 0, i32 11, !dbg !7670
  call void @reinit_completion(%struct.completion* %completion) #6, !dbg !7671
  %49 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7672
  %completion72 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %49, i32 0, i32 11, !dbg !7673
  %50 = load i32, i32* @seek_timeout, align 4, !dbg !7674
  store i32 %50, i32* %m.addr.i, align 4
  %51 = load i32, i32* %m.addr.i, align 4, !dbg !7675
  %52 = call i1 @llvm.is.constant.i32(i32 %51) #7, !dbg !7676
  br i1 %52, label %if.then.i, label %if.else.i, !dbg !7677

if.then.i:                                        ; preds = %if.end71
  %53 = load i32, i32* %m.addr.i, align 4, !dbg !7678
  %cmp.i = icmp slt i32 %53, 0, !dbg !7679
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !7680

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !7681
  br label %msecs_to_jiffies.exit, !dbg !7681

if.end.i:                                         ; preds = %if.then.i
  %54 = load i32, i32* %m.addr.i, align 4, !dbg !7682
  %call.i = call i64 @_msecs_to_jiffies(i32 %54) #8, !dbg !7683
  store i64 %call.i, i64* %retval.i, align 8, !dbg !7684
  br label %msecs_to_jiffies.exit, !dbg !7684

if.else.i:                                        ; preds = %if.end71
  %55 = load i32, i32* %m.addr.i, align 4, !dbg !7685
  %call2.i = call i64 @__msecs_to_jiffies(i32 %55) #8, !dbg !7686
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !7687
  br label %msecs_to_jiffies.exit, !dbg !7687

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %56 = load i64, i64* %retval.i, align 8, !dbg !7688
  %call74 = call i64 @wait_for_completion_timeout(%struct.completion* %completion72, i64 %56) #6, !dbg !7689
  store i64 %call74, i64* %time_left, align 8, !dbg !7690
  %57 = load i64, i64* %time_left, align 8, !dbg !7691
  %cmp75 = icmp eq i64 %57, 0, !dbg !7693
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !7694

if.then77:                                        ; preds = %msecs_to_jiffies.exit
  store i8 1, i8* %timed_out, align 1, !dbg !7695
  br label %if.end78, !dbg !7696

if.end78:                                         ; preds = %if.then77, %msecs_to_jiffies.exit
  %58 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7697
  %registers79 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %58, i32 0, i32 4, !dbg !7699
  %arrayidx80 = getelementptr [16 x i16], [16 x i16]* %registers79, i64 0, i64 10, !dbg !7697
  %59 = load i16, i16* %arrayidx80, align 4, !dbg !7697
  %conv81 = zext i16 %59 to i32, !dbg !7697
  %and82 = and i32 %conv81, 16384, !dbg !7700
  %cmp83 = icmp eq i32 %and82, 0, !dbg !7701
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !7702

if.then85:                                        ; preds = %if.end78
  %60 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7703
  %videodev = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %60, i32 0, i32 1, !dbg !7703
  %dev = getelementptr inbounds %struct.video_device, %struct.video_device* %videodev, i32 0, i32 5, !dbg !7703
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !7703
  br label %if.end86, !dbg !7703

if.end86:                                         ; preds = %if.then85, %if.end78
  %61 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7704
  %registers87 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %61, i32 0, i32 4, !dbg !7706
  %arrayidx88 = getelementptr [16 x i16], [16 x i16]* %registers87, i64 0, i64 10, !dbg !7704
  %62 = load i16, i16* %arrayidx88, align 4, !dbg !7704
  %conv89 = zext i16 %62 to i32, !dbg !7704
  %and90 = and i32 %conv89, 8192, !dbg !7707
  %tobool91 = icmp ne i32 %and90, 0, !dbg !7707
  br i1 %tobool91, label %if.then92, label %if.end95, !dbg !7708

if.then92:                                        ; preds = %if.end86
  %63 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7709
  %videodev93 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %63, i32 0, i32 1, !dbg !7709
  %dev94 = getelementptr inbounds %struct.video_device, %struct.video_device* %videodev93, i32 0, i32 5, !dbg !7709
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !7709
  br label %if.end95, !dbg !7709

if.end95:                                         ; preds = %if.then92, %if.end86
  %64 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7710
  %registers96 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %64, i32 0, i32 4, !dbg !7711
  %arrayidx97 = getelementptr [16 x i16], [16 x i16]* %registers96, i64 0, i64 2, !dbg !7710
  %65 = load i16, i16* %arrayidx97, align 4, !dbg !7712
  %conv98 = zext i16 %65 to i32, !dbg !7712
  %and99 = and i32 %conv98, -257, !dbg !7712
  %conv100 = trunc i32 %and99 to i16, !dbg !7712
  store i16 %conv100, i16* %arrayidx97, align 4, !dbg !7712
  %66 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7713
  %set_register101 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %66, i32 0, i32 14, !dbg !7714
  %67 = load i32 (%struct.si470x_device*, i32)*, i32 (%struct.si470x_device*, i32)** %set_register101, align 8, !dbg !7714
  %68 = load %struct.si470x_device*, %struct.si470x_device** %radio.addr, align 8, !dbg !7715
  %call102 = call i32 %67(%struct.si470x_device* %68, i32 2) #6, !dbg !7713
  store i32 %call102, i32* %retval1, align 4, !dbg !7716
  %69 = load i32, i32* %retval1, align 4, !dbg !7717
  %cmp103 = icmp eq i32 %69, 0, !dbg !7719
  br i1 %cmp103, label %land.lhs.true105, label %if.end109, !dbg !7720

land.lhs.true105:                                 ; preds = %if.end95
  %70 = load i8, i8* %timed_out, align 1, !dbg !7721
  %tobool106 = trunc i8 %70 to i1, !dbg !7721
  br i1 %tobool106, label %if.then108, label %if.end109, !dbg !7722

if.then108:                                       ; preds = %land.lhs.true105
  store i32 -61, i32* %retval, align 4, !dbg !7723
  br label %return, !dbg !7723

if.end109:                                        ; preds = %land.lhs.true105, %if.end95
  %71 = load i32, i32* %retval1, align 4, !dbg !7724
  store i32 %71, i32* %retval, align 4, !dbg !7725
  br label %return, !dbg !7725

return:                                           ; preds = %if.end109, %if.then108, %if.then70, %if.then34, %if.then30, %if.then26, %if.then18
  %72 = load i32, i32* %retval, align 4, !dbg !7726
  ret i32 %72, !dbg !7726
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6450, !6451, !6452, !6453}
!llvm.ident = !{!6454}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_space", scope: !2, file: !3, line: 113, type: !6447, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !222, globals: !6315, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/radio/si470x/radio-si470x-common.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !119, !129, !146, !156, !161, !178, !185, !189, !193, !203, !210, !215}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !94, line: 76, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_entity_type", file: !108, line: 244, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/media/media-entity.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_BASE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_VIDEO_DEVICE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_V4L2_SUBDEV", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_pad_signal_type", file: !108, line: 171, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "PAD_SIGNAL_DEFAULT", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "PAD_SIGNAL_ANALOG", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "PAD_SIGNAL_DV", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "PAD_SIGNAL_AUDIO", value: 3, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_request_state", file: !120, line: 37, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/media/media-request.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_IDLE", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_VALIDATING", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_QUEUED", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_COMPLETE", value: 3, isUnsigned: true)
!126 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_CLEANING", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_UPDATING", value: 5, isUnsigned: true)
!128 = !DIEnumerator(name: "NR_OF_MEDIA_REQUEST_STATE", value: 6, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_ctrl_type", file: !130, line: 1763, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!132 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BOOLEAN", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "V4L2_CTRL_TYPE_MENU", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BUTTON", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER64", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "V4L2_CTRL_TYPE_CTRL_CLASS", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "V4L2_CTRL_TYPE_STRING", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BITMASK", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER_MENU", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "V4L2_CTRL_COMPOUND_TYPES", value: 256, isUnsigned: true)
!142 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U8", value: 256, isUnsigned: true)
!143 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U16", value: 257, isUnsigned: true)
!144 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U32", value: 258, isUnsigned: true)
!145 = !DIEnumerator(name: "V4L2_CTRL_TYPE_AREA", value: 262, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_type", file: !147, line: 35, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/media/v4l2-dev.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "VFL_TYPE_VIDEO", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "VFL_TYPE_VBI", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "VFL_TYPE_RADIO", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "VFL_TYPE_SUBDEV", value: 3, isUnsigned: true)
!153 = !DIEnumerator(name: "VFL_TYPE_SDR", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "VFL_TYPE_TOUCH", value: 5, isUnsigned: true)
!155 = !DIEnumerator(name: "VFL_TYPE_MAX", value: 6, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_direction", file: !147, line: 55, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "VFL_DIR_RX", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "VFL_DIR_TX", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "VFL_DIR_M2M", value: 2, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_buf_type", file: !130, line: 141, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!163 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_CAPTURE", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_OUTPUT", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_OVERLAY", value: 3, isUnsigned: true)
!166 = !DIEnumerator(name: "V4L2_BUF_TYPE_VBI_CAPTURE", value: 4, isUnsigned: true)
!167 = !DIEnumerator(name: "V4L2_BUF_TYPE_VBI_OUTPUT", value: 5, isUnsigned: true)
!168 = !DIEnumerator(name: "V4L2_BUF_TYPE_SLICED_VBI_CAPTURE", value: 6, isUnsigned: true)
!169 = !DIEnumerator(name: "V4L2_BUF_TYPE_SLICED_VBI_OUTPUT", value: 7, isUnsigned: true)
!170 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY", value: 8, isUnsigned: true)
!171 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE", value: 9, isUnsigned: true)
!172 = !DIEnumerator(name: "V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE", value: 10, isUnsigned: true)
!173 = !DIEnumerator(name: "V4L2_BUF_TYPE_SDR_CAPTURE", value: 11, isUnsigned: true)
!174 = !DIEnumerator(name: "V4L2_BUF_TYPE_SDR_OUTPUT", value: 12, isUnsigned: true)
!175 = !DIEnumerator(name: "V4L2_BUF_TYPE_META_CAPTURE", value: 13, isUnsigned: true)
!176 = !DIEnumerator(name: "V4L2_BUF_TYPE_META_OUTPUT", value: 14, isUnsigned: true)
!177 = !DIEnumerator(name: "V4L2_BUF_TYPE_PRIVATE", value: 128, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_priority", file: !130, line: 406, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "V4L2_PRIORITY_UNSET", value: 0, isUnsigned: true)
!181 = !DIEnumerator(name: "V4L2_PRIORITY_BACKGROUND", value: 1, isUnsigned: true)
!182 = !DIEnumerator(name: "V4L2_PRIORITY_INTERACTIVE", value: 2, isUnsigned: true)
!183 = !DIEnumerator(name: "V4L2_PRIORITY_RECORD", value: 3, isUnsigned: true)
!184 = !DIEnumerator(name: "V4L2_PRIORITY_DEFAULT", value: 2, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_subdev_ir_mode", file: !186, line: 501, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/media/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188}
!188 = !DIEnumerator(name: "V4L2_SUBDEV_IR_MODE_PULSE_WIDTH", value: 0, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_frame_desc_flags", file: !186, line: 321, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_LEN_MAX", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_BLOB", value: 2, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_type", file: !194, line: 107, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/media/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197, !198, !199, !200, !201, !202}
!196 = !DIEnumerator(name: "V4L2_MBUS_UNKNOWN", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "V4L2_MBUS_PARALLEL", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "V4L2_MBUS_BT656", value: 2, isUnsigned: true)
!199 = !DIEnumerator(name: "V4L2_MBUS_CSI1", value: 3, isUnsigned: true)
!200 = !DIEnumerator(name: "V4L2_MBUS_CCP2", value: 4, isUnsigned: true)
!201 = !DIEnumerator(name: "V4L2_MBUS_CSI2_DPHY", value: 5, isUnsigned: true)
!202 = !DIEnumerator(name: "V4L2_MBUS_CSI2_CPHY", value: 6, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_async_match_type", file: !204, line: 33, baseType: !7, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/media/v4l2-async.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !207, !208, !209}
!206 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_CUSTOM", value: 0, isUnsigned: true)
!207 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_DEVNAME", value: 1, isUnsigned: true)
!208 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_I2C", value: 2, isUnsigned: true)
!209 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_FWNODE", value: 3, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !211, line: 10, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !214}
!213 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_tuner_type", file: !130, line: 176, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIEnumerator(name: "V4L2_TUNER_RADIO", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "V4L2_TUNER_ANALOG_TV", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "V4L2_TUNER_DIGITAL_TV", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "V4L2_TUNER_SDR", value: 4, isUnsigned: true)
!221 = !DIEnumerator(name: "V4L2_TUNER_RF", value: 5, isUnsigned: true)
!222 = !{!7, !223, !224, !225, !226, !2943}
!223 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!224 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si470x_device", file: !228, line: 135, size: 14976, elements: !229)
!228 = !DIFile(filename: "drivers/media/radio/si470x/radio-si470x.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !6276, !6277, !6278, !6279, !6281, !6282, !6283, !6285, !6286, !6287, !6288, !6289, !6290, !6294, !6295, !6296, !6297, !6298, !6301, !6304, !6305, !6306, !6309, !6312, !6313, !6314}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !227, file: !228, line: 136, baseType: !231, size: 960)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_device", file: !232, line: 47, size: 960, elements: !233)
!232 = !DIFile(filename: "./include/media/v4l2-device.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !3972, !4184, !4185, !4186, !4190, !6269, !6270, !6271, !6272}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !231, file: !232, line: 48, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !237)
!237 = !{!238, !3426, !3427, !3430, !3431, !3482, !3573, !3574, !3575, !3576, !3577, !3586, !3691, !3704, !3899, !3900, !3904, !3906, !3907, !3908, !3912, !3918, !3919, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3960, !3961, !3962, !3965, !3968, !3969, !3970, !3971}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !236, file: !73, line: 462, baseType: !239, size: 512)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !240, line: 64, size: 512, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !246, !253, !255, !315, !3277, !3416, !3421, !3422, !3423, !3424, !3425}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !240, line: 65, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 66, baseType: !247, size: 128, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !248, line: 178, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !248, line: 179, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !247, file: !248, line: 179, baseType: !251, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !240, line: 67, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !239, file: !240, line: 68, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !240, line: 192, size: 704, elements: !258)
!258 = !{!259, !260, !276, !277}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !257, file: !240, line: 193, baseType: !247, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !257, file: !240, line: 194, baseType: !261, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !262, line: 83, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !262, line: 71, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !262, line: 72, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 72, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !266, file: !262, line: 73, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !262, line: 20, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !269, file: !262, line: 21, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !273, line: 25, baseType: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 25, elements: !275)
!275 = !{}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !257, file: !240, line: 195, baseType: !239, size: 512, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !257, file: !240, line: 196, baseType: !278, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !240, line: 156, size: 192, elements: !281)
!281 = !{!282, !287, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !280, file: !240, line: 157, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!223, !256, !254}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !240, line: 158, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!243, !256, !254}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !280, file: !240, line: 159, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!223, !256, !254, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !240, line: 148, size: 20736, elements: !299)
!299 = !{!300, !305, !309, !310, !314}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !298, file: !240, line: 149, baseType: !301, size: 192)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!303 = !{!304}
!304 = !DISubrange(count: 3)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !298, file: !240, line: 150, baseType: !306, size: 4096, offset: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4096, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !298, file: !240, line: 151, baseType: !223, size: 32, offset: 4288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !298, file: !240, line: 152, baseType: !311, size: 16384, offset: 4320)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 16384, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !298, file: !240, line: 153, baseType: !223, size: 32, offset: 20704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !239, file: !240, line: 69, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !240, line: 138, size: 448, elements: !318)
!318 = !{!319, !323, !352, !354, !3239, !3267, !3271}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !317, file: !240, line: 139, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !254}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !317, file: !240, line: 140, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !327, line: 230, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !344}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !326, file: !327, line: 231, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !254, !337, !302}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !248, line: 60, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !335, line: 73, baseType: !336)
!335 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !335, line: 15, baseType: !224)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !327, line: 30, size: 128, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !327, line: 31, baseType: !243, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !338, file: !327, line: 32, baseType: !342, size: 16, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !248, line: 19, baseType: !343)
!343 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !326, file: !327, line: 232, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!333, !254, !337, !243, !348}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 55, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !335, line: 72, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !335, line: 16, baseType: !351)
!351 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !317, file: !240, line: 141, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !317, file: !240, line: 142, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !327, line: 84, size: 320, elements: !359)
!359 = !{!360, !361, !365, !3236, !3237}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !327, line: 85, baseType: !243, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !358, file: !327, line: 86, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!342, !254, !337, !223}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !358, file: !327, line: 88, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!342, !254, !369, !223}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !327, line: 168, size: 448, elements: !371)
!371 = !{!372, !373, !374, !375, !3231, !3232}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !327, line: 169, baseType: !338, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !327, line: 170, baseType: !348, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !327, line: 171, baseType: !225, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !327, line: 172, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!333, !379, !254, !369, !302, !558, !348}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !381)
!381 = !{!382, !400, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3214, !3215, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !380, file: !44, line: 920, baseType: !383, size: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !44, line: 917, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !383, file: !44, line: 918, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !387, line: 58, size: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !387, line: 59, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !383, file: !44, line: 919, baseType: !392, size: 128, align: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !248, line: 216, size: 128, align: 64, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !248, line: 217, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !248, line: 218, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !395}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !380, file: !44, line: 921, baseType: !401, size: 128, offset: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !402, line: 8, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !401, file: !402, line: 9, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !407, line: 18, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !401, file: !402, line: 10, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 89, size: 1536, elements: !411)
!411 = !{!412, !413, !423, !431, !432, !455, !3165, !3167, !3179, !3180, !3181, !3182, !3183, !3188, !3189, !3190}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !410, file: !407, line: 91, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !410, file: !407, line: 92, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 277, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 277, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 277, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 70, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 65, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 66, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !410, file: !407, line: 93, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !410, file: !407, line: 94, baseType: !409, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !410, file: !407, line: 95, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 47, size: 128, elements: !434)
!434 = !{!435, !451}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 48, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !407, line: 48, size: 64, elements: !437)
!437 = !{!438, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !407, line: 49, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !407, line: 49, size: 64, elements: !440)
!440 = !{!441, !446}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !407, line: 50, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !443, line: 21, baseType: !444)
!443 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !445, line: 27, baseType: !7)
!445 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !407, line: 50, baseType: !442, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !407, line: 52, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !443, line: 23, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !445, line: 31, baseType: !450)
!450 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !407, line: 54, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !410, file: !407, line: 96, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !458)
!458 = !{!459, !460, !461, !469, !476, !477, !625, !2859, !2860, !2861, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !3133, !3141, !3142, !3143, !3161, !3162, !3163, !3164}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !457, file: !44, line: 611, baseType: !342, size: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !457, file: !44, line: 612, baseType: !343, size: 16, offset: 16)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !457, file: !44, line: 613, baseType: !462, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !463, line: 23, baseType: !464)
!463 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 21, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !464, file: !463, line: 22, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !248, line: 32, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !335, line: 49, baseType: !7)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !457, file: !44, line: 614, baseType: !470, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !463, line: 28, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 26, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !471, file: !463, line: 27, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !248, line: 33, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !335, line: 50, baseType: !7)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !457, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !457, file: !44, line: 622, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !481)
!481 = !{!482, !486, !499, !503, !509, !513, !519, !523, !527, !531, !535, !536, !542, !546, !572, !601, !605, !611, !616, !620, !621}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !480, file: !44, line: 1865, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!409, !456, !409, !7}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !480, file: !44, line: 1866, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!243, !409, !456, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !492, line: 10, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !498}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !491, file: !492, line: 11, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !225}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !491, file: !492, line: 12, baseType: !225, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !480, file: !44, line: 1867, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!223, !456, !223}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !480, file: !44, line: 1868, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !456, !223}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !480, file: !44, line: 1870, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!223, !409, !302, !223}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !480, file: !44, line: 1872, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!223, !456, !409, !342, !517}
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !248, line: 30, baseType: !518)
!518 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !480, file: !44, line: 1873, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!223, !409, !456, !409}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !480, file: !44, line: 1874, baseType: !524, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!223, !456, !409}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !480, file: !44, line: 1875, baseType: !528, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!223, !456, !409, !243}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !480, file: !44, line: 1876, baseType: !532, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!223, !456, !409, !342}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !480, file: !44, line: 1877, baseType: !524, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !480, file: !44, line: 1878, baseType: !537, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!223, !456, !409, !342, !540}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !248, line: 16, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !248, line: 13, baseType: !442)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !480, file: !44, line: 1879, baseType: !543, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!223, !456, !409, !456, !409, !7}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !480, file: !44, line: 1881, baseType: !547, size: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!223, !409, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !561, !569, !570, !571}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !551, file: !44, line: 220, baseType: !7, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !551, file: !44, line: 221, baseType: !342, size: 16, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !551, file: !44, line: 222, baseType: !462, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !551, file: !44, line: 223, baseType: !470, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !551, file: !44, line: 224, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !248, line: 46, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !335, line: 88, baseType: !560)
!560 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !551, file: !44, line: 225, baseType: !562, size: 128, offset: 192)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !563, line: 13, size: 128, elements: !564)
!563 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !562, file: !563, line: 14, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !563, line: 8, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !445, line: 30, baseType: !560)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !562, file: !563, line: 15, baseType: !224, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !551, file: !44, line: 226, baseType: !562, size: 128, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !551, file: !44, line: 227, baseType: !562, size: 128, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !551, file: !44, line: 234, baseType: !379, size: 64, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !480, file: !44, line: 1882, baseType: !573, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!223, !576, !578, !442, !7}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !580, line: 22, size: 1152, elements: !581)
!580 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!581 = !{!582, !583, !584, !585, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !579, file: !580, line: 23, baseType: !442, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !579, file: !580, line: 24, baseType: !342, size: 16, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !579, file: !580, line: 25, baseType: !7, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !579, file: !580, line: 26, baseType: !586, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !248, line: 104, baseType: !442)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !579, file: !580, line: 27, baseType: !448, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !579, file: !580, line: 28, baseType: !448, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !579, file: !580, line: 37, baseType: !448, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !579, file: !580, line: 38, baseType: !540, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !579, file: !580, line: 39, baseType: !540, size: 32, offset: 352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !579, file: !580, line: 40, baseType: !462, size: 32, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !579, file: !580, line: 41, baseType: !470, size: 32, offset: 416)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !579, file: !580, line: 42, baseType: !558, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !579, file: !580, line: 43, baseType: !562, size: 128, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !579, file: !580, line: 44, baseType: !562, size: 128, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !579, file: !580, line: 45, baseType: !562, size: 128, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !579, file: !580, line: 46, baseType: !562, size: 128, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !579, file: !580, line: 47, baseType: !448, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !579, file: !580, line: 48, baseType: !448, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !480, file: !44, line: 1883, baseType: !602, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!333, !409, !302, !348}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !480, file: !44, line: 1884, baseType: !606, size: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!223, !456, !609, !448, !448}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !480, file: !44, line: 1886, baseType: !612, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!223, !456, !615, !223}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !480, file: !44, line: 1887, baseType: !617, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!223, !456, !409, !379, !7, !342}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !480, file: !44, line: 1890, baseType: !532, size: 64, offset: 1216)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !480, file: !44, line: 1891, baseType: !622, size: 64, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!223, !456, !507, !223}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !457, file: !44, line: 623, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !684, !2466, !2548, !2631, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2647, !2651, !2652, !2655, !2656, !2659, !2660, !2661, !2702, !2729, !2730, !2731, !2732, !2733, !2734, !2737, !2739, !2746, !2747, !2749, !2750, !2751, !2810, !2811, !2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !627, file: !44, line: 1417, baseType: !247, size: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !627, file: !44, line: 1418, baseType: !540, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !627, file: !44, line: 1419, baseType: !454, size: 8, offset: 160)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !627, file: !44, line: 1420, baseType: !351, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !627, file: !44, line: 1421, baseType: !558, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !627, file: !44, line: 1422, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !637)
!637 = !{!638, !639, !640, !647, !651, !655, !659, !663, !664, !674, !677, !678, !679, !681, !682, !683}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !44, line: 2229, baseType: !243, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !636, file: !44, line: 2230, baseType: !223, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !636, file: !44, line: 2238, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!223, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !646, line: 28, flags: DIFlagFwdDecl)
!646 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !636, file: !44, line: 2239, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !636, file: !44, line: 2240, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!409, !635, !223, !243, !225}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !636, file: !44, line: 2242, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !626}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !636, file: !44, line: 2243, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !662, line: 76, flags: DIFlagFwdDecl)
!662 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !44, line: 2244, baseType: !635, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !636, file: !44, line: 2245, baseType: !665, size: 64, offset: 512)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !248, line: 182, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !665, file: !248, line: 183, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !248, line: 186, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !248, line: 187, baseType: !668, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !669, file: !248, line: 187, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !636, file: !44, line: 2247, baseType: !675, offset: 576)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !676, line: 187, elements: !275)
!676 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !636, file: !44, line: 2248, baseType: !675, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !636, file: !44, line: 2249, baseType: !675, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !636, file: !44, line: 2250, baseType: !680, offset: 576)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, elements: !303)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !636, file: !44, line: 2252, baseType: !675, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !636, file: !44, line: 2253, baseType: !675, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !636, file: !44, line: 2254, baseType: !675, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !627, file: !44, line: 1423, baseType: !685, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !688)
!688 = !{!689, !693, !697, !698, !702, !708, !712, !713, !714, !718, !722, !723, !724, !725, !731, !736, !737, !744, !745, !746, !747, !2450, !2465}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !687, file: !44, line: 1936, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!456, !626}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !687, file: !44, line: 1937, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !456}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !687, file: !44, line: 1938, baseType: !694, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !687, file: !44, line: 1940, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !456, !223}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !687, file: !44, line: 1941, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!223, !456, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !687, file: !44, line: 1942, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!223, !456}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !687, file: !44, line: 1943, baseType: !694, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !687, file: !44, line: 1944, baseType: !656, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !687, file: !44, line: 1945, baseType: !715, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!223, !626, !223}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !687, file: !44, line: 1946, baseType: !719, size: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!223, !626}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !687, file: !44, line: 1947, baseType: !719, size: 64, offset: 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !687, file: !44, line: 1948, baseType: !719, size: 64, offset: 704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !687, file: !44, line: 1949, baseType: !719, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !687, file: !44, line: 1950, baseType: !726, size: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!223, !409, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !687, file: !44, line: 1951, baseType: !732, size: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!223, !626, !735, !302}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !687, file: !44, line: 1952, baseType: !656, size: 64, offset: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !687, file: !44, line: 1954, baseType: !738, size: 64, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!223, !741, !409}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !743, line: 539, flags: DIFlagFwdDecl)
!743 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !687, file: !44, line: 1955, baseType: !738, size: 64, offset: 1088)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !687, file: !44, line: 1956, baseType: !738, size: 64, offset: 1152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !687, file: !44, line: 1957, baseType: !738, size: 64, offset: 1216)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !687, file: !44, line: 1963, baseType: !748, size: 64, offset: 1280)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!223, !626, !751, !774}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !753, line: 68, size: 512, align: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !756, !2442, !2449}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !753, line: 69, baseType: !351, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !753, line: 77, baseType: !757, size: 320, offset: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !753, line: 77, size: 320, elements: !758)
!758 = !{!759, !947, !952, !980, !988, !994, !2373, !2441}
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 78, baseType: !760, size: 320)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 78, size: 320, elements: !761)
!761 = !{!762, !763, !945, !946}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !760, file: !753, line: 84, baseType: !247, size: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !760, file: !753, line: 86, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !766)
!766 = !{!767, !768, !776, !777, !782, !797, !813, !814, !815, !816, !938, !939, !942, !943, !944}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !765, file: !44, line: 452, baseType: !456, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !765, file: !44, line: 453, baseType: !769, size: 128, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !770, line: 292, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !769, file: !770, line: 293, baseType: !261)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !769, file: !770, line: 295, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !248, line: 148, baseType: !7)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !769, file: !770, line: 296, baseType: !225, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !765, file: !44, line: 454, baseType: !774, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !765, file: !44, line: 455, baseType: !778, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !248, line: 168, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 166, size: 32, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !779, file: !248, line: 167, baseType: !223, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !765, file: !44, line: 460, baseType: !783, size: 128, offset: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !784, line: 125, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !796}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !783, file: !784, line: 126, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !784, line: 31, size: 64, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !787, file: !784, line: 32, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !784, line: 24, size: 192, align: 64, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !791, file: !784, line: 25, baseType: !351, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !791, file: !784, line: 26, baseType: !790, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !791, file: !784, line: 27, baseType: !790, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !783, file: !784, line: 127, baseType: !790, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !765, file: !44, line: 461, baseType: !798, size: 256, offset: 384)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !799, line: 35, size: 256, elements: !800)
!799 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !809, !810, !812}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !798, file: !799, line: 36, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !803, line: 13, baseType: !804)
!803 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !248, line: 175, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 173, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !805, file: !248, line: 174, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !443, line: 22, baseType: !567)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !798, file: !799, line: 42, baseType: !802, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !798, file: !799, line: 46, baseType: !811, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !262, line: 29, baseType: !269)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !798, file: !799, line: 47, baseType: !247, size: 128, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !765, file: !44, line: 462, baseType: !351, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !765, file: !44, line: 463, baseType: !351, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !765, file: !44, line: 464, baseType: !351, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !765, file: !44, line: 465, baseType: !817, size: 64, offset: 832)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !820)
!820 = !{!821, !825, !829, !833, !837, !841, !847, !853, !857, !862, !866, !870, !874, !902, !906, !912, !913, !914, !918, !923, !927, !934}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !819, file: !44, line: 368, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!223, !751, !706}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !819, file: !44, line: 369, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!223, !379, !751}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !819, file: !44, line: 372, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!223, !764, !706}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !819, file: !44, line: 375, baseType: !834, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!223, !751}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !819, file: !44, line: 381, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!223, !379, !764, !251, !7}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !819, file: !44, line: 383, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !819, file: !44, line: 385, baseType: !848, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!223, !379, !764, !558, !7, !7, !851, !852}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !819, file: !44, line: 388, baseType: !854, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!223, !379, !764, !558, !7, !7, !751, !225}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !819, file: !44, line: 393, baseType: !858, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !764, !861}
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !248, line: 125, baseType: !448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !819, file: !44, line: 394, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !751, !7, !7}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !819, file: !44, line: 395, baseType: !867, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!223, !751, !774}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !819, file: !44, line: 396, baseType: !871, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !751}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !819, file: !44, line: 397, baseType: !875, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!333, !878, !900}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !880)
!880 = !{!881, !882, !883, !887, !888, !889, !892, !893}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !879, file: !44, line: 321, baseType: !379, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !879, file: !44, line: 326, baseType: !558, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !879, file: !44, line: 327, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !878, !224, !224}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !879, file: !44, line: 328, baseType: !225, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !879, file: !44, line: 329, baseType: !223, size: 32, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !879, file: !44, line: 330, baseType: !890, size: 16, offset: 288)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !443, line: 19, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !445, line: 24, baseType: !343)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !879, file: !44, line: 331, baseType: !890, size: 16, offset: 304)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !44, line: 332, baseType: !894, size: 64, offset: 320)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !44, line: 332, size: 64, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !894, file: !44, line: 333, baseType: !7, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !894, file: !44, line: 334, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !819, file: !44, line: 402, baseType: !903, size: 64, offset: 832)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!223, !764, !751, !751, !5}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !819, file: !44, line: 404, baseType: !907, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!517, !751, !910}
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !911, line: 305, baseType: !7)
!911 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !819, file: !44, line: 405, baseType: !871, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !819, file: !44, line: 406, baseType: !834, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !819, file: !44, line: 407, baseType: !915, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!223, !751, !351, !351}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !819, file: !44, line: 409, baseType: !919, size: 64, offset: 1152)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !751, !922, !922}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !819, file: !44, line: 410, baseType: !924, size: 64, offset: 1216)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!223, !764, !751}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !819, file: !44, line: 413, baseType: !928, size: 64, offset: 1280)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!223, !931, !379, !933}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !819, file: !44, line: 415, baseType: !935, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !379}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !44, line: 466, baseType: !351, size: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !765, file: !44, line: 467, baseType: !940, size: 32, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !941, line: 8, baseType: !442)
!941 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !765, file: !44, line: 468, baseType: !261, offset: 992)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !765, file: !44, line: 469, baseType: !247, size: 128, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !765, file: !44, line: 470, baseType: !225, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !760, file: !753, line: 87, baseType: !351, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !760, file: !753, line: 94, baseType: !351, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 96, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 96, size: 64, elements: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !948, file: !753, line: 101, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !248, line: 143, baseType: !448)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 103, baseType: !953, size: 320)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 103, size: 320, elements: !954)
!954 = !{!955, !965, !968, !969}
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !753, line: 104, baseType: !956, size: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !753, line: 104, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !956, file: !753, line: 105, baseType: !247, size: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !753, line: 106, baseType: !960, size: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !956, file: !753, line: 106, size: 128, elements: !961)
!961 = !{!962, !963, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !753, line: 107, baseType: !751, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !960, file: !753, line: 109, baseType: !223, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !960, file: !753, line: 110, baseType: !223, size: 32, offset: 96)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !953, file: !753, line: 117, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !753, line: 117, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !953, file: !753, line: 119, baseType: !225, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !753, line: 120, baseType: !970, size: 64, offset: 256)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !753, line: 120, size: 64, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !970, file: !753, line: 121, baseType: !225, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !970, file: !753, line: 122, baseType: !351, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !753, line: 123, baseType: !975, size: 32)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !753, line: 123, size: 32, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !975, file: !753, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !975, file: !753, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !975, file: !753, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 130, baseType: !981, size: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 130, size: 192, elements: !982)
!982 = !{!983, !984, !985, !986, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !981, file: !753, line: 131, baseType: !351, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !981, file: !753, line: 134, baseType: !454, size: 8, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !981, file: !753, line: 135, baseType: !454, size: 8, offset: 72)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !981, file: !753, line: 136, baseType: !778, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !981, file: !753, line: 137, baseType: !7, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 139, baseType: !989, size: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 139, size: 256, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !989, file: !753, line: 140, baseType: !351, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !989, file: !753, line: 141, baseType: !778, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !989, file: !753, line: 143, baseType: !247, size: 128, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 145, baseType: !995, size: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 145, size: 256, elements: !996)
!996 = !{!997, !998, !1000, !1001, !2372}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !995, file: !753, line: 146, baseType: !351, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !995, file: !753, line: 147, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !743, line: 509, baseType: !751)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !995, file: !753, line: 148, baseType: !351, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !753, line: 149, baseType: !1002, size: 64, offset: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !753, line: 149, size: 64, elements: !1003)
!1003 = !{!1004, !2371}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1002, file: !753, line: 150, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !753, line: 388, size: 7296, elements: !1007)
!1007 = !{!1008, !2367}
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !753, line: 389, baseType: !1009, size: 7296)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !753, line: 389, size: 7296, elements: !1010)
!1010 = !{!1011, !1129, !1130, !1131, !1135, !1136, !1137, !1138, !1139, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1180, !1188, !1191, !1237, !1238, !2351, !2352, !2355, !2356, !2357, !2360, !2361, !2362, !2365, !2366}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1009, file: !753, line: 390, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !753, line: 305, size: 1472, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1029, !1030, !1035, !1036, !1039, !1123, !1124, !1125, !1126, !1127}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1013, file: !753, line: 308, baseType: !351, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1013, file: !753, line: 309, baseType: !351, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1013, file: !753, line: 313, baseType: !1012, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1013, file: !753, line: 313, baseType: !1012, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1013, file: !753, line: 315, baseType: !791, size: 192, align: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1013, file: !753, line: 323, baseType: !351, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1013, file: !753, line: 327, baseType: !1005, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1013, file: !753, line: 333, baseType: !1023, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !743, line: 284, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !743, line: 284, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1024, file: !743, line: 284, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1028, line: 19, baseType: !351)
!1028 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1013, file: !753, line: 334, baseType: !351, size: 64, offset: 640)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1013, file: !753, line: 343, baseType: !1031, size: 256, offset: 704)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !753, line: 340, size: 256, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1031, file: !753, line: 341, baseType: !791, size: 192, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1031, file: !753, line: 342, baseType: !351, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1013, file: !753, line: 351, baseType: !247, size: 128, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1013, file: !753, line: 353, baseType: !1037, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !753, line: 353, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1013, file: !753, line: 356, baseType: !1040, size: 64, offset: 1152)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1043)
!1043 = !{!1044, !1048, !1049, !1053, !1057, !1097, !1101, !1105, !1109, !1110, !1111, !1115, !1119}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1042, file: !14, line: 558, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1012}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1042, file: !14, line: 559, baseType: !1045, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1042, file: !14, line: 560, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!223, !1012, !351}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1042, file: !14, line: 561, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!223, !1012}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1042, file: !14, line: 562, baseType: !1058, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !753, line: 682, baseType: !7)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1077, !1084, !1090, !1091, !1092, !1094, !1096}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1063, file: !14, line: 509, baseType: !1012, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1063, file: !14, line: 511, baseType: !774, size: 32, offset: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1063, file: !14, line: 512, baseType: !351, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1063, file: !14, line: 513, baseType: !351, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1063, file: !14, line: 514, baseType: !1071, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !743, line: 385, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 385, size: 64, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1073, file: !743, line: 385, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1028, line: 15, baseType: !351)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1063, file: !14, line: 516, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !743, line: 359, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 359, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1080, file: !743, line: 359, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1028, line: 16, baseType: !351)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1063, file: !14, line: 519, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1028, line: 21, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1028, line: 21, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1086, file: !1028, line: 21, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1028, line: 14, baseType: !351)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1063, file: !14, line: 521, baseType: !751, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1063, file: !14, line: 522, baseType: !751, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1063, file: !14, line: 528, baseType: !1093, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1063, file: !14, line: 532, baseType: !1095, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1063, file: !14, line: 536, baseType: !999, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1042, file: !14, line: 563, baseType: !1098, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!1061, !1062, !13}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1042, file: !14, line: 565, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1062, !351, !351}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1042, file: !14, line: 567, baseType: !1106, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!351, !1012}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1042, file: !14, line: 571, baseType: !1058, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1042, file: !14, line: 574, baseType: !1058, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1042, file: !14, line: 579, baseType: !1112, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!223, !1012, !351, !225, !223, !223}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1042, file: !14, line: 585, baseType: !1116, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!243, !1012}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1042, file: !14, line: 615, baseType: !1120, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!751, !1012, !351}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1013, file: !753, line: 359, baseType: !351, size: 64, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1013, file: !753, line: 361, baseType: !379, size: 64, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1013, file: !753, line: 362, baseType: !225, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1013, file: !753, line: 365, baseType: !802, size: 64, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1013, file: !753, line: 373, baseType: !1128, offset: 1472)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !753, line: 296, elements: !275)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1009, file: !753, line: 391, baseType: !787, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1009, file: !753, line: 392, baseType: !448, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1009, file: !753, line: 394, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!351, !379, !351, !351, !351, !351}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1009, file: !753, line: 398, baseType: !351, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1009, file: !753, line: 399, baseType: !351, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1009, file: !753, line: 405, baseType: !351, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1009, file: !753, line: 406, baseType: !351, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1009, file: !753, line: 407, baseType: !1140, size: 64, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !743, line: 286, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 286, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1142, file: !743, line: 286, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1028, line: 18, baseType: !351)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1009, file: !753, line: 416, baseType: !778, size: 32, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1009, file: !753, line: 428, baseType: !778, size: 32, offset: 608)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1009, file: !753, line: 437, baseType: !778, size: 32, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1009, file: !753, line: 447, baseType: !778, size: 32, offset: 672)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1009, file: !753, line: 450, baseType: !802, size: 64, offset: 704)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1009, file: !753, line: 452, baseType: !223, size: 32, offset: 768)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1009, file: !753, line: 454, baseType: !261, offset: 800)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1009, file: !753, line: 457, baseType: !798, size: 256, offset: 832)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1009, file: !753, line: 459, baseType: !247, size: 128, offset: 1088)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1009, file: !753, line: 466, baseType: !351, size: 64, offset: 1216)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1009, file: !753, line: 467, baseType: !351, size: 64, offset: 1280)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1009, file: !753, line: 469, baseType: !351, size: 64, offset: 1344)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1009, file: !753, line: 470, baseType: !351, size: 64, offset: 1408)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1009, file: !753, line: 471, baseType: !804, size: 64, offset: 1472)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1009, file: !753, line: 472, baseType: !351, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1009, file: !753, line: 473, baseType: !351, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1009, file: !753, line: 474, baseType: !351, size: 64, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1009, file: !753, line: 475, baseType: !351, size: 64, offset: 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1009, file: !753, line: 477, baseType: !261, offset: 1792)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1009, file: !753, line: 478, baseType: !351, size: 64, offset: 1792)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1009, file: !753, line: 478, baseType: !351, size: 64, offset: 1856)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1009, file: !753, line: 478, baseType: !351, size: 64, offset: 1920)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1009, file: !753, line: 478, baseType: !351, size: 64, offset: 1984)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1009, file: !753, line: 479, baseType: !351, size: 64, offset: 2048)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1009, file: !753, line: 479, baseType: !351, size: 64, offset: 2112)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1009, file: !753, line: 479, baseType: !351, size: 64, offset: 2176)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1009, file: !753, line: 480, baseType: !351, size: 64, offset: 2240)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1009, file: !753, line: 480, baseType: !351, size: 64, offset: 2304)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1009, file: !753, line: 480, baseType: !351, size: 64, offset: 2368)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1009, file: !753, line: 480, baseType: !351, size: 64, offset: 2432)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1009, file: !753, line: 482, baseType: !1177, size: 2816, offset: 2496)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 2816, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 44)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1009, file: !753, line: 488, baseType: !1181, size: 256, offset: 5312)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1182, line: 60, size: 256, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1181, file: !1182, line: 61, baseType: !1185, size: 256)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 256, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 4)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1009, file: !753, line: 490, baseType: !1189, size: 64, offset: 5568)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !753, line: 490, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1009, file: !753, line: 493, baseType: !1192, size: 896, offset: 5632)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1193, line: 53, baseType: !1194)
!1193 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 13, size: 896, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1202, !1203, !1210, !1211, !1231, !1232, !1233}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1194, file: !1193, line: 18, baseType: !448, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1194, file: !1193, line: 28, baseType: !804, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1194, file: !1193, line: 31, baseType: !798, size: 256, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1194, file: !1193, line: 32, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1193, line: 32, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1194, file: !1193, line: 37, baseType: !343, size: 16, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1194, file: !1193, line: 40, baseType: !1204, size: 192, offset: 512)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1205, line: 53, size: 192, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1204, file: !1205, line: 54, baseType: !802, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1204, file: !1205, line: 55, baseType: !261, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1204, file: !1205, line: 59, baseType: !247, size: 128, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1194, file: !1193, line: 41, baseType: !225, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1194, file: !1193, line: 42, baseType: !1212, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1215, line: 13, size: 896, elements: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1214, file: !1215, line: 14, baseType: !225, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1214, file: !1215, line: 15, baseType: !351, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1214, file: !1215, line: 17, baseType: !351, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1214, file: !1215, line: 17, baseType: !351, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1214, file: !1215, line: 19, baseType: !224, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1214, file: !1215, line: 21, baseType: !224, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1214, file: !1215, line: 22, baseType: !224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1214, file: !1215, line: 23, baseType: !224, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1214, file: !1215, line: 24, baseType: !224, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1214, file: !1215, line: 25, baseType: !224, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1214, file: !1215, line: 26, baseType: !224, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1214, file: !1215, line: 27, baseType: !224, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1214, file: !1215, line: 28, baseType: !224, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1214, file: !1215, line: 29, baseType: !224, size: 64, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1194, file: !1193, line: 44, baseType: !778, size: 32, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1194, file: !1193, line: 50, baseType: !890, size: 16, offset: 864)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1194, file: !1193, line: 51, baseType: !1234, size: 16, offset: 880)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !443, line: 18, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !445, line: 23, baseType: !1236)
!1236 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !753, line: 495, baseType: !351, size: 64, offset: 6528)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1009, file: !753, line: 497, baseType: !1239, size: 64, offset: 6592)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !753, line: 381, size: 384, elements: !1241)
!1241 = !{!1242, !1243, !2350}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1240, file: !753, line: 382, baseType: !778, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1240, file: !753, line: 383, baseType: !1244, size: 128, offset: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !753, line: 376, size: 128, elements: !1245)
!1245 = !{!1246, !2348}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1244, file: !753, line: 377, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1249, line: 640, size: 48640, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1250 = !{!1251, !1257, !1259, !1260, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1277, !1295, !1306, !1391, !1392, !1393, !1404, !1405, !1407, !1408, !1409, !1410, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1494, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1532, !1534, !1535, !1536, !1548, !1549, !1550, !1551, !1552, !1553, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1577, !1582, !1766, !1767, !1768, !1769, !1773, !1776, !1779, !1782, !1785, !1789, !1890, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1936, !1937, !1938, !1939, !1940, !1945, !1946, !1947, !1950, !1951, !1954, !1957, !1960, !1963, !2006, !2009, !2010, !2089, !2090, !2093, !2094, !2097, !2098, !2099, !2103, !2104, !2105, !2118, !2119, !2120, !2130, !2135, !2138, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1248, file: !1249, line: 646, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1253, line: 56, size: 128, elements: !1254)
!1253 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !1253, line: 57, baseType: !351, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1252, file: !1253, line: 58, baseType: !442, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1248, file: !1249, line: 649, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1248, file: !1249, line: 657, baseType: !225, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1248, file: !1249, line: 658, baseType: !1261, size: 32, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1262, line: 113, baseType: !1263)
!1262 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1262, line: 111, size: 32, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1263, file: !1262, line: 112, baseType: !778, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 660, baseType: !7, size: 32, offset: 288)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1248, file: !1249, line: 661, baseType: !7, size: 32, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1249, line: 684, baseType: !223, size: 32, offset: 352)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1248, file: !1249, line: 686, baseType: !223, size: 32, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1248, file: !1249, line: 687, baseType: !223, size: 32, offset: 416)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1248, file: !1249, line: 688, baseType: !223, size: 32, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1248, file: !1249, line: 689, baseType: !7, size: 32, offset: 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1248, file: !1249, line: 691, baseType: !1274, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1249, line: 691, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1248, file: !1249, line: 692, baseType: !1278, size: 832, offset: 576)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1249, line: 451, size: 832, elements: !1279)
!1279 = !{!1280, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1278, file: !1249, line: 453, baseType: !1281, size: 128)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1249, line: 325, size: 128, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1281, file: !1249, line: 326, baseType: !351, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1281, file: !1249, line: 327, baseType: !442, size: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1278, file: !1249, line: 454, baseType: !791, size: 192, align: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1278, file: !1249, line: 455, baseType: !247, size: 128, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1278, file: !1249, line: 456, baseType: !7, size: 32, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1278, file: !1249, line: 458, baseType: !448, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1278, file: !1249, line: 459, baseType: !448, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1278, file: !1249, line: 460, baseType: !448, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1278, file: !1249, line: 461, baseType: !448, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1278, file: !1249, line: 463, baseType: !448, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1278, file: !1249, line: 465, baseType: !1294, offset: 832)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1249, line: 415, elements: !275)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1248, file: !1249, line: 693, baseType: !1296, size: 384, offset: 1408)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1249, line: 489, size: 384, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1296, file: !1249, line: 490, baseType: !247, size: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1296, file: !1249, line: 491, baseType: !351, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1296, file: !1249, line: 492, baseType: !351, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1296, file: !1249, line: 493, baseType: !7, size: 32, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1296, file: !1249, line: 494, baseType: !343, size: 16, offset: 288)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1296, file: !1249, line: 495, baseType: !343, size: 16, offset: 304)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1296, file: !1249, line: 497, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1248, file: !1249, line: 697, baseType: !1307, size: 1792, offset: 1792)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1249, line: 507, size: 1792, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1388, !1389}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1307, file: !1249, line: 508, baseType: !791, size: 192, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1307, file: !1249, line: 515, baseType: !448, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1307, file: !1249, line: 516, baseType: !448, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1307, file: !1249, line: 517, baseType: !448, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1307, file: !1249, line: 518, baseType: !448, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1307, file: !1249, line: 519, baseType: !448, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1307, file: !1249, line: 526, baseType: !808, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1307, file: !1249, line: 527, baseType: !448, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !1249, line: 528, baseType: !7, size: 32, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1307, file: !1249, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1307, file: !1249, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1307, file: !1249, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1307, file: !1249, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1307, file: !1249, line: 563, baseType: !1323, size: 512, offset: 704)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1324)
!1324 = !{!1325, !1333, !1334, !1339, !1382, !1385, !1386, !1387}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1323, file: !20, line: 119, baseType: !1326, size: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1327, line: 9, size: 256, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1326, file: !1327, line: 10, baseType: !791, size: 192, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1326, file: !1327, line: 11, baseType: !1331, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1332, line: 29, baseType: !808)
!1332 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1323, file: !20, line: 120, baseType: !1331, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1323, file: !20, line: 121, baseType: !1335, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!19, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1323, file: !20, line: 122, baseType: !1340, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1342)
!1342 = !{!1343, !1363, !1364, !1367, !1372, !1373, !1377, !1381}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1341, file: !20, line: 160, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1345, file: !20, line: 215, baseType: !811)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1345, file: !20, line: 216, baseType: !7, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1345, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1345, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1345, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1345, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1345, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1345, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1345, file: !20, line: 233, baseType: !1331, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1345, file: !20, line: 234, baseType: !1338, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1345, file: !20, line: 235, baseType: !1331, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1345, file: !20, line: 236, baseType: !1338, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1345, file: !20, line: 237, baseType: !1360, size: 4096, offset: 512)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 4096, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 8)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1341, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1341, file: !20, line: 162, baseType: !1365, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !248, line: 27, baseType: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !335, line: 96, baseType: !223)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1341, file: !20, line: 163, baseType: !1368, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 276, baseType: !1369)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 276, size: 32, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1369, file: !415, line: 276, baseType: !419, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1341, file: !20, line: 164, baseType: !1338, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1341, file: !20, line: 165, baseType: !1374, size: 128, offset: 256)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1327, line: 14, size: 128, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1374, file: !1327, line: 15, baseType: !783, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1341, file: !20, line: 166, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1331}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1341, file: !20, line: 167, baseType: !1331, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1323, file: !20, line: 123, baseType: !1383, size: 8, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !443, line: 17, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !445, line: 21, baseType: !454)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1323, file: !20, line: 124, baseType: !1383, size: 8, offset: 456)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1323, file: !20, line: 125, baseType: !1383, size: 8, offset: 464)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1323, file: !20, line: 126, baseType: !1383, size: 8, offset: 472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1307, file: !1249, line: 572, baseType: !1323, size: 512, offset: 1216)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1307, file: !1249, line: 580, baseType: !1390, size: 64, offset: 1728)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1248, file: !1249, line: 721, baseType: !7, size: 32, offset: 3584)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1248, file: !1249, line: 722, baseType: !223, size: 32, offset: 3616)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1248, file: !1249, line: 723, baseType: !1394, size: 64, offset: 3648)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1397, line: 17, baseType: !1398)
!1397 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1397, line: 17, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1398, file: !1397, line: 17, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 1)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1248, file: !1249, line: 724, baseType: !1396, size: 64, offset: 3712)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1248, file: !1249, line: 749, baseType: !1406, offset: 3776)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1249, line: 290, elements: !275)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1248, file: !1249, line: 751, baseType: !247, size: 128, offset: 3776)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1248, file: !1249, line: 757, baseType: !1005, size: 64, offset: 3904)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1248, file: !1249, line: 758, baseType: !1005, size: 64, offset: 3968)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1248, file: !1249, line: 761, baseType: !1411, size: 320, offset: 4032)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1182, line: 34, size: 320, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1411, file: !1182, line: 35, baseType: !448, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1411, file: !1182, line: 36, baseType: !1415, size: 256, offset: 64)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 256, elements: !1186)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1248, file: !1249, line: 766, baseType: !223, size: 32, offset: 4352)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1248, file: !1249, line: 767, baseType: !223, size: 32, offset: 4384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1248, file: !1249, line: 768, baseType: !223, size: 32, offset: 4416)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1248, file: !1249, line: 770, baseType: !223, size: 32, offset: 4448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1248, file: !1249, line: 772, baseType: !351, size: 64, offset: 4480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1248, file: !1249, line: 775, baseType: !7, size: 32, offset: 4544)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1248, file: !1249, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1248, file: !1249, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1248, file: !1249, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1248, file: !1249, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1248, file: !1249, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1248, file: !1249, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1248, file: !1249, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1248, file: !1249, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1248, file: !1249, line: 831, baseType: !351, size: 64, offset: 4672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1248, file: !1249, line: 833, baseType: !1432, size: 384, offset: 4736)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1433)
!1433 = !{!1434, !1439}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1432, file: !25, line: 26, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!224, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !25, line: 27, baseType: !1440, size: 320, offset: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !25, line: 27, size: 320, elements: !1441)
!1441 = !{!1442, !1452, !1479}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1440, file: !25, line: 36, baseType: !1443, size: 320)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1440, file: !25, line: 29, size: 320, elements: !1444)
!1444 = !{!1445, !1447, !1448, !1449, !1450, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1443, file: !25, line: 30, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1443, file: !25, line: 31, baseType: !442, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !25, line: 32, baseType: !442, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1443, file: !25, line: 33, baseType: !442, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1443, file: !25, line: 34, baseType: !448, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1443, file: !25, line: 35, baseType: !1446, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1440, file: !25, line: 46, baseType: !1453, size: 192)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1440, file: !25, line: 38, size: 192, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1478}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1453, file: !25, line: 39, baseType: !1365, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !25, line: 41, baseType: !1458, size: 64, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !25, line: 41, size: 64, elements: !1459)
!1459 = !{!1460, !1468}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1458, file: !25, line: 42, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1463, line: 7, size: 128, elements: !1464)
!1463 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1462, file: !1463, line: 8, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !335, line: 93, baseType: !560)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1462, file: !1463, line: 9, baseType: !560, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1458, file: !25, line: 43, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1471, line: 7, size: 64, elements: !1472)
!1471 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1477}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1470, file: !1471, line: 8, baseType: !1474, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1471, line: 5, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !443, line: 20, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !445, line: 26, baseType: !223)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1470, file: !1471, line: 9, baseType: !1475, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1453, file: !25, line: 45, baseType: !448, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1440, file: !25, line: 54, baseType: !1480, size: 256)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1440, file: !25, line: 48, size: 256, elements: !1481)
!1481 = !{!1482, !1490, !1491, !1492, !1493}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1480, file: !25, line: 49, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1485, line: 36, size: 64, elements: !1486)
!1485 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1484, file: !1485, line: 37, baseType: !223, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1484, file: !1485, line: 38, baseType: !1236, size: 16, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1484, file: !1485, line: 39, baseType: !1236, size: 16, offset: 48)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1480, file: !25, line: 50, baseType: !223, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1480, file: !25, line: 51, baseType: !223, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1480, file: !25, line: 52, baseType: !351, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1480, file: !25, line: 53, baseType: !351, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1248, file: !1249, line: 835, baseType: !1495, size: 32, offset: 5120)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !248, line: 22, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !335, line: 28, baseType: !223)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1248, file: !1249, line: 836, baseType: !1495, size: 32, offset: 5152)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1248, file: !1249, line: 840, baseType: !351, size: 64, offset: 5184)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1248, file: !1249, line: 849, baseType: !1247, size: 64, offset: 5248)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1248, file: !1249, line: 852, baseType: !1247, size: 64, offset: 5312)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1248, file: !1249, line: 857, baseType: !247, size: 128, offset: 5376)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1248, file: !1249, line: 858, baseType: !247, size: 128, offset: 5504)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1248, file: !1249, line: 859, baseType: !1247, size: 64, offset: 5632)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1248, file: !1249, line: 867, baseType: !247, size: 128, offset: 5696)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1248, file: !1249, line: 868, baseType: !247, size: 128, offset: 5824)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1248, file: !1249, line: 871, baseType: !1507, size: 64, offset: 5952)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1515, !1516, !1523, !1524}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1508, file: !53, line: 61, baseType: !1261, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1508, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1508, file: !53, line: 63, baseType: !261, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1508, file: !53, line: 65, baseType: !1514, size: 256, offset: 64)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 256, elements: !1186)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1508, file: !53, line: 66, baseType: !665, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1508, file: !53, line: 68, baseType: !1517, size: 128, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1518, line: 40, baseType: !1519)
!1518 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1518, line: 36, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1518, line: 37, baseType: !261)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1519, file: !1518, line: 38, baseType: !247, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1508, file: !53, line: 69, baseType: !392, size: 128, align: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1508, file: !53, line: 70, baseType: !1525, size: 128, offset: 640)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1526, size: 128, elements: !1402)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1526, file: !53, line: 55, baseType: !223, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1526, file: !53, line: 56, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1248, file: !1249, line: 872, baseType: !1533, size: 512, offset: 6016)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !1186)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1248, file: !1249, line: 873, baseType: !247, size: 128, offset: 6528)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1248, file: !1249, line: 874, baseType: !247, size: 128, offset: 6656)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1248, file: !1249, line: 876, baseType: !1537, size: 64, offset: 6784)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1539, line: 26, size: 192, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1538, file: !1539, line: 27, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1538, file: !1539, line: 28, baseType: !1543, size: 128, offset: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1544, line: 43, size: 128, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1543, file: !1544, line: 44, baseType: !811)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1543, file: !1544, line: 45, baseType: !247, size: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1248, file: !1249, line: 879, baseType: !735, size: 64, offset: 6848)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1248, file: !1249, line: 882, baseType: !735, size: 64, offset: 6912)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1248, file: !1249, line: 884, baseType: !448, size: 64, offset: 6976)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1248, file: !1249, line: 885, baseType: !448, size: 64, offset: 7040)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1248, file: !1249, line: 890, baseType: !448, size: 64, offset: 7104)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1248, file: !1249, line: 891, baseType: !1554, size: 128, offset: 7168)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1249, line: 242, size: 128, elements: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1554, file: !1249, line: 244, baseType: !448, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1554, file: !1249, line: 245, baseType: !448, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !1249, line: 246, baseType: !811, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1248, file: !1249, line: 900, baseType: !351, size: 64, offset: 7296)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1248, file: !1249, line: 901, baseType: !351, size: 64, offset: 7360)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1248, file: !1249, line: 904, baseType: !448, size: 64, offset: 7424)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1248, file: !1249, line: 907, baseType: !448, size: 64, offset: 7488)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1248, file: !1249, line: 910, baseType: !351, size: 64, offset: 7552)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1248, file: !1249, line: 911, baseType: !351, size: 64, offset: 7616)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1248, file: !1249, line: 914, baseType: !1566, size: 640, offset: 7680)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1567, line: 123, size: 640, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1575, !1576}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1566, file: !1567, line: 124, baseType: !1570, size: 576)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1571, size: 576, elements: !303)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1567, line: 108, size: 192, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1571, file: !1567, line: 109, baseType: !448, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1571, file: !1567, line: 110, baseType: !1374, size: 128, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1566, file: !1567, line: 125, baseType: !7, size: 32, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1566, file: !1567, line: 126, baseType: !7, size: 32, offset: 608)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1248, file: !1249, line: 917, baseType: !1578, size: 192, offset: 8320)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1567, line: 134, size: 192, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1578, file: !1567, line: 135, baseType: !392, size: 128, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1578, file: !1567, line: 136, baseType: !7, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1248, file: !1249, line: 923, baseType: !1583, size: 64, offset: 8512)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1586, line: 111, size: 1280, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1607, !1608, !1609, !1610, !1611, !1612, !1719, !1720, !1721, !1722, !1748, !1751, !1761}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1586, line: 112, baseType: !778, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1585, file: !1586, line: 120, baseType: !462, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1585, file: !1586, line: 121, baseType: !470, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1585, file: !1586, line: 122, baseType: !462, size: 32, offset: 96)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1585, file: !1586, line: 123, baseType: !470, size: 32, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1585, file: !1586, line: 124, baseType: !462, size: 32, offset: 160)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1585, file: !1586, line: 125, baseType: !470, size: 32, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1585, file: !1586, line: 126, baseType: !462, size: 32, offset: 224)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1585, file: !1586, line: 127, baseType: !470, size: 32, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1585, file: !1586, line: 128, baseType: !7, size: 32, offset: 288)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1585, file: !1586, line: 129, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1600, line: 26, baseType: !1601)
!1600 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1600, line: 24, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1601, file: !1600, line: 25, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 2)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1585, file: !1586, line: 130, baseType: !1599, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1585, file: !1586, line: 131, baseType: !1599, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1585, file: !1586, line: 132, baseType: !1599, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1585, file: !1586, line: 133, baseType: !1599, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1585, file: !1586, line: 135, baseType: !454, size: 8, offset: 640)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1585, file: !1586, line: 137, baseType: !1613, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1615, line: 189, size: 1664, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1621, !1626, !1627, !1630, !1631, !1636, !1637, !1638, !1639, !1641, !1642, !1643, !1644, !1645, !1683, !1704}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1614, file: !1615, line: 190, baseType: !1261, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1614, file: !1615, line: 191, baseType: !1619, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1615, line: 28, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !248, line: 98, baseType: !1475)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1615, line: 192, baseType: !1622, size: 192, offset: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1614, file: !1615, line: 192, size: 192, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1622, file: !1615, line: 193, baseType: !247, size: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1622, file: !1615, line: 194, baseType: !791, size: 192, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1614, file: !1615, line: 199, baseType: !798, size: 256, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1614, file: !1615, line: 200, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1615, line: 200, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1614, file: !1615, line: 201, baseType: !225, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1615, line: 202, baseType: !1632, size: 64, offset: 640)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1614, file: !1615, line: 202, size: 64, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1632, file: !1615, line: 203, baseType: !566, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1632, file: !1615, line: 204, baseType: !566, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1614, file: !1615, line: 206, baseType: !566, size: 64, offset: 704)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1614, file: !1615, line: 207, baseType: !462, size: 32, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1614, file: !1615, line: 208, baseType: !470, size: 32, offset: 800)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1614, file: !1615, line: 209, baseType: !1640, size: 32, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1615, line: 31, baseType: !586)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1614, file: !1615, line: 210, baseType: !343, size: 16, offset: 864)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1614, file: !1615, line: 211, baseType: !343, size: 16, offset: 880)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1614, file: !1615, line: 215, baseType: !1236, size: 16, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1614, file: !1615, line: 222, baseType: !351, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1615, line: 239, baseType: !1646, size: 320, offset: 1024)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1614, file: !1615, line: 239, size: 320, elements: !1647)
!1647 = !{!1648, !1675}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1646, file: !1615, line: 240, baseType: !1649, size: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1615, line: 108, size: 320, elements: !1650)
!1650 = !{!1651, !1652, !1664, !1667, !1674}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1649, file: !1615, line: 110, baseType: !351, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1649, file: !1615, line: 111, baseType: !1653, size: 64, offset: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1649, file: !1615, line: 111, size: 64, elements: !1654)
!1654 = !{!1655, !1663}
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1615, line: 112, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1615, line: 112, size: 64, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1656, file: !1615, line: 114, baseType: !890, size: 16)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1656, file: !1615, line: 115, baseType: !1660, size: 48, offset: 16)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 48, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 6)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1653, file: !1615, line: 121, baseType: !351, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1649, file: !1615, line: 123, baseType: !1665, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1615, line: 96, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1649, file: !1615, line: 124, baseType: !1668, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1615, line: 102, size: 192, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1669, file: !1615, line: 103, baseType: !392, size: 128, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1669, file: !1615, line: 104, baseType: !1261, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1669, file: !1615, line: 105, baseType: !517, size: 8, offset: 160)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1649, file: !1615, line: 125, baseType: !243, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1615, line: 241, baseType: !1676, size: 320)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1615, line: 241, size: 320, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1676, file: !1615, line: 242, baseType: !351, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1676, file: !1615, line: 243, baseType: !351, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1676, file: !1615, line: 244, baseType: !1665, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1676, file: !1615, line: 245, baseType: !1668, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1676, file: !1615, line: 246, baseType: !302, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1615, line: 254, baseType: !1684, size: 256, offset: 1344)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1614, file: !1615, line: 254, size: 256, elements: !1685)
!1685 = !{!1686, !1692}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1684, file: !1615, line: 255, baseType: !1687, size: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1615, line: 128, size: 256, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1687, file: !1615, line: 129, baseType: !225, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1687, file: !1615, line: 130, baseType: !1691, size: 256)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !1186)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1615, line: 256, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !1615, line: 256, size: 256, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1693, file: !1615, line: 258, baseType: !247, size: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1693, file: !1615, line: 259, baseType: !1697, size: 128, offset: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1698, line: 22, size: 128, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1697, file: !1698, line: 23, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1698, line: 23, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1697, file: !1698, line: 24, baseType: !351, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1614, file: !1615, line: 274, baseType: !1705, size: 64, offset: 1600)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1615, line: 170, size: 192, elements: !1707)
!1707 = !{!1708, !1717, !1718}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1706, file: !1615, line: 171, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1615, line: 165, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!223, !1613, !1713, !1715, !1613}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1706, file: !1615, line: 172, baseType: !1613, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1706, file: !1615, line: 173, baseType: !1665, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1585, file: !1586, line: 138, baseType: !1613, size: 64, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1585, file: !1586, line: 139, baseType: !1613, size: 64, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1585, file: !1586, line: 140, baseType: !1613, size: 64, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1585, file: !1586, line: 145, baseType: !1723, size: 64, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1725, line: 13, size: 896, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1724, file: !1725, line: 14, baseType: !1261, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1724, file: !1725, line: 15, baseType: !778, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1724, file: !1725, line: 16, baseType: !778, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1724, file: !1725, line: 21, baseType: !802, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1724, file: !1725, line: 27, baseType: !351, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1724, file: !1725, line: 28, baseType: !351, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1724, file: !1725, line: 29, baseType: !802, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1724, file: !1725, line: 32, baseType: !669, size: 128, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1724, file: !1725, line: 33, baseType: !462, size: 32, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1724, file: !1725, line: 37, baseType: !802, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1724, file: !1725, line: 44, baseType: !1738, size: 256, offset: 640)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1739, line: 15, size: 256, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1739, line: 16, baseType: !811)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1738, file: !1739, line: 18, baseType: !223, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1738, file: !1739, line: 19, baseType: !223, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1738, file: !1739, line: 20, baseType: !223, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1738, file: !1739, line: 21, baseType: !223, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1738, file: !1739, line: 22, baseType: !351, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1739, line: 23, baseType: !351, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1585, file: !1586, line: 146, baseType: !1749, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !463, line: 18, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1585, file: !1586, line: 147, baseType: !1752, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1586, line: 25, size: 64, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1753, file: !1586, line: 26, baseType: !778, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1753, file: !1586, line: 27, baseType: !223, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1753, file: !1586, line: 28, baseType: !1758, offset: 64)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, elements: !1759)
!1759 = !{!1760}
!1760 = !DISubrange(count: 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 149, baseType: !1762, size: 128, offset: 1152)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 149, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1762, file: !1586, line: 150, baseType: !223, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1762, file: !1586, line: 151, baseType: !392, size: 128, align: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1248, file: !1249, line: 926, baseType: !1583, size: 64, offset: 8576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1248, file: !1249, line: 929, baseType: !1583, size: 64, offset: 8640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1248, file: !1249, line: 933, baseType: !1613, size: 64, offset: 8704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1248, file: !1249, line: 943, baseType: !1770, size: 128, offset: 8768)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 16)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1248, file: !1249, line: 945, baseType: !1774, size: 64, offset: 8896)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1249, line: 49, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1248, file: !1249, line: 956, baseType: !1777, size: 64, offset: 8960)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1249, line: 45, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1248, file: !1249, line: 959, baseType: !1780, size: 64, offset: 9024)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1249, line: 959, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1248, file: !1249, line: 962, baseType: !1783, size: 64, offset: 9088)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1249, line: 66, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1248, file: !1249, line: 966, baseType: !1786, size: 64, offset: 9152)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1788, line: 35, flags: DIFlagFwdDecl)
!1788 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1248, file: !1249, line: 969, baseType: !1790, size: 64, offset: 9216)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1792, line: 82, size: 7296, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1829, !1838, !1839, !1841, !1842, !1843, !1846, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1876, !1877, !1884, !1885, !1886, !1887, !1888, !1889}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1791, file: !1792, line: 83, baseType: !1261, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1791, file: !1792, line: 84, baseType: !778, size: 32, offset: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1791, file: !1792, line: 85, baseType: !223, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1791, file: !1792, line: 86, baseType: !247, size: 128, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1791, file: !1792, line: 88, baseType: !1517, size: 128, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1791, file: !1792, line: 91, baseType: !1247, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1791, file: !1792, line: 94, baseType: !1801, size: 192, offset: 448)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1802, line: 30, size: 192, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1801, file: !1802, line: 31, baseType: !247, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1801, file: !1802, line: 32, baseType: !1806, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1807, line: 25, baseType: !1808)
!1807 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 23, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1808, file: !1807, line: 24, baseType: !1401, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1791, file: !1792, line: 97, baseType: !665, size: 64, offset: 640)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1791, file: !1792, line: 100, baseType: !223, size: 32, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1791, file: !1792, line: 106, baseType: !223, size: 32, offset: 736)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1791, file: !1792, line: 107, baseType: !1247, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1791, file: !1792, line: 110, baseType: !223, size: 32, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1791, file: !1792, line: 111, baseType: !7, size: 32, offset: 864)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1791, file: !1792, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1791, file: !1792, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1791, file: !1792, line: 128, baseType: !223, size: 32, offset: 928)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1791, file: !1792, line: 129, baseType: !247, size: 128, offset: 960)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1791, file: !1792, line: 132, baseType: !1323, size: 512, offset: 1088)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1791, file: !1792, line: 133, baseType: !1331, size: 64, offset: 1600)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1791, file: !1792, line: 140, baseType: !1824, size: 256, offset: 1664)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1825, size: 256, elements: !1605)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1792, line: 38, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1825, file: !1792, line: 39, baseType: !448, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1825, file: !1792, line: 40, baseType: !448, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1791, file: !1792, line: 146, baseType: !1830, size: 192, offset: 1920)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1792, line: 66, size: 192, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1830, file: !1792, line: 67, baseType: !1833, size: 192)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1792, line: 47, size: 192, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1833, file: !1792, line: 48, baseType: !804, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1833, file: !1792, line: 49, baseType: !804, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1833, file: !1792, line: 50, baseType: !804, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1791, file: !1792, line: 150, baseType: !1566, size: 640, offset: 2112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1791, file: !1792, line: 153, baseType: !1840, size: 256, offset: 2752)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1507, size: 256, elements: !1186)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1791, file: !1792, line: 159, baseType: !1507, size: 64, offset: 3008)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1791, file: !1792, line: 162, baseType: !223, size: 32, offset: 3072)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1791, file: !1792, line: 164, baseType: !1844, size: 64, offset: 3136)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1792, line: 164, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1791, file: !1792, line: 175, baseType: !1847, size: 32, offset: 3200)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 805, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 798, size: 32, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1848, file: !415, line: 803, baseType: !414, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !415, line: 804, baseType: !261, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1791, file: !1792, line: 176, baseType: !448, size: 64, offset: 3264)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1791, file: !1792, line: 176, baseType: !448, size: 64, offset: 3328)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1791, file: !1792, line: 176, baseType: !448, size: 64, offset: 3392)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1791, file: !1792, line: 176, baseType: !448, size: 64, offset: 3456)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1791, file: !1792, line: 177, baseType: !448, size: 64, offset: 3520)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1791, file: !1792, line: 178, baseType: !448, size: 64, offset: 3584)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1791, file: !1792, line: 179, baseType: !1554, size: 128, offset: 3648)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1791, file: !1792, line: 180, baseType: !351, size: 64, offset: 3776)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1791, file: !1792, line: 180, baseType: !351, size: 64, offset: 3840)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1791, file: !1792, line: 180, baseType: !351, size: 64, offset: 3904)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1791, file: !1792, line: 180, baseType: !351, size: 64, offset: 3968)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1791, file: !1792, line: 181, baseType: !351, size: 64, offset: 4032)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1791, file: !1792, line: 181, baseType: !351, size: 64, offset: 4096)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1791, file: !1792, line: 181, baseType: !351, size: 64, offset: 4160)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1791, file: !1792, line: 181, baseType: !351, size: 64, offset: 4224)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1791, file: !1792, line: 182, baseType: !351, size: 64, offset: 4288)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1791, file: !1792, line: 182, baseType: !351, size: 64, offset: 4352)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1791, file: !1792, line: 182, baseType: !351, size: 64, offset: 4416)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1791, file: !1792, line: 182, baseType: !351, size: 64, offset: 4480)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1791, file: !1792, line: 183, baseType: !351, size: 64, offset: 4544)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1791, file: !1792, line: 183, baseType: !351, size: 64, offset: 4608)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1791, file: !1792, line: 184, baseType: !1874, offset: 4672)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1875, line: 12, elements: !275)
!1875 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1791, file: !1792, line: 192, baseType: !450, size: 64, offset: 4672)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1791, file: !1792, line: 203, baseType: !1878, size: 2048, offset: 4736)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 2048, elements: !1771)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1880, line: 43, size: 128, elements: !1881)
!1880 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1879, file: !1880, line: 44, baseType: !350, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1879, file: !1880, line: 45, baseType: !350, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1791, file: !1792, line: 220, baseType: !517, size: 8, offset: 6784)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1791, file: !1792, line: 221, baseType: !1236, size: 16, offset: 6800)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1791, file: !1792, line: 222, baseType: !1236, size: 16, offset: 6816)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1791, file: !1792, line: 224, baseType: !1005, size: 64, offset: 6848)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1791, file: !1792, line: 227, baseType: !1204, size: 192, offset: 6912)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1791, file: !1792, line: 233, baseType: !1204, size: 192, offset: 7104)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1248, file: !1249, line: 970, baseType: !1891, size: 64, offset: 9280)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1792, line: 20, size: 16576, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1892, file: !1792, line: 21, baseType: !261)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1892, file: !1792, line: 22, baseType: !1261, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1892, file: !1792, line: 23, baseType: !1517, size: 128, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1892, file: !1792, line: 24, baseType: !1898, size: 16384, offset: 192)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 16384, elements: !307)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1802, line: 49, size: 256, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1899, file: !1802, line: 50, baseType: !1902, size: 256)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1802, line: 35, size: 256, elements: !1903)
!1903 = !{!1904, !1911, !1912, !1918}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1902, file: !1802, line: 37, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1906, line: 19, baseType: !1907)
!1906 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1906, line: 18, baseType: !1909)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !223}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1902, file: !1802, line: 38, baseType: !351, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1902, file: !1802, line: 44, baseType: !1913, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1906, line: 22, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1906, line: 21, baseType: !1916)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1902, file: !1802, line: 46, baseType: !1806, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1248, file: !1249, line: 971, baseType: !1806, size: 64, offset: 9344)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1248, file: !1249, line: 972, baseType: !1806, size: 64, offset: 9408)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1248, file: !1249, line: 974, baseType: !1806, size: 64, offset: 9472)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1248, file: !1249, line: 975, baseType: !1801, size: 192, offset: 9536)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1248, file: !1249, line: 976, baseType: !351, size: 64, offset: 9728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1248, file: !1249, line: 977, baseType: !348, size: 64, offset: 9792)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1248, file: !1249, line: 978, baseType: !7, size: 32, offset: 9856)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1248, file: !1249, line: 980, baseType: !395, size: 64, offset: 9920)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1248, file: !1249, line: 989, baseType: !1928, size: 128, offset: 9984)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1929, line: 35, size: 128, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1928, file: !1929, line: 36, baseType: !223, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1928, file: !1929, line: 37, baseType: !778, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1928, file: !1929, line: 38, baseType: !1934, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1929, line: 23, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1248, file: !1249, line: 992, baseType: !448, size: 64, offset: 10112)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1248, file: !1249, line: 993, baseType: !448, size: 64, offset: 10176)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1248, file: !1249, line: 996, baseType: !261, offset: 10240)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1248, file: !1249, line: 999, baseType: !811, offset: 10240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1248, file: !1249, line: 1001, baseType: !1941, size: 64, offset: 10240)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1249, line: 636, size: 64, elements: !1942)
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1941, file: !1249, line: 637, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1248, file: !1249, line: 1005, baseType: !783, size: 128, offset: 10304)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1248, file: !1249, line: 1007, baseType: !1247, size: 64, offset: 10432)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1248, file: !1249, line: 1009, baseType: !1948, size: 64, offset: 10496)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1249, line: 1009, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1248, file: !1249, line: 1043, baseType: !225, size: 64, offset: 10560)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1248, file: !1249, line: 1046, baseType: !1952, size: 64, offset: 10624)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1249, line: 41, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1248, file: !1249, line: 1050, baseType: !1955, size: 64, offset: 10688)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1249, line: 42, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1248, file: !1249, line: 1054, baseType: !1958, size: 64, offset: 10752)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1249, line: 55, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1248, file: !1249, line: 1056, baseType: !1961, size: 64, offset: 10816)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1249, line: 40, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1248, file: !1249, line: 1058, baseType: !1964, size: 64, offset: 10880)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1966, line: 99, size: 704, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1993, !1994}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1965, file: !1966, line: 100, baseType: !802, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1965, file: !1966, line: 101, baseType: !778, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1965, file: !1966, line: 102, baseType: !778, size: 32, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !1966, line: 105, baseType: !261, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1965, file: !1966, line: 107, baseType: !343, size: 16, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1965, file: !1966, line: 109, baseType: !769, size: 128, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1965, file: !1966, line: 110, baseType: !1975, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1966, line: 73, size: 448, elements: !1977)
!1977 = !{!1978, !1981, !1982, !1987, !1992}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1976, file: !1966, line: 74, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1966, line: 74, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1976, file: !1966, line: 75, baseType: !1964, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1966, line: 83, baseType: !1983, size: 128, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1966, line: 83, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1983, file: !1966, line: 84, baseType: !247, size: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1983, file: !1966, line: 85, baseType: !966, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1966, line: 87, baseType: !1988, size: 128, offset: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1966, line: 87, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1988, file: !1966, line: 88, baseType: !669, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1988, file: !1966, line: 89, baseType: !392, size: 128, align: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1966, line: 92, baseType: !7, size: 32, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1965, file: !1966, line: 111, baseType: !665, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1965, file: !1966, line: 113, baseType: !1995, size: 256, offset: 448)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1996, line: 102, size: 256, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1995, file: !1996, line: 103, baseType: !802, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1995, file: !1996, line: 104, baseType: !247, size: 128, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1995, file: !1996, line: 105, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1996, line: 21, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1248, file: !1249, line: 1061, baseType: !2007, size: 64, offset: 10944)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1249, line: 43, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1248, file: !1249, line: 1064, baseType: !351, size: 64, offset: 11008)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1248, file: !1249, line: 1065, baseType: !2011, size: 64, offset: 11072)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1802, line: 14, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1802, line: 12, size: 384, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !1802, line: 13, baseType: !2016, size: 384)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !1802, line: 13, size: 384, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2016, file: !1802, line: 13, baseType: !223, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2016, file: !1802, line: 13, baseType: !223, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2016, file: !1802, line: 13, baseType: !223, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2016, file: !1802, line: 13, baseType: !2022, size: 256, offset: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2023, line: 32, size: 256, elements: !2024)
!2023 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2030, !2043, !2049, !2058, !2078, !2083}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2022, file: !2023, line: 37, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 34, size: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2026, file: !2023, line: 35, baseType: !1496, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2026, file: !2023, line: 36, baseType: !468, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2022, file: !2023, line: 45, baseType: !2031, size: 192)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 40, size: 192, elements: !2032)
!2032 = !{!2033, !2035, !2036, !2042}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2031, file: !2023, line: 41, baseType: !2034, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !335, line: 95, baseType: !223)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2031, file: !2023, line: 42, baseType: !223, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2031, file: !2023, line: 43, baseType: !2037, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2023, line: 11, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2023, line: 8, size: 64, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2038, file: !2023, line: 9, baseType: !223, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2038, file: !2023, line: 10, baseType: !225, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2031, file: !2023, line: 44, baseType: !223, size: 32, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2022, file: !2023, line: 52, baseType: !2044, size: 128)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 48, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2044, file: !2023, line: 49, baseType: !1496, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2044, file: !2023, line: 50, baseType: !468, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2044, file: !2023, line: 51, baseType: !2037, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2022, file: !2023, line: 61, baseType: !2050, size: 256)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 55, size: 256, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2057}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2050, file: !2023, line: 56, baseType: !1496, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2050, file: !2023, line: 57, baseType: !468, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2050, file: !2023, line: 58, baseType: !223, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2050, file: !2023, line: 59, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !335, line: 94, baseType: !336)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2050, file: !2023, line: 60, baseType: !2056, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2022, file: !2023, line: 95, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 64, size: 256, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2059, file: !2023, line: 65, baseType: !225, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2023, line: 77, baseType: !2063, size: 192, offset: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2023, line: 77, size: 192, elements: !2064)
!2064 = !{!2065, !2066, !2073}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2063, file: !2023, line: 82, baseType: !1236, size: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2063, file: !2023, line: 88, baseType: !2067, size: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2023, line: 84, size: 192, elements: !2068)
!2068 = !{!2069, !2071, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2067, file: !2023, line: 85, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 64, elements: !1361)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2067, file: !2023, line: 86, baseType: !225, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2067, file: !2023, line: 87, baseType: !225, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2063, file: !2023, line: 93, baseType: !2074, size: 96)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2023, line: 90, size: 96, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2074, file: !2023, line: 91, baseType: !2070, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2074, file: !2023, line: 92, baseType: !444, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2022, file: !2023, line: 101, baseType: !2079, size: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 98, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2079, file: !2023, line: 99, baseType: !224, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2079, file: !2023, line: 100, baseType: !223, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2022, file: !2023, line: 108, baseType: !2084, size: 128)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 104, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2084, file: !2023, line: 105, baseType: !225, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2084, file: !2023, line: 106, baseType: !223, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2084, file: !2023, line: 107, baseType: !7, size: 32, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1248, file: !1249, line: 1067, baseType: !1874, offset: 11136)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1248, file: !1249, line: 1099, baseType: !2091, size: 64, offset: 11136)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1249, line: 56, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1248, file: !1249, line: 1103, baseType: !247, size: 128, offset: 11200)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1248, file: !1249, line: 1104, baseType: !2095, size: 64, offset: 11328)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1249, line: 46, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1248, file: !1249, line: 1105, baseType: !1204, size: 192, offset: 11392)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1248, file: !1249, line: 1106, baseType: !7, size: 32, offset: 11584)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1248, file: !1249, line: 1109, baseType: !2100, size: 128, offset: 11648)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2101, size: 128, elements: !1605)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1249, line: 51, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1248, file: !1249, line: 1110, baseType: !1204, size: 192, offset: 11776)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1248, file: !1249, line: 1111, baseType: !247, size: 128, offset: 11968)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1248, file: !1249, line: 1173, baseType: !2106, size: 64, offset: 12096)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2108, line: 62, size: 256, align: 256, elements: !2109)
!2108 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112, !2117}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2107, file: !2108, line: 75, baseType: !444, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2107, file: !2108, line: 90, baseType: !444, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2107, file: !2108, line: 124, baseType: !2113, size: 64, offset: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !2108, line: 109, size: 64, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2113, file: !2108, line: 110, baseType: !449, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2113, file: !2108, line: 112, baseType: !449, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2108, line: 144, baseType: !444, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1248, file: !1249, line: 1174, baseType: !442, size: 32, offset: 12160)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1248, file: !1249, line: 1179, baseType: !351, size: 64, offset: 12224)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1248, file: !1249, line: 1182, baseType: !2121, size: 128, offset: 12288)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1182, line: 76, size: 128, elements: !2122)
!2122 = !{!2123, !2128, !2129}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2121, file: !1182, line: 85, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2125, line: 7, size: 64, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2124, file: !2125, line: 12, baseType: !1398, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2121, file: !1182, line: 88, baseType: !517, size: 8, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2121, file: !1182, line: 95, baseType: !517, size: 8, offset: 72)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !1249, line: 1184, baseType: !2131, size: 128, offset: 12416)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !1249, line: 1184, size: 128, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2131, file: !1249, line: 1185, baseType: !1261, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2131, file: !1249, line: 1186, baseType: !392, size: 128, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1248, file: !1249, line: 1190, baseType: !2136, size: 64, offset: 12544)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1249, line: 53, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1248, file: !1249, line: 1192, baseType: !2139, size: 128, offset: 12608)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1182, line: 64, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2139, file: !1182, line: 65, baseType: !751, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2139, file: !1182, line: 67, baseType: !444, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2139, file: !1182, line: 68, baseType: !444, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1248, file: !1249, line: 1206, baseType: !223, size: 32, offset: 12736)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1248, file: !1249, line: 1207, baseType: !223, size: 32, offset: 12768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1248, file: !1249, line: 1209, baseType: !351, size: 64, offset: 12800)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1248, file: !1249, line: 1219, baseType: !448, size: 64, offset: 12864)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1248, file: !1249, line: 1220, baseType: !448, size: 64, offset: 12928)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1248, file: !1249, line: 1317, baseType: !223, size: 32, offset: 12992)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1248, file: !1249, line: 1319, baseType: !1247, size: 64, offset: 13056)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1248, file: !1249, line: 1322, baseType: !2152, size: 64, offset: 13120)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2154, line: 56, size: 512, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2164}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2153, file: !2154, line: 57, baseType: !2152, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2153, file: !2154, line: 58, baseType: !225, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2153, file: !2154, line: 59, baseType: !351, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 60, baseType: !351, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2153, file: !2154, line: 61, baseType: !851, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2153, file: !2154, line: 62, baseType: !7, size: 32, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2153, file: !2154, line: 63, baseType: !2163, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !248, line: 153, baseType: !448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2153, file: !2154, line: 64, baseType: !2165, size: 64, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1248, file: !1249, line: 1326, baseType: !1261, size: 32, offset: 13184)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1248, file: !1249, line: 1342, baseType: !225, size: 64, offset: 13248)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1248, file: !1249, line: 1343, baseType: !449, size: 64, offset: 13312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1248, file: !1249, line: 1344, baseType: !448, size: 64, offset: 13376)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1248, file: !1249, line: 1345, baseType: !449, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1248, file: !1249, line: 1346, baseType: !449, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1248, file: !1249, line: 1347, baseType: !449, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1248, file: !1249, line: 1348, baseType: !392, size: 128, align: 64, offset: 13504)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1248, file: !1249, line: 1358, baseType: !2176, size: 34816, offset: 13824)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2177, line: 485, size: 34816, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2208, !2209, !2210, !2211, !2212, !2213, !2216, !2217, !2218}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2176, file: !2177, line: 487, baseType: !2180, size: 192)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 192, elements: !303)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2182, line: 16, size: 64, elements: !2183)
!2182 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2181, file: !2182, line: 17, baseType: !890, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2181, file: !2182, line: 18, baseType: !890, size: 16, offset: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2181, file: !2182, line: 19, baseType: !890, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2181, file: !2182, line: 19, baseType: !890, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2181, file: !2182, line: 19, baseType: !890, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2181, file: !2182, line: 19, baseType: !890, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2181, file: !2182, line: 19, baseType: !890, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2181, file: !2182, line: 20, baseType: !890, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2181, file: !2182, line: 20, baseType: !890, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2181, file: !2182, line: 20, baseType: !890, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2181, file: !2182, line: 20, baseType: !890, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2181, file: !2182, line: 20, baseType: !890, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2181, file: !2182, line: 20, baseType: !890, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2176, file: !2177, line: 491, baseType: !351, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2176, file: !2177, line: 495, baseType: !343, size: 16, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2176, file: !2177, line: 496, baseType: !343, size: 16, offset: 272)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2176, file: !2177, line: 497, baseType: !343, size: 16, offset: 288)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2176, file: !2177, line: 498, baseType: !343, size: 16, offset: 304)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2176, file: !2177, line: 502, baseType: !351, size: 64, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2176, file: !2177, line: 503, baseType: !351, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2176, file: !2177, line: 514, baseType: !2205, size: 256, offset: 448)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2206, size: 256, elements: !1186)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2177, line: 483, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2176, file: !2177, line: 516, baseType: !351, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2176, file: !2177, line: 518, baseType: !351, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2176, file: !2177, line: 520, baseType: !351, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2176, file: !2177, line: 521, baseType: !351, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2176, file: !2177, line: 522, baseType: !351, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2176, file: !2177, line: 528, baseType: !2214, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2177, line: 10, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2176, file: !2177, line: 535, baseType: !351, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2176, file: !2177, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2176, file: !2177, line: 540, baseType: !2219, size: 33280, offset: 1536)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2220, line: 317, size: 33280, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2219, file: !2220, line: 330, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2219, file: !2220, line: 337, baseType: !351, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2219, file: !2220, line: 348, baseType: !2225, size: 32768, offset: 512)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2220, line: 304, size: 32768, elements: !2226)
!2226 = !{!2227, !2242, !2281, !2331, !2344}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2225, file: !2220, line: 305, baseType: !2228, size: 896)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2220, line: 12, size: 896, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2241}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2228, file: !2220, line: 13, baseType: !442, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2228, file: !2220, line: 14, baseType: !442, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2228, file: !2220, line: 15, baseType: !442, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2228, file: !2220, line: 16, baseType: !442, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2228, file: !2220, line: 17, baseType: !442, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2228, file: !2220, line: 18, baseType: !442, size: 32, offset: 160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2228, file: !2220, line: 19, baseType: !442, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2228, file: !2220, line: 22, baseType: !2238, size: 640, offset: 224)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 20)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2228, file: !2220, line: 25, baseType: !442, size: 32, offset: 864)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2225, file: !2220, line: 306, baseType: !2243, size: 4096, align: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2220, line: 34, size: 4096, align: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2264, !2265, !2266, !2270, !2272, !2276}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2243, file: !2220, line: 35, baseType: !890, size: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2243, file: !2220, line: 36, baseType: !890, size: 16, offset: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2243, file: !2220, line: 37, baseType: !890, size: 16, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2243, file: !2220, line: 38, baseType: !890, size: 16, offset: 48)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 39, baseType: !2250, size: 128, offset: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 39, size: 128, elements: !2251)
!2251 = !{!2252, !2257}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 40, baseType: !2253, size: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 40, size: 128, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2253, file: !2220, line: 41, baseType: !448, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2253, file: !2220, line: 42, baseType: !448, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 44, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 44, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2258, file: !2220, line: 45, baseType: !442, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2258, file: !2220, line: 46, baseType: !442, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2258, file: !2220, line: 47, baseType: !442, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2258, file: !2220, line: 48, baseType: !442, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2243, file: !2220, line: 51, baseType: !442, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2243, file: !2220, line: 52, baseType: !442, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2243, file: !2220, line: 55, baseType: !2267, size: 1024, offset: 256)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2243, file: !2220, line: 58, baseType: !2271, size: 2048, offset: 1280)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !307)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2243, file: !2220, line: 60, baseType: !2273, size: 384, offset: 3328)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 12)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 62, baseType: !2277, size: 384, offset: 3712)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 62, size: 384, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2277, file: !2220, line: 63, baseType: !2273, size: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2277, file: !2220, line: 64, baseType: !2273, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2225, file: !2220, line: 307, baseType: !2282, size: 1088)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2220, line: 79, size: 1088, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2330}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2282, file: !2220, line: 80, baseType: !442, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2282, file: !2220, line: 81, baseType: !442, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2282, file: !2220, line: 82, baseType: !442, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2220, line: 83, baseType: !442, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2220, line: 84, baseType: !442, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2220, line: 85, baseType: !442, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2220, line: 86, baseType: !442, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2282, file: !2220, line: 88, baseType: !2238, size: 640, offset: 224)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2282, file: !2220, line: 89, baseType: !1383, size: 8, offset: 864)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2282, file: !2220, line: 90, baseType: !1383, size: 8, offset: 872)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2282, file: !2220, line: 91, baseType: !1383, size: 8, offset: 880)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2282, file: !2220, line: 92, baseType: !1383, size: 8, offset: 888)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2282, file: !2220, line: 93, baseType: !1383, size: 8, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2282, file: !2220, line: 94, baseType: !1383, size: 8, offset: 904)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2282, file: !2220, line: 95, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2301, line: 11, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2300, file: !2301, line: 12, baseType: !224, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2300, file: !2301, line: 13, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2307, line: 56, size: 1344, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2306, file: !2307, line: 61, baseType: !351, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2306, file: !2307, line: 62, baseType: !351, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2306, file: !2307, line: 63, baseType: !351, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2306, file: !2307, line: 64, baseType: !351, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2306, file: !2307, line: 65, baseType: !351, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2306, file: !2307, line: 66, baseType: !351, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2306, file: !2307, line: 68, baseType: !351, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2306, file: !2307, line: 69, baseType: !351, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2306, file: !2307, line: 70, baseType: !351, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2306, file: !2307, line: 71, baseType: !351, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2306, file: !2307, line: 72, baseType: !351, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2306, file: !2307, line: 73, baseType: !351, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2306, file: !2307, line: 74, baseType: !351, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2306, file: !2307, line: 75, baseType: !351, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2306, file: !2307, line: 76, baseType: !351, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2306, file: !2307, line: 81, baseType: !351, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2306, file: !2307, line: 83, baseType: !351, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2306, file: !2307, line: 84, baseType: !351, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 85, baseType: !351, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2306, file: !2307, line: 86, baseType: !351, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2306, file: !2307, line: 87, baseType: !351, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2282, file: !2220, line: 96, baseType: !442, size: 32, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2225, file: !2220, line: 308, baseType: !2332, size: 4608, align: 512)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2220, line: 289, size: 4608, align: 512, elements: !2333)
!2333 = !{!2334, !2335, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2332, file: !2220, line: 290, baseType: !2243, size: 4096, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2332, file: !2220, line: 291, baseType: !2336, size: 512, offset: 4096)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2220, line: 268, size: 512, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2336, file: !2220, line: 269, baseType: !448, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2336, file: !2220, line: 270, baseType: !448, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2336, file: !2220, line: 271, baseType: !2341, size: 384, offset: 128)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !1661)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2332, file: !2220, line: 292, baseType: !2343, offset: 4608)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, elements: !1759)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2225, file: !2220, line: 309, baseType: !2345, size: 32768)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 32768, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 4096)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1244, file: !753, line: 378, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1240, file: !753, line: 384, baseType: !1538, size: 192, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1009, file: !753, line: 500, baseType: !261, offset: 6656)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1009, file: !753, line: 501, baseType: !2353, size: 64, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !753, line: 387, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1009, file: !753, line: 516, baseType: !1749, size: 64, offset: 6720)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1009, file: !753, line: 519, baseType: !379, size: 64, offset: 6784)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1009, file: !753, line: 521, baseType: !2358, size: 64, offset: 6848)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !753, line: 521, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1009, file: !753, line: 545, baseType: !778, size: 32, offset: 6912)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1009, file: !753, line: 548, baseType: !517, size: 8, offset: 6944)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1009, file: !753, line: 550, baseType: !2363, offset: 6952)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2364, line: 142, elements: !275)
!2364 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1009, file: !753, line: 554, baseType: !1995, size: 256, offset: 6976)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1009, file: !753, line: 557, baseType: !442, size: 32, offset: 7232)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1006, file: !753, line: 565, baseType: !2368, offset: 7296)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: -1)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1002, file: !753, line: 151, baseType: !778, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !995, file: !753, line: 156, baseType: !261, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !753, line: 159, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !753, line: 159, size: 128, elements: !2375)
!2375 = !{!2376, !2440}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2374, file: !753, line: 161, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2379)
!2379 = !{!2380, !2390, !2411, !2412, !2413, !2414, !2415, !2427, !2428, !2429}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2378, file: !31, line: 111, baseType: !2381, size: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2382)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2381, file: !31, line: 20, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2381, file: !31, line: 21, baseType: !2384, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2381, file: !31, line: 22, baseType: !2384, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2381, file: !31, line: 23, baseType: !351, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2381, file: !31, line: 24, baseType: !351, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2381, file: !31, line: 25, baseType: !351, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2378, file: !31, line: 112, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2393, line: 105, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2392, file: !2393, line: 110, baseType: !351, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2392, file: !2393, line: 118, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2393, line: 95, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2406, !2407, !2408, !2409, !2410}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2398, file: !2393, line: 96, baseType: !802, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2398, file: !2393, line: 97, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2393, line: 60, baseType: !2404)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2391}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2398, file: !2393, line: 98, baseType: !2402, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2398, file: !2393, line: 99, baseType: !517, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2398, file: !2393, line: 100, baseType: !517, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2398, file: !2393, line: 101, baseType: !392, size: 128, align: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2398, file: !2393, line: 102, baseType: !2391, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2378, file: !31, line: 113, baseType: !2392, size: 128, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2378, file: !31, line: 114, baseType: !1538, size: 192, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2378, file: !31, line: 117, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2425, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2418, file: !31, line: 73, baseType: !871, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2418, file: !31, line: 78, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2377}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2418, file: !31, line: 83, baseType: !2422, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2418, file: !31, line: 89, baseType: !1058, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2378, file: !31, line: 118, baseType: !225, size: 64, offset: 896)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2378, file: !31, line: 119, baseType: !223, size: 32, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !31, line: 120, baseType: !2430, size: 128, offset: 1024)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !31, line: 120, size: 128, elements: !2431)
!2431 = !{!2432, !2438}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2430, file: !31, line: 121, baseType: !2433, size: 128)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2434, line: 6, size: 128, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2433, file: !2434, line: 7, baseType: !448, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2433, file: !2434, line: 8, baseType: !448, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2430, file: !31, line: 122, baseType: !2439)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, elements: !1759)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2374, file: !753, line: 162, baseType: !225, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !757, file: !753, line: 176, baseType: !392, size: 128, align: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !753, line: 179, baseType: !2443, size: 32, offset: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !753, line: 179, size: 32, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2443, file: !753, line: 184, baseType: !778, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2443, file: !753, line: 192, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2443, file: !753, line: 194, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2443, file: !753, line: 195, baseType: !223, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !752, file: !753, line: 199, baseType: !778, size: 32, offset: 416)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !687, file: !44, line: 1964, baseType: !2451, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!224, !626, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2456, line: 12, size: 256, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2455, file: !2456, line: 13, baseType: !774, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2455, file: !2456, line: 16, baseType: !223, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2455, file: !2456, line: 23, baseType: !351, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2455, file: !2456, line: 30, baseType: !351, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2455, file: !2456, line: 33, baseType: !2463, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !753, line: 27, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !687, file: !44, line: 1966, baseType: !2451, size: 64, offset: 1408)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !627, file: !44, line: 1424, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2470)
!2470 = !{!2471, !2517, !2521, !2525, !2526, !2527, !2528, !2529, !2534, !2539, !2543}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2469, file: !38, line: 323, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!223, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2502, !2503, !2504}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2476, file: !38, line: 295, baseType: !669, size: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2476, file: !38, line: 296, baseType: !247, size: 128, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2476, file: !38, line: 297, baseType: !247, size: 128, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2476, file: !38, line: 298, baseType: !247, size: 128, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2476, file: !38, line: 299, baseType: !1204, size: 192, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2476, file: !38, line: 300, baseType: !261, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2476, file: !38, line: 301, baseType: !778, size: 32, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2476, file: !38, line: 302, baseType: !626, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2476, file: !38, line: 303, baseType: !2487, size: 64, offset: 832)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2488)
!2488 = !{!2489, !2501}
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !38, line: 69, baseType: !2490, size: 32)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2487, file: !38, line: 69, size: 32, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2490, file: !38, line: 70, baseType: !462, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2490, file: !38, line: 71, baseType: !470, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2490, file: !38, line: 72, baseType: !2495, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2496, line: 24, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 22, size: 32, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2497, file: !2496, line: 23, baseType: !2500, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2496, line: 20, baseType: !468)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2476, file: !38, line: 304, baseType: !558, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2476, file: !38, line: 305, baseType: !351, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2476, file: !38, line: 306, baseType: !2505, size: 576, offset: 1024)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2506)
!2506 = !{!2507, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2505, file: !38, line: 206, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !560)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2505, file: !38, line: 207, baseType: !2508, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2505, file: !38, line: 208, baseType: !2508, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2505, file: !38, line: 209, baseType: !2508, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2505, file: !38, line: 210, baseType: !2508, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2505, file: !38, line: 211, baseType: !2508, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2505, file: !38, line: 212, baseType: !2508, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2505, file: !38, line: 213, baseType: !566, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2505, file: !38, line: 214, baseType: !566, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2469, file: !38, line: 324, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2475, !626, !223}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2469, file: !38, line: 325, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2475}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2469, file: !38, line: 326, baseType: !2472, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2469, file: !38, line: 327, baseType: !2472, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2469, file: !38, line: 328, baseType: !2472, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2469, file: !38, line: 329, baseType: !715, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2469, file: !38, line: 332, baseType: !2530, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2533, !456}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2469, file: !38, line: 333, baseType: !2535, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!223, !456, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2469, file: !38, line: 335, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!223, !456, !2533}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2469, file: !38, line: 337, baseType: !2544, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!223, !626, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !627, file: !44, line: 1425, baseType: !2549, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2552)
!2552 = !{!2553, !2557, !2558, !2562, !2563, !2564, !2579, !2602, !2606, !2607, !2630}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2551, file: !38, line: 429, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!223, !626, !223, !223, !576}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2551, file: !38, line: 430, baseType: !715, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2551, file: !38, line: 431, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!223, !626, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2551, file: !38, line: 432, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2551, file: !38, line: 433, baseType: !715, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2551, file: !38, line: 434, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!223, !626, !223, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2569, file: !38, line: 416, baseType: !223, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2569, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2569, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2569, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2569, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2569, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2569, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2569, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2551, file: !38, line: 435, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!223, !626, !2487, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2584, file: !38, line: 344, baseType: !223, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2584, file: !38, line: 345, baseType: !448, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2584, file: !38, line: 346, baseType: !448, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2584, file: !38, line: 347, baseType: !448, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2584, file: !38, line: 348, baseType: !448, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2584, file: !38, line: 349, baseType: !448, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2584, file: !38, line: 350, baseType: !448, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2584, file: !38, line: 351, baseType: !808, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2584, file: !38, line: 353, baseType: !808, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2584, file: !38, line: 354, baseType: !223, size: 32, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2584, file: !38, line: 355, baseType: !223, size: 32, offset: 608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2584, file: !38, line: 356, baseType: !448, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2584, file: !38, line: 357, baseType: !448, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2584, file: !38, line: 358, baseType: !448, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2584, file: !38, line: 359, baseType: !808, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2584, file: !38, line: 360, baseType: !223, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2551, file: !38, line: 436, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!223, !626, !2547, !2583}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2551, file: !38, line: 438, baseType: !2580, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2551, file: !38, line: 439, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!223, !626, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2612, file: !38, line: 410, baseType: !7, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2612, file: !38, line: 411, baseType: !2616, size: 1344, offset: 64)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1344, elements: !303)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !38, line: 396, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2617, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2617, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2617, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2617, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2617, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2617, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2617, file: !38, line: 404, baseType: !450, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2617, file: !38, line: 405, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !248, line: 126, baseType: !448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2617, file: !38, line: 406, baseType: !2628, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2551, file: !38, line: 440, baseType: !2559, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !627, file: !44, line: 1426, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !627, file: !44, line: 1427, baseType: !351, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !627, file: !44, line: 1428, baseType: !351, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !627, file: !44, line: 1429, baseType: !351, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !627, file: !44, line: 1430, baseType: !409, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !627, file: !44, line: 1431, baseType: !798, size: 256, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !627, file: !44, line: 1432, baseType: !223, size: 32, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !627, file: !44, line: 1433, baseType: !778, size: 32, offset: 1184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !627, file: !44, line: 1437, baseType: !2643, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !627, file: !44, line: 1449, baseType: !2648, size: 64, offset: 1280)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2648, file: !425, line: 35, baseType: !428, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !627, file: !44, line: 1450, baseType: !247, size: 128, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !627, file: !44, line: 1451, baseType: !2653, size: 64, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !627, file: !44, line: 1452, baseType: !1961, size: 64, offset: 1536)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !627, file: !44, line: 1453, baseType: !2657, size: 64, offset: 1600)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !627, file: !44, line: 1454, baseType: !669, size: 128, offset: 1664)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !627, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !627, file: !44, line: 1456, baseType: !2662, size: 2432, offset: 1856)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !38, line: 519, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !38, line: 520, baseType: !798, size: 256, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !38, line: 521, baseType: !2667, size: 192, offset: 320)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, elements: !303)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !38, line: 522, baseType: !2669, size: 1728, offset: 512)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !303)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !38, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !38, line: 444, baseType: !223, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !38, line: 445, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !38, line: 311, baseType: !715, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !38, line: 312, baseType: !715, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !38, line: 313, baseType: !715, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !38, line: 314, baseType: !715, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !38, line: 315, baseType: !2472, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !38, line: 316, baseType: !2472, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !38, line: 317, baseType: !2472, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !38, line: 318, baseType: !2544, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !38, line: 446, baseType: !660, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !38, line: 447, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !38, line: 224, baseType: !223, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !38, line: 226, baseType: !247, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !38, line: 227, baseType: !351, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !38, line: 230, baseType: !2508, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !38, line: 231, baseType: !2508, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !38, line: 232, baseType: !225, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !38, line: 523, baseType: !2701, size: 192, offset: 2240)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !303)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !627, file: !44, line: 1458, baseType: !2703, size: 2112, offset: 4288)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !44, line: 1411, baseType: !223, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2703, file: !44, line: 1412, baseType: !1517, size: 128, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !44, line: 1413, baseType: !2708, size: 1920, offset: 192)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1920, elements: !303)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 640, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2720, !2722, !2727, !2728}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 320)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 320, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !223, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !223, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !1517, size: 128, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !392, size: 128, align: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2723, size: 64, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2724, line: 16, size: 64, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2723, file: !2724, line: 17, baseType: !1247, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !1517, size: 128, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !778, size: 32, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !627, file: !44, line: 1465, baseType: !225, size: 64, offset: 6400)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !627, file: !44, line: 1468, baseType: !442, size: 32, offset: 6464)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !627, file: !44, line: 1470, baseType: !566, size: 64, offset: 6528)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !627, file: !44, line: 1471, baseType: !566, size: 64, offset: 6592)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !627, file: !44, line: 1473, baseType: !444, size: 32, offset: 6656)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !627, file: !44, line: 1474, baseType: !2735, size: 64, offset: 6720)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !627, file: !44, line: 1477, baseType: !2738, size: 256, offset: 6784)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !2268)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !627, file: !44, line: 1478, baseType: !2740, size: 128, offset: 7040)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2741, line: 18, baseType: !2742)
!2741 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2741, line: 16, size: 128, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2742, file: !2741, line: 17, baseType: !2745, size: 128)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 128, elements: !1771)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !627, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !627, file: !44, line: 1481, baseType: !2748, size: 32, offset: 7200)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !248, line: 150, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !627, file: !44, line: 1487, baseType: !1204, size: 192, offset: 7232)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !627, file: !44, line: 1493, baseType: !243, size: 64, offset: 7424)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !627, file: !44, line: 1495, baseType: !2752, size: 64, offset: 7488)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 135, size: 1024, align: 512, elements: !2755)
!2755 = !{!2756, !2760, !2761, !2768, !2774, !2778, !2782, !2786, !2787, !2791, !2795, !2800, !2804}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2754, file: !407, line: 136, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!223, !409, !7}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2754, file: !407, line: 137, baseType: !2757, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2754, file: !407, line: 138, baseType: !2762, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!223, !2765, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2754, file: !407, line: 139, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!223, !2765, !7, !243, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2754, file: !407, line: 141, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!223, !2765}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2754, file: !407, line: 142, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!223, !409}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2754, file: !407, line: 143, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !409}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2754, file: !407, line: 144, baseType: !2783, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2754, file: !407, line: 145, baseType: !2788, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !409, !456}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2754, file: !407, line: 146, baseType: !2792, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!302, !409, !302, !223}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2754, file: !407, line: 147, baseType: !2796, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!405, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2754, file: !407, line: 148, baseType: !2801, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!223, !576, !517}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2754, file: !407, line: 149, baseType: !2805, size: 64, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!409, !409, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !627, file: !44, line: 1500, baseType: !223, size: 32, offset: 7552)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !627, file: !44, line: 1502, baseType: !2812, size: 448, offset: 7616)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2456, line: 60, size: 448, elements: !2813)
!2813 = !{!2814, !2819, !2820, !2821, !2822, !2823, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2812, file: !2456, line: 61, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!351, !2818, !2454}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2812, file: !2456, line: 63, baseType: !2815, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2812, file: !2456, line: 66, baseType: !224, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2812, file: !2456, line: 67, baseType: !223, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2456, line: 68, baseType: !7, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2456, line: 71, baseType: !247, size: 128, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2812, file: !2456, line: 77, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !627, file: !44, line: 1505, baseType: !802, size: 64, offset: 8064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !627, file: !44, line: 1508, baseType: !802, size: 64, offset: 8128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !627, file: !44, line: 1511, baseType: !223, size: 32, offset: 8192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !627, file: !44, line: 1514, baseType: !940, size: 32, offset: 8224)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !627, file: !44, line: 1517, baseType: !2831, size: 64, offset: 8256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1996, line: 18, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !627, file: !44, line: 1518, baseType: !665, size: 64, offset: 8320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !627, file: !44, line: 1525, baseType: !1749, size: 64, offset: 8384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !627, file: !44, line: 1532, baseType: !2836, size: 64, offset: 8448)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2837, line: 52, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2836, file: !2837, line: 53, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2837, line: 40, size: 256, elements: !2842)
!2842 = !{!2843, !2844, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !2837, line: 42, baseType: !261)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2841, file: !2837, line: 44, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2837, line: 28, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2837, line: 29, baseType: !247, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2845, file: !2837, line: 31, baseType: !224, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2841, file: !2837, line: 49, baseType: !224, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !627, file: !44, line: 1533, baseType: !2836, size: 64, offset: 8512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !627, file: !44, line: 1534, baseType: !392, size: 128, align: 64, offset: 8576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !627, file: !44, line: 1535, baseType: !1995, size: 256, offset: 8704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !627, file: !44, line: 1537, baseType: !1204, size: 192, offset: 8960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !627, file: !44, line: 1542, baseType: !223, size: 32, offset: 9152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !627, file: !44, line: 1545, baseType: !261, offset: 9184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !627, file: !44, line: 1546, baseType: !247, size: 128, offset: 9216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !627, file: !44, line: 1548, baseType: !261, offset: 9344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !627, file: !44, line: 1549, baseType: !247, size: 128, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !457, file: !44, line: 624, baseType: !764, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !457, file: !44, line: 631, baseType: !351, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !44, line: 639, baseType: !2862, size: 32, offset: 384)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !44, line: 639, size: 32, elements: !2863)
!2863 = !{!2864, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2862, file: !44, line: 640, baseType: !2865, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2862, file: !44, line: 641, baseType: !7, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !457, file: !44, line: 643, baseType: !540, size: 32, offset: 416)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !457, file: !44, line: 644, baseType: !558, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !457, file: !44, line: 645, baseType: !562, size: 128, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !457, file: !44, line: 646, baseType: !562, size: 128, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !457, file: !44, line: 647, baseType: !562, size: 128, offset: 768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !457, file: !44, line: 648, baseType: !261, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !457, file: !44, line: 649, baseType: !343, size: 16, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !457, file: !44, line: 650, baseType: !1383, size: 8, offset: 912)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !457, file: !44, line: 651, baseType: !1383, size: 8, offset: 920)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !457, file: !44, line: 652, baseType: !2628, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !457, file: !44, line: 659, baseType: !351, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !457, file: !44, line: 660, baseType: !798, size: 256, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !457, file: !44, line: 662, baseType: !351, size: 64, offset: 1344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !457, file: !44, line: 663, baseType: !351, size: 64, offset: 1408)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !457, file: !44, line: 665, baseType: !669, size: 128, offset: 1472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !457, file: !44, line: 666, baseType: !247, size: 128, offset: 1600)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !457, file: !44, line: 675, baseType: !247, size: 128, offset: 1728)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !457, file: !44, line: 676, baseType: !247, size: 128, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !457, file: !44, line: 677, baseType: !247, size: 128, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !44, line: 678, baseType: !2887, size: 128, offset: 2112)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !44, line: 678, size: 128, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2887, file: !44, line: 679, baseType: !665, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2887, file: !44, line: 680, baseType: !392, size: 128, align: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !457, file: !44, line: 682, baseType: !804, size: 64, offset: 2240)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !457, file: !44, line: 683, baseType: !804, size: 64, offset: 2304)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !457, file: !44, line: 684, baseType: !778, size: 32, offset: 2368)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !457, file: !44, line: 685, baseType: !778, size: 32, offset: 2400)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !457, file: !44, line: 686, baseType: !778, size: 32, offset: 2432)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !457, file: !44, line: 688, baseType: !778, size: 32, offset: 2464)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !44, line: 690, baseType: !2898, size: 64, offset: 2496)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !44, line: 690, size: 64, elements: !2899)
!2899 = !{!2900, !3132}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2898, file: !44, line: 691, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2904)
!2904 = !{!2905, !2906, !2910, !2915, !2919, !2920, !2921, !2925, !2938, !2939, !2956, !2960, !2961, !2965, !2966, !2970, !2975, !2976, !2980, !2984, !3092, !3096, !3097, !3101, !3102, !3106, !3110, !3115, !3119, !3123, !3127, !3131}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2903, file: !44, line: 1823, baseType: !660, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2903, file: !44, line: 1824, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!558, !379, !558, !223}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2903, file: !44, line: 1825, baseType: !2911, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!333, !379, !302, !348, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2903, file: !44, line: 1826, baseType: !2916, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!333, !379, !243, !348, !2914}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2903, file: !44, line: 1827, baseType: !875, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2903, file: !44, line: 1828, baseType: !875, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2903, file: !44, line: 1829, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!223, !878, !517}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2903, file: !44, line: 1830, baseType: !2926, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!223, !379, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2931)
!2931 = !{!2932, !2937}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2930, file: !44, line: 1777, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!223, !2929, !243, !223, !558, !448, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2930, file: !44, line: 1778, baseType: !558, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2903, file: !44, line: 1831, baseType: !2926, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2903, file: !44, line: 1832, baseType: !2940, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!2943, !379, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2944, line: 52, baseType: !7)
!2944 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2947, line: 43, size: 128, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2948 = !{!2949, !2955}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2946, file: !2947, line: 44, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2947, line: 37, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !379, !2954, !2945}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2946, file: !2947, line: 45, baseType: !2943, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2903, file: !44, line: 1833, baseType: !2957, size: 64, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!224, !379, !7, !351}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2903, file: !44, line: 1834, baseType: !2957, size: 64, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2903, file: !44, line: 1835, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!223, !379, !1012}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2903, file: !44, line: 1836, baseType: !351, size: 64, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2903, file: !44, line: 1837, baseType: !2967, size: 64, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!223, !456, !379}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2903, file: !44, line: 1838, baseType: !2971, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!223, !379, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !225)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2903, file: !44, line: 1839, baseType: !2967, size: 64, offset: 1024)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2903, file: !44, line: 1840, baseType: !2977, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!223, !379, !558, !558, !223}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2903, file: !44, line: 1841, baseType: !2981, size: 64, offset: 1152)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!223, !223, !379, !223}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !44, line: 1842, baseType: !2985, size: 64, offset: 1216)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!223, !379, !223, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3022, !3023, !3024, !3037, !3068}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2989, file: !44, line: 1063, baseType: !2988, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2989, file: !44, line: 1064, baseType: !247, size: 128, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2989, file: !44, line: 1065, baseType: !669, size: 128, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2989, file: !44, line: 1066, baseType: !247, size: 128, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2989, file: !44, line: 1069, baseType: !247, size: 128, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2989, file: !44, line: 1072, baseType: !2974, size: 64, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2989, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2989, file: !44, line: 1074, baseType: !454, size: 8, offset: 672)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2989, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2989, file: !44, line: 1076, baseType: !223, size: 32, offset: 736)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2989, file: !44, line: 1077, baseType: !1517, size: 128, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2989, file: !44, line: 1078, baseType: !379, size: 64, offset: 896)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2989, file: !44, line: 1079, baseType: !558, size: 64, offset: 960)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2989, file: !44, line: 1080, baseType: !558, size: 64, offset: 1024)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2989, file: !44, line: 1082, baseType: !3006, size: 64, offset: 1088)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3008)
!3008 = !{!3009, !3017, !3018, !3019, !3020, !3021}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3007, file: !44, line: 1315, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3011, line: 20, baseType: !3012)
!3011 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3011, line: 11, elements: !3013)
!3013 = !{!3014}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3012, file: !3011, line: 12, baseType: !3015)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !273, line: 33, baseType: !3016)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 31, elements: !275)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3007, file: !44, line: 1316, baseType: !223, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3007, file: !44, line: 1317, baseType: !223, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3007, file: !44, line: 1318, baseType: !3006, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3007, file: !44, line: 1319, baseType: !379, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3007, file: !44, line: 1320, baseType: !392, size: 128, align: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2989, file: !44, line: 1084, baseType: !351, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2989, file: !44, line: 1085, baseType: !351, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2989, file: !44, line: 1087, baseType: !3025, size: 64, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3028)
!3028 = !{!3029, !3033}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3027, file: !44, line: 1012, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2988, !2988}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3027, file: !44, line: 1013, baseType: !3034, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2988}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2989, file: !44, line: 1088, baseType: !3038, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3041)
!3041 = !{!3042, !3046, !3050, !3051, !3055, !3059, !3063, !3067}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3040, file: !44, line: 1017, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!2974, !2974}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3040, file: !44, line: 1018, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !2974}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3040, file: !44, line: 1019, baseType: !3034, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3040, file: !44, line: 1020, baseType: !3052, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!223, !2988, !223}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3040, file: !44, line: 1021, baseType: !3056, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!517, !2988}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3040, file: !44, line: 1022, baseType: !3060, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!223, !2988, !223, !251}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3040, file: !44, line: 1023, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !2988, !852}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3040, file: !44, line: 1024, baseType: !3056, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2989, file: !44, line: 1097, baseType: !3069, size: 256, offset: 1408)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2989, file: !44, line: 1089, size: 256, elements: !3070)
!3070 = !{!3071, !3080, !3086}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3069, file: !44, line: 1090, baseType: !3072, size: 256)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3073, line: 10, size: 256, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !{!3075, !3076, !3079}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3072, file: !3073, line: 11, baseType: !442, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3072, file: !3073, line: 12, baseType: !3077, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3073, line: 5, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3072, file: !3073, line: 13, baseType: !247, size: 128, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3069, file: !44, line: 1091, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3073, line: 17, size: 64, elements: !3082)
!3082 = !{!3083}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3081, file: !3073, line: 18, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3073, line: 16, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3069, file: !44, line: 1096, baseType: !3087, size: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !44, line: 1092, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3087, file: !44, line: 1093, baseType: !247, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3087, file: !44, line: 1094, baseType: !223, size: 32, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3087, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2903, file: !44, line: 1843, baseType: !3093, size: 64, offset: 1280)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!333, !379, !751, !223, !348, !2914, !223}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2903, file: !44, line: 1844, baseType: !1132, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2903, file: !44, line: 1845, baseType: !3098, size: 64, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!223, !223}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2903, file: !44, line: 1846, baseType: !2985, size: 64, offset: 1472)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2903, file: !44, line: 1847, baseType: !3103, size: 64, offset: 1536)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!333, !2136, !379, !2914, !348, !7}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2903, file: !44, line: 1848, baseType: !3107, size: 64, offset: 1600)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!333, !379, !2914, !2136, !348, !7}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2903, file: !44, line: 1849, baseType: !3111, size: 64, offset: 1664)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!223, !379, !224, !3114, !852}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2903, file: !44, line: 1850, baseType: !3116, size: 64, offset: 1728)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!224, !379, !223, !558, !558}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2903, file: !44, line: 1852, baseType: !3120, size: 64, offset: 1792)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !741, !379}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2903, file: !44, line: 1856, baseType: !3124, size: 64, offset: 1856)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!333, !379, !558, !379, !558, !348, !7}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2903, file: !44, line: 1858, baseType: !3128, size: 64, offset: 1920)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!558, !379, !558, !379, !558, !558, !7}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2903, file: !44, line: 1861, baseType: !2977, size: 64, offset: 1984)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2898, file: !44, line: 692, baseType: !694, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !457, file: !44, line: 694, baseType: !3134, size: 64, offset: 2560)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3135, file: !44, line: 1101, baseType: !261)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3135, file: !44, line: 1102, baseType: !247, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3135, file: !44, line: 1103, baseType: !247, size: 128, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3135, file: !44, line: 1104, baseType: !247, size: 128, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !457, file: !44, line: 695, baseType: !765, size: 1216, align: 64, offset: 2624)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !457, file: !44, line: 696, baseType: !247, size: 128, offset: 3840)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !44, line: 697, baseType: !3144, size: 64, offset: 3968)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !44, line: 697, size: 64, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3159, !3160}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3144, file: !44, line: 698, baseType: !2136, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3144, file: !44, line: 699, baseType: !2653, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3144, file: !44, line: 700, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3151, line: 14, size: 832, elements: !3152)
!3151 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3158}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3150, file: !3151, line: 15, baseType: !239, size: 512)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3150, file: !3151, line: 16, baseType: !660, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3150, file: !3151, line: 17, baseType: !2901, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3150, file: !3151, line: 18, baseType: !247, size: 128, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3150, file: !3151, line: 19, baseType: !540, size: 32, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3150, file: !3151, line: 20, baseType: !7, size: 32, offset: 800)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3144, file: !44, line: 701, baseType: !302, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3144, file: !44, line: 702, baseType: !7, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !457, file: !44, line: 705, baseType: !444, size: 32, offset: 4032)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !457, file: !44, line: 708, baseType: !444, size: 32, offset: 4064)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !457, file: !44, line: 709, baseType: !2735, size: 64, offset: 4096)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !457, file: !44, line: 720, baseType: !225, size: 64, offset: 4160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !410, file: !407, line: 98, baseType: !3166, size: 256, offset: 448)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 256, elements: !2268)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !410, file: !407, line: 101, baseType: !3168, size: 32, offset: 704)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3169, line: 25, size: 32, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3169, line: 26, baseType: !3172, size: 32)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3169, line: 26, size: 32, elements: !3173)
!3173 = !{!3174}
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3169, line: 30, baseType: !3175, size: 32)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3169, line: 30, size: 32, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3175, file: !3169, line: 31, baseType: !261)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3175, file: !3169, line: 32, baseType: !223, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !410, file: !407, line: 102, baseType: !2752, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !410, file: !407, line: 103, baseType: !626, size: 64, offset: 832)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !410, file: !407, line: 104, baseType: !351, size: 64, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !410, file: !407, line: 105, baseType: !225, size: 64, offset: 960)
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 107, baseType: !3184, size: 128, offset: 1024)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 107, size: 128, elements: !3185)
!3185 = !{!3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3184, file: !407, line: 108, baseType: !247, size: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3184, file: !407, line: 109, baseType: !2954, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !410, file: !407, line: 111, baseType: !247, size: 128, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !410, file: !407, line: 112, baseType: !247, size: 128, offset: 1280)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !410, file: !407, line: 120, baseType: !3191, size: 128, offset: 1408)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 116, size: 128, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3191, file: !407, line: 117, baseType: !669, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3191, file: !407, line: 118, baseType: !424, size: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3191, file: !407, line: 119, baseType: !392, size: 128, align: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !380, file: !44, line: 922, baseType: !456, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !380, file: !44, line: 923, baseType: !2901, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !380, file: !44, line: 929, baseType: !261, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !380, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !380, file: !44, line: 931, baseType: !802, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !380, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !380, file: !44, line: 933, baseType: !2748, size: 32, offset: 544)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !380, file: !44, line: 934, baseType: !1204, size: 192, offset: 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !380, file: !44, line: 935, baseType: !558, size: 64, offset: 768)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !380, file: !44, line: 936, baseType: !3206, size: 192, offset: 832)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3206, file: !44, line: 886, baseType: !3010)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3206, file: !44, line: 887, baseType: !1507, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3206, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3206, file: !44, line: 889, baseType: !462, size: 32, offset: 96)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3206, file: !44, line: 889, baseType: !462, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3206, file: !44, line: 890, baseType: !223, size: 32, offset: 160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !380, file: !44, line: 937, baseType: !1583, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !380, file: !44, line: 938, baseType: !3216, size: 256, offset: 1088)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3216, file: !44, line: 897, baseType: !351, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3216, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3216, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3216, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3216, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3216, file: !44, line: 904, baseType: !558, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !380, file: !44, line: 940, baseType: !448, size: 64, offset: 1344)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !380, file: !44, line: 945, baseType: !225, size: 64, offset: 1408)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !380, file: !44, line: 949, baseType: !247, size: 128, offset: 1472)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !380, file: !44, line: 950, baseType: !247, size: 128, offset: 1600)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !44, line: 952, baseType: !764, size: 64, offset: 1728)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !380, file: !44, line: 953, baseType: !940, size: 32, offset: 1792)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !380, file: !44, line: 954, baseType: !940, size: 32, offset: 1824)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !327, line: 174, baseType: !376, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !327, line: 176, baseType: !3233, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!223, !379, !254, !369, !1012}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !358, file: !327, line: 90, baseType: !353, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !358, file: !327, line: 91, baseType: !3238, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !317, file: !240, line: 143, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!3243, !254}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3246)
!3246 = !{!3247, !3248, !3252, !3256, !3262, !3266}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3245, file: !61, line: 40, baseType: !60, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3245, file: !61, line: 41, baseType: !3249, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!517}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3245, file: !61, line: 42, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!225}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3245, file: !61, line: 43, baseType: !3257, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2165, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3245, file: !61, line: 44, baseType: !3263, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!2165}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3245, file: !61, line: 45, baseType: !495, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !317, file: !240, line: 144, baseType: !3268, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!2165, !254}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !317, file: !240, line: 145, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !254, !3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !239, file: !240, line: 70, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !646, line: 123, size: 1024, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3409, !3410, !3411, !3412, !3413}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3279, file: !646, line: 124, baseType: !778, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3279, file: !646, line: 125, baseType: !778, size: 32, offset: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3279, file: !646, line: 135, baseType: !3278, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3279, file: !646, line: 136, baseType: !243, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3279, file: !646, line: 138, baseType: !791, size: 192, align: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3279, file: !646, line: 140, baseType: !2165, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3279, file: !646, line: 141, baseType: !7, size: 32, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !646, line: 142, baseType: !3289, size: 256, offset: 512)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3279, file: !646, line: 142, size: 256, elements: !3290)
!3290 = !{!3291, !3337, !3341}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3289, file: !646, line: 143, baseType: !3292, size: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !646, line: 91, size: 192, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3292, file: !646, line: 92, baseType: !351, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3292, file: !646, line: 94, baseType: !787, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3292, file: !646, line: 100, baseType: !3297, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !646, line: 180, size: 704, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3309, !3310, !3311, !3335, !3336}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3298, file: !646, line: 182, baseType: !3278, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3298, file: !646, line: 183, baseType: !7, size: 32, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3298, file: !646, line: 186, baseType: !3303, size: 192, offset: 128)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3304, line: 19, size: 192, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3305 = !{!3306, !3307, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3303, file: !3304, line: 20, baseType: !769, size: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3303, file: !3304, line: 21, baseType: !7, size: 32, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3303, file: !3304, line: 22, baseType: !7, size: 32, offset: 160)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3298, file: !646, line: 187, baseType: !442, size: 32, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3298, file: !646, line: 188, baseType: !442, size: 32, offset: 352)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3298, file: !646, line: 189, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !646, line: 168, size: 320, elements: !3314)
!3314 = !{!3315, !3319, !3323, !3327, !3331}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3313, file: !646, line: 169, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!223, !741, !3297}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3313, file: !646, line: 171, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!223, !3278, !243, !342}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3313, file: !646, line: 173, baseType: !3324, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!223, !3278}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3313, file: !646, line: 174, baseType: !3328, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!223, !3278, !3278, !243}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3313, file: !646, line: 176, baseType: !3332, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!223, !741, !3278, !3297}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3298, file: !646, line: 192, baseType: !247, size: 128, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3298, file: !646, line: 194, baseType: !1517, size: 128, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3289, file: !646, line: 144, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !646, line: 103, size: 64, elements: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3338, file: !646, line: 104, baseType: !3278, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3289, file: !646, line: 145, baseType: !3342, size: 256)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !646, line: 107, size: 256, elements: !3343)
!3343 = !{!3344, !3404, !3407, !3408}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3342, file: !646, line: 108, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3347)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !646, line: 217, size: 768, elements: !3348)
!3348 = !{!3349, !3369, !3373, !3377, !3381, !3385, !3389, !3393, !3394, !3395, !3396, !3400}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3347, file: !646, line: 222, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!223, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !646, line: 197, size: 1088, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3354, file: !646, line: 199, baseType: !3278, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3354, file: !646, line: 200, baseType: !379, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3354, file: !646, line: 201, baseType: !741, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3354, file: !646, line: 202, baseType: !225, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3354, file: !646, line: 205, baseType: !1204, size: 192, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3354, file: !646, line: 206, baseType: !1204, size: 192, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3354, file: !646, line: 207, baseType: !223, size: 32, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3354, file: !646, line: 208, baseType: !247, size: 128, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3354, file: !646, line: 209, baseType: !302, size: 64, offset: 832)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3354, file: !646, line: 211, baseType: !348, size: 64, offset: 896)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3354, file: !646, line: 212, baseType: !517, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3354, file: !646, line: 213, baseType: !517, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3354, file: !646, line: 214, baseType: !1040, size: 64, offset: 1024)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3347, file: !646, line: 223, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3353}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3347, file: !646, line: 236, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!223, !741, !225}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3347, file: !646, line: 238, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!225, !741, !2914}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3347, file: !646, line: 239, baseType: !3382, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!225, !741, !225, !2914}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3347, file: !646, line: 240, baseType: !3386, size: 64, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !741, !225}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3347, file: !646, line: 242, baseType: !3390, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!333, !3353, !302, !348, !558}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3347, file: !646, line: 252, baseType: !348, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3347, file: !646, line: 259, baseType: !517, size: 8, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3347, file: !646, line: 260, baseType: !3390, size: 64, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3347, file: !646, line: 263, baseType: !3397, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!2943, !3353, !2945}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3347, file: !646, line: 266, baseType: !3401, size: 64, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!223, !3353, !1012}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3342, file: !646, line: 109, baseType: !3405, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !646, line: 31, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3342, file: !646, line: 110, baseType: !558, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3342, file: !646, line: 111, baseType: !3278, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3279, file: !646, line: 148, baseType: !225, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3279, file: !646, line: 154, baseType: !448, size: 64, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3279, file: !646, line: 156, baseType: !343, size: 16, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3279, file: !646, line: 157, baseType: !342, size: 16, offset: 912)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3279, file: !646, line: 158, baseType: !3414, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !646, line: 32, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !239, file: !240, line: 71, baseType: !3417, size: 32, offset: 448)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3418, line: 19, size: 32, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3417, file: !3418, line: 20, baseType: !1261, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !239, file: !240, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !239, file: !240, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !239, file: !240, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !239, file: !240, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !239, file: !240, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !73, line: 463, baseType: !235, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !236, file: !73, line: 465, baseType: !3428, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !236, file: !73, line: 467, baseType: !243, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !73, line: 468, baseType: !3432, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3442, !3447, !3451}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3434, file: !73, line: 88, baseType: !243, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3434, file: !73, line: 89, baseType: !355, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3434, file: !73, line: 90, baseType: !3439, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!223, !235, !297}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3434, file: !73, line: 91, baseType: !3443, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!302, !235, !3446, !3275, !3276}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3434, file: !73, line: 93, baseType: !3448, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !235}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3434, file: !73, line: 95, baseType: !3452, size: 64, offset: 320)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3455)
!3455 = !{!3456, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3454, file: !80, line: 279, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!223, !235}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3454, file: !80, line: 280, baseType: !3448, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3454, file: !80, line: 281, baseType: !3457, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3454, file: !80, line: 282, baseType: !3457, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3454, file: !80, line: 283, baseType: !3457, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3454, file: !80, line: 284, baseType: !3457, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3454, file: !80, line: 285, baseType: !3457, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3454, file: !80, line: 286, baseType: !3457, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3454, file: !80, line: 287, baseType: !3457, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3454, file: !80, line: 288, baseType: !3457, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3454, file: !80, line: 289, baseType: !3457, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3454, file: !80, line: 290, baseType: !3457, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3454, file: !80, line: 291, baseType: !3457, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3454, file: !80, line: 292, baseType: !3457, size: 64, offset: 832)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3454, file: !80, line: 293, baseType: !3457, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3454, file: !80, line: 294, baseType: !3457, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3454, file: !80, line: 295, baseType: !3457, size: 64, offset: 1024)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3454, file: !80, line: 296, baseType: !3457, size: 64, offset: 1088)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3454, file: !80, line: 297, baseType: !3457, size: 64, offset: 1152)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3454, file: !80, line: 298, baseType: !3457, size: 64, offset: 1216)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3454, file: !80, line: 299, baseType: !3457, size: 64, offset: 1280)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3454, file: !80, line: 300, baseType: !3457, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3454, file: !80, line: 301, baseType: !3457, size: 64, offset: 1408)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !236, file: !73, line: 470, baseType: !3483, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3485, line: 82, size: 1408, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3568, !3571, !3572}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3484, file: !3485, line: 83, baseType: !243, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3484, file: !3485, line: 84, baseType: !243, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3484, file: !3485, line: 85, baseType: !235, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3484, file: !3485, line: 86, baseType: !355, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3484, file: !3485, line: 87, baseType: !355, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3484, file: !3485, line: 88, baseType: !355, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3484, file: !3485, line: 90, baseType: !3494, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!223, !235, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3519, !3532, !3533, !3534, !3535, !3536, !3544, !3545, !3546, !3547, !3548, !3549}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3498, file: !67, line: 96, baseType: !243, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3498, file: !67, line: 97, baseType: !3483, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3498, file: !67, line: 99, baseType: !660, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3498, file: !67, line: 100, baseType: !243, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3498, file: !67, line: 102, baseType: !517, size: 8, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3498, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3498, file: !67, line: 105, baseType: !3507, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3510, line: 262, size: 1600, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3511 = !{!3512, !3513, !3514, !3518}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3509, file: !3510, line: 263, baseType: !2738, size: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3509, file: !3510, line: 264, baseType: !2738, size: 256, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3509, file: !3510, line: 265, baseType: !3515, size: 1024, offset: 512)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !3516)
!3516 = !{!3517}
!3517 = !DISubrange(count: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3509, file: !3510, line: 266, baseType: !2165, size: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3498, file: !67, line: 106, baseType: !3520, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3510, line: 210, size: 256, elements: !3523)
!3523 = !{!3524, !3528, !3530, !3531}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3522, file: !3510, line: 211, baseType: !3525, size: 72)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 72, elements: !3526)
!3526 = !{!3527}
!3527 = !DISubrange(count: 9)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3522, file: !3510, line: 212, baseType: !3529, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3510, line: 14, baseType: !351)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3522, file: !3510, line: 213, baseType: !444, size: 32, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3522, file: !3510, line: 214, baseType: !444, size: 32, offset: 224)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3498, file: !67, line: 108, baseType: !3457, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3498, file: !67, line: 109, baseType: !3448, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3498, file: !67, line: 110, baseType: !3457, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3498, file: !67, line: 111, baseType: !3448, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3498, file: !67, line: 112, baseType: !3537, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!223, !235, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3542)
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3541, file: !80, line: 51, baseType: !223, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3498, file: !67, line: 113, baseType: !3457, size: 64, offset: 768)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3498, file: !67, line: 114, baseType: !355, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3498, file: !67, line: 115, baseType: !355, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3498, file: !67, line: 117, baseType: !3452, size: 64, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3498, file: !67, line: 118, baseType: !3448, size: 64, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3498, file: !67, line: 120, baseType: !3550, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3484, file: !3485, line: 91, baseType: !3439, size: 64, offset: 448)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3484, file: !3485, line: 92, baseType: !3457, size: 64, offset: 512)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3484, file: !3485, line: 93, baseType: !3448, size: 64, offset: 576)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3484, file: !3485, line: 94, baseType: !3457, size: 64, offset: 640)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3484, file: !3485, line: 95, baseType: !3448, size: 64, offset: 704)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3484, file: !3485, line: 97, baseType: !3457, size: 64, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3484, file: !3485, line: 98, baseType: !3457, size: 64, offset: 832)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3484, file: !3485, line: 100, baseType: !3537, size: 64, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3484, file: !3485, line: 101, baseType: !3457, size: 64, offset: 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3484, file: !3485, line: 103, baseType: !3457, size: 64, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3484, file: !3485, line: 105, baseType: !3457, size: 64, offset: 1088)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3484, file: !3485, line: 107, baseType: !3452, size: 64, offset: 1152)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3484, file: !3485, line: 109, baseType: !3565, size: 64, offset: 1216)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3567)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3485, line: 109, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3484, file: !3485, line: 111, baseType: !3569, size: 64, offset: 1280)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3485, line: 111, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3484, file: !3485, line: 112, baseType: !675, offset: 1344)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3484, file: !3485, line: 114, baseType: !517, size: 8, offset: 1344)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !73, line: 471, baseType: !3497, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !236, file: !73, line: 473, baseType: !225, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !73, line: 475, baseType: !225, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !73, line: 480, baseType: !1204, size: 192, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !73, line: 484, baseType: !3578, size: 576, offset: 1216)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3578, file: !73, line: 362, baseType: !247, size: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3578, file: !73, line: 363, baseType: !247, size: 128, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3578, file: !73, line: 364, baseType: !247, size: 128, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3578, file: !73, line: 365, baseType: !247, size: 128, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3578, file: !73, line: 366, baseType: !517, size: 8, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3578, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !236, file: !73, line: 485, baseType: !3587, size: 2304, offset: 1792)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3684, !3688}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3587, file: !80, line: 566, baseType: !3540, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3587, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3587, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3587, file: !80, line: 569, baseType: !517, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3587, file: !80, line: 570, baseType: !517, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3587, file: !80, line: 571, baseType: !517, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3587, file: !80, line: 572, baseType: !517, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3587, file: !80, line: 573, baseType: !517, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3587, file: !80, line: 574, baseType: !517, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3587, file: !80, line: 575, baseType: !517, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3587, file: !80, line: 576, baseType: !517, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3587, file: !80, line: 577, baseType: !442, size: 32, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3587, file: !80, line: 578, baseType: !261, offset: 96)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3587, file: !80, line: 580, baseType: !247, size: 128, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3587, file: !80, line: 581, baseType: !1538, size: 192, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3587, file: !80, line: 582, baseType: !3605, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3607, line: 43, size: 1472, elements: !3608)
!3607 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3616, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3606, file: !3607, line: 44, baseType: !243, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3606, file: !3607, line: 45, baseType: !223, size: 32, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3606, file: !3607, line: 46, baseType: !247, size: 128, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3606, file: !3607, line: 47, baseType: !261, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3606, file: !3607, line: 48, baseType: !3614, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3606, file: !3607, line: 49, baseType: !3617, size: 320, offset: 320)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3618, line: 11, size: 320, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3619 = !{!3620, !3621, !3622, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3617, file: !3618, line: 16, baseType: !669, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3617, file: !3618, line: 17, baseType: !351, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3617, file: !3618, line: 18, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3617, file: !3618, line: 19, baseType: !442, size: 32, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3606, file: !3607, line: 50, baseType: !351, size: 64, offset: 640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3606, file: !3607, line: 51, baseType: !1331, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3606, file: !3607, line: 52, baseType: !1331, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3606, file: !3607, line: 53, baseType: !1331, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3606, file: !3607, line: 54, baseType: !1331, size: 64, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3606, file: !3607, line: 55, baseType: !1331, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3606, file: !3607, line: 56, baseType: !351, size: 64, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3606, file: !3607, line: 57, baseType: !351, size: 64, offset: 1088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3606, file: !3607, line: 58, baseType: !351, size: 64, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3606, file: !3607, line: 59, baseType: !351, size: 64, offset: 1216)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3606, file: !3607, line: 60, baseType: !351, size: 64, offset: 1280)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3606, file: !3607, line: 61, baseType: !235, size: 64, offset: 1344)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3606, file: !3607, line: 62, baseType: !517, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3606, file: !3607, line: 63, baseType: !517, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3587, file: !80, line: 583, baseType: !517, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3587, file: !80, line: 584, baseType: !517, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3587, file: !80, line: 585, baseType: !517, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3587, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3587, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3587, file: !80, line: 592, baseType: !1323, size: 512, offset: 576)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3587, file: !80, line: 593, baseType: !448, size: 64, offset: 1088)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3587, file: !80, line: 594, baseType: !1995, size: 256, offset: 1152)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3587, file: !80, line: 595, baseType: !1517, size: 128, offset: 1408)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3587, file: !80, line: 596, baseType: !3614, size: 64, offset: 1536)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3587, file: !80, line: 597, baseType: !778, size: 32, offset: 1600)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3587, file: !80, line: 598, baseType: !778, size: 32, offset: 1632)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3587, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3587, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3587, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3587, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3587, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3587, file: !80, line: 604, baseType: !517, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3587, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3587, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3587, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3587, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3587, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3587, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3587, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3587, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3587, file: !80, line: 613, baseType: !223, size: 32, offset: 1792)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3587, file: !80, line: 614, baseType: !223, size: 32, offset: 1824)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3587, file: !80, line: 615, baseType: !448, size: 64, offset: 1856)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3587, file: !80, line: 616, baseType: !448, size: 64, offset: 1920)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3587, file: !80, line: 617, baseType: !448, size: 64, offset: 1984)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3587, file: !80, line: 618, baseType: !448, size: 64, offset: 2048)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3587, file: !80, line: 620, baseType: !3675, size: 64, offset: 2112)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3676, file: !80, line: 537, baseType: !261)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3676, file: !80, line: 538, baseType: !7, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3676, file: !80, line: 540, baseType: !247, size: 128, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3676, file: !80, line: 543, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3587, file: !80, line: 621, baseType: !3685, size: 64, offset: 2176)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !235, !1475}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3587, file: !80, line: 622, baseType: !3689, size: 64, offset: 2240)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !236, file: !73, line: 486, baseType: !3692, size: 64, offset: 4096)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3701, !3702, !3703}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3693, file: !80, line: 643, baseType: !3454, size: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3693, file: !80, line: 644, baseType: !3457, size: 64, offset: 1472)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3693, file: !80, line: 645, baseType: !3698, size: 64, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !235, !517}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3693, file: !80, line: 646, baseType: !3457, size: 64, offset: 1600)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3693, file: !80, line: 647, baseType: !3448, size: 64, offset: 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3693, file: !80, line: 648, baseType: !3448, size: 64, offset: 1728)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !236, file: !73, line: 493, baseType: !3705, size: 64, offset: 4160)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3883, !3884, !3885, !3886, !3887, !3888, !3891, !3892, !3893, !3894, !3895, !3896, !3897}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3706, file: !94, line: 163, baseType: !247, size: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3706, file: !94, line: 164, baseType: !243, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3706, file: !94, line: 165, baseType: !3711, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3713)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3714)
!3714 = !{!3715, !3833, !3844, !3849, !3853, !3860, !3864, !3868, !3875, !3879}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3713, file: !94, line: 106, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!223, !3705, !3719, !93}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3721, line: 51, size: 1344, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3724, !3726, !3727, !3817, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3720, file: !3721, line: 52, baseType: !243, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3720, file: !3721, line: 53, baseType: !3725, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3721, line: 28, baseType: !442)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3720, file: !3721, line: 54, baseType: !243, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3720, file: !3721, line: 55, baseType: !3728, size: 192, offset: 192)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3729, line: 17, size: 192, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3730 = !{!3731, !3733, !3816}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3728, file: !3729, line: 18, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3728, file: !3729, line: 19, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3729, line: 110, size: 1152, elements: !3737)
!3737 = !{!3738, !3742, !3746, !3752, !3758, !3762, !3766, !3771, !3775, !3776, !3780, !3784, !3788, !3799, !3800, !3801, !3802, !3812}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3736, file: !3729, line: 111, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!3732, !3732}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3736, file: !3729, line: 112, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3732}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3736, file: !3729, line: 113, baseType: !3747, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!517, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3736, file: !3729, line: 114, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!2165, !3750, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3736, file: !3729, line: 116, baseType: !3759, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!517, !3750, !243}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3736, file: !3729, line: 118, baseType: !3763, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!223, !3750, !243, !7, !225, !348}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3736, file: !3729, line: 123, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!223, !3750, !243, !3770, !348}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3736, file: !3729, line: 126, baseType: !3772, size: 64, offset: 448)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!243, !3750}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3736, file: !3729, line: 127, baseType: !3772, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3736, file: !3729, line: 128, baseType: !3777, size: 64, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3732, !3750}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3736, file: !3729, line: 130, baseType: !3781, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3732, !3750, !3732}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3736, file: !3729, line: 133, baseType: !3785, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3732, !3750, !243}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3736, file: !3729, line: 135, baseType: !3789, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!223, !3750, !243, !243, !7, !7, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3729, line: 43, size: 640, elements: !3794)
!3794 = !{!3795, !3796, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3793, file: !3729, line: 44, baseType: !3732, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3793, file: !3729, line: 45, baseType: !7, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3793, file: !3729, line: 46, baseType: !3798, size: 512, offset: 128)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 512, elements: !1361)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3736, file: !3729, line: 140, baseType: !3781, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3736, file: !3729, line: 143, baseType: !3777, size: 64, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3736, file: !3729, line: 145, baseType: !3739, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3736, file: !3729, line: 146, baseType: !3803, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!223, !3750, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3729, line: 29, size: 128, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3807, file: !3729, line: 30, baseType: !7, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3807, file: !3729, line: 31, baseType: !7, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3807, file: !3729, line: 32, baseType: !3750, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3736, file: !3729, line: 148, baseType: !3813, size: 64, offset: 1088)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!223, !3750, !235}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3728, file: !3729, line: 20, baseType: !235, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3720, file: !3721, line: 57, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3721, line: 31, size: 704, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !3721, line: 32, baseType: !302, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3819, file: !3721, line: 33, baseType: !223, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3819, file: !3721, line: 34, baseType: !225, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3819, file: !3721, line: 35, baseType: !3818, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3819, file: !3721, line: 43, baseType: !370, size: 448, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3720, file: !3721, line: 58, baseType: !3818, size: 64, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3720, file: !3721, line: 59, baseType: !3719, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3720, file: !3721, line: 60, baseType: !3719, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3720, file: !3721, line: 61, baseType: !3719, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3720, file: !3721, line: 63, baseType: !239, size: 512, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3720, file: !3721, line: 65, baseType: !351, size: 64, offset: 1216)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3720, file: !3721, line: 66, baseType: !225, size: 64, offset: 1280)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3713, file: !94, line: 108, baseType: !3834, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!223, !3705, !3837, !93}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3838, file: !94, line: 64, baseType: !3732, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3838, file: !94, line: 65, baseType: !223, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3838, file: !94, line: 66, baseType: !3843, size: 512, offset: 96)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 512, elements: !1771)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3713, file: !94, line: 110, baseType: !3845, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!223, !3705, !7, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !248, line: 164, baseType: !351)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3713, file: !94, line: 111, baseType: !3850, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3705, !7}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3713, file: !94, line: 112, baseType: !3854, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!223, !3705, !3719, !3857, !7, !3859, !2721}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3713, file: !94, line: 117, baseType: !3861, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!223, !3705, !7, !7, !225}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3713, file: !94, line: 119, baseType: !3865, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3705, !7, !7}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3713, file: !94, line: 121, baseType: !3869, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!223, !3705, !3872, !517}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3874, line: 11, flags: DIFlagFwdDecl)
!3874 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3713, file: !94, line: 122, baseType: !3876, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3705, !3872}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3713, file: !94, line: 123, baseType: !3880, size: 64, offset: 576)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!223, !3705, !3837, !3859, !2721}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3706, file: !94, line: 166, baseType: !225, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3706, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3706, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3706, file: !94, line: 171, baseType: !3732, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3706, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3706, file: !94, line: 173, baseType: !3889, size: 64, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3706, file: !94, line: 175, baseType: !3705, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3706, file: !94, line: 182, baseType: !3848, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3706, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3706, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3706, file: !94, line: 185, baseType: !769, size: 128, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3706, file: !94, line: 186, baseType: !1204, size: 192, offset: 896)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3706, file: !94, line: 187, baseType: !3898, offset: 1088)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2369)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !236, file: !73, line: 499, baseType: !247, size: 128, offset: 4224)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !236, file: !73, line: 502, baseType: !3901, size: 64, offset: 4352)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !236, file: !73, line: 504, baseType: !3905, size: 64, offset: 4416)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !236, file: !73, line: 505, baseType: !448, size: 64, offset: 4480)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !236, file: !73, line: 510, baseType: !448, size: 64, offset: 4544)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !236, file: !73, line: 511, baseType: !3909, size: 64, offset: 4608)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !236, file: !73, line: 513, baseType: !3913, size: 64, offset: 4672)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3914, file: !73, line: 293, baseType: !7, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3914, file: !73, line: 294, baseType: !351, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !236, file: !73, line: 515, baseType: !247, size: 128, offset: 4736)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !236, file: !73, line: 526, baseType: !3920, offset: 4864)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3921, line: 5, elements: !275)
!3921 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !236, file: !73, line: 528, baseType: !3719, size: 64, offset: 4864)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !236, file: !73, line: 529, baseType: !3732, size: 64, offset: 4928)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !236, file: !73, line: 534, baseType: !540, size: 32, offset: 4992)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !73, line: 535, baseType: !442, size: 32, offset: 5024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !236, file: !73, line: 537, baseType: !261, offset: 5056)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !236, file: !73, line: 538, baseType: !247, size: 128, offset: 5056)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !73, line: 540, baseType: !3929, size: 64, offset: 5184)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3931, line: 54, size: 960, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938, !3939, !3943, !3947, !3948, !3949, !3950, !3954, !3958, !3959}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3930, file: !3931, line: 55, baseType: !243, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3930, file: !3931, line: 56, baseType: !660, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3930, file: !3931, line: 58, baseType: !355, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3930, file: !3931, line: 59, baseType: !355, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3930, file: !3931, line: 60, baseType: !254, size: 64, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3930, file: !3931, line: 62, baseType: !3439, size: 64, offset: 320)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3930, file: !3931, line: 63, baseType: !3940, size: 64, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!302, !235, !3446}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3930, file: !3931, line: 65, baseType: !3944, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3929}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3930, file: !3931, line: 66, baseType: !3448, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3930, file: !3931, line: 68, baseType: !3457, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3930, file: !3931, line: 70, baseType: !3243, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3930, file: !3931, line: 71, baseType: !3951, size: 64, offset: 704)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!2165, !235}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3930, file: !3931, line: 73, baseType: !3955, size: 64, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !235, !3275, !3276}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3930, file: !3931, line: 75, baseType: !3452, size: 64, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3930, file: !3931, line: 77, baseType: !3569, size: 64, offset: 896)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !73, line: 541, baseType: !355, size: 64, offset: 5248)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !73, line: 543, baseType: !3448, size: 64, offset: 5312)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !236, file: !73, line: 544, baseType: !3963, size: 64, offset: 5376)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !236, file: !73, line: 545, baseType: !3966, size: 64, offset: 5440)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !236, file: !73, line: 547, baseType: !517, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !236, file: !73, line: 548, baseType: !517, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !236, file: !73, line: 549, baseType: !517, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !236, file: !73, line: 550, baseType: !517, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !231, file: !232, line: 49, baseType: !3973, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device", file: !3975, line: 144, size: 5184, elements: !3976)
!3975 = !DIFile(filename: "./include/media/media-device.h", directory: "/home/lizy2001/genbc/linux")
!3976 = !{!3977, !3978, !4009, !4010, !4011, !4015, !4016, !4017, !4018, !4019, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4135, !4136, !4140, !4144, !4182, !4183}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3974, file: !3975, line: 146, baseType: !235, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3974, file: !3975, line: 147, baseType: !3979, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_devnode", file: !3981, line: 75, size: 6784, elements: !3982)
!3981 = !DIFile(filename: "./include/media/media-devnode.h", directory: "/home/lizy2001/genbc/linux")
!3982 = !{!3983, !3984, !4000, !4001, !4002, !4003, !4004, !4005}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "media_dev", scope: !3980, file: !3981, line: 76, baseType: !3973, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3980, file: !3981, line: 79, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3987)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_file_operations", file: !3981, line: 47, size: 512, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995, !3999}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3987, file: !3981, line: 48, baseType: !660, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3987, file: !3981, line: 49, baseType: !2911, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3987, file: !3981, line: 50, baseType: !2916, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3987, file: !3981, line: 51, baseType: !2940, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3987, file: !3981, line: 52, baseType: !2957, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3987, file: !3981, line: 53, baseType: !2957, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3987, file: !3981, line: 54, baseType: !3996, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!223, !379}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3987, file: !3981, line: 55, baseType: !3996, size: 64, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3980, file: !3981, line: 82, baseType: !236, size: 5568, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3980, file: !3981, line: 83, baseType: !3150, size: 832, offset: 5696)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3980, file: !3981, line: 84, baseType: !235, size: 64, offset: 6528)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3980, file: !3981, line: 87, baseType: !223, size: 32, offset: 6592)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !3981, line: 88, baseType: !351, size: 64, offset: 6656)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3980, file: !3981, line: 91, baseType: !4006, size: 64, offset: 6720)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{null, !3979}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !3974, file: !3975, line: 149, baseType: !2738, size: 256, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3974, file: !3975, line: 150, baseType: !2738, size: 256, offset: 384)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3974, file: !3975, line: 151, baseType: !4012, size: 320, offset: 640)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 320, elements: !4013)
!4013 = !{!4014}
!4014 = !DISubrange(count: 40)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bus_info", scope: !3974, file: !3975, line: 152, baseType: !2738, size: 256, offset: 960)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "hw_revision", scope: !3974, file: !3975, line: 153, baseType: !442, size: 32, offset: 1216)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "topology_version", scope: !3974, file: !3975, line: 155, baseType: !448, size: 64, offset: 1280)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3974, file: !3975, line: 157, baseType: !442, size: 32, offset: 1344)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx", scope: !3974, file: !3975, line: 158, baseType: !4020, size: 128, offset: 1408)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3304, line: 244, size: 128, elements: !4021)
!4021 = !{!4022}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4020, file: !3304, line: 245, baseType: !769, size: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx_max", scope: !3974, file: !3975, line: 159, baseType: !223, size: 32, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !3974, file: !3975, line: 161, baseType: !247, size: 128, offset: 1600)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !3974, file: !3975, line: 162, baseType: !247, size: 128, offset: 1728)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !3974, file: !3975, line: 163, baseType: !247, size: 128, offset: 1856)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3974, file: !3975, line: 164, baseType: !247, size: 128, offset: 1984)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "entity_notify", scope: !3974, file: !3975, line: 167, baseType: !247, size: 128, offset: 2112)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "graph_mutex", scope: !3974, file: !3975, line: 170, baseType: !1204, size: 192, offset: 2240)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pm_count_walk", scope: !3974, file: !3975, line: 171, baseType: !4031, size: 2240, offset: 2432)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_graph", file: !108, line: 88, size: 2240, elements: !4032)
!4032 = !{!4033, !4129, !4134}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4031, file: !108, line: 92, baseType: !4034, size: 2048)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 2048, elements: !1771)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4031, file: !108, line: 89, size: 128, elements: !4036)
!4036 = !{!4037, !4128}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4035, file: !108, line: 90, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity", file: !108, line: 290, size: 1024, elements: !4040)
!4040 = !{!4041, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4064, !4065, !4112, !4113, !4114, !4120}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4039, file: !108, line: 291, baseType: !4042, size: 256)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_gobj", file: !108, line: 57, size: 256, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4042, file: !108, line: 58, baseType: !3973, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4042, file: !108, line: 59, baseType: !442, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4042, file: !108, line: 60, baseType: !247, size: 128, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4039, file: !108, line: 292, baseType: !243, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !4039, file: !108, line: 293, baseType: !107, size: 32, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4039, file: !108, line: 294, baseType: !442, size: 32, offset: 352)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4039, file: !108, line: 295, baseType: !351, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "num_pads", scope: !4039, file: !108, line: 297, baseType: !890, size: 16, offset: 448)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "num_links", scope: !4039, file: !108, line: 298, baseType: !890, size: 16, offset: 464)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "num_backlinks", scope: !4039, file: !108, line: 299, baseType: !890, size: 16, offset: 480)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "internal_idx", scope: !4039, file: !108, line: 300, baseType: !223, size: 32, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !4039, file: !108, line: 302, baseType: !4056, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pad", file: !108, line: 189, size: 448, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4057, file: !108, line: 190, baseType: !4042, size: 256)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4057, file: !108, line: 191, baseType: !4038, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4057, file: !108, line: 192, baseType: !890, size: 16, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sig_type", scope: !4057, file: !108, line: 193, baseType: !113, size: 32, offset: 352)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4057, file: !108, line: 194, baseType: !351, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4039, file: !108, line: 303, baseType: !247, size: 128, offset: 640)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4039, file: !108, line: 305, baseType: !4066, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4068)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_operations", file: !108, line: 214, size: 192, elements: !4069)
!4069 = !{!4070, !4074, !4080}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "get_fwnode_pad", scope: !4068, file: !108, line: 215, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!223, !4038, !3806}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "link_setup", scope: !4068, file: !108, line: 217, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!223, !4038, !4078, !4078, !442}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !4068, file: !108, line: 220, baseType: !4081, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!223, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_link", file: !108, line: 132, size: 704, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4103, !4109, !4110, !4111}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4085, file: !108, line: 133, baseType: !4042, size: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4085, file: !108, line: 134, baseType: !247, size: 128, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !108, line: 135, baseType: !4090, size: 64, offset: 384)
!4090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4085, file: !108, line: 135, size: 64, elements: !4091)
!4091 = !{!4092, !4094, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "gobj0", scope: !4090, file: !108, line: 136, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4090, file: !108, line: 137, baseType: !4056, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4090, file: !108, line: 138, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_interface", file: !108, line: 336, size: 448, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4097, file: !108, line: 337, baseType: !4042, size: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4097, file: !108, line: 338, baseType: !247, size: 128, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4097, file: !108, line: 339, baseType: !442, size: 32, offset: 384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4097, file: !108, line: 340, baseType: !442, size: 32, offset: 416)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !108, line: 140, baseType: !4104, size: 64, offset: 448)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4085, file: !108, line: 140, size: 64, elements: !4105)
!4105 = !{!4106, !4107, !4108}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "gobj1", scope: !4104, file: !108, line: 141, baseType: !4093, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sink", scope: !4104, file: !108, line: 142, baseType: !4056, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4104, file: !108, line: 143, baseType: !4038, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4085, file: !108, line: 145, baseType: !4084, size: 64, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !108, line: 146, baseType: !351, size: 64, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "is_backlink", scope: !4085, file: !108, line: 147, baseType: !517, size: 8, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "stream_count", scope: !4039, file: !108, line: 307, baseType: !223, size: 32, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4039, file: !108, line: 308, baseType: !223, size: 32, offset: 864)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4039, file: !108, line: 310, baseType: !4115, size: 64, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pipeline", file: !108, line: 104, size: 2304, elements: !4117)
!4117 = !{!4118, !4119}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "streaming_count", scope: !4116, file: !108, line: 105, baseType: !223, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !4116, file: !108, line: 106, baseType: !4031, size: 2240, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4039, file: !108, line: 317, baseType: !4121, size: 64, offset: 960)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !108, line: 312, size: 64, elements: !4122)
!4122 = !{!4123}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4121, file: !108, line: 316, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4121, file: !108, line: 313, size: 64, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4124, file: !108, line: 314, baseType: !442, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4124, file: !108, line: 315, baseType: !442, size: 32, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4035, file: !108, line: 91, baseType: !251, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ent_enum", scope: !4031, file: !108, line: 94, baseType: !4130, size: 128, offset: 2048)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_enum", file: !108, line: 72, size: 128, elements: !4131)
!4131 = !{!4132, !4133}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4130, file: !108, line: 73, baseType: !3859, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "idx_max", scope: !4130, file: !108, line: 74, baseType: !223, size: 32, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4031, file: !108, line: 95, baseType: !223, size: 32, offset: 2176)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "source_priv", scope: !3974, file: !3975, line: 173, baseType: !225, size: 64, offset: 4672)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "enable_source", scope: !3974, file: !3975, line: 174, baseType: !4137, size: 64, offset: 4736)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!223, !4038, !4115}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "disable_source", scope: !3974, file: !3975, line: 176, baseType: !4141, size: 64, offset: 4800)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !4038}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3974, file: !3975, line: 178, baseType: !4145, size: 64, offset: 4864)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device_ops", file: !3975, line: 65, size: 320, elements: !4148)
!4148 = !{!4149, !4153, !4173, !4177, !4181}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "link_notify", scope: !4147, file: !3975, line: 66, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!223, !4084, !442, !7}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "req_alloc", scope: !4147, file: !3975, line: 68, baseType: !4154, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!4157, !3973}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request", file: !120, line: 62, size: 768, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4158, file: !120, line: 63, baseType: !3973, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4158, file: !120, line: 64, baseType: !3417, size: 32, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "debug_str", scope: !4158, file: !120, line: 65, baseType: !4163, size: 216, offset: 96)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 216, elements: !4164)
!4164 = !{!4165}
!4165 = !DISubrange(count: 27)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4158, file: !120, line: 66, baseType: !119, size: 32, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "updating_count", scope: !4158, file: !120, line: 67, baseType: !7, size: 32, offset: 352)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "access_count", scope: !4158, file: !120, line: 68, baseType: !7, size: 32, offset: 384)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !4158, file: !120, line: 69, baseType: !247, size: 128, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "num_incomplete_objects", scope: !4158, file: !120, line: 70, baseType: !7, size: 32, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wait", scope: !4158, file: !120, line: 71, baseType: !1517, size: 128, offset: 640)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4158, file: !120, line: 72, baseType: !261, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "req_free", scope: !4147, file: !3975, line: 69, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4157}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "req_validate", scope: !4147, file: !3975, line: 70, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!223, !4157}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue", scope: !4147, file: !3975, line: 71, baseType: !4174, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue_mutex", scope: !3974, file: !3975, line: 180, baseType: !1204, size: 192, offset: 4928)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !3974, file: !3975, line: 181, baseType: !778, size: 32, offset: 5120)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "subdevs", scope: !231, file: !232, line: 50, baseType: !247, size: 128, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !231, file: !232, line: 51, baseType: !261, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !232, line: 52, baseType: !4187, size: 288, offset: 256)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 288, elements: !4188)
!4188 = !{!4189}
!4189 = !DISubrange(count: 36)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !231, file: !232, line: 53, baseType: !4191, size: 64, offset: 576)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !4194, !7, !225}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev", file: !186, line: 866, size: 2560, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4204, !6175, !6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6205, !6206, !6231, !6259, !6260}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4195, file: !186, line: 868, baseType: !4039, size: 1024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4195, file: !186, line: 870, baseType: !247, size: 128, offset: 1024)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4195, file: !186, line: 871, baseType: !660, size: 64, offset: 1152)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "owner_v4l2_dev", scope: !4195, file: !186, line: 872, baseType: !517, size: 8, offset: 1216)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4195, file: !186, line: 873, baseType: !442, size: 32, offset: 1248)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !4195, file: !186, line: 874, baseType: !4203, size: 64, offset: 1280)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4195, file: !186, line: 875, baseType: !4205, size: 64, offset: 1344)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4207)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ops", file: !186, line: 745, size: 512, elements: !4208)
!4208 = !{!4209, !5814, !5866, !5878, !5932, !5984, !6020, !6027}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !4207, file: !186, line: 746, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4212)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_core_ops", file: !186, line: 188, size: 704, elements: !4213)
!4213 = !{!4214, !4218, !4230, !4234, !4235, !4236, !4237, !4241, !4245, !4249, !5813}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "log_status", scope: !4212, file: !186, line: 189, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!223, !4194}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "s_io_pin_config", scope: !4212, file: !186, line: 190, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!223, !4194, !348, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_io_pin_config", file: !186, line: 132, size: 64, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4223, file: !186, line: 133, baseType: !442, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4223, file: !186, line: 134, baseType: !1383, size: 8, offset: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4223, file: !186, line: 135, baseType: !1383, size: 8, offset: 40)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4223, file: !186, line: 136, baseType: !1383, size: 8, offset: 48)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4223, file: !186, line: 137, baseType: !1383, size: 8, offset: 56)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4212, file: !186, line: 192, baseType: !4231, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!223, !4194, !442}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "load_fw", scope: !4212, file: !186, line: 193, baseType: !4215, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4212, file: !186, line: 194, baseType: !4231, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "s_gpio", scope: !4212, file: !186, line: 195, baseType: !4231, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4212, file: !186, line: 196, baseType: !4238, size: 64, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!224, !4194, !7, !225}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "s_power", scope: !4212, file: !186, line: 205, baseType: !4242, size: 64, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!223, !4194, !223}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_service_routine", scope: !4212, file: !186, line: 206, baseType: !4246, size: 64, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!223, !4194, !442, !922}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_event", scope: !4212, file: !186, line: 208, baseType: !4250, size: 64, offset: 576)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!223, !4194, !4253, !5812}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fh", file: !4255, line: 42, size: 1024, elements: !4256)
!4255 = !DIFile(filename: "./include/media/v4l2-fh.h", directory: "/home/lizy2001/genbc/linux")
!4256 = !{!4257, !4258, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4254, file: !4255, line: 43, baseType: !247, size: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4254, file: !4255, line: 44, baseType: !4259, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_device", file: !147, line: 263, size: 10624, elements: !4261)
!4261 = !{!4262, !4263, !4270, !4271, !4285, !4286, !4287, !4288, !4289, !4290, !4839, !4842, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4860, !4864, !5798, !5800}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4260, file: !147, line: 266, baseType: !4039, size: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "intf_devnode", scope: !4260, file: !147, line: 267, baseType: !4264, size: 64, offset: 1024)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_intf_devnode", file: !108, line: 350, size: 512, elements: !4266)
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4265, file: !108, line: 351, baseType: !4097, size: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4265, file: !108, line: 354, baseType: !442, size: 32, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4265, file: !108, line: 355, baseType: !442, size: 32, offset: 480)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4260, file: !147, line: 268, baseType: !4116, size: 2304, offset: 1088)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4260, file: !147, line: 270, baseType: !4272, size: 64, offset: 3392)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_file_operations", file: !147, line: 200, size: 576, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4274, file: !147, line: 201, baseType: !660, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4274, file: !147, line: 202, baseType: !2911, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4274, file: !147, line: 203, baseType: !2916, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4274, file: !147, line: 204, baseType: !2940, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4274, file: !147, line: 205, baseType: !2957, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4274, file: !147, line: 209, baseType: !1132, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4274, file: !147, line: 211, baseType: !2962, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4274, file: !147, line: 212, baseType: !3996, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4274, file: !147, line: 213, baseType: !3996, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4260, file: !147, line: 272, baseType: !442, size: 32, offset: 3456)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4260, file: !147, line: 275, baseType: !236, size: 5568, offset: 3520)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4260, file: !147, line: 276, baseType: !3149, size: 64, offset: 9088)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !4260, file: !147, line: 278, baseType: !4203, size: 64, offset: 9152)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_parent", scope: !4260, file: !147, line: 279, baseType: !235, size: 64, offset: 9216)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4260, file: !147, line: 281, baseType: !4291, size: 64, offset: 9280)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_handler", file: !4293, line: 361, size: 1536, elements: !4294)
!4293 = !DIFile(filename: "./include/media/v4l2-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !{!4295, !4296, !4298, !4299, !4300, !4801, !4803, !4808, !4809, !4810, !4811, !4812, !4813, !4814}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4292, file: !4293, line: 362, baseType: !1204, size: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4292, file: !4293, line: 363, baseType: !4297, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "ctrls", scope: !4292, file: !4293, line: 364, baseType: !247, size: 128, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_refs", scope: !4292, file: !4293, line: 365, baseType: !247, size: 128, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !4292, file: !4293, line: 366, baseType: !4301, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_ref", file: !4293, line: 317, size: 512, elements: !4303)
!4303 = !{!4304, !4305, !4306, !4794, !4797, !4798, !4799, !4800}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4302, file: !4293, line: 318, baseType: !247, size: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4302, file: !4293, line: 319, baseType: !4301, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4302, file: !4293, line: 320, baseType: !4307, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl", file: !4293, line: 239, size: 1728, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4339, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4769, !4770, !4775, !4784, !4785, !4786, !4787, !4791, !4792, !4793}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4308, file: !4293, line: 241, baseType: !247, size: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ev_subs", scope: !4308, file: !4293, line: 242, baseType: !247, size: 128, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4308, file: !4293, line: 243, baseType: !4291, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cluster", scope: !4308, file: !4293, line: 244, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ncontrols", scope: !4308, file: !4293, line: 245, baseType: !7, size: 32, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4308, file: !4293, line: 247, baseType: !7, size: 1, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "is_new", scope: !4308, file: !4293, line: 249, baseType: !7, size: 1, offset: 417, flags: DIFlagBitField, extraData: i64 416)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "has_changed", scope: !4308, file: !4293, line: 250, baseType: !7, size: 1, offset: 418, flags: DIFlagBitField, extraData: i64 416)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "is_private", scope: !4308, file: !4293, line: 251, baseType: !7, size: 1, offset: 419, flags: DIFlagBitField, extraData: i64 416)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "is_auto", scope: !4308, file: !4293, line: 252, baseType: !7, size: 1, offset: 420, flags: DIFlagBitField, extraData: i64 416)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "is_int", scope: !4308, file: !4293, line: 253, baseType: !7, size: 1, offset: 421, flags: DIFlagBitField, extraData: i64 416)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "is_string", scope: !4308, file: !4293, line: 254, baseType: !7, size: 1, offset: 422, flags: DIFlagBitField, extraData: i64 416)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "is_ptr", scope: !4308, file: !4293, line: 255, baseType: !7, size: 1, offset: 423, flags: DIFlagBitField, extraData: i64 416)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "is_array", scope: !4308, file: !4293, line: 256, baseType: !7, size: 1, offset: 424, flags: DIFlagBitField, extraData: i64 416)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatiles", scope: !4308, file: !4293, line: 257, baseType: !7, size: 1, offset: 425, flags: DIFlagBitField, extraData: i64 416)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "call_notify", scope: !4308, file: !4293, line: 258, baseType: !7, size: 1, offset: 426, flags: DIFlagBitField, extraData: i64 416)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "manual_mode_value", scope: !4308, file: !4293, line: 259, baseType: !7, size: 8, offset: 427, flags: DIFlagBitField, extraData: i64 416)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4308, file: !4293, line: 261, baseType: !4329, size: 64, offset: 448)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_ops", file: !4293, line: 114, size: 192, elements: !4332)
!4332 = !{!4333, !4337, !4338}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "g_volatile_ctrl", scope: !4331, file: !4293, line: 115, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!223, !4307}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "try_ctrl", scope: !4331, file: !4293, line: 116, baseType: !4334, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_ctrl", scope: !4331, file: !4293, line: 117, baseType: !4334, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "type_ops", scope: !4308, file: !4293, line: 262, baseType: !4340, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_type_ops", file: !4293, line: 130, size: 256, elements: !4343)
!4343 = !{!4344, !4747, !4751, !4755}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "equal", scope: !4342, file: !4293, line: 131, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!517, !4348, !442, !4350, !4350}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4350 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "v4l2_ctrl_ptr", file: !4293, line: 63, size: 64, elements: !4351)
!4351 = !{!4352, !4354, !4356, !4358, !4360, !4361, !4362, !4398, !4411, !4425, !4451, !4468, !4478, !4504, !4537, !4554, !4628, !4656, !4678, !4739, !4745, !4746}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "p_s32", scope: !4350, file: !4293, line: 64, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "p_s64", scope: !4350, file: !4293, line: 65, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "p_u8", scope: !4350, file: !4293, line: 66, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "p_u16", scope: !4350, file: !4293, line: 67, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "p_u32", scope: !4350, file: !4293, line: 68, baseType: !1446, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "p_char", scope: !4350, file: !4293, line: 69, baseType: !302, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "p_mpeg2_slice_params", scope: !4350, file: !4293, line: 70, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_mpeg2_slice_params", file: !4365, line: 56, size: 448, elements: !4366)
!4365 = !DIFile(filename: "./include/media/mpeg2-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4380, !4397}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bit_size", scope: !4364, file: !4365, line: 57, baseType: !444, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_offset", scope: !4364, file: !4365, line: 58, baseType: !444, size: 32, offset: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "backward_ref_ts", scope: !4364, file: !4365, line: 59, baseType: !449, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "forward_ref_ts", scope: !4364, file: !4365, line: 60, baseType: !449, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !4364, file: !4365, line: 62, baseType: !4372, size: 96, offset: 192)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mpeg2_sequence", file: !4365, line: 26, size: 96, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_size", scope: !4372, file: !4365, line: 28, baseType: !891, size: 16)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_size", scope: !4372, file: !4365, line: 29, baseType: !891, size: 16, offset: 16)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "vbv_buffer_size", scope: !4372, file: !4365, line: 30, baseType: !444, size: 32, offset: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "profile_and_level_indication", scope: !4372, file: !4365, line: 33, baseType: !891, size: 16, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_sequence", scope: !4372, file: !4365, line: 34, baseType: !1384, size: 8, offset: 80)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format", scope: !4372, file: !4365, line: 35, baseType: !1384, size: 8, offset: 88)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !4364, file: !4365, line: 63, baseType: !4381, size: 128, offset: 288)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mpeg2_picture", file: !4365, line: 38, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "picture_coding_type", scope: !4381, file: !4365, line: 40, baseType: !1384, size: 8)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !4381, file: !4365, line: 43, baseType: !4385, size: 32, offset: 8)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 32, elements: !4386)
!4386 = !{!1606, !1606}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "intra_dc_precision", scope: !4381, file: !4365, line: 44, baseType: !1384, size: 8, offset: 40)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "picture_structure", scope: !4381, file: !4365, line: 45, baseType: !1384, size: 8, offset: 48)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_first", scope: !4381, file: !4365, line: 46, baseType: !1384, size: 8, offset: 56)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "frame_pred_frame_dct", scope: !4381, file: !4365, line: 47, baseType: !1384, size: 8, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_motion_vectors", scope: !4381, file: !4365, line: 48, baseType: !1384, size: 8, offset: 72)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "q_scale_type", scope: !4381, file: !4365, line: 49, baseType: !1384, size: 8, offset: 80)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "intra_vlc_format", scope: !4381, file: !4365, line: 50, baseType: !1384, size: 8, offset: 88)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_scan", scope: !4381, file: !4365, line: 51, baseType: !1384, size: 8, offset: 96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_first_field", scope: !4381, file: !4365, line: 52, baseType: !1384, size: 8, offset: 104)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_frame", scope: !4381, file: !4365, line: 53, baseType: !891, size: 16, offset: 112)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "quantiser_scale_code", scope: !4364, file: !4365, line: 66, baseType: !444, size: 32, offset: 416)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "p_mpeg2_quantization", scope: !4350, file: !4293, line: 71, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_mpeg2_quantization", file: !4365, line: 69, size: 2080, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4408, !4409, !4410}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "load_intra_quantiser_matrix", scope: !4400, file: !4365, line: 71, baseType: !1384, size: 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "load_non_intra_quantiser_matrix", scope: !4400, file: !4365, line: 72, baseType: !1384, size: 8, offset: 8)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "load_chroma_intra_quantiser_matrix", scope: !4400, file: !4365, line: 73, baseType: !1384, size: 8, offset: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "load_chroma_non_intra_quantiser_matrix", scope: !4400, file: !4365, line: 74, baseType: !1384, size: 8, offset: 24)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "intra_quantiser_matrix", scope: !4400, file: !4365, line: 76, baseType: !4407, size: 512, offset: 32)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 512, elements: !307)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "non_intra_quantiser_matrix", scope: !4400, file: !4365, line: 77, baseType: !4407, size: 512, offset: 544)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_intra_quantiser_matrix", scope: !4400, file: !4365, line: 78, baseType: !4407, size: 512, offset: 1056)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_non_intra_quantiser_matrix", scope: !4400, file: !4365, line: 79, baseType: !4407, size: 512, offset: 1568)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "p_fwht_params", scope: !4350, file: !4293, line: 72, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_fwht_params", file: !4414, line: 18, size: 320, elements: !4415)
!4414 = !DIFile(filename: "./include/media/fwht-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "backward_ref_ts", scope: !4413, file: !4414, line: 19, baseType: !449, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4413, file: !4414, line: 20, baseType: !444, size: 32, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4413, file: !4414, line: 21, baseType: !444, size: 32, offset: 96)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4413, file: !4414, line: 22, baseType: !444, size: 32, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4413, file: !4414, line: 23, baseType: !444, size: 32, offset: 160)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4413, file: !4414, line: 24, baseType: !444, size: 32, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !4413, file: !4414, line: 25, baseType: !444, size: 32, offset: 224)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !4413, file: !4414, line: 26, baseType: !444, size: 32, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !4413, file: !4414, line: 27, baseType: !444, size: 32, offset: 288)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_sps", scope: !4350, file: !4293, line: 73, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_sps", file: !4428, line: 74, size: 8384, elements: !4429)
!4428 = !DIFile(filename: "./include/media/h264-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4446, !4447, !4448, !4449, !4450}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !4427, file: !4428, line: 75, baseType: !1384, size: 8)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_set_flags", scope: !4427, file: !4428, line: 76, baseType: !1384, size: 8, offset: 8)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !4427, file: !4428, line: 77, baseType: !1384, size: 8, offset: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !4427, file: !4428, line: 78, baseType: !1384, size: 8, offset: 24)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !4427, file: !4428, line: 79, baseType: !1384, size: 8, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !4427, file: !4428, line: 80, baseType: !1384, size: 8, offset: 40)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !4427, file: !4428, line: 81, baseType: !1384, size: 8, offset: 48)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !4427, file: !4428, line: 82, baseType: !1384, size: 8, offset: 56)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !4427, file: !4428, line: 83, baseType: !1384, size: 8, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !4427, file: !4428, line: 84, baseType: !1384, size: 8, offset: 72)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_ref_frames", scope: !4427, file: !4428, line: 85, baseType: !1384, size: 8, offset: 80)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !4427, file: !4428, line: 86, baseType: !1384, size: 8, offset: 88)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !4427, file: !4428, line: 87, baseType: !4443, size: 8160, offset: 96)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 8160, elements: !4444)
!4444 = !{!4445}
!4445 = !DISubrange(count: 255)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !4427, file: !4428, line: 88, baseType: !1476, size: 32, offset: 8256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !4427, file: !4428, line: 89, baseType: !1476, size: 32, offset: 8288)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !4427, file: !4428, line: 90, baseType: !891, size: 16, offset: 8320)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !4427, file: !4428, line: 91, baseType: !891, size: 16, offset: 8336)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4427, file: !4428, line: 92, baseType: !444, size: 32, offset: 8352)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_pps", scope: !4350, file: !4293, line: 74, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_pps", file: !4428, line: 104, size: 96, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4464, !4465, !4466, !4467}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !4453, file: !4428, line: 105, baseType: !1384, size: 8)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !4453, file: !4428, line: 106, baseType: !1384, size: 8, offset: 8)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !4453, file: !4428, line: 107, baseType: !1384, size: 8, offset: 16)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_default_active_minus1", scope: !4453, file: !4428, line: 108, baseType: !1384, size: 8, offset: 24)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_default_active_minus1", scope: !4453, file: !4428, line: 109, baseType: !1384, size: 8, offset: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !4453, file: !4428, line: 110, baseType: !1384, size: 8, offset: 40)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !4453, file: !4428, line: 111, baseType: !4462, size: 8, offset: 48)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !445, line: 20, baseType: !4463)
!4463 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !4453, file: !4428, line: 112, baseType: !4462, size: 8, offset: 56)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !4453, file: !4428, line: 113, baseType: !4462, size: 8, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !4453, file: !4428, line: 114, baseType: !4462, size: 8, offset: 72)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4453, file: !4428, line: 115, baseType: !891, size: 16, offset: 80)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_scaling_matrix", scope: !4350, file: !4293, line: 75, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_scaling_matrix", file: !4428, line: 118, size: 3840, elements: !4471)
!4471 = !{!4472, !4475}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list_4x4", scope: !4470, file: !4428, line: 119, baseType: !4473, size: 768)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 768, elements: !4474)
!4474 = !{!1662, !1772}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list_8x8", scope: !4470, file: !4428, line: 120, baseType: !4476, size: 3072, offset: 768)
!4476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 3072, elements: !4477)
!4477 = !{!1662, !308}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_slice_params", scope: !4350, file: !4293, line: 76, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_slice_params", file: !4428, line: 163, size: 1216, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4502, !4503}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "header_bit_size", scope: !4480, file: !4428, line: 165, baseType: !444, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "first_mb_in_slice", scope: !4480, file: !4428, line: 167, baseType: !444, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !4480, file: !4428, line: 169, baseType: !1384, size: 8, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !4480, file: !4428, line: 170, baseType: !1384, size: 8, offset: 72)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !4480, file: !4428, line: 171, baseType: !1384, size: 8, offset: 80)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "cabac_init_idc", scope: !4480, file: !4428, line: 172, baseType: !1384, size: 8, offset: 88)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !4480, file: !4428, line: 173, baseType: !4462, size: 8, offset: 96)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !4480, file: !4428, line: 174, baseType: !4462, size: 8, offset: 104)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "disable_deblocking_filter_idc", scope: !4480, file: !4428, line: 175, baseType: !1384, size: 8, offset: 112)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "slice_alpha_c0_offset_div2", scope: !4480, file: !4428, line: 176, baseType: !4462, size: 8, offset: 120)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "slice_beta_offset_div2", scope: !4480, file: !4428, line: 177, baseType: !4462, size: 8, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !4480, file: !4428, line: 178, baseType: !1384, size: 8, offset: 136)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !4480, file: !4428, line: 179, baseType: !1384, size: 8, offset: 144)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4480, file: !4428, line: 181, baseType: !1384, size: 8, offset: 152)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list0", scope: !4480, file: !4428, line: 183, baseType: !4497, size: 512, offset: 160)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4498, size: 512, elements: !2268)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_reference", file: !4428, line: 156, size: 16, elements: !4499)
!4499 = !{!4500, !4501}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4498, file: !4428, line: 157, baseType: !1384, size: 8)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4498, file: !4428, line: 160, baseType: !1384, size: 8, offset: 8)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list1", scope: !4480, file: !4428, line: 184, baseType: !4497, size: 512, offset: 672)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4480, file: !4428, line: 186, baseType: !444, size: 32, offset: 1184)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_decode_params", scope: !4350, file: !4293, line: 77, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_decode_params", file: !4428, line: 210, size: 4480, elements: !4507)
!4507 = !{!4508, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dpb", scope: !4506, file: !4428, line: 211, baseType: !4509, size: 4096)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4510, size: 4096, elements: !1771)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_dpb_entry", file: !4428, line: 194, size: 256, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4516, !4520, !4521, !4522}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "reference_ts", scope: !4510, file: !4428, line: 195, baseType: !449, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !4510, file: !4428, line: 196, baseType: !444, size: 32, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !4510, file: !4428, line: 197, baseType: !891, size: 16, offset: 96)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4510, file: !4428, line: 198, baseType: !1384, size: 8, offset: 112)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4510, file: !4428, line: 199, baseType: !4517, size: 40, offset: 120)
!4517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 40, elements: !4518)
!4518 = !{!4519}
!4519 = !DISubrange(count: 5)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_order_cnt", scope: !4510, file: !4428, line: 201, baseType: !1476, size: 32, offset: 160)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_order_cnt", scope: !4510, file: !4428, line: 202, baseType: !1476, size: 32, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4510, file: !4428, line: 203, baseType: !444, size: 32, offset: 224)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !4506, file: !4428, line: 212, baseType: !891, size: 16, offset: 4096)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !4506, file: !4428, line: 213, baseType: !891, size: 16, offset: 4112)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_order_cnt", scope: !4506, file: !4428, line: 214, baseType: !1476, size: 32, offset: 4128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_order_cnt", scope: !4506, file: !4428, line: 215, baseType: !1476, size: 32, offset: 4160)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !4506, file: !4428, line: 216, baseType: !891, size: 16, offset: 4192)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !4506, file: !4428, line: 217, baseType: !891, size: 16, offset: 4208)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !4506, file: !4428, line: 218, baseType: !1476, size: 32, offset: 4224)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt0", scope: !4506, file: !4428, line: 219, baseType: !1476, size: 32, offset: 4256)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt1", scope: !4506, file: !4428, line: 220, baseType: !1476, size: 32, offset: 4288)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_bit_size", scope: !4506, file: !4428, line: 222, baseType: !444, size: 32, offset: 4320)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_bit_size", scope: !4506, file: !4428, line: 224, baseType: !444, size: 32, offset: 4352)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !4506, file: !4428, line: 225, baseType: !444, size: 32, offset: 4384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4506, file: !4428, line: 227, baseType: !444, size: 32, offset: 4416)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4506, file: !4428, line: 228, baseType: !444, size: 32, offset: 4448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_pred_weights", scope: !4350, file: !4293, line: 78, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_pred_weights", file: !4428, line: 137, size: 6176, elements: !4540)
!4540 = !{!4541, !4542, !4543}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !4539, file: !4428, line: 138, baseType: !891, size: 16)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !4539, file: !4428, line: 139, baseType: !891, size: 16, offset: 16)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "weight_factors", scope: !4539, file: !4428, line: 140, baseType: !4544, size: 6144, offset: 32)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4545, size: 6144, elements: !1605)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_weight_factors", file: !4428, line: 123, size: 3072, elements: !4546)
!4546 = !{!4547, !4549, !4550, !4553}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "luma_weight", scope: !4545, file: !4428, line: 124, baseType: !4548, size: 512)
!4548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 512, elements: !2268)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset", scope: !4545, file: !4428, line: 125, baseType: !4548, size: 512, offset: 512)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_weight", scope: !4545, file: !4428, line: 126, baseType: !4551, size: 1024, offset: 1024)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 1024, elements: !4552)
!4552 = !{!2269, !1606}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset", scope: !4545, file: !4428, line: 127, baseType: !4551, size: 1024, offset: 2048)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "p_vp8_frame_header", scope: !4350, file: !4293, line: 79, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_vp8_frame_header", file: !4557, line: 81, size: 9856, elements: !4558)
!4557 = !DIFile(filename: "./include/media/vp8-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4558 = !{!4559, !4569, !4578, !4588, !4603, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4624, !4625, !4626, !4627}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "segment_header", scope: !4556, file: !4557, line: 82, baseType: !4560, size: 128)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_segment_header", file: !4557, line: 26, size: 128, elements: !4561)
!4561 = !{!4562, !4564, !4565, !4567, !4568}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "quant_update", scope: !4560, file: !4557, line: 27, baseType: !4563, size: 32)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 32, elements: !1186)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "lf_update", scope: !4560, file: !4557, line: 28, baseType: !4563, size: 32, offset: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "segment_probs", scope: !4560, file: !4557, line: 29, baseType: !4566, size: 24, offset: 64)
!4566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 24, elements: !303)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4560, file: !4557, line: 30, baseType: !1384, size: 8, offset: 88)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4560, file: !4557, line: 31, baseType: !444, size: 32, offset: 96)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "lf_header", scope: !4556, file: !4557, line: 83, baseType: !4570, size: 128, offset: 128)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_loopfilter_header", file: !4557, line: 37, size: 128, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frm_delta", scope: !4570, file: !4557, line: 38, baseType: !4563, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "mb_mode_delta", scope: !4570, file: !4557, line: 39, baseType: !4563, size: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "sharpness_level", scope: !4570, file: !4557, line: 40, baseType: !1384, size: 8, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4570, file: !4557, line: 41, baseType: !1384, size: 8, offset: 72)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4570, file: !4557, line: 42, baseType: !891, size: 16, offset: 80)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4570, file: !4557, line: 43, baseType: !444, size: 32, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "quant_header", scope: !4556, file: !4557, line: 84, baseType: !4579, size: 64, offset: 256)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_quantization_header", file: !4557, line: 46, size: 64, elements: !4580)
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586, !4587}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "y_ac_qi", scope: !4579, file: !4557, line: 47, baseType: !1384, size: 8)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "y_dc_delta", scope: !4579, file: !4557, line: 48, baseType: !4462, size: 8, offset: 8)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "y2_dc_delta", scope: !4579, file: !4557, line: 49, baseType: !4462, size: 8, offset: 16)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "y2_ac_delta", scope: !4579, file: !4557, line: 50, baseType: !4462, size: 8, offset: 24)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "uv_dc_delta", scope: !4579, file: !4557, line: 51, baseType: !4462, size: 8, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "uv_ac_delta", scope: !4579, file: !4557, line: 52, baseType: !4462, size: 8, offset: 40)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4579, file: !4557, line: 53, baseType: !891, size: 16, offset: 48)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_header", scope: !4556, file: !4557, line: 85, baseType: !4589, size: 8832, offset: 320)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_entropy_header", file: !4557, line: 56, size: 8832, elements: !4590)
!4590 = !{!4591, !4595, !4597, !4598, !4602}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_probs", scope: !4589, file: !4557, line: 57, baseType: !4592, size: 8448)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 8448, elements: !4593)
!4593 = !{!1187, !1362, !304, !4594}
!4594 = !DISubrange(count: 11)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "y_mode_probs", scope: !4589, file: !4557, line: 58, baseType: !4596, size: 32, offset: 8448)
!4596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 32, elements: !1186)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "uv_mode_probs", scope: !4589, file: !4557, line: 59, baseType: !4566, size: 24, offset: 8480)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "mv_probs", scope: !4589, file: !4557, line: 60, baseType: !4599, size: 304, offset: 8504)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 304, elements: !4600)
!4600 = !{!1606, !4601}
!4601 = !DISubrange(count: 19)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4589, file: !4557, line: 61, baseType: !4566, size: 24, offset: 8808)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "coder_state", scope: !4556, file: !4557, line: 86, baseType: !4604, size: 32, offset: 9152)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_entropy_coder_state", file: !4557, line: 64, size: 32, elements: !4605)
!4605 = !{!4606, !4607, !4608, !4609}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4604, file: !4557, line: 65, baseType: !1384, size: 8)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4604, file: !4557, line: 66, baseType: !1384, size: 8, offset: 8)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_count", scope: !4604, file: !4557, line: 67, baseType: !1384, size: 8, offset: 16)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4604, file: !4557, line: 68, baseType: !1384, size: 8, offset: 24)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4556, file: !4557, line: 88, baseType: !891, size: 16, offset: 9184)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4556, file: !4557, line: 89, baseType: !891, size: 16, offset: 9200)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_scale", scope: !4556, file: !4557, line: 91, baseType: !1384, size: 8, offset: 9216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_scale", scope: !4556, file: !4557, line: 92, baseType: !1384, size: 8, offset: 9224)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4556, file: !4557, line: 94, baseType: !1384, size: 8, offset: 9232)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "prob_skip_false", scope: !4556, file: !4557, line: 95, baseType: !1384, size: 8, offset: 9240)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "prob_intra", scope: !4556, file: !4557, line: 96, baseType: !1384, size: 8, offset: 9248)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "prob_last", scope: !4556, file: !4557, line: 97, baseType: !1384, size: 8, offset: 9256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "prob_gf", scope: !4556, file: !4557, line: 98, baseType: !1384, size: 8, offset: 9264)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "num_dct_parts", scope: !4556, file: !4557, line: 99, baseType: !1384, size: 8, offset: 9272)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "first_part_size", scope: !4556, file: !4557, line: 101, baseType: !444, size: 32, offset: 9280)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "first_part_header_bits", scope: !4556, file: !4557, line: 102, baseType: !444, size: 32, offset: 9312)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dct_part_sizes", scope: !4556, file: !4557, line: 103, baseType: !4623, size: 256, offset: 9344)
!4623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !1361)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "last_frame_ts", scope: !4556, file: !4557, line: 105, baseType: !449, size: 64, offset: 9600)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "golden_frame_ts", scope: !4556, file: !4557, line: 106, baseType: !449, size: 64, offset: 9664)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "alt_frame_ts", scope: !4556, file: !4557, line: 107, baseType: !449, size: 64, offset: 9728)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4556, file: !4557, line: 109, baseType: !449, size: 64, offset: 9792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_sps", scope: !4350, file: !4293, line: 80, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_sps", file: !4631, line: 55, size: 256, elements: !4632)
!4631 = !DIFile(filename: "./include/media/hevc-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4632 = !{!4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_luma_samples", scope: !4630, file: !4631, line: 57, baseType: !891, size: 16)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_luma_samples", scope: !4630, file: !4631, line: 58, baseType: !891, size: 16, offset: 16)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !4630, file: !4631, line: 59, baseType: !1384, size: 8, offset: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !4630, file: !4631, line: 60, baseType: !1384, size: 8, offset: 40)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !4630, file: !4631, line: 61, baseType: !1384, size: 8, offset: 48)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_dec_pic_buffering_minus1", scope: !4630, file: !4631, line: 62, baseType: !1384, size: 8, offset: 56)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_num_reorder_pics", scope: !4630, file: !4631, line: 63, baseType: !1384, size: 8, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_latency_increase_plus1", scope: !4630, file: !4631, line: 64, baseType: !1384, size: 8, offset: 72)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_luma_coding_block_size_minus3", scope: !4630, file: !4631, line: 65, baseType: !1384, size: 8, offset: 80)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_luma_coding_block_size", scope: !4630, file: !4631, line: 66, baseType: !1384, size: 8, offset: 88)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_luma_transform_block_size_minus2", scope: !4630, file: !4631, line: 67, baseType: !1384, size: 8, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_luma_transform_block_size", scope: !4630, file: !4631, line: 68, baseType: !1384, size: 8, offset: 104)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "max_transform_hierarchy_depth_inter", scope: !4630, file: !4631, line: 69, baseType: !1384, size: 8, offset: 112)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "max_transform_hierarchy_depth_intra", scope: !4630, file: !4631, line: 70, baseType: !1384, size: 8, offset: 120)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_sample_bit_depth_luma_minus1", scope: !4630, file: !4631, line: 71, baseType: !1384, size: 8, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_sample_bit_depth_chroma_minus1", scope: !4630, file: !4631, line: 72, baseType: !1384, size: 8, offset: 136)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_pcm_luma_coding_block_size_minus3", scope: !4630, file: !4631, line: 73, baseType: !1384, size: 8, offset: 144)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_pcm_luma_coding_block_size", scope: !4630, file: !4631, line: 74, baseType: !1384, size: 8, offset: 152)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "num_short_term_ref_pic_sets", scope: !4630, file: !4631, line: 75, baseType: !1384, size: 8, offset: 160)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "num_long_term_ref_pics_sps", scope: !4630, file: !4631, line: 76, baseType: !1384, size: 8, offset: 168)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !4630, file: !4631, line: 77, baseType: !1384, size: 8, offset: 176)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4630, file: !4631, line: 79, baseType: !1384, size: 8, offset: 184)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4630, file: !4631, line: 81, baseType: !449, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_pps", scope: !4350, file: !4293, line: 81, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_pps", file: !4631, line: 104, size: 512, elements: !4659)
!4659 = !{!4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4669, !4673, !4674, !4675, !4676, !4677}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "num_extra_slice_header_bits", scope: !4658, file: !4631, line: 106, baseType: !1384, size: 8)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "init_qp_minus26", scope: !4658, file: !4631, line: 107, baseType: !4462, size: 8, offset: 8)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "diff_cu_qp_delta_depth", scope: !4658, file: !4631, line: 108, baseType: !1384, size: 8, offset: 16)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pps_cb_qp_offset", scope: !4658, file: !4631, line: 109, baseType: !4462, size: 8, offset: 24)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "pps_cr_qp_offset", scope: !4658, file: !4631, line: 110, baseType: !4462, size: 8, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "num_tile_columns_minus1", scope: !4658, file: !4631, line: 111, baseType: !1384, size: 8, offset: 40)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "num_tile_rows_minus1", scope: !4658, file: !4631, line: 112, baseType: !1384, size: 8, offset: 48)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "column_width_minus1", scope: !4658, file: !4631, line: 113, baseType: !4668, size: 160, offset: 56)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 160, elements: !2239)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "row_height_minus1", scope: !4658, file: !4631, line: 114, baseType: !4670, size: 176, offset: 216)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 176, elements: !4671)
!4671 = !{!4672}
!4672 = !DISubrange(count: 22)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "pps_beta_offset_div2", scope: !4658, file: !4631, line: 115, baseType: !4462, size: 8, offset: 392)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "pps_tc_offset_div2", scope: !4658, file: !4631, line: 116, baseType: !4462, size: 8, offset: 400)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "log2_parallel_merge_level_minus2", scope: !4658, file: !4631, line: 117, baseType: !1384, size: 8, offset: 408)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4658, file: !4631, line: 119, baseType: !4596, size: 32, offset: 416)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4658, file: !4631, line: 120, baseType: !449, size: 64, offset: 448)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_slice_params", scope: !4350, file: !4293, line: 82, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_slice_params", file: !4631, line: 164, size: 4224, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4720, !4738}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_size", scope: !4680, file: !4631, line: 165, baseType: !444, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_offset", scope: !4680, file: !4631, line: 166, baseType: !444, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !4680, file: !4631, line: 169, baseType: !1384, size: 8, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "nuh_temporal_id_plus1", scope: !4680, file: !4631, line: 170, baseType: !1384, size: 8, offset: 72)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !4680, file: !4631, line: 173, baseType: !1384, size: 8, offset: 80)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !4680, file: !4631, line: 174, baseType: !1384, size: 8, offset: 88)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "slice_pic_order_cnt", scope: !4680, file: !4631, line: 175, baseType: !891, size: 16, offset: 96)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !4680, file: !4631, line: 176, baseType: !1384, size: 8, offset: 112)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !4680, file: !4631, line: 177, baseType: !1384, size: 8, offset: 120)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "collocated_ref_idx", scope: !4680, file: !4631, line: 178, baseType: !1384, size: 8, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "five_minus_max_num_merge_cand", scope: !4680, file: !4631, line: 179, baseType: !1384, size: 8, offset: 136)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !4680, file: !4631, line: 180, baseType: !4462, size: 8, offset: 144)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "slice_cb_qp_offset", scope: !4680, file: !4631, line: 181, baseType: !4462, size: 8, offset: 152)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "slice_cr_qp_offset", scope: !4680, file: !4631, line: 182, baseType: !4462, size: 8, offset: 160)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_y_qp_offset", scope: !4680, file: !4631, line: 183, baseType: !4462, size: 8, offset: 168)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_cb_qp_offset", scope: !4680, file: !4631, line: 184, baseType: !4462, size: 8, offset: 176)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_cr_qp_offset", scope: !4680, file: !4631, line: 185, baseType: !4462, size: 8, offset: 184)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "slice_beta_offset_div2", scope: !4680, file: !4631, line: 186, baseType: !4462, size: 8, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "slice_tc_offset_div2", scope: !4680, file: !4631, line: 187, baseType: !4462, size: 8, offset: 200)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct", scope: !4680, file: !4631, line: 190, baseType: !1384, size: 8, offset: 208)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_dpb_entries", scope: !4680, file: !4631, line: 193, baseType: !1384, size: 8, offset: 216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx_l0", scope: !4680, file: !4631, line: 194, baseType: !2745, size: 128, offset: 224)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx_l1", scope: !4680, file: !4631, line: 195, baseType: !2745, size: 128, offset: 352)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_st_curr_before", scope: !4680, file: !4631, line: 197, baseType: !1384, size: 8, offset: 480)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_st_curr_after", scope: !4680, file: !4631, line: 198, baseType: !1384, size: 8, offset: 488)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_lt_curr", scope: !4680, file: !4631, line: 199, baseType: !1384, size: 8, offset: 496)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4680, file: !4631, line: 201, baseType: !1384, size: 8, offset: 504)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dpb", scope: !4680, file: !4631, line: 204, baseType: !4710, size: 2048, offset: 512)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4711, size: 2048, elements: !1771)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hevc_dpb_entry", file: !4631, line: 129, size: 128, elements: !4712)
!4712 = !{!4713, !4714, !4715, !4716, !4718}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4711, file: !4631, line: 130, baseType: !449, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "rps", scope: !4711, file: !4631, line: 131, baseType: !1384, size: 8, offset: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic", scope: !4711, file: !4631, line: 132, baseType: !1384, size: 8, offset: 72)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt", scope: !4711, file: !4631, line: 133, baseType: !4717, size: 32, offset: 80)
!4717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 32, elements: !1605)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4711, file: !4631, line: 134, baseType: !4719, size: 16, offset: 112)
!4719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 16, elements: !1605)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "pred_weight_table", scope: !4680, file: !4631, line: 207, baseType: !4721, size: 1600, offset: 2560)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hevc_pred_weight_table", file: !4631, line: 137, size: 1600, elements: !4722)
!4722 = !{!4723, !4725, !4726, !4729, !4730, !4731, !4732, !4733, !4734, !4736, !4737}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "delta_luma_weight_l0", scope: !4721, file: !4631, line: 138, baseType: !4724, size: 128)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 128, elements: !1771)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset_l0", scope: !4721, file: !4631, line: 139, baseType: !4724, size: 128, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_weight_l0", scope: !4721, file: !4631, line: 140, baseType: !4727, size: 256, offset: 256)
!4727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 256, elements: !4728)
!4728 = !{!1772, !1606}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset_l0", scope: !4721, file: !4631, line: 141, baseType: !4727, size: 256, offset: 512)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "delta_luma_weight_l1", scope: !4721, file: !4631, line: 143, baseType: !4724, size: 128, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset_l1", scope: !4721, file: !4631, line: 144, baseType: !4724, size: 128, offset: 896)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_weight_l1", scope: !4721, file: !4631, line: 145, baseType: !4727, size: 256, offset: 1024)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset_l1", scope: !4721, file: !4631, line: 146, baseType: !4727, size: 256, offset: 1280)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4721, file: !4631, line: 148, baseType: !4735, size: 48, offset: 1536)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 48, elements: !1661)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !4721, file: !4631, line: 150, baseType: !1384, size: 8, offset: 1584)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_log2_weight_denom", scope: !4721, file: !4631, line: 151, baseType: !4462, size: 8, offset: 1592)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4680, file: !4631, line: 209, baseType: !449, size: 64, offset: 4160)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "p_area", scope: !4350, file: !4293, line: 83, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_area", file: !130, line: 426, size: 64, elements: !4742)
!4742 = !{!4743, !4744}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4741, file: !130, line: 427, baseType: !444, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4741, file: !130, line: 428, baseType: !444, size: 32, offset: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4350, file: !4293, line: 84, baseType: !225, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "p_const", scope: !4350, file: !4293, line: 85, baseType: !2165, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4342, file: !4293, line: 134, baseType: !4748, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4348, !442, !4350}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !4342, file: !4293, line: 136, baseType: !4752, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !4348}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4342, file: !4293, line: 137, baseType: !4756, size: 64, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!223, !4348, !442, !4350}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4308, file: !4293, line: 263, baseType: !442, size: 32, offset: 576)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4308, file: !4293, line: 264, baseType: !243, size: 64, offset: 640)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4308, file: !4293, line: 265, baseType: !129, size: 32, offset: 704)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4308, file: !4293, line: 266, baseType: !808, size: 64, offset: 768)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4308, file: !4293, line: 266, baseType: !808, size: 64, offset: 832)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4308, file: !4293, line: 266, baseType: !808, size: 64, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !4308, file: !4293, line: 267, baseType: !442, size: 32, offset: 960)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4308, file: !4293, line: 268, baseType: !442, size: 32, offset: 992)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !4308, file: !4293, line: 269, baseType: !4768, size: 128, offset: 1024)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !1186)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_of_dims", scope: !4308, file: !4293, line: 270, baseType: !442, size: 32, offset: 1152)
!4770 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !4293, line: 271, baseType: !4771, size: 64, offset: 1216)
!4771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4308, file: !4293, line: 271, size: 64, elements: !4772)
!4772 = !{!4773, !4774}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !4771, file: !4293, line: 272, baseType: !448, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "menu_skip_mask", scope: !4771, file: !4293, line: 273, baseType: !448, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !4293, line: 275, baseType: !4776, size: 64, offset: 1280)
!4776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4308, file: !4293, line: 275, size: 64, elements: !4777)
!4777 = !{!4778, !4781}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "qmenu", scope: !4776, file: !4293, line: 276, baseType: !4779, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "qmenu_int", scope: !4776, file: !4293, line: 277, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4308, file: !4293, line: 279, baseType: !351, size: 64, offset: 1344)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4308, file: !4293, line: 280, baseType: !225, size: 64, offset: 1408)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4308, file: !4293, line: 281, baseType: !1475, size: 32, offset: 1472)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !4308, file: !4293, line: 284, baseType: !4788, size: 32, offset: 1504)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !4293, line: 282, size: 32, elements: !4789)
!4789 = !{!4790}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4788, file: !4293, line: 283, baseType: !1475, size: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "p_def", scope: !4308, file: !4293, line: 286, baseType: !4350, size: 64, offset: 1536)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "p_new", scope: !4308, file: !4293, line: 287, baseType: !4350, size: 64, offset: 1600)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "p_cur", scope: !4308, file: !4293, line: 288, baseType: !4350, size: 64, offset: 1664)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "helper", scope: !4302, file: !4293, line: 321, baseType: !4795, size: 64, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_helper", file: !4293, line: 31, flags: DIFlagFwdDecl)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "from_other_dev", scope: !4302, file: !4293, line: 322, baseType: !517, size: 8, offset: 320)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "req_done", scope: !4302, file: !4293, line: 323, baseType: !517, size: 8, offset: 328)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !4302, file: !4293, line: 324, baseType: !4301, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "p_req", scope: !4302, file: !4293, line: 325, baseType: !4350, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !4292, file: !4293, line: 367, baseType: !4802, size: 64, offset: 576)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4292, file: !4293, line: 368, baseType: !4804, size: 64, offset: 640)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_ctrl_notify_fnc", file: !4293, line: 151, baseType: !4805)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !4307, !225}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "notify_priv", scope: !4292, file: !4293, line: 369, baseType: !225, size: 64, offset: 704)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_of_buckets", scope: !4292, file: !4293, line: 370, baseType: !890, size: 16, offset: 768)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4292, file: !4293, line: 371, baseType: !223, size: 32, offset: 800)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "request_is_queued", scope: !4292, file: !4293, line: 372, baseType: !517, size: 8, offset: 832)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !4292, file: !4293, line: 373, baseType: !247, size: 128, offset: 896)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "requests_queued", scope: !4292, file: !4293, line: 374, baseType: !247, size: 128, offset: 1024)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "req_obj", scope: !4292, file: !4293, line: 375, baseType: !4815, size: 384, offset: 1152)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object", file: !120, line: 269, size: 384, elements: !4816)
!4816 = !{!4817, !4834, !4835, !4836, !4837, !4838}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4815, file: !120, line: 270, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4820)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object_ops", file: !120, line: 247, size: 320, elements: !4821)
!4821 = !{!4822, !4827, !4831, !4832, !4833}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4820, file: !120, line: 248, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!223, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !4820, file: !120, line: 249, baseType: !4828, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !4826}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4820, file: !120, line: 250, baseType: !4828, size: 64, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4820, file: !120, line: 251, baseType: !4828, size: 64, offset: 192)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4820, file: !120, line: 252, baseType: !4828, size: 64, offset: 256)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4815, file: !120, line: 271, baseType: !225, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !4815, file: !120, line: 272, baseType: !4157, size: 64, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4815, file: !120, line: 273, baseType: !247, size: 128, offset: 192)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4815, file: !120, line: 274, baseType: !3417, size: 32, offset: 320)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "completed", scope: !4815, file: !120, line: 275, baseType: !517, size: 8, offset: 352)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4260, file: !147, line: 283, baseType: !4840, size: 64, offset: 9344)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_queue", file: !147, line: 283, flags: DIFlagFwdDecl)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4260, file: !147, line: 285, baseType: !4843, size: 64, offset: 9408)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_prio_state", file: !147, line: 111, size: 128, elements: !4845)
!4845 = !{!4846}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "prios", scope: !4844, file: !147, line: 112, baseType: !4847, size: 128)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 128, elements: !1186)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4260, file: !147, line: 288, baseType: !2738, size: 256, offset: 9472)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_type", scope: !4260, file: !147, line: 289, baseType: !146, size: 32, offset: 9728)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_dir", scope: !4260, file: !147, line: 290, baseType: !156, size: 32, offset: 9760)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4260, file: !147, line: 291, baseType: !223, size: 32, offset: 9792)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4260, file: !147, line: 292, baseType: !890, size: 16, offset: 9824)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4260, file: !147, line: 293, baseType: !351, size: 64, offset: 9856)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4260, file: !147, line: 294, baseType: !223, size: 32, offset: 9920)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "fh_lock", scope: !4260, file: !147, line: 297, baseType: !261, offset: 9952)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "fh_list", scope: !4260, file: !147, line: 298, baseType: !247, size: 128, offset: 9984)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_debug", scope: !4260, file: !147, line: 300, baseType: !223, size: 32, offset: 10112)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "tvnorms", scope: !4260, file: !147, line: 302, baseType: !4859, size: 64, offset: 10176)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !130, line: 1260, baseType: !449)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4260, file: !147, line: 305, baseType: !4861, size: 64, offset: 10240)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !4259}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_ops", scope: !4260, file: !147, line: 306, baseType: !4865, size: 64, offset: 10304)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4867)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ioctl_ops", file: !4868, line: 296, size: 7616, elements: !4869)
!4868 = !DIFile(filename: "./include/media/v4l2-ioctl.h", directory: "/home/lizy2001/genbc/linux")
!4869 = !{!4870, !4886, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5079, !5137, !5138, !5151, !5152, !5166, !5167, !5171, !5192, !5198, !5202, !5203, !5208, !5212, !5213, !5229, !5233, !5234, !5249, !5250, !5251, !5267, !5289, !5298, !5299, !5335, !5336, !5337, !5352, !5364, !5365, !5371, !5383, !5384, !5390, !5405, !5411, !5420, !5433, !5434, !5451, !5457, !5476, !5492, !5493, !5519, !5520, !5550, !5551, !5569, !5575, !5586, !5592, !5607, !5618, !5622, !5639, !5667, !5690, !5728, !5729, !5730, !5741, !5767, !5780, !5781, !5793, !5794}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_querycap", scope: !4867, file: !4868, line: 300, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!223, !379, !225, !4874}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_capability", file: !130, line: 442, size: 832, elements: !4876)
!4876 = !{!4877, !4878, !4880, !4881, !4882, !4883, !4884}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4875, file: !130, line: 443, baseType: !2745, size: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4875, file: !130, line: 444, baseType: !4879, size: 256, offset: 128)
!4879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 256, elements: !2268)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "bus_info", scope: !4875, file: !130, line: 445, baseType: !4879, size: 256, offset: 384)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4875, file: !130, line: 446, baseType: !444, size: 32, offset: 640)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4875, file: !130, line: 447, baseType: !444, size: 32, offset: 672)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4875, file: !130, line: 448, baseType: !444, size: 32, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4875, file: !130, line: 449, baseType: !4885, size: 96, offset: 736)
!4885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 96, elements: !303)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_vid_cap", scope: !4867, file: !4868, line: 304, baseType: !4887, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!223, !379, !225, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fmtdesc", file: !130, line: 783, size: 512, elements: !4892)
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4898, !4899}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4891, file: !130, line: 784, baseType: !444, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4891, file: !130, line: 785, baseType: !444, size: 32, offset: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4891, file: !130, line: 786, baseType: !444, size: 32, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4891, file: !130, line: 787, baseType: !4879, size: 256, offset: 96)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "pixelformat", scope: !4891, file: !130, line: 788, baseType: !444, size: 32, offset: 352)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mbus_code", scope: !4891, file: !130, line: 789, baseType: !444, size: 32, offset: 384)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4891, file: !130, line: 790, baseType: !4885, size: 96, offset: 416)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_vid_overlay", scope: !4867, file: !4868, line: 306, baseType: !4887, size: 64, offset: 128)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_vid_out", scope: !4867, file: !4868, line: 308, baseType: !4887, size: 64, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_sdr_cap", scope: !4867, file: !4868, line: 310, baseType: !4887, size: 64, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_sdr_out", scope: !4867, file: !4868, line: 312, baseType: !4887, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_meta_cap", scope: !4867, file: !4868, line: 314, baseType: !4887, size: 64, offset: 384)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_fmt_meta_out", scope: !4867, file: !4868, line: 316, baseType: !4887, size: 64, offset: 448)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_cap", scope: !4867, file: !4868, line: 320, baseType: !4907, size: 64, offset: 512)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!223, !379, !225, !4910}
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_format", file: !130, line: 2288, size: 1664, elements: !4912)
!4912 = !{!4913, !4914}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4911, file: !130, line: 2289, baseType: !444, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4911, file: !130, line: 2299, baseType: !4915, size: 1600, offset: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4911, file: !130, line: 2290, size: 1600, elements: !4916)
!4916 = !{!4917, !4936, !4965, !4986, !4998, !5008, !5016, !5021}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "pix", scope: !4915, file: !130, line: 2291, baseType: !4918, size: 384)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_pix_format", file: !130, line: 498, size: 384, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4934, !4935}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4918, file: !130, line: 499, baseType: !444, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4918, file: !130, line: 500, baseType: !444, size: 32, offset: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pixelformat", scope: !4918, file: !130, line: 501, baseType: !444, size: 32, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !4918, file: !130, line: 502, baseType: !444, size: 32, offset: 96)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "bytesperline", scope: !4918, file: !130, line: 503, baseType: !444, size: 32, offset: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "sizeimage", scope: !4918, file: !130, line: 504, baseType: !444, size: 32, offset: 160)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4918, file: !130, line: 505, baseType: !444, size: 32, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4918, file: !130, line: 506, baseType: !444, size: 32, offset: 224)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4918, file: !130, line: 507, baseType: !444, size: 32, offset: 256)
!4929 = !DIDerivedType(tag: DW_TAG_member, scope: !4918, file: !130, line: 508, baseType: !4930, size: 32, offset: 288)
!4930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4918, file: !130, line: 508, size: 32, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !4930, file: !130, line: 510, baseType: !444, size: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "hsv_enc", scope: !4930, file: !130, line: 512, baseType: !444, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !4918, file: !130, line: 514, baseType: !444, size: 32, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !4918, file: !130, line: 515, baseType: !444, size: 32, offset: 352)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "pix_mp", scope: !4915, file: !130, line: 2292, baseType: !4937, size: 1536)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_pix_format_mplane", file: !130, line: 2238, size: 1536, elements: !4938)
!4938 = !{!4939, !4940, !4941, !4942, !4943, !4944, !4952, !4953, !4954, !4959, !4960, !4961}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4937, file: !130, line: 2239, baseType: !444, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4937, file: !130, line: 2240, baseType: !444, size: 32, offset: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "pixelformat", scope: !4937, file: !130, line: 2241, baseType: !444, size: 32, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !4937, file: !130, line: 2242, baseType: !444, size: 32, offset: 96)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4937, file: !130, line: 2243, baseType: !444, size: 32, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "plane_fmt", scope: !4937, file: !130, line: 2245, baseType: !4945, size: 1280, offset: 160)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4946, size: 1280, elements: !1361)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_plane_pix_format", file: !130, line: 2218, size: 160, elements: !4947)
!4947 = !{!4948, !4949, !4950}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "sizeimage", scope: !4946, file: !130, line: 2219, baseType: !444, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "bytesperline", scope: !4946, file: !130, line: 2220, baseType: !444, size: 32, offset: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4946, file: !130, line: 2221, baseType: !4951, size: 96, offset: 64)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 96, elements: !1661)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !4937, file: !130, line: 2246, baseType: !1384, size: 8, offset: 1440)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4937, file: !130, line: 2247, baseType: !1384, size: 8, offset: 1448)
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !4937, file: !130, line: 2248, baseType: !4955, size: 8, offset: 1456)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4937, file: !130, line: 2248, size: 8, elements: !4956)
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !4955, file: !130, line: 2249, baseType: !1384, size: 8)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "hsv_enc", scope: !4955, file: !130, line: 2250, baseType: !1384, size: 8)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !4937, file: !130, line: 2252, baseType: !1384, size: 8, offset: 1464)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !4937, file: !130, line: 2253, baseType: !1384, size: 8, offset: 1472)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4937, file: !130, line: 2254, baseType: !4962, size: 56, offset: 1480)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 56, elements: !4963)
!4963 = !{!4964}
!4964 = !DISubrange(count: 7)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !4915, file: !130, line: 2293, baseType: !4966, size: 448)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_window", file: !130, line: 1184, size: 448, elements: !4967)
!4967 = !{!4968, !4975, !4976, !4977, !4983, !4984, !4985}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !4966, file: !130, line: 1185, baseType: !4969, size: 128)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_rect", file: !130, line: 414, size: 128, elements: !4970)
!4970 = !{!4971, !4972, !4973, !4974}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !4969, file: !130, line: 415, baseType: !1476, size: 32)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4969, file: !130, line: 416, baseType: !1476, size: 32, offset: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4969, file: !130, line: 417, baseType: !444, size: 32, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4969, file: !130, line: 418, baseType: !444, size: 32, offset: 96)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !4966, file: !130, line: 1186, baseType: !444, size: 32, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "chromakey", scope: !4966, file: !130, line: 1187, baseType: !444, size: 32, offset: 160)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "clips", scope: !4966, file: !130, line: 1188, baseType: !4978, size: 64, offset: 192)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_clip", file: !130, line: 1179, size: 192, elements: !4980)
!4980 = !{!4981, !4982}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4979, file: !130, line: 1180, baseType: !4969, size: 128)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4979, file: !130, line: 1181, baseType: !4978, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "clipcount", scope: !4966, file: !130, line: 1189, baseType: !444, size: 32, offset: 256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4966, file: !130, line: 1190, baseType: !225, size: 64, offset: 320)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "global_alpha", scope: !4966, file: !130, line: 1191, baseType: !1384, size: 8, offset: 384)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "vbi", scope: !4915, file: !130, line: 2294, baseType: !4987, size: 352)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vbi_format", file: !130, line: 2089, size: 352, elements: !4988)
!4988 = !{!4989, !4990, !4991, !4992, !4993, !4995, !4996, !4997}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_rate", scope: !4987, file: !130, line: 2090, baseType: !444, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4987, file: !130, line: 2091, baseType: !444, size: 32, offset: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "samples_per_line", scope: !4987, file: !130, line: 2092, baseType: !444, size: 32, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "sample_format", scope: !4987, file: !130, line: 2093, baseType: !444, size: 32, offset: 96)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4987, file: !130, line: 2094, baseType: !4994, size: 64, offset: 128)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 64, elements: !1605)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4987, file: !130, line: 2095, baseType: !1604, size: 64, offset: 192)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4987, file: !130, line: 2096, baseType: !444, size: 32, offset: 256)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4987, file: !130, line: 2097, baseType: !1604, size: 64, offset: 288)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "sliced", scope: !4915, file: !130, line: 2295, baseType: !4999, size: 896)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_format", file: !130, line: 2117, size: 896, elements: !5000)
!5000 = !{!5001, !5002, !5006, !5007}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !4999, file: !130, line: 2118, baseType: !891, size: 16)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !4999, file: !130, line: 2123, baseType: !5003, size: 768, offset: 16)
!5003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 768, elements: !5004)
!5004 = !{!1606, !5005}
!5005 = !DISubrange(count: 24)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "io_size", scope: !4999, file: !130, line: 2124, baseType: !444, size: 32, offset: 800)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4999, file: !130, line: 2125, baseType: !1604, size: 64, offset: 832)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !4915, file: !130, line: 2296, baseType: !5009, size: 256)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sdr_format", file: !130, line: 2262, size: 256, elements: !5010)
!5010 = !{!5011, !5012, !5013}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pixelformat", scope: !5009, file: !130, line: 2263, baseType: !444, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "buffersize", scope: !5009, file: !130, line: 2264, baseType: !444, size: 32, offset: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5009, file: !130, line: 2265, baseType: !5014, size: 192, offset: 64)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 192, elements: !5015)
!5015 = !{!5005}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "meta", scope: !4915, file: !130, line: 2297, baseType: !5017, size: 64)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_meta_format", file: !130, line: 2273, size: 64, elements: !5018)
!5018 = !{!5019, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "dataformat", scope: !5017, file: !130, line: 2274, baseType: !444, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "buffersize", scope: !5017, file: !130, line: 2275, baseType: !444, size: 32, offset: 32)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !4915, file: !130, line: 2298, baseType: !5022, size: 1600)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 1600, elements: !5023)
!5023 = !{!5024}
!5024 = !DISubrange(count: 200)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_overlay", scope: !4867, file: !4868, line: 322, baseType: !4907, size: 64, offset: 576)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_out", scope: !4867, file: !4868, line: 324, baseType: !4907, size: 64, offset: 640)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_out_overlay", scope: !4867, file: !4868, line: 326, baseType: !4907, size: 64, offset: 704)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vbi_cap", scope: !4867, file: !4868, line: 328, baseType: !4907, size: 64, offset: 768)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vbi_out", scope: !4867, file: !4868, line: 330, baseType: !4907, size: 64, offset: 832)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_sliced_vbi_cap", scope: !4867, file: !4868, line: 332, baseType: !4907, size: 64, offset: 896)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_sliced_vbi_out", scope: !4867, file: !4868, line: 334, baseType: !4907, size: 64, offset: 960)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_cap_mplane", scope: !4867, file: !4868, line: 336, baseType: !4907, size: 64, offset: 1024)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_vid_out_mplane", scope: !4867, file: !4868, line: 338, baseType: !4907, size: 64, offset: 1088)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_sdr_cap", scope: !4867, file: !4868, line: 340, baseType: !4907, size: 64, offset: 1152)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_sdr_out", scope: !4867, file: !4868, line: 342, baseType: !4907, size: 64, offset: 1216)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_meta_cap", scope: !4867, file: !4868, line: 344, baseType: !4907, size: 64, offset: 1280)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fmt_meta_out", scope: !4867, file: !4868, line: 346, baseType: !4907, size: 64, offset: 1344)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_cap", scope: !4867, file: !4868, line: 350, baseType: !4907, size: 64, offset: 1408)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_overlay", scope: !4867, file: !4868, line: 352, baseType: !4907, size: 64, offset: 1472)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_out", scope: !4867, file: !4868, line: 354, baseType: !4907, size: 64, offset: 1536)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_out_overlay", scope: !4867, file: !4868, line: 356, baseType: !4907, size: 64, offset: 1600)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vbi_cap", scope: !4867, file: !4868, line: 358, baseType: !4907, size: 64, offset: 1664)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vbi_out", scope: !4867, file: !4868, line: 360, baseType: !4907, size: 64, offset: 1728)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_sliced_vbi_cap", scope: !4867, file: !4868, line: 362, baseType: !4907, size: 64, offset: 1792)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_sliced_vbi_out", scope: !4867, file: !4868, line: 364, baseType: !4907, size: 64, offset: 1856)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_cap_mplane", scope: !4867, file: !4868, line: 366, baseType: !4907, size: 64, offset: 1920)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_vid_out_mplane", scope: !4867, file: !4868, line: 368, baseType: !4907, size: 64, offset: 1984)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_sdr_cap", scope: !4867, file: !4868, line: 370, baseType: !4907, size: 64, offset: 2048)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_sdr_out", scope: !4867, file: !4868, line: 372, baseType: !4907, size: 64, offset: 2112)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_meta_cap", scope: !4867, file: !4868, line: 374, baseType: !4907, size: 64, offset: 2176)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fmt_meta_out", scope: !4867, file: !4868, line: 376, baseType: !4907, size: 64, offset: 2240)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_cap", scope: !4867, file: !4868, line: 380, baseType: !4907, size: 64, offset: 2304)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_overlay", scope: !4867, file: !4868, line: 382, baseType: !4907, size: 64, offset: 2368)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_out", scope: !4867, file: !4868, line: 384, baseType: !4907, size: 64, offset: 2432)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_out_overlay", scope: !4867, file: !4868, line: 386, baseType: !4907, size: 64, offset: 2496)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vbi_cap", scope: !4867, file: !4868, line: 388, baseType: !4907, size: 64, offset: 2560)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vbi_out", scope: !4867, file: !4868, line: 390, baseType: !4907, size: 64, offset: 2624)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_sliced_vbi_cap", scope: !4867, file: !4868, line: 392, baseType: !4907, size: 64, offset: 2688)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_sliced_vbi_out", scope: !4867, file: !4868, line: 394, baseType: !4907, size: 64, offset: 2752)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_cap_mplane", scope: !4867, file: !4868, line: 396, baseType: !4907, size: 64, offset: 2816)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_vid_out_mplane", scope: !4867, file: !4868, line: 398, baseType: !4907, size: 64, offset: 2880)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_sdr_cap", scope: !4867, file: !4868, line: 400, baseType: !4907, size: 64, offset: 2944)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_sdr_out", scope: !4867, file: !4868, line: 402, baseType: !4907, size: 64, offset: 3008)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_meta_cap", scope: !4867, file: !4868, line: 404, baseType: !4907, size: 64, offset: 3072)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_fmt_meta_out", scope: !4867, file: !4868, line: 406, baseType: !4907, size: 64, offset: 3136)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_reqbufs", scope: !4867, file: !4868, line: 410, baseType: !5067, size: 64, offset: 3200)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!223, !379, !225, !5070}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_requestbuffers", file: !130, line: 950, size: 160, elements: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5071, file: !130, line: 951, baseType: !444, size: 32)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5071, file: !130, line: 952, baseType: !444, size: 32, offset: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !5071, file: !130, line: 953, baseType: !444, size: 32, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5071, file: !130, line: 954, baseType: !444, size: 32, offset: 96)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5071, file: !130, line: 955, baseType: !5078, size: 32, offset: 128)
!5078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 32, elements: !1402)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_querybuf", scope: !4867, file: !4868, line: 412, baseType: !5080, size: 64, offset: 3264)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!223, !379, !225, !5083}
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_buffer", file: !130, line: 1030, size: 704, elements: !5085)
!5085 = !{!5086, !5087, !5088, !5089, !5090, !5091, !5096, !5106, !5107, !5108, !5130, !5131, !5132}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5084, file: !130, line: 1031, baseType: !444, size: 32)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5084, file: !130, line: 1032, baseType: !444, size: 32, offset: 32)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "bytesused", scope: !5084, file: !130, line: 1033, baseType: !444, size: 32, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5084, file: !130, line: 1034, baseType: !444, size: 32, offset: 96)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5084, file: !130, line: 1035, baseType: !444, size: 32, offset: 128)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5084, file: !130, line: 1037, baseType: !5092, size: 128, offset: 192)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_v4l2_timeval", file: !130, line: 939, size: 128, elements: !5093)
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5092, file: !130, line: 940, baseType: !560, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5092, file: !130, line: 945, baseType: !560, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "timecode", scope: !5084, file: !130, line: 1041, baseType: !5097, size: 128, offset: 320)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_timecode", file: !130, line: 874, size: 128, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5105}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5097, file: !130, line: 875, baseType: !444, size: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5097, file: !130, line: 876, baseType: !444, size: 32, offset: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !5097, file: !130, line: 877, baseType: !1384, size: 8, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !5097, file: !130, line: 878, baseType: !1384, size: 8, offset: 72)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "minutes", scope: !5097, file: !130, line: 879, baseType: !1384, size: 8, offset: 80)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "hours", scope: !5097, file: !130, line: 880, baseType: !1384, size: 8, offset: 88)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "userbits", scope: !5097, file: !130, line: 881, baseType: !4596, size: 32, offset: 96)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5084, file: !130, line: 1042, baseType: !444, size: 32, offset: 448)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !5084, file: !130, line: 1045, baseType: !444, size: 32, offset: 480)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !5084, file: !130, line: 1051, baseType: !5109, size: 64, offset: 512)
!5109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5084, file: !130, line: 1046, size: 64, elements: !5110)
!5110 = !{!5111, !5112, !5113, !5129}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5109, file: !130, line: 1047, baseType: !444, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !5109, file: !130, line: 1048, baseType: !351, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !5109, file: !130, line: 1049, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_plane", file: !130, line: 987, size: 512, elements: !5116)
!5116 = !{!5117, !5118, !5119, !5125, !5126}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "bytesused", scope: !5115, file: !130, line: 988, baseType: !444, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5115, file: !130, line: 989, baseType: !444, size: 32, offset: 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !5115, file: !130, line: 994, baseType: !5120, size: 64, offset: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5115, file: !130, line: 990, size: 64, elements: !5121)
!5121 = !{!5122, !5123, !5124}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "mem_offset", scope: !5120, file: !130, line: 991, baseType: !444, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !5120, file: !130, line: 992, baseType: !351, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5120, file: !130, line: 993, baseType: !1476, size: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "data_offset", scope: !5115, file: !130, line: 995, baseType: !444, size: 32, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5115, file: !130, line: 996, baseType: !5127, size: 352, offset: 160)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 352, elements: !5128)
!5128 = !{!4594}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5109, file: !130, line: 1050, baseType: !1476, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5084, file: !130, line: 1052, baseType: !444, size: 32, offset: 576)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5084, file: !130, line: 1053, baseType: !444, size: 32, offset: 608)
!5132 = !DIDerivedType(tag: DW_TAG_member, scope: !5084, file: !130, line: 1054, baseType: !5133, size: 32, offset: 640)
!5133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5084, file: !130, line: 1054, size: 32, elements: !5134)
!5134 = !{!5135, !5136}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "request_fd", scope: !5133, file: !130, line: 1055, baseType: !1476, size: 32)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5133, file: !130, line: 1056, baseType: !444, size: 32)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_qbuf", scope: !4867, file: !4868, line: 414, baseType: !5080, size: 64, offset: 3328)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_expbuf", scope: !4867, file: !4868, line: 416, baseType: !5139, size: 64, offset: 3392)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!223, !379, !225, !5142}
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_exportbuffer", file: !130, line: 1132, size: 512, elements: !5144)
!5144 = !{!5145, !5146, !5147, !5148, !5149, !5150}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5143, file: !130, line: 1133, baseType: !444, size: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5143, file: !130, line: 1134, baseType: !444, size: 32, offset: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5143, file: !130, line: 1135, baseType: !444, size: 32, offset: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5143, file: !130, line: 1136, baseType: !444, size: 32, offset: 96)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5143, file: !130, line: 1137, baseType: !1476, size: 32, offset: 128)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5143, file: !130, line: 1138, baseType: !5127, size: 352, offset: 160)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_dqbuf", scope: !4867, file: !4868, line: 418, baseType: !5080, size: 64, offset: 3456)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_create_bufs", scope: !4867, file: !4868, line: 421, baseType: !5153, size: 64, offset: 3520)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!223, !379, !225, !5156}
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_create_buffers", file: !130, line: 2461, size: 2048, elements: !5158)
!5158 = !{!5159, !5160, !5161, !5162, !5163, !5164}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5157, file: !130, line: 2462, baseType: !444, size: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5157, file: !130, line: 2463, baseType: !444, size: 32, offset: 32)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !5157, file: !130, line: 2464, baseType: !444, size: 32, offset: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5157, file: !130, line: 2465, baseType: !4911, size: 1664, offset: 128)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5157, file: !130, line: 2466, baseType: !444, size: 32, offset: 1792)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5157, file: !130, line: 2467, baseType: !5165, size: 224, offset: 1824)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 224, elements: !4963)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_prepare_buf", scope: !4867, file: !4868, line: 423, baseType: !5080, size: 64, offset: 3584)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_overlay", scope: !4867, file: !4868, line: 426, baseType: !5168, size: 64, offset: 3648)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!223, !379, !225, !7}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_fbuf", scope: !4867, file: !4868, line: 427, baseType: !5172, size: 64, offset: 3712)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!223, !379, !225, !5175}
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_framebuffer", file: !130, line: 1144, size: 384, elements: !5177)
!5177 = !{!5178, !5179, !5180, !5181}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5176, file: !130, line: 1145, baseType: !444, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5176, file: !130, line: 1146, baseType: !444, size: 32, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5176, file: !130, line: 1149, baseType: !225, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5176, file: !130, line: 1159, baseType: !5182, size: 256, offset: 128)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5176, file: !130, line: 1150, size: 256, elements: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5182, file: !130, line: 1151, baseType: !444, size: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5182, file: !130, line: 1152, baseType: !444, size: 32, offset: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "pixelformat", scope: !5182, file: !130, line: 1153, baseType: !444, size: 32, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5182, file: !130, line: 1154, baseType: !444, size: 32, offset: 96)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "bytesperline", scope: !5182, file: !130, line: 1155, baseType: !444, size: 32, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "sizeimage", scope: !5182, file: !130, line: 1156, baseType: !444, size: 32, offset: 160)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5182, file: !130, line: 1157, baseType: !444, size: 32, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5182, file: !130, line: 1158, baseType: !444, size: 32, offset: 224)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_fbuf", scope: !4867, file: !4868, line: 429, baseType: !5193, size: 64, offset: 3776)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!223, !379, !225, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5176)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_streamon", scope: !4867, file: !4868, line: 433, baseType: !5199, size: 64, offset: 3840)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!223, !379, !225, !161}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_streamoff", scope: !4867, file: !4868, line: 435, baseType: !5199, size: 64, offset: 3904)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_std", scope: !4867, file: !4868, line: 443, baseType: !5204, size: 64, offset: 3968)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!223, !379, !225, !5207}
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_std", scope: !4867, file: !4868, line: 444, baseType: !5209, size: 64, offset: 4032)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!223, !379, !225, !4859}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_querystd", scope: !4867, file: !4868, line: 445, baseType: !5204, size: 64, offset: 4096)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_input", scope: !4867, file: !4868, line: 448, baseType: !5214, size: 64, offset: 4160)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!223, !379, !225, !5217}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_input", file: !130, line: 1641, size: 640, elements: !5219)
!5219 = !{!5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5218, file: !130, line: 1642, baseType: !444, size: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5218, file: !130, line: 1643, baseType: !4879, size: 256, offset: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5218, file: !130, line: 1644, baseType: !444, size: 32, offset: 288)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "audioset", scope: !5218, file: !130, line: 1645, baseType: !444, size: 32, offset: 320)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5218, file: !130, line: 1646, baseType: !444, size: 32, offset: 352)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !5218, file: !130, line: 1647, baseType: !4859, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5218, file: !130, line: 1648, baseType: !444, size: 32, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5218, file: !130, line: 1649, baseType: !444, size: 32, offset: 480)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5218, file: !130, line: 1650, baseType: !4885, size: 96, offset: 512)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_input", scope: !4867, file: !4868, line: 450, baseType: !5230, size: 64, offset: 4224)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!223, !379, !225, !2721}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_input", scope: !4867, file: !4868, line: 451, baseType: !5168, size: 64, offset: 4288)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_output", scope: !4867, file: !4868, line: 454, baseType: !5235, size: 64, offset: 4352)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!223, !379, !225, !5238}
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_output", file: !130, line: 1693, size: 576, elements: !5240)
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5239, file: !130, line: 1694, baseType: !444, size: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5239, file: !130, line: 1695, baseType: !4879, size: 256, offset: 32)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5239, file: !130, line: 1696, baseType: !444, size: 32, offset: 288)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "audioset", scope: !5239, file: !130, line: 1697, baseType: !444, size: 32, offset: 320)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "modulator", scope: !5239, file: !130, line: 1698, baseType: !444, size: 32, offset: 352)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !5239, file: !130, line: 1699, baseType: !4859, size: 64, offset: 384)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5239, file: !130, line: 1700, baseType: !444, size: 32, offset: 448)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5239, file: !130, line: 1701, baseType: !4885, size: 96, offset: 480)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_output", scope: !4867, file: !4868, line: 456, baseType: !5230, size: 64, offset: 4416)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_output", scope: !4867, file: !4868, line: 457, baseType: !5168, size: 64, offset: 4480)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_queryctrl", scope: !4867, file: !4868, line: 460, baseType: !5252, size: 64, offset: 4544)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!223, !379, !225, !5255}
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_queryctrl", file: !130, line: 1783, size: 544, elements: !5257)
!5257 = !{!5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5256, file: !130, line: 1784, baseType: !444, size: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5256, file: !130, line: 1785, baseType: !444, size: 32, offset: 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5256, file: !130, line: 1786, baseType: !4879, size: 256, offset: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5256, file: !130, line: 1787, baseType: !1476, size: 32, offset: 320)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5256, file: !130, line: 1788, baseType: !1476, size: 32, offset: 352)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !5256, file: !130, line: 1789, baseType: !1476, size: 32, offset: 384)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !5256, file: !130, line: 1790, baseType: !1476, size: 32, offset: 416)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5256, file: !130, line: 1791, baseType: !444, size: 32, offset: 448)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5256, file: !130, line: 1792, baseType: !1604, size: 64, offset: 480)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_query_ext_ctrl", scope: !4867, file: !4868, line: 462, baseType: !5268, size: 64, offset: 4608)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!223, !379, !225, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_query_ext_ctrl", file: !130, line: 1796, size: 1856, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5287}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5272, file: !130, line: 1797, baseType: !444, size: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5272, file: !130, line: 1798, baseType: !444, size: 32, offset: 32)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5272, file: !130, line: 1799, baseType: !2738, size: 256, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5272, file: !130, line: 1800, baseType: !567, size: 64, offset: 320)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5272, file: !130, line: 1801, baseType: !567, size: 64, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !5272, file: !130, line: 1802, baseType: !449, size: 64, offset: 448)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !5272, file: !130, line: 1803, baseType: !567, size: 64, offset: 512)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5272, file: !130, line: 1804, baseType: !444, size: 32, offset: 576)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !5272, file: !130, line: 1805, baseType: !444, size: 32, offset: 608)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !5272, file: !130, line: 1806, baseType: !444, size: 32, offset: 640)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_of_dims", scope: !5272, file: !130, line: 1807, baseType: !444, size: 32, offset: 672)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !5272, file: !130, line: 1808, baseType: !5286, size: 128, offset: 704)
!5286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !1186)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5272, file: !130, line: 1809, baseType: !5288, size: 1024, offset: 832)
!5288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 1024, elements: !2268)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_ctrl", scope: !4867, file: !4868, line: 464, baseType: !5290, size: 64, offset: 4672)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!223, !379, !225, !5293}
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_control", file: !130, line: 1717, size: 64, elements: !5295)
!5295 = !{!5296, !5297}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5294, file: !130, line: 1718, baseType: !444, size: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5294, file: !130, line: 1719, baseType: !1476, size: 32, offset: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_ctrl", scope: !4867, file: !4868, line: 466, baseType: !5290, size: 64, offset: 4736)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_ext_ctrls", scope: !4867, file: !4868, line: 468, baseType: !5300, size: 64, offset: 4800)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!223, !379, !225, !5303}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ext_controls", file: !130, line: 1738, size: 256, elements: !5305)
!5305 = !{!5306, !5310, !5311, !5312, !5313, !5314}
!5306 = !DIDerivedType(tag: DW_TAG_member, scope: !5304, file: !130, line: 1739, baseType: !5307, size: 32)
!5307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5304, file: !130, line: 1739, size: 32, elements: !5308)
!5308 = !{!5309}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5307, file: !130, line: 1743, baseType: !444, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5304, file: !130, line: 1745, baseType: !444, size: 32, offset: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "error_idx", scope: !5304, file: !130, line: 1746, baseType: !444, size: 32, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "request_fd", scope: !5304, file: !130, line: 1747, baseType: !1476, size: 32, offset: 96)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5304, file: !130, line: 1748, baseType: !5078, size: 32, offset: 128)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !5304, file: !130, line: 1749, baseType: !5315, size: 64, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ext_control", file: !130, line: 1722, size: 160, elements: !5317)
!5317 = !{!5318, !5319, !5320, !5321}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5316, file: !130, line: 1723, baseType: !444, size: 32)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5316, file: !130, line: 1724, baseType: !444, size: 32, offset: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5316, file: !130, line: 1725, baseType: !5078, size: 32, offset: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !5316, file: !130, line: 1726, baseType: !5322, size: 64, offset: 96)
!5322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5316, file: !130, line: 1726, size: 64, elements: !5323)
!5323 = !{!5324, !5325, !5326, !5327, !5329, !5331, !5333, !5334}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5322, file: !130, line: 1727, baseType: !1476, size: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "value64", scope: !5322, file: !130, line: 1728, baseType: !567, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5322, file: !130, line: 1729, baseType: !302, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "p_u8", scope: !5322, file: !130, line: 1730, baseType: !5328, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "p_u16", scope: !5322, file: !130, line: 1731, baseType: !5330, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "p_u32", scope: !5322, file: !130, line: 1732, baseType: !5332, size: 64)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "p_area", scope: !5322, file: !130, line: 1733, baseType: !4740, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5322, file: !130, line: 1734, baseType: !225, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_ext_ctrls", scope: !4867, file: !4868, line: 470, baseType: !5300, size: 64, offset: 4864)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_ext_ctrls", scope: !4867, file: !4868, line: 472, baseType: !5300, size: 64, offset: 4928)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_querymenu", scope: !4867, file: !4868, line: 474, baseType: !5338, size: 64, offset: 4992)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!223, !379, !225, !5341}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_querymenu", file: !130, line: 1813, size: 352, elements: !5343)
!5343 = !{!5344, !5345, !5346, !5351}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5342, file: !130, line: 1814, baseType: !444, size: 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5342, file: !130, line: 1815, baseType: !444, size: 32, offset: 32)
!5346 = !DIDerivedType(tag: DW_TAG_member, scope: !5342, file: !130, line: 1816, baseType: !5347, size: 256, offset: 64)
!5347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5342, file: !130, line: 1816, size: 256, elements: !5348)
!5348 = !{!5349, !5350}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5347, file: !130, line: 1817, baseType: !4879, size: 256)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5347, file: !130, line: 1818, baseType: !567, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5342, file: !130, line: 1820, baseType: !444, size: 32, offset: 320)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enumaudio", scope: !4867, file: !4868, line: 478, baseType: !5353, size: 64, offset: 5056)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!223, !379, !225, !5356}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_audio", file: !130, line: 1963, size: 416, elements: !5358)
!5358 = !{!5359, !5360, !5361, !5362, !5363}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5357, file: !130, line: 1964, baseType: !444, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5357, file: !130, line: 1965, baseType: !4879, size: 256, offset: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5357, file: !130, line: 1966, baseType: !444, size: 32, offset: 288)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5357, file: !130, line: 1967, baseType: !444, size: 32, offset: 320)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5357, file: !130, line: 1968, baseType: !1604, size: 64, offset: 352)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_audio", scope: !4867, file: !4868, line: 480, baseType: !5353, size: 64, offset: 5120)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_audio", scope: !4867, file: !4868, line: 482, baseType: !5366, size: 64, offset: 5184)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!223, !379, !225, !5369}
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5357)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enumaudout", scope: !4867, file: !4868, line: 486, baseType: !5372, size: 64, offset: 5248)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!223, !379, !225, !5375}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_audioout", file: !130, line: 1978, size: 416, elements: !5377)
!5377 = !{!5378, !5379, !5380, !5381, !5382}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5376, file: !130, line: 1979, baseType: !444, size: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5376, file: !130, line: 1980, baseType: !4879, size: 256, offset: 32)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5376, file: !130, line: 1981, baseType: !444, size: 32, offset: 288)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5376, file: !130, line: 1982, baseType: !444, size: 32, offset: 320)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5376, file: !130, line: 1983, baseType: !1604, size: 64, offset: 352)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_audout", scope: !4867, file: !4868, line: 488, baseType: !5372, size: 64, offset: 5312)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_audout", scope: !4867, file: !4868, line: 490, baseType: !5385, size: 64, offset: 5376)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!223, !379, !225, !5388}
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5376)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_modulator", scope: !4867, file: !4868, line: 492, baseType: !5391, size: 64, offset: 5440)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!223, !379, !225, !5394}
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_modulator", file: !130, line: 1863, size: 544, elements: !5396)
!5396 = !{!5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5395, file: !130, line: 1864, baseType: !444, size: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5395, file: !130, line: 1865, baseType: !4879, size: 256, offset: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5395, file: !130, line: 1866, baseType: !444, size: 32, offset: 288)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5395, file: !130, line: 1867, baseType: !444, size: 32, offset: 320)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5395, file: !130, line: 1868, baseType: !444, size: 32, offset: 352)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "txsubchans", scope: !5395, file: !130, line: 1869, baseType: !444, size: 32, offset: 384)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5395, file: !130, line: 1870, baseType: !444, size: 32, offset: 416)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5395, file: !130, line: 1871, baseType: !4885, size: 96, offset: 448)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_modulator", scope: !4867, file: !4868, line: 494, baseType: !5406, size: 64, offset: 5504)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!223, !379, !225, !5409}
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5395)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_pixelaspect", scope: !4867, file: !4868, line: 497, baseType: !5412, size: 64, offset: 5568)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!223, !379, !225, !223, !5415}
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fract", file: !130, line: 421, size: 64, elements: !5417)
!5417 = !{!5418, !5419}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "numerator", scope: !5416, file: !130, line: 422, baseType: !444, size: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !5416, file: !130, line: 423, baseType: !444, size: 32, offset: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_selection", scope: !4867, file: !4868, line: 499, baseType: !5421, size: 64, offset: 5632)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!223, !379, !225, !5424}
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_selection", file: !130, line: 1247, size: 512, elements: !5426)
!5426 = !{!5427, !5428, !5429, !5430, !5431}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5425, file: !130, line: 1248, baseType: !444, size: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5425, file: !130, line: 1249, baseType: !444, size: 32, offset: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5425, file: !130, line: 1250, baseType: !444, size: 32, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !5425, file: !130, line: 1251, baseType: !4969, size: 128, offset: 96)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5425, file: !130, line: 1252, baseType: !5432, size: 288, offset: 224)
!5432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 288, elements: !3526)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_selection", scope: !4867, file: !4868, line: 501, baseType: !5421, size: 64, offset: 5696)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_jpegcomp", scope: !4867, file: !4868, line: 504, baseType: !5435, size: 64, offset: 5760)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!223, !379, !225, !5438}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_jpegcompression", file: !130, line: 899, size: 1120, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5448, !5449, !5450}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !5439, file: !130, line: 900, baseType: !223, size: 32)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "APPn", scope: !5439, file: !130, line: 902, baseType: !223, size: 32, offset: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "APP_len", scope: !5439, file: !130, line: 904, baseType: !223, size: 32, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "APP_data", scope: !5439, file: !130, line: 905, baseType: !5445, size: 480, offset: 96)
!5445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 480, elements: !5446)
!5446 = !{!5447}
!5447 = !DISubrange(count: 60)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "COM_len", scope: !5439, file: !130, line: 907, baseType: !223, size: 32, offset: 576)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "COM_data", scope: !5439, file: !130, line: 908, baseType: !5445, size: 480, offset: 608)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_markers", scope: !5439, file: !130, line: 910, baseType: !444, size: 32, offset: 1088)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_jpegcomp", scope: !4867, file: !4868, line: 506, baseType: !5452, size: 64, offset: 5824)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!223, !379, !225, !5455}
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5439)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_enc_index", scope: !4867, file: !4868, line: 508, baseType: !5458, size: 64, offset: 5888)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!223, !379, !225, !5461}
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enc_idx", file: !130, line: 2004, size: 16576, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5467}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5462, file: !130, line: 2005, baseType: !444, size: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "entries_cap", scope: !5462, file: !130, line: 2006, baseType: !444, size: 32, offset: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5462, file: !130, line: 2007, baseType: !5286, size: 128, offset: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5462, file: !130, line: 2008, baseType: !5468, size: 16384, offset: 192)
!5468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5469, size: 16384, elements: !307)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enc_idx_entry", file: !130, line: 1995, size: 256, elements: !5470)
!5470 = !{!5471, !5472, !5473, !5474, !5475}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5469, file: !130, line: 1996, baseType: !449, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "pts", scope: !5469, file: !130, line: 1997, baseType: !449, size: 64, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5469, file: !130, line: 1998, baseType: !444, size: 32, offset: 128)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5469, file: !130, line: 1999, baseType: !444, size: 32, offset: 160)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5469, file: !130, line: 2000, baseType: !1604, size: 64, offset: 192)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_encoder_cmd", scope: !4867, file: !4868, line: 510, baseType: !5477, size: 64, offset: 5952)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!223, !379, !225, !5480}
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_encoder_cmd", file: !130, line: 2020, size: 320, elements: !5482)
!5482 = !{!5483, !5484, !5485}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5481, file: !130, line: 2021, baseType: !444, size: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5481, file: !130, line: 2022, baseType: !444, size: 32, offset: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, scope: !5481, file: !130, line: 2023, baseType: !5486, size: 256, offset: 64)
!5486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5481, file: !130, line: 2023, size: 256, elements: !5487)
!5487 = !{!5488}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5486, file: !130, line: 2026, baseType: !5489, size: 256)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5486, file: !130, line: 2024, size: 256, elements: !5490)
!5490 = !{!5491}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5489, file: !130, line: 2025, baseType: !4623, size: 256)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_encoder_cmd", scope: !4867, file: !4868, line: 512, baseType: !5477, size: 64, offset: 6016)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_decoder_cmd", scope: !4867, file: !4868, line: 514, baseType: !5494, size: 64, offset: 6080)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!223, !379, !225, !5497}
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_decoder_cmd", file: !130, line: 2056, size: 576, elements: !5499)
!5499 = !{!5500, !5501, !5502}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5498, file: !130, line: 2057, baseType: !444, size: 32)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5498, file: !130, line: 2058, baseType: !444, size: 32, offset: 32)
!5502 = !DIDerivedType(tag: DW_TAG_member, scope: !5498, file: !130, line: 2059, baseType: !5503, size: 512, offset: 64)
!5503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5498, file: !130, line: 2059, size: 512, elements: !5504)
!5504 = !{!5505, !5509, !5514}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5503, file: !130, line: 2062, baseType: !5506, size: 64)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5503, file: !130, line: 2060, size: 64, elements: !5507)
!5507 = !{!5508}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "pts", scope: !5506, file: !130, line: 2061, baseType: !449, size: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5503, file: !130, line: 2072, baseType: !5510, size: 64)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5503, file: !130, line: 2064, size: 64, elements: !5511)
!5511 = !{!5512, !5513}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5510, file: !130, line: 2070, baseType: !1476, size: 32)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5510, file: !130, line: 2071, baseType: !444, size: 32, offset: 32)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5503, file: !130, line: 2076, baseType: !5515, size: 512)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5503, file: !130, line: 2074, size: 512, elements: !5516)
!5516 = !{!5517}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5515, file: !130, line: 2075, baseType: !5518, size: 512)
!5518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 512, elements: !1771)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_try_decoder_cmd", scope: !4867, file: !4868, line: 516, baseType: !5494, size: 64, offset: 6144)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_parm", scope: !4867, file: !4868, line: 520, baseType: !5521, size: 64, offset: 6208)
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!223, !379, !225, !5524}
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_streamparm", file: !130, line: 2304, size: 1632, elements: !5526)
!5526 = !{!5527, !5528}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5525, file: !130, line: 2305, baseType: !444, size: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "parm", scope: !5525, file: !130, line: 2310, baseType: !5529, size: 1600, offset: 32)
!5529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5525, file: !130, line: 2306, size: 1600, elements: !5530)
!5530 = !{!5531, !5540, !5549}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !5529, file: !130, line: 2307, baseType: !5532, size: 320)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_captureparm", file: !130, line: 1197, size: 320, elements: !5533)
!5533 = !{!5534, !5535, !5536, !5537, !5538, !5539}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5532, file: !130, line: 1198, baseType: !444, size: 32)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "capturemode", scope: !5532, file: !130, line: 1199, baseType: !444, size: 32, offset: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "timeperframe", scope: !5532, file: !130, line: 1200, baseType: !5416, size: 64, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "extendedmode", scope: !5532, file: !130, line: 1201, baseType: !444, size: 32, offset: 128)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffers", scope: !5532, file: !130, line: 1202, baseType: !444, size: 32, offset: 160)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5532, file: !130, line: 1203, baseType: !5286, size: 128, offset: 192)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !5529, file: !130, line: 2308, baseType: !5541, size: 320)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_outputparm", file: !130, line: 1210, size: 320, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5541, file: !130, line: 1211, baseType: !444, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "outputmode", scope: !5541, file: !130, line: 1212, baseType: !444, size: 32, offset: 32)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "timeperframe", scope: !5541, file: !130, line: 1213, baseType: !5416, size: 64, offset: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "extendedmode", scope: !5541, file: !130, line: 1214, baseType: !444, size: 32, offset: 128)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "writebuffers", scope: !5541, file: !130, line: 1215, baseType: !444, size: 32, offset: 160)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5541, file: !130, line: 1216, baseType: !5286, size: 128, offset: 192)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !5529, file: !130, line: 2309, baseType: !5022, size: 1600)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_parm", scope: !4867, file: !4868, line: 522, baseType: !5521, size: 64, offset: 6272)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_tuner", scope: !4867, file: !4868, line: 526, baseType: !5552, size: 64, offset: 6336)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!223, !379, !225, !5555}
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_tuner", file: !130, line: 1849, size: 672, elements: !5557)
!5557 = !{!5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568}
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5556, file: !130, line: 1850, baseType: !444, size: 32)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5556, file: !130, line: 1851, baseType: !4879, size: 256, offset: 32)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5556, file: !130, line: 1852, baseType: !444, size: 32, offset: 288)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5556, file: !130, line: 1853, baseType: !444, size: 32, offset: 320)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5556, file: !130, line: 1854, baseType: !444, size: 32, offset: 352)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5556, file: !130, line: 1855, baseType: !444, size: 32, offset: 384)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "rxsubchans", scope: !5556, file: !130, line: 1856, baseType: !444, size: 32, offset: 416)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !5556, file: !130, line: 1857, baseType: !444, size: 32, offset: 448)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5556, file: !130, line: 1858, baseType: !1476, size: 32, offset: 480)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "afc", scope: !5556, file: !130, line: 1859, baseType: !1476, size: 32, offset: 512)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5556, file: !130, line: 1860, baseType: !5286, size: 128, offset: 544)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_tuner", scope: !4867, file: !4868, line: 528, baseType: !5570, size: 64, offset: 6400)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!223, !379, !225, !5573}
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5556)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_frequency", scope: !4867, file: !4868, line: 530, baseType: !5576, size: 64, offset: 6464)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!223, !379, !225, !5579}
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency", file: !130, line: 1906, size: 352, elements: !5581)
!5581 = !{!5582, !5583, !5584, !5585}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5580, file: !130, line: 1907, baseType: !444, size: 32)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5580, file: !130, line: 1908, baseType: !444, size: 32, offset: 32)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !5580, file: !130, line: 1909, baseType: !444, size: 32, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5580, file: !130, line: 1910, baseType: !4623, size: 256, offset: 96)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_frequency", scope: !4867, file: !4868, line: 532, baseType: !5587, size: 64, offset: 6528)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!223, !379, !225, !5590}
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5580)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_freq_bands", scope: !4867, file: !4868, line: 534, baseType: !5593, size: 64, offset: 6592)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!223, !379, !225, !5596}
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency_band", file: !130, line: 1917, size: 512, elements: !5598)
!5598 = !{!5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5597, file: !130, line: 1918, baseType: !444, size: 32)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5597, file: !130, line: 1919, baseType: !444, size: 32, offset: 32)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5597, file: !130, line: 1920, baseType: !444, size: 32, offset: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5597, file: !130, line: 1921, baseType: !444, size: 32, offset: 96)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5597, file: !130, line: 1922, baseType: !444, size: 32, offset: 128)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5597, file: !130, line: 1923, baseType: !444, size: 32, offset: 160)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !5597, file: !130, line: 1924, baseType: !444, size: 32, offset: 192)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5597, file: !130, line: 1925, baseType: !5432, size: 288, offset: 224)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_sliced_vbi_cap", scope: !4867, file: !4868, line: 538, baseType: !5608, size: 64, offset: 6656)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!223, !379, !225, !5611}
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_cap", file: !130, line: 2141, size: 928, elements: !5613)
!5613 = !{!5614, !5615, !5616, !5617}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !5612, file: !130, line: 2142, baseType: !891, size: 16)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !5612, file: !130, line: 2147, baseType: !5003, size: 768, offset: 16)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5612, file: !130, line: 2148, baseType: !444, size: 32, offset: 800)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5612, file: !130, line: 2149, baseType: !4885, size: 96, offset: 832)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_log_status", scope: !4867, file: !4868, line: 542, baseType: !5619, size: 64, offset: 6720)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!223, !379, !225}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_hw_freq_seek", scope: !4867, file: !4868, line: 544, baseType: !5623, size: 64, offset: 6784)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!223, !379, !225, !5626}
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!5627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5628)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hw_freq_seek", file: !130, line: 1928, size: 384, elements: !5629)
!5629 = !{!5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5628, file: !130, line: 1929, baseType: !444, size: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5628, file: !130, line: 1930, baseType: !444, size: 32, offset: 32)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "seek_upward", scope: !5628, file: !130, line: 1931, baseType: !444, size: 32, offset: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_around", scope: !5628, file: !130, line: 1932, baseType: !444, size: 32, offset: 96)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "spacing", scope: !5628, file: !130, line: 1933, baseType: !444, size: 32, offset: 128)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5628, file: !130, line: 1934, baseType: !444, size: 32, offset: 160)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5628, file: !130, line: 1935, baseType: !444, size: 32, offset: 192)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5628, file: !130, line: 1936, baseType: !5638, size: 160, offset: 224)
!5638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 160, elements: !4518)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_framesizes", scope: !4867, file: !4868, line: 558, baseType: !5640, size: 64, offset: 6848)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!223, !379, !225, !5643}
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frmsizeenum", file: !130, line: 828, size: 352, elements: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5666}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5644, file: !130, line: 829, baseType: !444, size: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5644, file: !130, line: 830, baseType: !444, size: 32, offset: 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5644, file: !130, line: 831, baseType: !444, size: 32, offset: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, scope: !5644, file: !130, line: 833, baseType: !5650, size: 192, offset: 96)
!5650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5644, file: !130, line: 833, size: 192, elements: !5651)
!5651 = !{!5652, !5657}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "discrete", scope: !5650, file: !130, line: 834, baseType: !5653, size: 64)
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frmsize_discrete", file: !130, line: 814, size: 64, elements: !5654)
!5654 = !{!5655, !5656}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5653, file: !130, line: 815, baseType: !444, size: 32)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5653, file: !130, line: 816, baseType: !444, size: 32, offset: 32)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "stepwise", scope: !5650, file: !130, line: 835, baseType: !5658, size: 192)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frmsize_stepwise", file: !130, line: 819, size: 192, elements: !5659)
!5659 = !{!5660, !5661, !5662, !5663, !5664, !5665}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5658, file: !130, line: 820, baseType: !444, size: 32)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5658, file: !130, line: 821, baseType: !444, size: 32, offset: 32)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "step_width", scope: !5658, file: !130, line: 822, baseType: !444, size: 32, offset: 64)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5658, file: !130, line: 823, baseType: !444, size: 32, offset: 96)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5658, file: !130, line: 824, baseType: !444, size: 32, offset: 128)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "step_height", scope: !5658, file: !130, line: 825, baseType: !444, size: 32, offset: 160)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5644, file: !130, line: 838, baseType: !1604, size: 64, offset: 288)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_frameintervals", scope: !4867, file: !4868, line: 561, baseType: !5668, size: 64, offset: 6912)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!223, !379, !225, !5671}
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frmivalenum", file: !130, line: 856, size: 416, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5679, !5689}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5672, file: !130, line: 857, baseType: !444, size: 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5672, file: !130, line: 858, baseType: !444, size: 32, offset: 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5672, file: !130, line: 859, baseType: !444, size: 32, offset: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5672, file: !130, line: 860, baseType: !444, size: 32, offset: 96)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5672, file: !130, line: 861, baseType: !444, size: 32, offset: 128)
!5679 = !DIDerivedType(tag: DW_TAG_member, scope: !5672, file: !130, line: 863, baseType: !5680, size: 192, offset: 160)
!5680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5672, file: !130, line: 863, size: 192, elements: !5681)
!5681 = !{!5682, !5683}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "discrete", scope: !5680, file: !130, line: 864, baseType: !5416, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "stepwise", scope: !5680, file: !130, line: 865, baseType: !5684, size: 192)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frmival_stepwise", file: !130, line: 850, size: 192, elements: !5685)
!5685 = !{!5686, !5687, !5688}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5684, file: !130, line: 851, baseType: !5416, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5684, file: !130, line: 852, baseType: !5416, size: 64, offset: 64)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !5684, file: !130, line: 853, baseType: !5416, size: 64, offset: 128)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5672, file: !130, line: 868, baseType: !1604, size: 64, offset: 352)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_dv_timings", scope: !4867, file: !4868, line: 565, baseType: !5691, size: 64, offset: 6976)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!223, !379, !225, !5694}
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings", file: !130, line: 1563, size: 1056, elements: !5696)
!5696 = !{!5697, !5698}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5695, file: !130, line: 1564, baseType: !444, size: 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, scope: !5695, file: !130, line: 1565, baseType: !5699, size: 1024, offset: 32)
!5699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5695, file: !130, line: 1565, size: 1024, elements: !5700)
!5700 = !{!5701, !5727}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !5699, file: !130, line: 1566, baseType: !5702, size: 992)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings", file: !130, line: 1440, size: 992, elements: !5703)
!5703 = !{!5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5702, file: !130, line: 1441, baseType: !444, size: 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5702, file: !130, line: 1442, baseType: !444, size: 32, offset: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !5702, file: !130, line: 1443, baseType: !444, size: 32, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "polarities", scope: !5702, file: !130, line: 1444, baseType: !444, size: 32, offset: 96)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "pixelclock", scope: !5702, file: !130, line: 1445, baseType: !449, size: 64, offset: 128)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "hfrontporch", scope: !5702, file: !130, line: 1446, baseType: !444, size: 32, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "hsync", scope: !5702, file: !130, line: 1447, baseType: !444, size: 32, offset: 224)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "hbackporch", scope: !5702, file: !130, line: 1448, baseType: !444, size: 32, offset: 256)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "vfrontporch", scope: !5702, file: !130, line: 1449, baseType: !444, size: 32, offset: 288)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !5702, file: !130, line: 1450, baseType: !444, size: 32, offset: 320)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "vbackporch", scope: !5702, file: !130, line: 1451, baseType: !444, size: 32, offset: 352)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "il_vfrontporch", scope: !5702, file: !130, line: 1452, baseType: !444, size: 32, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "il_vsync", scope: !5702, file: !130, line: 1453, baseType: !444, size: 32, offset: 416)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "il_vbackporch", scope: !5702, file: !130, line: 1454, baseType: !444, size: 32, offset: 448)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !5702, file: !130, line: 1455, baseType: !444, size: 32, offset: 480)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5702, file: !130, line: 1456, baseType: !444, size: 32, offset: 512)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !5702, file: !130, line: 1457, baseType: !5416, size: 64, offset: 544)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "cea861_vic", scope: !5702, file: !130, line: 1458, baseType: !1384, size: 8, offset: 608)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_vic", scope: !5702, file: !130, line: 1459, baseType: !1384, size: 8, offset: 616)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5702, file: !130, line: 1460, baseType: !5724, size: 368, offset: 624)
!5724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 368, elements: !5725)
!5725 = !{!5726}
!5726 = !DISubrange(count: 46)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5699, file: !130, line: 1567, baseType: !5288, size: 1024)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_dv_timings", scope: !4867, file: !4868, line: 567, baseType: !5691, size: 64, offset: 7040)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_query_dv_timings", scope: !4867, file: !4868, line: 569, baseType: !5691, size: 64, offset: 7104)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_enum_dv_timings", scope: !4867, file: !4868, line: 571, baseType: !5731, size: 64, offset: 7168)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!223, !379, !225, !5734}
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enum_dv_timings", file: !130, line: 1582, size: 1184, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5740}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5735, file: !130, line: 1583, baseType: !444, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5735, file: !130, line: 1584, baseType: !444, size: 32, offset: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5735, file: !130, line: 1585, baseType: !1604, size: 64, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !5735, file: !130, line: 1586, baseType: !5695, size: 1056, offset: 128)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_dv_timings_cap", scope: !4867, file: !4868, line: 573, baseType: !5742, size: 64, offset: 7232)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!223, !379, !225, !5745}
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings_cap", file: !130, line: 1627, size: 1152, elements: !5747)
!5747 = !{!5748, !5749, !5750, !5751}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5746, file: !130, line: 1628, baseType: !444, size: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5746, file: !130, line: 1629, baseType: !444, size: 32, offset: 32)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5746, file: !130, line: 1630, baseType: !1604, size: 64, offset: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, scope: !5746, file: !130, line: 1631, baseType: !5752, size: 1024, offset: 128)
!5752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5746, file: !130, line: 1631, size: 1024, elements: !5753)
!5753 = !{!5754, !5766}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !5752, file: !130, line: 1632, baseType: !5755, size: 832)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings_cap", file: !130, line: 1600, size: 832, elements: !5756)
!5756 = !{!5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5755, file: !130, line: 1601, baseType: !444, size: 32)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5755, file: !130, line: 1602, baseType: !444, size: 32, offset: 32)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5755, file: !130, line: 1603, baseType: !444, size: 32, offset: 64)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5755, file: !130, line: 1604, baseType: !444, size: 32, offset: 96)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "min_pixelclock", scope: !5755, file: !130, line: 1605, baseType: !449, size: 64, offset: 128)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixelclock", scope: !5755, file: !130, line: 1606, baseType: !449, size: 64, offset: 192)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !5755, file: !130, line: 1607, baseType: !444, size: 32, offset: 256)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5755, file: !130, line: 1608, baseType: !444, size: 32, offset: 288)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5755, file: !130, line: 1609, baseType: !5518, size: 512, offset: 320)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !5752, file: !130, line: 1633, baseType: !5288, size: 1024)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_g_edid", scope: !4867, file: !4868, line: 575, baseType: !5768, size: 64, offset: 7296)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!223, !379, !225, !5771}
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_edid", file: !5773, line: 87, size: 320, elements: !5774)
!5773 = !DIFile(filename: "./include/uapi/linux/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!5774 = !{!5775, !5776, !5777, !5778, !5779}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5772, file: !5773, line: 88, baseType: !444, size: 32)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !5772, file: !5773, line: 89, baseType: !444, size: 32, offset: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5772, file: !5773, line: 90, baseType: !444, size: 32, offset: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5772, file: !5773, line: 91, baseType: !5638, size: 160, offset: 96)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !5772, file: !5773, line: 92, baseType: !5328, size: 64, offset: 256)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_s_edid", scope: !4867, file: !4868, line: 577, baseType: !5768, size: 64, offset: 7360)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_subscribe_event", scope: !4867, file: !4868, line: 580, baseType: !5782, size: 64, offset: 7424)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!223, !4253, !5785}
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5787)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_subscription", file: !130, line: 2400, size: 256, elements: !5788)
!5788 = !{!5789, !5790, !5791, !5792}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5787, file: !130, line: 2401, baseType: !444, size: 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5787, file: !130, line: 2402, baseType: !444, size: 32, offset: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5787, file: !130, line: 2403, baseType: !444, size: 32, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5787, file: !130, line: 2404, baseType: !5638, size: 160, offset: 96)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_unsubscribe_event", scope: !4867, file: !4868, line: 582, baseType: !5782, size: 64, offset: 7488)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_default", scope: !4867, file: !4868, line: 586, baseType: !5795, size: 64, offset: 7552)
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{!224, !379, !225, !517, !7, !225}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "valid_ioctls", scope: !4260, file: !147, line: 307, baseType: !5799, size: 192, offset: 10368)
!5799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !303)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4260, file: !147, line: 309, baseType: !4297, size: 64, offset: 10560)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4254, file: !4255, line: 45, baseType: !4291, size: 64, offset: 192)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4254, file: !4255, line: 46, baseType: !178, size: 32, offset: 256)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4254, file: !4255, line: 49, baseType: !1517, size: 128, offset: 320)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_lock", scope: !4254, file: !4255, line: 50, baseType: !1204, size: 192, offset: 448)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !4254, file: !4255, line: 51, baseType: !247, size: 128, offset: 640)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !4254, file: !4255, line: 52, baseType: !247, size: 128, offset: 768)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "navailable", scope: !4254, file: !4255, line: 53, baseType: !7, size: 32, offset: 896)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !4254, file: !4255, line: 54, baseType: !442, size: 32, offset: 928)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "m2m_ctx", scope: !4254, file: !4255, line: 56, baseType: !5810, size: 64, offset: 960)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_m2m_ctx", file: !4255, line: 56, flags: DIFlagFwdDecl)
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "unsubscribe_event", scope: !4212, file: !186, line: 210, baseType: !4250, size: 64, offset: 640)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4207, file: !186, line: 747, baseType: !5815, size: 64, offset: 64)
!5815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5816, size: 64)
!5816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5817)
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_tuner_ops", file: !186, line: 264, size: 704, elements: !5818)
!5818 = !{!5819, !5820, !5821, !5825, !5829, !5833, !5837, !5841, !5845, !5849, !5855}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !5817, file: !186, line: 265, baseType: !4215, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "s_radio", scope: !5817, file: !186, line: 266, baseType: !4215, size: 64, offset: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "s_frequency", scope: !5817, file: !186, line: 267, baseType: !5822, size: 64, offset: 128)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!223, !4194, !5590}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "g_frequency", scope: !5817, file: !186, line: 268, baseType: !5826, size: 64, offset: 192)
!5826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5827, size: 64)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!223, !4194, !5579}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "enum_freq_bands", scope: !5817, file: !186, line: 269, baseType: !5830, size: 64, offset: 256)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!223, !4194, !5596}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "g_tuner", scope: !5817, file: !186, line: 270, baseType: !5834, size: 64, offset: 320)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!223, !4194, !5555}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "s_tuner", scope: !5817, file: !186, line: 271, baseType: !5838, size: 64, offset: 384)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!223, !4194, !5573}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "g_modulator", scope: !5817, file: !186, line: 272, baseType: !5842, size: 64, offset: 448)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!223, !4194, !5394}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "s_modulator", scope: !5817, file: !186, line: 273, baseType: !5846, size: 64, offset: 512)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!223, !4194, !5409}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "s_type_addr", scope: !5817, file: !186, line: 274, baseType: !5850, size: 64, offset: 576)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!223, !4194, !5853}
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_setup", file: !186, line: 39, flags: DIFlagFwdDecl)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "s_config", scope: !5817, file: !186, line: 275, baseType: !5856, size: 64, offset: 640)
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!223, !4194, !5859}
!5859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5860, size: 64)
!5860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5861)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_priv_tun_config", file: !5862, line: 336, size: 128, elements: !5863)
!5862 = !DIFile(filename: "./include/media/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!5863 = !{!5864, !5865}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5861, file: !5862, line: 337, baseType: !223, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5861, file: !5862, line: 338, baseType: !225, size: 64, offset: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "audio", scope: !4207, file: !186, line: 748, baseType: !5867, size: 64, offset: 128)
!5867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5868, size: 64)
!5868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5869)
!5869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_audio_ops", file: !186, line: 304, size: 256, elements: !5870)
!5870 = !{!5871, !5872, !5873, !5877}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "s_clock_freq", scope: !5869, file: !186, line: 305, baseType: !4231, size: 64)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "s_i2s_clock_freq", scope: !5869, file: !186, line: 306, baseType: !4231, size: 64, offset: 64)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !5869, file: !186, line: 307, baseType: !5874, size: 64, offset: 128)
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!223, !4194, !442, !442, !442}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !5869, file: !186, line: 308, baseType: !4242, size: 64, offset: 192)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4207, file: !186, line: 749, baseType: !5879, size: 64, offset: 192)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5881)
!5881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_video_ops", file: !186, line: 409, size: 1152, elements: !5882)
!5882 = !{!5883, !5884, !5888, !5892, !5896, !5897, !5898, !5899, !5900, !5901, !5905, !5906, !5910, !5921, !5922, !5926, !5927, !5928}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !5881, file: !186, line: 410, baseType: !5874, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "s_crystal_freq", scope: !5881, file: !186, line: 411, baseType: !5885, size: 64, offset: 64)
!5885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5886, size: 64)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!223, !4194, !442, !442}
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "g_std", scope: !5881, file: !186, line: 412, baseType: !5889, size: 64, offset: 128)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!223, !4194, !5207}
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "s_std", scope: !5881, file: !186, line: 413, baseType: !5893, size: 64, offset: 192)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!223, !4194, !4859}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "s_std_output", scope: !5881, file: !186, line: 414, baseType: !5893, size: 64, offset: 256)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "g_std_output", scope: !5881, file: !186, line: 415, baseType: !5889, size: 64, offset: 320)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "querystd", scope: !5881, file: !186, line: 416, baseType: !5889, size: 64, offset: 384)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms", scope: !5881, file: !186, line: 417, baseType: !5889, size: 64, offset: 448)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms_output", scope: !5881, file: !186, line: 418, baseType: !5889, size: 64, offset: 512)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "g_input_status", scope: !5881, file: !186, line: 419, baseType: !5902, size: 64, offset: 576)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!223, !4194, !1446}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !5881, file: !186, line: 420, baseType: !4242, size: 64, offset: 640)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "g_pixelaspect", scope: !5881, file: !186, line: 421, baseType: !5907, size: 64, offset: 704)
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!223, !4194, !5415}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "g_frame_interval", scope: !5881, file: !186, line: 422, baseType: !5911, size: 64, offset: 768)
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!223, !4194, !5914}
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5915, size: 64)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval", file: !5916, line: 115, size: 384, elements: !5917)
!5916 = !DIFile(filename: "./include/uapi/linux/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!5917 = !{!5918, !5919, !5920}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5915, file: !5916, line: 116, baseType: !444, size: 32)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5915, file: !5916, line: 117, baseType: !5416, size: 64, offset: 32)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5915, file: !5916, line: 118, baseType: !5432, size: 288, offset: 96)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "s_frame_interval", scope: !5881, file: !186, line: 424, baseType: !5911, size: 64, offset: 832)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "s_dv_timings", scope: !5881, file: !186, line: 426, baseType: !5923, size: 64, offset: 896)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!223, !4194, !5694}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "g_dv_timings", scope: !5881, file: !186, line: 428, baseType: !5923, size: 64, offset: 960)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "query_dv_timings", scope: !5881, file: !186, line: 430, baseType: !5923, size: 64, offset: 1024)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_buffer", scope: !5881, file: !186, line: 432, baseType: !5929, size: 64, offset: 1088)
!5929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!223, !4194, !225, !2721}
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "vbi", scope: !4207, file: !186, line: 750, baseType: !5933, size: 64, offset: 256)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5935)
!5935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_vbi_ops", file: !186, line: 471, size: 448, elements: !5936)
!5936 = !{!5937, !5948, !5964, !5969, !5973, !5978, !5983}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "decode_vbi_line", scope: !5935, file: !186, line: 472, baseType: !5938, size: 64)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!223, !4194, !5941}
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5942, size: 64)
!5942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_decode_vbi_line", file: !186, line: 52, size: 192, elements: !5943)
!5943 = !{!5944, !5945, !5946, !5947}
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "is_second_field", scope: !5942, file: !186, line: 53, baseType: !442, size: 32)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5942, file: !186, line: 54, baseType: !4357, size: 64, offset: 64)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5942, file: !186, line: 55, baseType: !442, size: 32, offset: 128)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5942, file: !186, line: 56, baseType: !442, size: 32, offset: 160)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "s_vbi_data", scope: !5935, file: !186, line: 473, baseType: !5949, size: 64, offset: 64)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!223, !4194, !5952}
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5954)
!5954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_data", file: !130, line: 2152, size: 512, elements: !5955)
!5955 = !{!5956, !5957, !5958, !5959, !5960}
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5954, file: !130, line: 2153, baseType: !444, size: 32)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5954, file: !130, line: 2154, baseType: !444, size: 32, offset: 32)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5954, file: !130, line: 2155, baseType: !444, size: 32, offset: 64)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5954, file: !130, line: 2156, baseType: !444, size: 32, offset: 96)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5954, file: !130, line: 2157, baseType: !5961, size: 384, offset: 128)
!5961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 384, elements: !5962)
!5962 = !{!5963}
!5963 = !DISubrange(count: 48)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "g_vbi_data", scope: !5935, file: !186, line: 474, baseType: !5965, size: 64, offset: 128)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!223, !4194, !5968}
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_vbi_cap", scope: !5935, file: !186, line: 475, baseType: !5970, size: 64, offset: 192)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5971, size: 64)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!223, !4194, !5611}
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "s_raw_fmt", scope: !5935, file: !186, line: 476, baseType: !5974, size: 64, offset: 256)
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!223, !4194, !5977}
!5977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_fmt", scope: !5935, file: !186, line: 477, baseType: !5979, size: 64, offset: 320)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!223, !4194, !5982}
!5982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "s_sliced_fmt", scope: !5935, file: !186, line: 478, baseType: !5979, size: 64, offset: 384)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !4207, file: !186, line: 751, baseType: !5985, size: 64, offset: 320)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5987)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_ops", file: !186, line: 589, size: 384, elements: !5988)
!5988 = !{!5989, !5994, !6016, !6017, !6018, !6019}
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "rx_read", scope: !5987, file: !186, line: 591, baseType: !5990, size: 64)
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5991, size: 64)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!223, !4194, !4357, !348, !5993}
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "rx_g_parameters", scope: !5987, file: !186, line: 594, baseType: !5995, size: 64, offset: 64)
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5996, size: 64)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!223, !4194, !5998}
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5999, size: 64)
!5999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_parameters", file: !186, line: 530, size: 352, elements: !6000)
!6000 = !{!6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6014, !6015}
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_data_element", scope: !5999, file: !186, line: 531, baseType: !7, size: 32)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5999, file: !186, line: 532, baseType: !185, size: 32, offset: 32)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5999, file: !186, line: 534, baseType: !517, size: 8, offset: 64)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_enable", scope: !5999, file: !186, line: 535, baseType: !517, size: 8, offset: 72)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5999, file: !186, line: 536, baseType: !517, size: 8, offset: 80)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !5999, file: !186, line: 538, baseType: !517, size: 8, offset: 88)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "max_pulse_width", scope: !5999, file: !186, line: 539, baseType: !442, size: 32, offset: 96)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_freq", scope: !5999, file: !186, line: 540, baseType: !7, size: 32, offset: 128)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !5999, file: !186, line: 541, baseType: !7, size: 32, offset: 160)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "invert_level", scope: !5999, file: !186, line: 542, baseType: !517, size: 8, offset: 192)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "invert_carrier_sense", scope: !5999, file: !186, line: 545, baseType: !517, size: 8, offset: 200)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "noise_filter_min_width", scope: !5999, file: !186, line: 548, baseType: !442, size: 32, offset: 224)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_lower", scope: !5999, file: !186, line: 549, baseType: !7, size: 32, offset: 256)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_upper", scope: !5999, file: !186, line: 550, baseType: !7, size: 32, offset: 288)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !5999, file: !186, line: 551, baseType: !442, size: 32, offset: 320)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "rx_s_parameters", scope: !5987, file: !186, line: 596, baseType: !5995, size: 64, offset: 128)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "tx_write", scope: !5987, file: !186, line: 600, baseType: !5990, size: 64, offset: 192)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "tx_g_parameters", scope: !5987, file: !186, line: 603, baseType: !5995, size: 64, offset: 256)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "tx_s_parameters", scope: !5987, file: !186, line: 605, baseType: !5995, size: 64, offset: 320)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !4207, file: !186, line: 752, baseType: !6021, size: 64, offset: 384)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6023)
!6023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_sensor_ops", file: !186, line: 491, size: 128, elements: !6024)
!6024 = !{!6025, !6026}
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_top_lines", scope: !6023, file: !186, line: 492, baseType: !5902, size: 64)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_frames", scope: !6023, file: !186, line: 493, baseType: !5902, size: 64, offset: 64)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4207, file: !186, line: 753, baseType: !6028, size: 64, offset: 448)
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6030)
!6030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_ops", file: !186, line: 688, size: 1088, elements: !6031)
!6031 = !{!6032, !6062, !6075, !6091, !6106, !6117, !6118, !6131, !6132, !6136, !6137, !6141, !6145, !6149, !6164, !6165, !6174}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "init_cfg", scope: !6030, file: !186, line: 689, baseType: !6033, size: 64)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!223, !4194, !6036}
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_config", file: !186, line: 620, size: 640, elements: !6038)
!6038 = !{!6039, !6060, !6061}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "try_fmt", scope: !6037, file: !186, line: 621, baseType: !6040, size: 384)
!6040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_framefmt", file: !6041, line: 35, size: 384, elements: !6042)
!6041 = !DIFile(filename: "./include/uapi/linux/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!6042 = !{!6043, !6044, !6045, !6046, !6047, !6048, !6053, !6054, !6055, !6056}
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6040, file: !6041, line: 36, baseType: !444, size: 32)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6040, file: !6041, line: 37, baseType: !444, size: 32, offset: 32)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6040, file: !6041, line: 38, baseType: !444, size: 32, offset: 64)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !6040, file: !6041, line: 39, baseType: !444, size: 32, offset: 96)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !6040, file: !6041, line: 40, baseType: !444, size: 32, offset: 128)
!6048 = !DIDerivedType(tag: DW_TAG_member, scope: !6040, file: !6041, line: 41, baseType: !6049, size: 16, offset: 160)
!6049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6040, file: !6041, line: 41, size: 16, elements: !6050)
!6050 = !{!6051, !6052}
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !6049, file: !6041, line: 43, baseType: !891, size: 16)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "hsv_enc", scope: !6049, file: !6041, line: 45, baseType: !891, size: 16)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !6040, file: !6041, line: 47, baseType: !891, size: 16, offset: 176)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !6040, file: !6041, line: 48, baseType: !891, size: 16, offset: 192)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6040, file: !6041, line: 49, baseType: !891, size: 16, offset: 208)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6040, file: !6041, line: 50, baseType: !6057, size: 160, offset: 224)
!6057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 160, elements: !6058)
!6058 = !{!6059}
!6059 = !DISubrange(count: 10)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "try_crop", scope: !6037, file: !186, line: 622, baseType: !4969, size: 128, offset: 384)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "try_compose", scope: !6037, file: !186, line: 623, baseType: !4969, size: 128, offset: 512)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "enum_mbus_code", scope: !6030, file: !186, line: 691, baseType: !6063, size: 64, offset: 64)
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6064, size: 64)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!223, !4194, !6036, !6066}
!6066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6067, size: 64)
!6067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_mbus_code_enum", file: !5916, line: 82, size: 384, elements: !6068)
!6068 = !{!6069, !6070, !6071, !6072, !6073, !6074}
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6067, file: !5916, line: 83, baseType: !444, size: 32)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6067, file: !5916, line: 84, baseType: !444, size: 32, offset: 32)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6067, file: !5916, line: 85, baseType: !444, size: 32, offset: 64)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !6067, file: !5916, line: 86, baseType: !444, size: 32, offset: 96)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6067, file: !5916, line: 87, baseType: !444, size: 32, offset: 128)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6067, file: !5916, line: 88, baseType: !5165, size: 224, offset: 160)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_size", scope: !6030, file: !186, line: 694, baseType: !6076, size: 64, offset: 128)
!6076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6077, size: 64)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!223, !4194, !6036, !6079}
!6079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6080, size: 64)
!6080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_size_enum", file: !5916, line: 98, size: 512, elements: !6081)
!6081 = !{!6082, !6083, !6084, !6085, !6086, !6087, !6088, !6089, !6090}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6080, file: !5916, line: 99, baseType: !444, size: 32)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6080, file: !5916, line: 100, baseType: !444, size: 32, offset: 32)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6080, file: !5916, line: 101, baseType: !444, size: 32, offset: 64)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !6080, file: !5916, line: 102, baseType: !444, size: 32, offset: 96)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !6080, file: !5916, line: 103, baseType: !444, size: 32, offset: 128)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !6080, file: !5916, line: 104, baseType: !444, size: 32, offset: 160)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !6080, file: !5916, line: 105, baseType: !444, size: 32, offset: 192)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !6080, file: !5916, line: 106, baseType: !444, size: 32, offset: 224)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6080, file: !5916, line: 107, baseType: !4623, size: 256, offset: 256)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_interval", scope: !6030, file: !186, line: 697, baseType: !6092, size: 64, offset: 192)
!6092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6093, size: 64)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!223, !4194, !6036, !6095}
!6095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64)
!6096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval_enum", file: !5916, line: 131, size: 512, elements: !6097)
!6097 = !{!6098, !6099, !6100, !6101, !6102, !6103, !6104, !6105}
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6096, file: !5916, line: 132, baseType: !444, size: 32)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6096, file: !5916, line: 133, baseType: !444, size: 32, offset: 32)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6096, file: !5916, line: 134, baseType: !444, size: 32, offset: 64)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6096, file: !5916, line: 135, baseType: !444, size: 32, offset: 96)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6096, file: !5916, line: 136, baseType: !444, size: 32, offset: 128)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !6096, file: !5916, line: 137, baseType: !5416, size: 64, offset: 160)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !6096, file: !5916, line: 138, baseType: !444, size: 32, offset: 224)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6096, file: !5916, line: 139, baseType: !4623, size: 256, offset: 256)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "get_fmt", scope: !6030, file: !186, line: 700, baseType: !6107, size: 64, offset: 256)
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!223, !4194, !6036, !6110}
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_format", file: !5916, line: 48, size: 704, elements: !6112)
!6112 = !{!6113, !6114, !6115, !6116}
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !6111, file: !5916, line: 49, baseType: !444, size: 32)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6111, file: !5916, line: 50, baseType: !444, size: 32, offset: 32)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6111, file: !5916, line: 51, baseType: !6040, size: 384, offset: 64)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6111, file: !5916, line: 52, baseType: !4623, size: 256, offset: 448)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "set_fmt", scope: !6030, file: !186, line: 703, baseType: !6107, size: 64, offset: 320)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "get_selection", scope: !6030, file: !186, line: 706, baseType: !6119, size: 64, offset: 384)
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6120, size: 64)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{!223, !4194, !6036, !6122}
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6123, size: 64)
!6123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_selection", file: !5916, line: 157, size: 512, elements: !6124)
!6124 = !{!6125, !6126, !6127, !6128, !6129, !6130}
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !6123, file: !5916, line: 158, baseType: !444, size: 32)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6123, file: !5916, line: 159, baseType: !444, size: 32, offset: 32)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !6123, file: !5916, line: 160, baseType: !444, size: 32, offset: 64)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6123, file: !5916, line: 161, baseType: !444, size: 32, offset: 96)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !6123, file: !5916, line: 162, baseType: !4969, size: 128, offset: 128)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6123, file: !5916, line: 163, baseType: !4623, size: 256, offset: 256)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "set_selection", scope: !6030, file: !186, line: 709, baseType: !6119, size: 64, offset: 448)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "get_edid", scope: !6030, file: !186, line: 712, baseType: !6133, size: 64, offset: 512)
!6133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6134, size: 64)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!223, !4194, !5771}
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "set_edid", scope: !6030, file: !186, line: 713, baseType: !6133, size: 64, offset: 576)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "dv_timings_cap", scope: !6030, file: !186, line: 714, baseType: !6138, size: 64, offset: 640)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{!223, !4194, !5745}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "enum_dv_timings", scope: !6030, file: !186, line: 716, baseType: !6142, size: 64, offset: 704)
!6142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6143, size: 64)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!223, !4194, !5734}
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !6030, file: !186, line: 719, baseType: !6146, size: 64, offset: 768)
!6146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6147, size: 64)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!223, !4194, !4084, !6110, !6110}
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_desc", scope: !6030, file: !186, line: 723, baseType: !6150, size: 64, offset: 832)
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = !DISubroutineType(types: !6152)
!6152 = !{!223, !4194, !7, !6153}
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc", file: !186, line: 348, size: 416, elements: !6155)
!6155 = !{!6156, !6163}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6154, file: !186, line: 349, baseType: !6157, size: 384)
!6157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6158, size: 384, elements: !1186)
!6158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc_entry", file: !186, line: 335, size: 96, elements: !6159)
!6159 = !{!6160, !6161, !6162}
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6158, file: !186, line: 336, baseType: !189, size: 32)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "pixelcode", scope: !6158, file: !186, line: 337, baseType: !442, size: 32, offset: 32)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6158, file: !186, line: 338, baseType: !442, size: 32, offset: 64)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !6154, file: !186, line: 350, baseType: !343, size: 16, offset: 384)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "set_frame_desc", scope: !6030, file: !186, line: 725, baseType: !6150, size: 64, offset: 896)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "get_mbus_config", scope: !6030, file: !186, line: 727, baseType: !6166, size: 64, offset: 960)
!6166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6167, size: 64)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!223, !4194, !7, !6169}
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_config", file: !194, line: 122, size: 64, elements: !6171)
!6171 = !{!6172, !6173}
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6170, file: !194, line: 123, baseType: !193, size: 32)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6170, file: !194, line: 124, baseType: !7, size: 32, offset: 32)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "set_mbus_config", scope: !6030, file: !186, line: 729, baseType: !6166, size: 64, offset: 1024)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ops", scope: !4195, file: !186, line: 876, baseType: !6176, size: 64, offset: 1408)
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6178)
!6178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_internal_ops", file: !186, line: 783, size: 320, elements: !6179)
!6179 = !{!6180, !6181, !6185, !6195, !6196}
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !6178, file: !186, line: 784, baseType: !4215, size: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "unregistered", scope: !6178, file: !186, line: 785, baseType: !6182, size: 64, offset: 64)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{null, !4194}
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !6178, file: !186, line: 786, baseType: !6186, size: 64, offset: 128)
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6187, size: 64)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{!223, !4194, !6189}
!6189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6190, size: 64)
!6190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_fh", file: !186, line: 924, size: 1152, elements: !6191)
!6191 = !{!6192, !6193, !6194}
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "vfh", scope: !6190, file: !186, line: 925, baseType: !4254, size: 1024)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !6190, file: !186, line: 926, baseType: !660, size: 64, offset: 1024)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6190, file: !186, line: 928, baseType: !6036, size: 64, offset: 1088)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !6178, file: !186, line: 787, baseType: !6186, size: 64, offset: 192)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6178, file: !186, line: 788, baseType: !6182, size: 64, offset: 256)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4195, file: !186, line: 877, baseType: !4291, size: 64, offset: 1472)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !186, line: 878, baseType: !2738, size: 256, offset: 1536)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "grp_id", scope: !4195, file: !186, line: 879, baseType: !442, size: 32, offset: 1792)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv", scope: !4195, file: !186, line: 880, baseType: !225, size: 64, offset: 1856)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !4195, file: !186, line: 881, baseType: !225, size: 64, offset: 1920)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4195, file: !186, line: 882, baseType: !4259, size: 64, offset: 1984)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4195, file: !186, line: 883, baseType: !235, size: 64, offset: 2048)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4195, file: !186, line: 884, baseType: !3732, size: 64, offset: 2112)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !4195, file: !186, line: 885, baseType: !247, size: 128, offset: 2176)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "asd", scope: !4195, file: !186, line: 886, baseType: !6207, size: 64, offset: 2304)
!6207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6208, size: 64)
!6208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_subdev", file: !204, line: 79, size: 448, elements: !6209)
!6209 = !{!6210, !6211, !6229, !6230}
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "match_type", scope: !6208, file: !204, line: 80, baseType: !203, size: 32)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !6208, file: !204, line: 93, baseType: !6212, size: 128, offset: 64)
!6212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6208, file: !204, line: 81, size: 128, elements: !6213)
!6213 = !{!6214, !6215, !6216, !6221}
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6212, file: !204, line: 82, baseType: !3732, size: 64)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !6212, file: !204, line: 83, baseType: !243, size: 64)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !6212, file: !204, line: 87, baseType: !6217, size: 64)
!6217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6212, file: !204, line: 84, size: 64, elements: !6218)
!6218 = !{!6219, !6220}
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "adapter_id", scope: !6217, file: !204, line: 85, baseType: !223, size: 32)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6217, file: !204, line: 86, baseType: !343, size: 16, offset: 32)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "custom", scope: !6212, file: !204, line: 92, baseType: !6222, size: 128)
!6222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6212, file: !204, line: 88, size: 128, elements: !6223)
!6223 = !{!6224, !6228}
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !6222, file: !204, line: 89, baseType: !6225, size: 64)
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6226, size: 64)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!517, !235, !6207}
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6222, file: !204, line: 91, baseType: !225, size: 64, offset: 64)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6208, file: !204, line: 96, baseType: !247, size: 128, offset: 192)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !6208, file: !204, line: 97, baseType: !247, size: 128, offset: 320)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !4195, file: !186, line: 887, baseType: !6232, size: 64, offset: 2368)
!6232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6233, size: 64)
!6233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier", file: !204, line: 129, size: 768, elements: !6234)
!6234 = !{!6235, !6252, !6253, !6254, !6255, !6256, !6257, !6258}
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6233, file: !204, line: 130, baseType: !6236, size: 64)
!6236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6237, size: 64)
!6237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6238)
!6238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier_operations", file: !204, line: 107, size: 192, elements: !6239)
!6239 = !{!6240, !6244, !6248}
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !6238, file: !204, line: 108, baseType: !6241, size: 64)
!6241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6242, size: 64)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!223, !6232, !4194, !6207}
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !6238, file: !204, line: 111, baseType: !6245, size: 64, offset: 64)
!6245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6246, size: 64)
!6246 = !DISubroutineType(types: !6247)
!6247 = !{!223, !6232}
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !6238, file: !204, line: 112, baseType: !6249, size: 64, offset: 128)
!6249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6250, size: 64)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{null, !6232, !4194, !6207}
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !6233, file: !204, line: 131, baseType: !4203, size: 64, offset: 64)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !6233, file: !204, line: 132, baseType: !4194, size: 64, offset: 128)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6233, file: !204, line: 133, baseType: !6232, size: 64, offset: 192)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !6233, file: !204, line: 134, baseType: !247, size: 128, offset: 256)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !6233, file: !204, line: 135, baseType: !247, size: 128, offset: 384)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !6233, file: !204, line: 136, baseType: !247, size: 128, offset: 512)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6233, file: !204, line: 137, baseType: !247, size: 128, offset: 640)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_notifier", scope: !4195, file: !186, line: 888, baseType: !6232, size: 64, offset: 2432)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !4195, file: !186, line: 889, baseType: !6261, size: 64, offset: 2496)
!6261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6262, size: 64)
!6262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_platform_data", file: !186, line: 815, size: 192, elements: !6263)
!6263 = !{!6264, !6267, !6268}
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "regulators", scope: !6262, file: !186, line: 816, baseType: !6265, size: 64)
!6265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6266, size: 64)
!6266 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator_bulk_data", file: !186, line: 806, flags: DIFlagFwdDecl)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "num_regulators", scope: !6262, file: !186, line: 817, baseType: !223, size: 32, offset: 64)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !6262, file: !186, line: 819, baseType: !225, size: 64, offset: 128)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !231, file: !232, line: 55, baseType: !4291, size: 64, offset: 640)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !231, file: !232, line: 56, baseType: !4844, size: 128, offset: 704)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !231, file: !232, line: 57, baseType: !3417, size: 32, offset: 832)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !231, file: !232, line: 58, baseType: !6273, size: 64, offset: 896)
!6273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6274, size: 64)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{null, !4203}
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "videodev", scope: !227, file: !228, line: 137, baseType: !4260, size: 10624, offset: 960)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "hdl", scope: !227, file: !228, line: 138, baseType: !4292, size: 1536, offset: 11584)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !227, file: !228, line: 139, baseType: !223, size: 32, offset: 13120)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !227, file: !228, line: 142, baseType: !6280, size: 256, offset: 13152)
!6280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, elements: !1771)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "read_queue", scope: !227, file: !228, line: 145, baseType: !1517, size: 128, offset: 13440)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !227, file: !228, line: 146, baseType: !1204, size: 192, offset: 13568)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !227, file: !228, line: 147, baseType: !6284, size: 64, offset: 13760)
!6284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !227, file: !228, line: 148, baseType: !7, size: 32, offset: 13824)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "rd_index", scope: !227, file: !228, line: 149, baseType: !7, size: 32, offset: 13856)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "wr_index", scope: !227, file: !228, line: 150, baseType: !7, size: 32, offset: 13888)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !227, file: !228, line: 152, baseType: !1538, size: 192, offset: 13952)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "status_rssi_auto_update", scope: !227, file: !228, line: 153, baseType: !517, size: 8, offset: 14144)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "get_register", scope: !227, file: !228, line: 157, baseType: !6291, size: 64, offset: 14208)
!6291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6292, size: 64)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!223, !226, !223}
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "set_register", scope: !227, file: !228, line: 158, baseType: !6291, size: 64, offset: 14272)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "fops_open", scope: !227, file: !228, line: 159, baseType: !3996, size: 64, offset: 14336)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "fops_release", scope: !227, file: !228, line: 160, baseType: !3996, size: 64, offset: 14400)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "vidioc_querycap", scope: !227, file: !228, line: 161, baseType: !4871, size: 64, offset: 14464)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "usbdev", scope: !227, file: !228, line: 166, baseType: !6299, size: 64, offset: 14528)
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6300, size: 64)
!6300 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !3975, line: 186, flags: DIFlagFwdDecl)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !227, file: !228, line: 167, baseType: !6302, size: 64, offset: 14592)
!6302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6303, size: 64)
!6303 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !228, line: 167, flags: DIFlagFwdDecl)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "usb_buf", scope: !227, file: !228, line: 168, baseType: !302, size: 64, offset: 14656)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "int_in_buffer", scope: !227, file: !228, line: 171, baseType: !302, size: 64, offset: 14720)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "int_in_endpoint", scope: !227, file: !228, line: 172, baseType: !6307, size: 64, offset: 14784)
!6307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6308, size: 64)
!6308 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !228, line: 172, flags: DIFlagFwdDecl)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "int_in_urb", scope: !227, file: !228, line: 173, baseType: !6310, size: 64, offset: 14848)
!6310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6311, size: 64)
!6311 = !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !228, line: 173, flags: DIFlagFwdDecl)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "int_in_running", scope: !227, file: !228, line: 174, baseType: !223, size: 32, offset: 14912)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "software_version", scope: !227, file: !228, line: 177, baseType: !454, size: 8, offset: 14944)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_version", scope: !227, file: !228, line: 178, baseType: !454, size: 8, offset: 14952)
!6315 = !{!6316, !6366, !6371, !6376, !6378, !6383, !6388, !6390, !6395, !6400, !6402, !6404, !6406, !6408, !6411, !6416, !0, !6419, !6421, !6426, !6428, !6433, !6435, !6437, !6439, !6443, !6445}
!6316 = !DIGlobalVariableExpression(var: !6317, expr: !DIExpression())
!6317 = distinct !DIGlobalVariable(name: "__param_space", scope: !2, file: !3, line: 113, type: !6318, isLocal: true, isDefinition: true, align: 64)
!6318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6319)
!6319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !6320, line: 69, size: 320, elements: !6321)
!6320 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!6321 = !{!6322, !6323, !6324, !6340, !6342, !6344, !6345}
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6319, file: !6320, line: 70, baseType: !243, size: 64)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !6319, file: !6320, line: 71, baseType: !660, size: 64, offset: 64)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6319, file: !6320, line: 72, baseType: !6325, size: 64, offset: 128)
!6325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6326, size: 64)
!6326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6327)
!6327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !6320, line: 47, size: 256, elements: !6328)
!6328 = !{!6329, !6330, !6335, !6339}
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6327, file: !6320, line: 49, baseType: !7, size: 32)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6327, file: !6320, line: 51, baseType: !6331, size: 64, offset: 64)
!6331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6332, size: 64)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!223, !243, !6334}
!6334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6318, size: 64)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6327, file: !6320, line: 53, baseType: !6336, size: 64, offset: 128)
!6336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6337, size: 64)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!223, !302, !6334}
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6327, file: !6320, line: 55, baseType: !495, size: 64, offset: 192)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6319, file: !6320, line: 73, baseType: !6341, size: 16, offset: 192)
!6341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6319, file: !6320, line: 74, baseType: !6343, size: 8, offset: 208)
!6343 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !443, line: 16, baseType: !4462)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6319, file: !6320, line: 75, baseType: !1383, size: 8, offset: 216)
!6345 = !DIDerivedType(tag: DW_TAG_member, scope: !6319, file: !6320, line: 76, baseType: !6346, size: 64, offset: 256)
!6346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6319, file: !6320, line: 76, size: 64, elements: !6347)
!6347 = !{!6348, !6349, !6356}
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !6346, file: !6320, line: 77, baseType: !225, size: 64)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !6346, file: !6320, line: 78, baseType: !6350, size: 64)
!6350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6351, size: 64)
!6351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6352)
!6352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !6320, line: 86, size: 128, elements: !6353)
!6353 = !{!6354, !6355}
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !6352, file: !6320, line: 87, baseType: !7, size: 32)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !6352, file: !6320, line: 88, baseType: !302, size: 64, offset: 64)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !6346, file: !6320, line: 79, baseType: !6357, size: 64)
!6357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6358, size: 64)
!6358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6359)
!6359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !6320, line: 92, size: 256, elements: !6360)
!6360 = !{!6361, !6362, !6363, !6364, !6365}
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !6359, file: !6320, line: 94, baseType: !7, size: 32)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !6359, file: !6320, line: 95, baseType: !7, size: 32, offset: 32)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !6359, file: !6320, line: 96, baseType: !2721, size: 64, offset: 64)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6359, file: !6320, line: 97, baseType: !6325, size: 64, offset: 128)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !6359, file: !6320, line: 98, baseType: !225, size: 64, offset: 192)
!6366 = !DIGlobalVariableExpression(var: !6367, expr: !DIExpression())
!6367 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_spacetype253", scope: !2, file: !3, line: 113, type: !6368, isLocal: true, isDefinition: true, align: 8)
!6368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 336, elements: !6369)
!6369 = !{!6370}
!6370 = !DISubrange(count: 42)
!6371 = !DIGlobalVariableExpression(var: !6372, expr: !DIExpression())
!6372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_space254", scope: !2, file: !3, line: 114, type: !6373, isLocal: true, isDefinition: true, align: 8)
!6373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 544, elements: !6374)
!6374 = !{!6375}
!6375 = !DISubrange(count: 68)
!6376 = !DIGlobalVariableExpression(var: !6377, expr: !DIExpression())
!6377 = distinct !DIGlobalVariable(name: "__param_de", scope: !2, file: !3, line: 120, type: !6318, isLocal: true, isDefinition: true, align: 64)
!6378 = !DIGlobalVariableExpression(var: !6379, expr: !DIExpression())
!6379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_detype255", scope: !2, file: !3, line: 120, type: !6380, isLocal: true, isDefinition: true, align: 8)
!6380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 312, elements: !6381)
!6381 = !{!6382}
!6382 = !DISubrange(count: 39)
!6383 = !DIGlobalVariableExpression(var: !6384, expr: !DIExpression())
!6384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_de256", scope: !2, file: !3, line: 121, type: !6385, isLocal: true, isDefinition: true, align: 8)
!6385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 456, elements: !6386)
!6386 = !{!6387}
!6387 = !DISubrange(count: 57)
!6388 = !DIGlobalVariableExpression(var: !6389, expr: !DIExpression())
!6389 = distinct !DIGlobalVariable(name: "__param_tune_timeout", scope: !2, file: !3, line: 125, type: !6318, isLocal: true, isDefinition: true, align: 64)
!6390 = !DIGlobalVariableExpression(var: !6391, expr: !DIExpression())
!6391 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tune_timeouttype257", scope: !2, file: !3, line: 125, type: !6392, isLocal: true, isDefinition: true, align: 8)
!6392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 376, elements: !6393)
!6393 = !{!6394}
!6394 = !DISubrange(count: 47)
!6395 = !DIGlobalVariableExpression(var: !6396, expr: !DIExpression())
!6396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tune_timeout258", scope: !2, file: !3, line: 126, type: !6397, isLocal: true, isDefinition: true, align: 8)
!6397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 472, elements: !6398)
!6398 = !{!6399}
!6399 = !DISubrange(count: 59)
!6400 = !DIGlobalVariableExpression(var: !6401, expr: !DIExpression())
!6401 = distinct !DIGlobalVariable(name: "__param_seek_timeout", scope: !2, file: !3, line: 130, type: !6318, isLocal: true, isDefinition: true, align: 64)
!6402 = !DIGlobalVariableExpression(var: !6403, expr: !DIExpression())
!6403 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_seek_timeouttype259", scope: !2, file: !3, line: 130, type: !6392, isLocal: true, isDefinition: true, align: 8)
!6404 = !DIGlobalVariableExpression(var: !6405, expr: !DIExpression())
!6405 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_seek_timeout260", scope: !2, file: !3, line: 131, type: !6397, isLocal: true, isDefinition: true, align: 8)
!6406 = !DIGlobalVariableExpression(var: !6407, expr: !DIExpression())
!6407 = distinct !DIGlobalVariable(name: "si470x_ctrl_ops", scope: !2, file: !3, line: 753, type: !4330, isLocal: false, isDefinition: true)
!6408 = !DIGlobalVariableExpression(var: !6409, expr: !DIExpression())
!6409 = distinct !DIGlobalVariable(name: "si470x_viddev_template", scope: !2, file: !3, line: 785, type: !6410, isLocal: false, isDefinition: true)
!6410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!6411 = !DIGlobalVariableExpression(var: !6412, expr: !DIExpression())
!6412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file266", scope: !2, file: !3, line: 793, type: !6413, isLocal: true, isDefinition: true, align: 8)
!6413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 576, elements: !6414)
!6414 = !{!6415}
!6415 = !DISubrange(count: 72)
!6416 = !DIGlobalVariableExpression(var: !6417, expr: !DIExpression())
!6417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license267", scope: !2, file: !3, line: 793, type: !6418, isLocal: true, isDefinition: true, align: 8)
!6418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !2268)
!6419 = !DIGlobalVariableExpression(var: !6420, expr: !DIExpression())
!6420 = distinct !DIGlobalVariable(name: "space", scope: !2, file: !3, line: 112, type: !343, isLocal: true, isDefinition: true)
!6421 = !DIGlobalVariableExpression(var: !6422, expr: !DIExpression())
!6422 = distinct !DIGlobalVariable(name: "__param_str_de", scope: !2, file: !3, line: 120, type: !6423, isLocal: true, isDefinition: true)
!6423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 184, elements: !6424)
!6424 = !{!6425}
!6425 = !DISubrange(count: 23)
!6426 = !DIGlobalVariableExpression(var: !6427, expr: !DIExpression())
!6427 = distinct !DIGlobalVariable(name: "de", scope: !2, file: !3, line: 119, type: !343, isLocal: true, isDefinition: true)
!6428 = !DIGlobalVariableExpression(var: !6429, expr: !DIExpression())
!6429 = distinct !DIGlobalVariable(name: "__param_str_tune_timeout", scope: !2, file: !3, line: 125, type: !6430, isLocal: true, isDefinition: true)
!6430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 264, elements: !6431)
!6431 = !{!6432}
!6432 = !DISubrange(count: 33)
!6433 = !DIGlobalVariableExpression(var: !6434, expr: !DIExpression())
!6434 = distinct !DIGlobalVariable(name: "tune_timeout", scope: !2, file: !3, line: 124, type: !7, isLocal: true, isDefinition: true)
!6435 = !DIGlobalVariableExpression(var: !6436, expr: !DIExpression())
!6436 = distinct !DIGlobalVariable(name: "__param_str_seek_timeout", scope: !2, file: !3, line: 130, type: !6430, isLocal: true, isDefinition: true)
!6437 = !DIGlobalVariableExpression(var: !6438, expr: !DIExpression())
!6438 = distinct !DIGlobalVariable(name: "seek_timeout", scope: !2, file: !3, line: 129, type: !7, isLocal: true, isDefinition: true)
!6439 = !DIGlobalVariableExpression(var: !6440, expr: !DIExpression())
!6440 = distinct !DIGlobalVariable(name: "bands", scope: !2, file: !3, line: 133, type: !6441, isLocal: true, isDefinition: true)
!6441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6442, size: 1536, elements: !303)
!6442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5597)
!6443 = !DIGlobalVariableExpression(var: !6444, expr: !DIExpression())
!6444 = distinct !DIGlobalVariable(name: "si470x_fops", scope: !2, file: !3, line: 559, type: !4273, isLocal: true, isDefinition: true)
!6445 = !DIGlobalVariableExpression(var: !6446, expr: !DIExpression())
!6446 = distinct !DIGlobalVariable(name: "si470x_ioctl_ops", scope: !2, file: !3, line: 769, type: !4866, isLocal: true, isDefinition: true)
!6447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 208, elements: !6448)
!6448 = !{!6449}
!6449 = !DISubrange(count: 26)
!6450 = !{i32 7, !"Dwarf Version", i32 4}
!6451 = !{i32 2, !"Debug Info Version", i32 3}
!6452 = !{i32 1, !"wchar_size", i32 2}
!6453 = !{i32 1, !"Code Model", i32 2}
!6454 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!6455 = distinct !DISubprogram(name: "si470x_set_freq", scope: !3, file: !3, line: 277, type: !6456, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6456 = !DISubroutineType(types: !6457)
!6457 = !{!223, !226, !7}
!6458 = !DILocalVariable(name: "radio", arg: 1, scope: !6455, file: !3, line: 277, type: !226)
!6459 = !DILocation(line: 277, column: 43, scope: !6455)
!6460 = !DILocalVariable(name: "freq", arg: 2, scope: !6455, file: !3, line: 277, type: !7)
!6461 = !DILocation(line: 277, column: 63, scope: !6455)
!6462 = !DILocalVariable(name: "chan", scope: !6455, file: !3, line: 279, type: !343)
!6463 = !DILocation(line: 279, column: 17, scope: !6455)
!6464 = !DILocalVariable(name: "__UNIQUE_ID___x263", scope: !6465, file: !3, line: 281, type: !7)
!6465 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 281, column: 9)
!6466 = !DILocation(line: 281, column: 9, scope: !6465)
!6467 = !DILocalVariable(name: "__UNIQUE_ID___x261", scope: !6468, file: !3, line: 281, type: !7)
!6468 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 281, column: 9)
!6469 = !DILocation(line: 281, column: 9, scope: !6468)
!6470 = !DILocalVariable(name: "__UNIQUE_ID___y262", scope: !6468, file: !3, line: 281, type: !6471)
!6471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!6472 = !DILocalVariable(name: "__UNIQUE_ID___y264", scope: !6465, file: !3, line: 281, type: !6471)
!6473 = !DILocation(line: 281, column: 7, scope: !6455)
!6474 = !DILocation(line: 284, column: 10, scope: !6455)
!6475 = !DILocation(line: 284, column: 23, scope: !6455)
!6476 = !DILocation(line: 284, column: 30, scope: !6455)
!6477 = !DILocation(line: 284, column: 17, scope: !6455)
!6478 = !DILocation(line: 284, column: 36, scope: !6455)
!6479 = !DILocation(line: 284, column: 15, scope: !6455)
!6480 = !DILocation(line: 284, column: 64, scope: !6455)
!6481 = !DILocation(line: 284, column: 48, scope: !6455)
!6482 = !DILocation(line: 284, column: 46, scope: !6455)
!6483 = !DILocation(line: 284, column: 9, scope: !6455)
!6484 = !DILocation(line: 284, column: 7, scope: !6455)
!6485 = !DILocation(line: 286, column: 25, scope: !6455)
!6486 = !DILocation(line: 286, column: 32, scope: !6455)
!6487 = !DILocation(line: 286, column: 9, scope: !6455)
!6488 = !DILocation(line: 286, column: 2, scope: !6455)
!6489 = distinct !DISubprogram(name: "si470x_get_step", scope: !3, file: !3, line: 239, type: !6490, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{!7, !226}
!6492 = !DILocalVariable(name: "radio", arg: 1, scope: !6489, file: !3, line: 239, type: !226)
!6493 = !DILocation(line: 239, column: 59, scope: !6489)
!6494 = !DILocation(line: 242, column: 11, scope: !6489)
!6495 = !DILocation(line: 242, column: 18, scope: !6489)
!6496 = !DILocation(line: 242, column: 40, scope: !6489)
!6497 = !DILocation(line: 242, column: 60, scope: !6489)
!6498 = !DILocation(line: 242, column: 2, scope: !6489)
!6499 = !DILocation(line: 245, column: 3, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 242, column: 66)
!6501 = !DILocation(line: 248, column: 3, scope: !6500)
!6502 = !DILocation(line: 251, column: 3, scope: !6500)
!6503 = !DILocation(line: 253, column: 1, scope: !6489)
!6504 = distinct !DISubprogram(name: "si470x_set_chan", scope: !3, file: !3, line: 193, type: !6505, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!223, !226, !343}
!6507 = !DILocalVariable(name: "m", arg: 1, scope: !6508, file: !6509, line: 363, type: !2865)
!6508 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6509, file: !6509, line: 363, type: !6510, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6509 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!351, !2865}
!6512 = !DILocation(line: 363, column: 74, scope: !6508, inlinedAt: !6513)
!6513 = distinct !DILocation(line: 218, column: 7, scope: !6504)
!6514 = !DILocalVariable(name: "radio", arg: 1, scope: !6504, file: !3, line: 193, type: !226)
!6515 = !DILocation(line: 193, column: 50, scope: !6504)
!6516 = !DILocalVariable(name: "chan", arg: 2, scope: !6504, file: !3, line: 193, type: !343)
!6517 = !DILocation(line: 193, column: 72, scope: !6504)
!6518 = !DILocalVariable(name: "retval", scope: !6504, file: !3, line: 195, type: !223)
!6519 = !DILocation(line: 195, column: 6, scope: !6504)
!6520 = !DILocalVariable(name: "time_left", scope: !6504, file: !3, line: 196, type: !351)
!6521 = !DILocation(line: 196, column: 16, scope: !6504)
!6522 = !DILocalVariable(name: "timed_out", scope: !6504, file: !3, line: 197, type: !517)
!6523 = !DILocation(line: 197, column: 7, scope: !6504)
!6524 = !DILocation(line: 199, column: 11, scope: !6504)
!6525 = !DILocation(line: 199, column: 18, scope: !6504)
!6526 = !DILocation(line: 199, column: 31, scope: !6504)
!6527 = !DILocation(line: 199, column: 9, scope: !6504)
!6528 = !DILocation(line: 200, column: 6, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 200, column: 6)
!6530 = !DILocation(line: 200, column: 6, scope: !6504)
!6531 = !DILocation(line: 201, column: 10, scope: !6529)
!6532 = !DILocation(line: 201, column: 3, scope: !6529)
!6533 = !DILocation(line: 203, column: 7, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 203, column: 6)
!6535 = !DILocation(line: 203, column: 14, scope: !6534)
!6536 = !DILocation(line: 203, column: 34, scope: !6534)
!6537 = !DILocation(line: 204, column: 3, scope: !6534)
!6538 = !DILocation(line: 203, column: 6, scope: !6504)
!6539 = !DILocation(line: 205, column: 3, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 204, column: 40)
!6541 = !DILocation(line: 209, column: 2, scope: !6504)
!6542 = !DILocation(line: 209, column: 9, scope: !6504)
!6543 = !DILocation(line: 209, column: 28, scope: !6504)
!6544 = !DILocation(line: 210, column: 46, scope: !6504)
!6545 = !DILocation(line: 210, column: 44, scope: !6504)
!6546 = !DILocation(line: 210, column: 2, scope: !6504)
!6547 = !DILocation(line: 210, column: 9, scope: !6504)
!6548 = !DILocation(line: 210, column: 28, scope: !6504)
!6549 = !DILocation(line: 211, column: 11, scope: !6504)
!6550 = !DILocation(line: 211, column: 18, scope: !6504)
!6551 = !DILocation(line: 211, column: 31, scope: !6504)
!6552 = !DILocation(line: 211, column: 9, scope: !6504)
!6553 = !DILocation(line: 212, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 212, column: 6)
!6555 = !DILocation(line: 212, column: 13, scope: !6554)
!6556 = !DILocation(line: 212, column: 6, scope: !6504)
!6557 = !DILocation(line: 213, column: 3, scope: !6554)
!6558 = !DILocation(line: 216, column: 21, scope: !6504)
!6559 = !DILocation(line: 216, column: 28, scope: !6504)
!6560 = !DILocation(line: 216, column: 2, scope: !6504)
!6561 = !DILocation(line: 217, column: 43, scope: !6504)
!6562 = !DILocation(line: 217, column: 50, scope: !6504)
!6563 = !DILocation(line: 218, column: 24, scope: !6504)
!6564 = !DILocation(line: 365, column: 27, scope: !6565, inlinedAt: !6513)
!6565 = distinct !DILexicalBlock(scope: !6508, file: !6509, line: 365, column: 6)
!6566 = !DILocation(line: 365, column: 6, scope: !6565, inlinedAt: !6513)
!6567 = !DILocation(line: 365, column: 6, scope: !6508, inlinedAt: !6513)
!6568 = !DILocation(line: 366, column: 12, scope: !6569, inlinedAt: !6513)
!6569 = distinct !DILexicalBlock(scope: !6570, file: !6509, line: 366, column: 7)
!6570 = distinct !DILexicalBlock(scope: !6565, file: !6509, line: 365, column: 31)
!6571 = !DILocation(line: 366, column: 14, scope: !6569, inlinedAt: !6513)
!6572 = !DILocation(line: 366, column: 7, scope: !6570, inlinedAt: !6513)
!6573 = !DILocation(line: 367, column: 4, scope: !6569, inlinedAt: !6513)
!6574 = !DILocation(line: 368, column: 28, scope: !6570, inlinedAt: !6513)
!6575 = !DILocation(line: 368, column: 10, scope: !6570, inlinedAt: !6513)
!6576 = !DILocation(line: 368, column: 3, scope: !6570, inlinedAt: !6513)
!6577 = !DILocation(line: 370, column: 29, scope: !6578, inlinedAt: !6513)
!6578 = distinct !DILexicalBlock(scope: !6565, file: !6509, line: 369, column: 9)
!6579 = !DILocation(line: 370, column: 10, scope: !6578, inlinedAt: !6513)
!6580 = !DILocation(line: 370, column: 3, scope: !6578, inlinedAt: !6513)
!6581 = !DILocation(line: 372, column: 1, scope: !6508, inlinedAt: !6513)
!6582 = !DILocation(line: 217, column: 14, scope: !6504)
!6583 = !DILocation(line: 217, column: 12, scope: !6504)
!6584 = !DILocation(line: 219, column: 6, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 219, column: 6)
!6586 = !DILocation(line: 219, column: 16, scope: !6585)
!6587 = !DILocation(line: 219, column: 6, scope: !6504)
!6588 = !DILocation(line: 220, column: 13, scope: !6585)
!6589 = !DILocation(line: 220, column: 3, scope: !6585)
!6590 = !DILocation(line: 222, column: 7, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 222, column: 6)
!6592 = !DILocation(line: 222, column: 14, scope: !6591)
!6593 = !DILocation(line: 222, column: 36, scope: !6591)
!6594 = !DILocation(line: 222, column: 54, scope: !6591)
!6595 = !DILocation(line: 222, column: 6, scope: !6504)
!6596 = !DILocation(line: 223, column: 3, scope: !6591)
!6597 = !DILocation(line: 224, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 224, column: 6)
!6599 = !DILocation(line: 224, column: 6, scope: !6504)
!6600 = !DILocation(line: 225, column: 3, scope: !6598)
!6601 = !DILocation(line: 229, column: 2, scope: !6504)
!6602 = !DILocation(line: 229, column: 9, scope: !6504)
!6603 = !DILocation(line: 229, column: 28, scope: !6504)
!6604 = !DILocation(line: 230, column: 11, scope: !6504)
!6605 = !DILocation(line: 230, column: 18, scope: !6504)
!6606 = !DILocation(line: 230, column: 31, scope: !6504)
!6607 = !DILocation(line: 230, column: 9, scope: !6504)
!6608 = !DILocation(line: 230, column: 2, scope: !6504)
!6609 = !DILabel(scope: !6504, name: "done", file: !3, line: 232)
!6610 = !DILocation(line: 232, column: 1, scope: !6504)
!6611 = !DILocation(line: 233, column: 9, scope: !6504)
!6612 = !DILocation(line: 233, column: 2, scope: !6504)
!6613 = !DILocation(line: 234, column: 1, scope: !6504)
!6614 = distinct !DISubprogram(name: "si470x_start", scope: !3, file: !3, line: 367, type: !6615, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6615 = !DISubroutineType(types: !6616)
!6616 = !{!223, !226}
!6617 = !DILocalVariable(name: "radio", arg: 1, scope: !6614, file: !3, line: 367, type: !226)
!6618 = !DILocation(line: 367, column: 40, scope: !6614)
!6619 = !DILocalVariable(name: "retval", scope: !6614, file: !3, line: 369, type: !223)
!6620 = !DILocation(line: 369, column: 6, scope: !6614)
!6621 = !DILocation(line: 372, column: 2, scope: !6614)
!6622 = !DILocation(line: 372, column: 9, scope: !6614)
!6623 = !DILocation(line: 372, column: 29, scope: !6614)
!6624 = !DILocation(line: 374, column: 11, scope: !6614)
!6625 = !DILocation(line: 374, column: 18, scope: !6614)
!6626 = !DILocation(line: 374, column: 31, scope: !6614)
!6627 = !DILocation(line: 374, column: 9, scope: !6614)
!6628 = !DILocation(line: 375, column: 6, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 375, column: 6)
!6630 = !DILocation(line: 375, column: 13, scope: !6629)
!6631 = !DILocation(line: 375, column: 6, scope: !6614)
!6632 = !DILocation(line: 376, column: 3, scope: !6629)
!6633 = !DILocation(line: 379, column: 2, scope: !6614)
!6634 = !DILocation(line: 379, column: 9, scope: !6614)
!6635 = !DILocation(line: 379, column: 31, scope: !6614)
!6636 = !DILocation(line: 381, column: 2, scope: !6614)
!6637 = !DILocation(line: 381, column: 9, scope: !6614)
!6638 = !DILocation(line: 381, column: 31, scope: !6614)
!6639 = !DILocation(line: 382, column: 2, scope: !6614)
!6640 = !DILocation(line: 382, column: 9, scope: !6614)
!6641 = !DILocation(line: 382, column: 31, scope: !6614)
!6642 = !DILocation(line: 383, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 383, column: 6)
!6644 = !DILocation(line: 383, column: 6, scope: !6614)
!6645 = !DILocation(line: 384, column: 3, scope: !6643)
!6646 = !DILocation(line: 384, column: 10, scope: !6643)
!6647 = !DILocation(line: 384, column: 32, scope: !6643)
!6648 = !DILocation(line: 385, column: 11, scope: !6614)
!6649 = !DILocation(line: 385, column: 18, scope: !6614)
!6650 = !DILocation(line: 385, column: 31, scope: !6614)
!6651 = !DILocation(line: 385, column: 9, scope: !6614)
!6652 = !DILocation(line: 386, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 386, column: 6)
!6654 = !DILocation(line: 386, column: 13, scope: !6653)
!6655 = !DILocation(line: 386, column: 6, scope: !6614)
!6656 = !DILocation(line: 387, column: 3, scope: !6653)
!6657 = !DILocation(line: 392, column: 5, scope: !6614)
!6658 = !DILocation(line: 392, column: 12, scope: !6614)
!6659 = !DILocation(line: 392, column: 17, scope: !6614)
!6660 = !DILocation(line: 392, column: 23, scope: !6614)
!6661 = !DILocation(line: 391, column: 16, scope: !6614)
!6662 = !DILocation(line: 393, column: 5, scope: !6614)
!6663 = !DILocation(line: 393, column: 11, scope: !6614)
!6664 = !DILocation(line: 393, column: 17, scope: !6614)
!6665 = !DILocation(line: 392, column: 42, scope: !6614)
!6666 = !DILocation(line: 393, column: 37, scope: !6614)
!6667 = !DILocation(line: 391, column: 3, scope: !6614)
!6668 = !DILocation(line: 390, column: 2, scope: !6614)
!6669 = !DILocation(line: 390, column: 9, scope: !6614)
!6670 = !DILocation(line: 390, column: 31, scope: !6614)
!6671 = !DILocation(line: 395, column: 11, scope: !6614)
!6672 = !DILocation(line: 395, column: 18, scope: !6614)
!6673 = !DILocation(line: 395, column: 31, scope: !6614)
!6674 = !DILocation(line: 395, column: 9, scope: !6614)
!6675 = !DILocation(line: 396, column: 6, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 396, column: 6)
!6677 = !DILocation(line: 396, column: 13, scope: !6676)
!6678 = !DILocation(line: 396, column: 6, scope: !6614)
!6679 = !DILocation(line: 397, column: 3, scope: !6676)
!6680 = !DILocation(line: 400, column: 27, scope: !6614)
!6681 = !DILocation(line: 401, column: 3, scope: !6614)
!6682 = !DILocation(line: 401, column: 10, scope: !6614)
!6683 = !DILocation(line: 401, column: 29, scope: !6614)
!6684 = !DILocation(line: 400, column: 11, scope: !6614)
!6685 = !DILocation(line: 400, column: 9, scope: !6614)
!6686 = !DILocation(line: 400, column: 2, scope: !6614)
!6687 = !DILabel(scope: !6614, name: "done", file: !3, line: 403)
!6688 = !DILocation(line: 403, column: 1, scope: !6614)
!6689 = !DILocation(line: 404, column: 9, scope: !6614)
!6690 = !DILocation(line: 404, column: 2, scope: !6614)
!6691 = distinct !DISubprogram(name: "si470x_stop", scope: !3, file: !3, line: 412, type: !6615, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6692 = !DILocalVariable(name: "radio", arg: 1, scope: !6691, file: !3, line: 412, type: !226)
!6693 = !DILocation(line: 412, column: 39, scope: !6691)
!6694 = !DILocalVariable(name: "retval", scope: !6691, file: !3, line: 414, type: !223)
!6695 = !DILocation(line: 414, column: 6, scope: !6691)
!6696 = !DILocation(line: 417, column: 2, scope: !6691)
!6697 = !DILocation(line: 417, column: 9, scope: !6691)
!6698 = !DILocation(line: 417, column: 31, scope: !6691)
!6699 = !DILocation(line: 418, column: 11, scope: !6691)
!6700 = !DILocation(line: 418, column: 18, scope: !6691)
!6701 = !DILocation(line: 418, column: 31, scope: !6691)
!6702 = !DILocation(line: 418, column: 9, scope: !6691)
!6703 = !DILocation(line: 419, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 419, column: 6)
!6705 = !DILocation(line: 419, column: 13, scope: !6704)
!6706 = !DILocation(line: 419, column: 6, scope: !6691)
!6707 = !DILocation(line: 420, column: 3, scope: !6704)
!6708 = !DILocation(line: 423, column: 2, scope: !6691)
!6709 = !DILocation(line: 423, column: 9, scope: !6691)
!6710 = !DILocation(line: 423, column: 29, scope: !6691)
!6711 = !DILocation(line: 425, column: 2, scope: !6691)
!6712 = !DILocation(line: 425, column: 9, scope: !6691)
!6713 = !DILocation(line: 425, column: 29, scope: !6691)
!6714 = !DILocation(line: 426, column: 11, scope: !6691)
!6715 = !DILocation(line: 426, column: 18, scope: !6691)
!6716 = !DILocation(line: 426, column: 31, scope: !6691)
!6717 = !DILocation(line: 426, column: 9, scope: !6691)
!6718 = !DILocation(line: 426, column: 2, scope: !6691)
!6719 = !DILabel(scope: !6691, name: "done", file: !3, line: 428)
!6720 = !DILocation(line: 428, column: 1, scope: !6691)
!6721 = !DILocation(line: 429, column: 9, scope: !6691)
!6722 = !DILocation(line: 429, column: 2, scope: !6691)
!6723 = distinct !DISubprogram(name: "si470x_s_ctrl", scope: !3, file: !3, line: 575, type: !4335, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6724 = !DILocalVariable(name: "ctrl", arg: 1, scope: !6723, file: !3, line: 575, type: !4307)
!6725 = !DILocation(line: 575, column: 44, scope: !6723)
!6726 = !DILocalVariable(name: "radio", scope: !6723, file: !3, line: 577, type: !226)
!6727 = !DILocation(line: 577, column: 24, scope: !6723)
!6728 = !DILocalVariable(name: "__mptr", scope: !6729, file: !3, line: 578, type: !225)
!6729 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 578, column: 3)
!6730 = !DILocation(line: 578, column: 3, scope: !6729)
!6731 = !DILocation(line: 578, column: 3, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 578, column: 3)
!6733 = !DILocation(line: 580, column: 10, scope: !6723)
!6734 = !DILocation(line: 580, column: 16, scope: !6723)
!6735 = !DILocation(line: 580, column: 2, scope: !6723)
!6736 = !DILocation(line: 582, column: 3, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 580, column: 20)
!6738 = !DILocation(line: 582, column: 10, scope: !6737)
!6739 = !DILocation(line: 582, column: 32, scope: !6737)
!6740 = !DILocation(line: 583, column: 35, scope: !6737)
!6741 = !DILocation(line: 583, column: 41, scope: !6737)
!6742 = !DILocation(line: 583, column: 3, scope: !6737)
!6743 = !DILocation(line: 583, column: 10, scope: !6737)
!6744 = !DILocation(line: 583, column: 32, scope: !6737)
!6745 = !DILocation(line: 584, column: 10, scope: !6737)
!6746 = !DILocation(line: 584, column: 17, scope: !6737)
!6747 = !DILocation(line: 584, column: 30, scope: !6737)
!6748 = !DILocation(line: 584, column: 3, scope: !6737)
!6749 = !DILocation(line: 586, column: 7, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 586, column: 7)
!6751 = !DILocation(line: 586, column: 13, scope: !6750)
!6752 = !DILocation(line: 586, column: 7, scope: !6737)
!6753 = !DILocation(line: 587, column: 4, scope: !6750)
!6754 = !DILocation(line: 587, column: 11, scope: !6750)
!6755 = !DILocation(line: 587, column: 31, scope: !6750)
!6756 = !DILocation(line: 589, column: 4, scope: !6750)
!6757 = !DILocation(line: 589, column: 11, scope: !6750)
!6758 = !DILocation(line: 589, column: 31, scope: !6750)
!6759 = !DILocation(line: 590, column: 10, scope: !6737)
!6760 = !DILocation(line: 590, column: 17, scope: !6737)
!6761 = !DILocation(line: 590, column: 30, scope: !6737)
!6762 = !DILocation(line: 590, column: 3, scope: !6737)
!6763 = !DILocation(line: 592, column: 3, scope: !6737)
!6764 = !DILocation(line: 594, column: 1, scope: !6723)
!6765 = distinct !DISubprogram(name: "reinit_completion", scope: !1539, file: !1539, line: 98, type: !6766, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{null, !1537}
!6768 = !DILocalVariable(name: "x", arg: 1, scope: !6765, file: !1539, line: 98, type: !1537)
!6769 = !DILocation(line: 98, column: 57, scope: !6765)
!6770 = !DILocation(line: 100, column: 2, scope: !6765)
!6771 = !DILocation(line: 100, column: 5, scope: !6765)
!6772 = !DILocation(line: 100, column: 10, scope: !6765)
!6773 = !DILocation(line: 101, column: 1, scope: !6765)
!6774 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6509, file: !6509, line: 308, type: !6510, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6775 = !DILocalVariable(name: "m", arg: 1, scope: !6774, file: !6509, line: 308, type: !2865)
!6776 = !DILocation(line: 308, column: 66, scope: !6774)
!6777 = !DILocation(line: 310, column: 10, scope: !6774)
!6778 = !DILocation(line: 310, column: 12, scope: !6774)
!6779 = !DILocation(line: 310, column: 34, scope: !6774)
!6780 = !DILocation(line: 310, column: 39, scope: !6774)
!6781 = !DILocation(line: 310, column: 2, scope: !6774)
!6782 = distinct !DISubprogram(name: "si470x_fops_read", scope: !3, file: !3, line: 459, type: !2912, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6783 = !DILocalVariable(name: "addr", arg: 1, scope: !6784, file: !6785, line: 138, type: !2165)
!6784 = distinct !DISubprogram(name: "check_copy_size", scope: !6785, file: !6785, line: 138, type: !6786, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6785 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!6786 = !DISubroutineType(types: !6787)
!6787 = !{!517, !2165, !348, !517}
!6788 = !DILocation(line: 138, column: 29, scope: !6784, inlinedAt: !6789)
!6789 = distinct !DILocation(line: 199, column: 6, scope: !6790, inlinedAt: !6795)
!6790 = distinct !DILexicalBlock(scope: !6792, file: !6791, line: 199, column: 6)
!6791 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!6792 = distinct !DISubprogram(name: "copy_to_user", scope: !6791, file: !6791, line: 197, type: !6793, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6793 = !DISubroutineType(types: !6794)
!6794 = !{!351, !225, !2165, !351}
!6795 = distinct !DILocation(line: 492, column: 7, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 492, column: 7)
!6797 = distinct !DILexicalBlock(scope: !6782, file: !3, line: 487, column: 30)
!6798 = !DILocalVariable(name: "bytes", arg: 2, scope: !6784, file: !6785, line: 138, type: !348)
!6799 = !DILocation(line: 138, column: 42, scope: !6784, inlinedAt: !6789)
!6800 = !DILocalVariable(name: "is_source", arg: 3, scope: !6784, file: !6785, line: 138, type: !517)
!6801 = !DILocation(line: 138, column: 54, scope: !6784, inlinedAt: !6789)
!6802 = !DILocalVariable(name: "sz", scope: !6784, file: !6785, line: 140, type: !223)
!6803 = !DILocation(line: 140, column: 6, scope: !6784, inlinedAt: !6789)
!6804 = !DILocalVariable(name: "__ret_warn_on", scope: !6805, file: !6785, line: 150, type: !223)
!6805 = distinct !DILexicalBlock(scope: !6806, file: !6785, line: 150, column: 6)
!6806 = distinct !DILexicalBlock(scope: !6784, file: !6785, line: 150, column: 6)
!6807 = !DILocation(line: 150, column: 6, scope: !6805, inlinedAt: !6789)
!6808 = !DILocalVariable(name: "to", arg: 1, scope: !6792, file: !6791, line: 197, type: !225)
!6809 = !DILocation(line: 197, column: 27, scope: !6792, inlinedAt: !6795)
!6810 = !DILocalVariable(name: "from", arg: 2, scope: !6792, file: !6791, line: 197, type: !2165)
!6811 = !DILocation(line: 197, column: 43, scope: !6792, inlinedAt: !6795)
!6812 = !DILocalVariable(name: "n", arg: 3, scope: !6792, file: !6791, line: 197, type: !351)
!6813 = !DILocation(line: 197, column: 63, scope: !6792, inlinedAt: !6795)
!6814 = !DILocalVariable(name: "file", arg: 1, scope: !6782, file: !3, line: 459, type: !379)
!6815 = !DILocation(line: 459, column: 46, scope: !6782)
!6816 = !DILocalVariable(name: "buf", arg: 2, scope: !6782, file: !3, line: 459, type: !302)
!6817 = !DILocation(line: 459, column: 65, scope: !6782)
!6818 = !DILocalVariable(name: "count", arg: 3, scope: !6782, file: !3, line: 460, type: !348)
!6819 = !DILocation(line: 460, column: 10, scope: !6782)
!6820 = !DILocalVariable(name: "ppos", arg: 4, scope: !6782, file: !3, line: 460, type: !2914)
!6821 = !DILocation(line: 460, column: 25, scope: !6782)
!6822 = !DILocalVariable(name: "radio", scope: !6782, file: !3, line: 462, type: !226)
!6823 = !DILocation(line: 462, column: 24, scope: !6782)
!6824 = !DILocation(line: 462, column: 46, scope: !6782)
!6825 = !DILocation(line: 462, column: 32, scope: !6782)
!6826 = !DILocalVariable(name: "retval", scope: !6782, file: !3, line: 463, type: !223)
!6827 = !DILocation(line: 463, column: 6, scope: !6782)
!6828 = !DILocalVariable(name: "block_count", scope: !6782, file: !3, line: 464, type: !7)
!6829 = !DILocation(line: 464, column: 15, scope: !6782)
!6830 = !DILocation(line: 467, column: 7, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6782, file: !3, line: 467, column: 6)
!6832 = !DILocation(line: 467, column: 14, scope: !6831)
!6833 = !DILocation(line: 467, column: 36, scope: !6831)
!6834 = !DILocation(line: 467, column: 54, scope: !6831)
!6835 = !DILocation(line: 467, column: 6, scope: !6782)
!6836 = !DILocation(line: 468, column: 17, scope: !6831)
!6837 = !DILocation(line: 468, column: 3, scope: !6831)
!6838 = !DILocation(line: 471, column: 2, scope: !6782)
!6839 = !DILocation(line: 471, column: 9, scope: !6782)
!6840 = !DILocation(line: 471, column: 16, scope: !6782)
!6841 = !DILocation(line: 471, column: 28, scope: !6782)
!6842 = !DILocation(line: 471, column: 35, scope: !6782)
!6843 = !DILocation(line: 471, column: 25, scope: !6782)
!6844 = !DILocation(line: 472, column: 7, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 472, column: 7)
!6846 = distinct !DILexicalBlock(scope: !6782, file: !3, line: 471, column: 45)
!6847 = !DILocation(line: 472, column: 13, scope: !6845)
!6848 = !DILocation(line: 472, column: 21, scope: !6845)
!6849 = !DILocation(line: 472, column: 7, scope: !6846)
!6850 = !DILocation(line: 473, column: 11, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 472, column: 35)
!6852 = !DILocation(line: 474, column: 4, scope: !6851)
!6853 = !DILocalVariable(name: "__ret", scope: !6854, file: !3, line: 476, type: !223)
!6854 = distinct !DILexicalBlock(scope: !6855, file: !3, line: 476, column: 7)
!6855 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 476, column: 7)
!6856 = !DILocation(line: 476, column: 7, scope: !6854)
!6857 = !DILocation(line: 476, column: 7, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 476, column: 7)
!6859 = !DILocation(line: 476, column: 7, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 476, column: 7)
!6861 = !DILocation(line: 476, column: 7, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 476, column: 7)
!6863 = !DILocalVariable(name: "__wq_entry", scope: !6864, file: !3, line: 476, type: !6865)
!6864 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 476, column: 7)
!6865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1518, line: 29, size: 320, elements: !6866)
!6866 = !{!6867, !6868, !6869, !6875}
!6867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6865, file: !1518, line: 30, baseType: !7, size: 32)
!6868 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6865, file: !1518, line: 31, baseType: !225, size: 64, offset: 64)
!6869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6865, file: !1518, line: 32, baseType: !6870, size: 64, offset: 128)
!6870 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1518, line: 16, baseType: !6871)
!6871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6872, size: 64)
!6872 = !DISubroutineType(types: !6873)
!6873 = !{!223, !6874, !7, !223, !225}
!6874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6865, size: 64)
!6875 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6865, file: !1518, line: 33, baseType: !247, size: 128, offset: 192)
!6876 = !DILocation(line: 476, column: 7, scope: !6864)
!6877 = !DILocalVariable(name: "__ret", scope: !6864, file: !3, line: 476, type: !224)
!6878 = !DILocalVariable(name: "__int", scope: !6879, file: !3, line: 476, type: !224)
!6879 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 476, column: 7)
!6880 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 476, column: 7)
!6881 = distinct !DILexicalBlock(scope: !6864, file: !3, line: 476, column: 7)
!6882 = !DILocation(line: 476, column: 7, scope: !6879)
!6883 = !DILocation(line: 476, column: 7, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 476, column: 7)
!6885 = !DILocation(line: 476, column: 7, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 476, column: 7)
!6887 = !DILocation(line: 476, column: 7, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 476, column: 7)
!6889 = !DILocation(line: 476, column: 7, scope: !6880)
!6890 = distinct !{!6890, !6891, !6891}
!6891 = !DILocation(line: 476, column: 7, scope: !6881)
!6892 = !DILabel(scope: !6864, name: "__out", file: !3, line: 476)
!6893 = !DILocation(line: 477, column: 40, scope: !6855)
!6894 = !DILocation(line: 476, column: 7, scope: !6846)
!6895 = !DILocation(line: 478, column: 11, scope: !6896)
!6896 = distinct !DILexicalBlock(scope: !6855, file: !3, line: 477, column: 45)
!6897 = !DILocation(line: 479, column: 4, scope: !6896)
!6898 = distinct !{!6898, !6838, !6899}
!6899 = !DILocation(line: 481, column: 2, scope: !6782)
!6900 = !DILocation(line: 484, column: 8, scope: !6782)
!6901 = !DILocation(line: 487, column: 2, scope: !6782)
!6902 = !DILocation(line: 487, column: 9, scope: !6782)
!6903 = !DILocation(line: 487, column: 23, scope: !6782)
!6904 = !DILocation(line: 487, column: 21, scope: !6782)
!6905 = !DILocation(line: 488, column: 7, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 488, column: 7)
!6907 = !DILocation(line: 488, column: 14, scope: !6906)
!6908 = !DILocation(line: 488, column: 26, scope: !6906)
!6909 = !DILocation(line: 488, column: 33, scope: !6906)
!6910 = !DILocation(line: 488, column: 23, scope: !6906)
!6911 = !DILocation(line: 488, column: 7, scope: !6797)
!6912 = !DILocation(line: 489, column: 4, scope: !6906)
!6913 = !DILocation(line: 492, column: 20, scope: !6796)
!6914 = !DILocation(line: 492, column: 26, scope: !6796)
!6915 = !DILocation(line: 492, column: 33, scope: !6796)
!6916 = !DILocation(line: 492, column: 40, scope: !6796)
!6917 = !DILocation(line: 492, column: 47, scope: !6796)
!6918 = !DILocation(line: 199, column: 6, scope: !6790, inlinedAt: !6795)
!6919 = !DILocation(line: 141, column: 6, scope: !6920, inlinedAt: !6789)
!6920 = distinct !DILexicalBlock(scope: !6784, file: !6785, line: 141, column: 6)
!6921 = !DILocation(line: 0, scope: !6920, inlinedAt: !6789)
!6922 = !DILocation(line: 141, column: 6, scope: !6784, inlinedAt: !6789)
!6923 = !DILocation(line: 142, column: 29, scope: !6924, inlinedAt: !6789)
!6924 = distinct !DILexicalBlock(scope: !6925, file: !6785, line: 142, column: 7)
!6925 = distinct !DILexicalBlock(scope: !6920, file: !6785, line: 141, column: 39)
!6926 = !DILocation(line: 142, column: 8, scope: !6924, inlinedAt: !6789)
!6927 = !DILocation(line: 142, column: 7, scope: !6925, inlinedAt: !6789)
!6928 = !DILocation(line: 143, column: 18, scope: !6924, inlinedAt: !6789)
!6929 = !DILocation(line: 143, column: 22, scope: !6924, inlinedAt: !6789)
!6930 = !DILocation(line: 143, column: 4, scope: !6924, inlinedAt: !6789)
!6931 = !DILocation(line: 144, column: 12, scope: !6932, inlinedAt: !6789)
!6932 = distinct !DILexicalBlock(scope: !6924, file: !6785, line: 144, column: 12)
!6933 = !DILocation(line: 144, column: 12, scope: !6924, inlinedAt: !6789)
!6934 = !DILocation(line: 145, column: 4, scope: !6932, inlinedAt: !6789)
!6935 = !DILocation(line: 147, column: 4, scope: !6932, inlinedAt: !6789)
!6936 = !DILocation(line: 148, column: 3, scope: !6925, inlinedAt: !6789)
!6937 = !DILocation(line: 150, column: 6, scope: !6938, inlinedAt: !6789)
!6938 = distinct !DILexicalBlock(scope: !6805, file: !6785, line: 150, column: 6)
!6939 = !DILocation(line: 150, column: 6, scope: !6940, inlinedAt: !6789)
!6940 = distinct !DILexicalBlock(scope: !6941, file: !6785, line: 150, column: 6)
!6941 = distinct !DILexicalBlock(scope: !6938, file: !6785, line: 150, column: 6)
!6942 = !{i32 -2145530114, i32 -2145530085, i32 -2145530039, i32 -2145529981, i32 -2145529927, i32 -2145529873, i32 -2145529818, i32 -2145529787}
!6943 = !DILocation(line: 150, column: 6, scope: !6944, inlinedAt: !6789)
!6944 = distinct !DILexicalBlock(scope: !6941, file: !6785, line: 150, column: 6)
!6945 = !{i32 -2145529367, i32 -2145529360, i32 -2145529308, i32 -2145529277, i32 -2145529247}
!6946 = !DILocation(line: 150, column: 6, scope: !6941, inlinedAt: !6789)
!6947 = !DILocation(line: 150, column: 6, scope: !6806, inlinedAt: !6789)
!6948 = !DILocation(line: 150, column: 6, scope: !6784, inlinedAt: !6789)
!6949 = !DILocation(line: 151, column: 3, scope: !6806, inlinedAt: !6789)
!6950 = !DILocation(line: 152, column: 20, scope: !6784, inlinedAt: !6789)
!6951 = !DILocation(line: 152, column: 26, scope: !6784, inlinedAt: !6789)
!6952 = !DILocation(line: 152, column: 33, scope: !6784, inlinedAt: !6789)
!6953 = !DILocation(line: 152, column: 2, scope: !6784, inlinedAt: !6789)
!6954 = !DILocation(line: 153, column: 2, scope: !6784, inlinedAt: !6789)
!6955 = !DILocation(line: 154, column: 1, scope: !6784, inlinedAt: !6789)
!6956 = !DILocation(line: 199, column: 6, scope: !6792, inlinedAt: !6795)
!6957 = !DILocation(line: 200, column: 21, scope: !6790, inlinedAt: !6795)
!6958 = !DILocation(line: 200, column: 25, scope: !6790, inlinedAt: !6795)
!6959 = !DILocation(line: 200, column: 31, scope: !6790, inlinedAt: !6795)
!6960 = !DILocation(line: 200, column: 7, scope: !6790, inlinedAt: !6795)
!6961 = !DILocation(line: 200, column: 5, scope: !6790, inlinedAt: !6795)
!6962 = !DILocation(line: 200, column: 3, scope: !6790, inlinedAt: !6795)
!6963 = !DILocation(line: 201, column: 9, scope: !6792, inlinedAt: !6795)
!6964 = !DILocation(line: 492, column: 7, scope: !6796)
!6965 = !DILocation(line: 492, column: 7, scope: !6797)
!6966 = !DILocation(line: 494, column: 4, scope: !6796)
!6967 = !DILocation(line: 497, column: 3, scope: !6797)
!6968 = !DILocation(line: 497, column: 10, scope: !6797)
!6969 = !DILocation(line: 497, column: 19, scope: !6797)
!6970 = !DILocation(line: 498, column: 7, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 498, column: 7)
!6972 = !DILocation(line: 498, column: 14, scope: !6971)
!6973 = !DILocation(line: 498, column: 26, scope: !6971)
!6974 = !DILocation(line: 498, column: 33, scope: !6971)
!6975 = !DILocation(line: 498, column: 23, scope: !6971)
!6976 = !DILocation(line: 498, column: 7, scope: !6797)
!6977 = !DILocation(line: 499, column: 4, scope: !6971)
!6978 = !DILocation(line: 499, column: 11, scope: !6971)
!6979 = !DILocation(line: 499, column: 20, scope: !6971)
!6980 = !DILocation(line: 502, column: 14, scope: !6797)
!6981 = !DILocation(line: 503, column: 7, scope: !6797)
!6982 = !DILocation(line: 504, column: 10, scope: !6797)
!6983 = distinct !{!6983, !6901, !6984}
!6984 = !DILocation(line: 505, column: 2, scope: !6782)
!6985 = !DILabel(scope: !6782, name: "done", file: !3, line: 507)
!6986 = !DILocation(line: 507, column: 1, scope: !6782)
!6987 = !DILocation(line: 508, column: 9, scope: !6782)
!6988 = !DILocation(line: 508, column: 2, scope: !6782)
!6989 = distinct !DISubprogram(name: "si470x_fops_poll", scope: !3, file: !3, line: 515, type: !2941, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6990 = !DILocalVariable(name: "file", arg: 1, scope: !6989, file: !3, line: 515, type: !379)
!6991 = !DILocation(line: 515, column: 47, scope: !6989)
!6992 = !DILocalVariable(name: "pts", arg: 2, scope: !6989, file: !3, line: 516, type: !2945)
!6993 = !DILocation(line: 516, column: 29, scope: !6989)
!6994 = !DILocalVariable(name: "radio", scope: !6989, file: !3, line: 518, type: !226)
!6995 = !DILocation(line: 518, column: 24, scope: !6989)
!6996 = !DILocation(line: 518, column: 46, scope: !6989)
!6997 = !DILocation(line: 518, column: 32, scope: !6989)
!6998 = !DILocalVariable(name: "req_events", scope: !6989, file: !3, line: 519, type: !2943)
!6999 = !DILocation(line: 519, column: 11, scope: !6989)
!7000 = !DILocation(line: 519, column: 46, scope: !6989)
!7001 = !DILocation(line: 519, column: 24, scope: !6989)
!7002 = !DILocalVariable(name: "retval", scope: !6989, file: !3, line: 520, type: !2943)
!7003 = !DILocation(line: 520, column: 11, scope: !6989)
!7004 = !DILocation(line: 520, column: 35, scope: !6989)
!7005 = !DILocation(line: 520, column: 41, scope: !6989)
!7006 = !DILocation(line: 520, column: 20, scope: !6989)
!7007 = !DILocation(line: 522, column: 6, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6989, file: !3, line: 522, column: 6)
!7009 = !DILocation(line: 522, column: 17, scope: !7008)
!7010 = !DILocation(line: 522, column: 6, scope: !6989)
!7011 = !DILocation(line: 524, column: 8, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 524, column: 7)
!7013 = distinct !DILexicalBlock(scope: !7008, file: !3, line: 522, column: 44)
!7014 = !DILocation(line: 524, column: 15, scope: !7012)
!7015 = !DILocation(line: 524, column: 37, scope: !7012)
!7016 = !DILocation(line: 524, column: 55, scope: !7012)
!7017 = !DILocation(line: 524, column: 7, scope: !7013)
!7018 = !DILocation(line: 525, column: 18, scope: !7012)
!7019 = !DILocation(line: 525, column: 4, scope: !7012)
!7020 = !DILocation(line: 527, column: 13, scope: !7013)
!7021 = !DILocation(line: 527, column: 20, scope: !7013)
!7022 = !DILocation(line: 527, column: 27, scope: !7013)
!7023 = !DILocation(line: 527, column: 39, scope: !7013)
!7024 = !DILocation(line: 527, column: 3, scope: !7013)
!7025 = !DILocation(line: 529, column: 7, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 529, column: 7)
!7027 = !DILocation(line: 529, column: 14, scope: !7026)
!7028 = !DILocation(line: 529, column: 26, scope: !7026)
!7029 = !DILocation(line: 529, column: 33, scope: !7026)
!7030 = !DILocation(line: 529, column: 23, scope: !7026)
!7031 = !DILocation(line: 529, column: 7, scope: !7013)
!7032 = !DILocation(line: 530, column: 11, scope: !7026)
!7033 = !DILocation(line: 530, column: 4, scope: !7026)
!7034 = !DILocation(line: 531, column: 2, scope: !7013)
!7035 = !DILocation(line: 533, column: 9, scope: !6989)
!7036 = !DILocation(line: 533, column: 2, scope: !6989)
!7037 = distinct !DISubprogram(name: "si470x_fops_open", scope: !3, file: !3, line: 537, type: !3997, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7038 = !DILocalVariable(name: "file", arg: 1, scope: !7037, file: !3, line: 537, type: !379)
!7039 = !DILocation(line: 537, column: 42, scope: !7037)
!7040 = !DILocalVariable(name: "radio", scope: !7037, file: !3, line: 539, type: !226)
!7041 = !DILocation(line: 539, column: 24, scope: !7037)
!7042 = !DILocation(line: 539, column: 46, scope: !7037)
!7043 = !DILocation(line: 539, column: 32, scope: !7037)
!7044 = !DILocation(line: 541, column: 9, scope: !7037)
!7045 = !DILocation(line: 541, column: 16, scope: !7037)
!7046 = !DILocation(line: 541, column: 26, scope: !7037)
!7047 = !DILocation(line: 541, column: 2, scope: !7037)
!7048 = distinct !DISubprogram(name: "si470x_fops_release", scope: !3, file: !3, line: 548, type: !3997, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7049 = !DILocalVariable(name: "file", arg: 1, scope: !7048, file: !3, line: 548, type: !379)
!7050 = !DILocation(line: 548, column: 45, scope: !7048)
!7051 = !DILocalVariable(name: "radio", scope: !7048, file: !3, line: 550, type: !226)
!7052 = !DILocation(line: 550, column: 24, scope: !7048)
!7053 = !DILocation(line: 550, column: 46, scope: !7048)
!7054 = !DILocation(line: 550, column: 32, scope: !7048)
!7055 = !DILocation(line: 552, column: 9, scope: !7048)
!7056 = !DILocation(line: 552, column: 16, scope: !7048)
!7057 = !DILocation(line: 552, column: 29, scope: !7048)
!7058 = !DILocation(line: 552, column: 2, scope: !7048)
!7059 = distinct !DISubprogram(name: "video_drvdata", scope: !147, file: !147, line: 515, type: !7060, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7060 = !DISubroutineType(types: !7061)
!7061 = !{!225, !379}
!7062 = !DILocalVariable(name: "file", arg: 1, scope: !7059, file: !147, line: 515, type: !379)
!7063 = !DILocation(line: 515, column: 48, scope: !7059)
!7064 = !DILocation(line: 517, column: 41, scope: !7059)
!7065 = !DILocation(line: 517, column: 27, scope: !7059)
!7066 = !DILocation(line: 517, column: 9, scope: !7059)
!7067 = !DILocation(line: 517, column: 2, scope: !7059)
!7068 = distinct !DISubprogram(name: "si470x_rds_on", scope: !3, file: !3, line: 437, type: !6615, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7069 = !DILocalVariable(name: "radio", arg: 1, scope: !7068, file: !3, line: 437, type: !226)
!7070 = !DILocation(line: 437, column: 48, scope: !7068)
!7071 = !DILocalVariable(name: "retval", scope: !7068, file: !3, line: 439, type: !223)
!7072 = !DILocation(line: 439, column: 6, scope: !7068)
!7073 = !DILocation(line: 442, column: 2, scope: !7068)
!7074 = !DILocation(line: 442, column: 9, scope: !7068)
!7075 = !DILocation(line: 442, column: 31, scope: !7068)
!7076 = !DILocation(line: 443, column: 11, scope: !7068)
!7077 = !DILocation(line: 443, column: 18, scope: !7068)
!7078 = !DILocation(line: 443, column: 31, scope: !7068)
!7079 = !DILocation(line: 443, column: 9, scope: !7068)
!7080 = !DILocation(line: 444, column: 6, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !7068, file: !3, line: 444, column: 6)
!7082 = !DILocation(line: 444, column: 13, scope: !7081)
!7083 = !DILocation(line: 444, column: 6, scope: !7068)
!7084 = !DILocation(line: 445, column: 3, scope: !7081)
!7085 = !DILocation(line: 445, column: 10, scope: !7081)
!7086 = !DILocation(line: 445, column: 32, scope: !7081)
!7087 = !DILocation(line: 447, column: 9, scope: !7068)
!7088 = !DILocation(line: 447, column: 2, scope: !7068)
!7089 = distinct !DISubprogram(name: "video_get_drvdata", scope: !147, file: !147, line: 483, type: !7090, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7090 = !DISubroutineType(types: !7091)
!7091 = !{!225, !4259}
!7092 = !DILocalVariable(name: "vdev", arg: 1, scope: !7089, file: !147, line: 483, type: !4259)
!7093 = !DILocation(line: 483, column: 60, scope: !7089)
!7094 = !DILocation(line: 485, column: 26, scope: !7089)
!7095 = !DILocation(line: 485, column: 32, scope: !7089)
!7096 = !DILocation(line: 485, column: 9, scope: !7089)
!7097 = !DILocation(line: 485, column: 2, scope: !7089)
!7098 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !7099, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7099 = !DISubroutineType(types: !7100)
!7100 = !{!225, !3756}
!7101 = !DILocalVariable(name: "dev", arg: 1, scope: !7098, file: !73, line: 655, type: !3756)
!7102 = !DILocation(line: 655, column: 58, scope: !7098)
!7103 = !DILocation(line: 657, column: 9, scope: !7098)
!7104 = !DILocation(line: 657, column: 14, scope: !7098)
!7105 = !DILocation(line: 657, column: 2, scope: !7098)
!7106 = distinct !DISubprogram(name: "copy_overflow", scope: !6785, file: !6785, line: 132, type: !7107, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7107 = !DISubroutineType(types: !7108)
!7108 = !{null, !223, !351}
!7109 = !DILocalVariable(name: "size", arg: 1, scope: !7106, file: !6785, line: 132, type: !223)
!7110 = !DILocation(line: 132, column: 38, scope: !7106)
!7111 = !DILocalVariable(name: "count", arg: 2, scope: !7106, file: !6785, line: 132, type: !351)
!7112 = !DILocation(line: 132, column: 58, scope: !7106)
!7113 = !DILocalVariable(name: "__ret_warn_on", scope: !7114, file: !6785, line: 134, type: !223)
!7114 = distinct !DILexicalBlock(scope: !7106, file: !6785, line: 134, column: 2)
!7115 = !DILocation(line: 134, column: 2, scope: !7114)
!7116 = !DILocation(line: 134, column: 2, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7114, file: !6785, line: 134, column: 2)
!7118 = !DILocation(line: 134, column: 2, scope: !7119)
!7119 = distinct !DILexicalBlock(scope: !7117, file: !6785, line: 134, column: 2)
!7120 = !DILocation(line: 134, column: 2, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7119, file: !6785, line: 134, column: 2)
!7122 = !DILocation(line: 134, column: 2, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7119, file: !6785, line: 134, column: 2)
!7124 = !DILocation(line: 134, column: 2, scope: !7125)
!7125 = distinct !DILexicalBlock(scope: !7123, file: !6785, line: 134, column: 2)
!7126 = !DILocation(line: 134, column: 2, scope: !7127)
!7127 = distinct !DILexicalBlock(scope: !7123, file: !6785, line: 134, column: 2)
!7128 = !{i32 -2145531938, i32 -2145531909, i32 -2145531863, i32 -2145531805, i32 -2145531751, i32 -2145531697, i32 -2145531642, i32 -2145531611}
!7129 = !DILocation(line: 134, column: 2, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7123, file: !6785, line: 134, column: 2)
!7131 = !{i32 -2145531191, i32 -2145531184, i32 -2145531132, i32 -2145531101, i32 -2145531071}
!7132 = !DILocation(line: 134, column: 2, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7123, file: !6785, line: 134, column: 2)
!7134 = !DILocation(line: 134, column: 2, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7119, file: !6785, line: 134, column: 2)
!7136 = !DILocation(line: 135, column: 1, scope: !7106)
!7137 = distinct !DISubprogram(name: "check_object_size", scope: !6785, file: !6785, line: 122, type: !7138, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7138 = !DISubroutineType(types: !7139)
!7139 = !{null, !2165, !351, !517}
!7140 = !DILocalVariable(name: "ptr", arg: 1, scope: !7137, file: !6785, line: 122, type: !2165)
!7141 = !DILocation(line: 122, column: 50, scope: !7137)
!7142 = !DILocalVariable(name: "n", arg: 2, scope: !7137, file: !6785, line: 122, type: !351)
!7143 = !DILocation(line: 122, column: 69, scope: !7137)
!7144 = !DILocalVariable(name: "to_user", arg: 3, scope: !7137, file: !6785, line: 123, type: !517)
!7145 = !DILocation(line: 123, column: 15, scope: !7137)
!7146 = !DILocation(line: 124, column: 3, scope: !7137)
!7147 = distinct !DISubprogram(name: "poll_requested_events", scope: !2947, file: !2947, line: 70, type: !7148, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7148 = !DISubroutineType(types: !7149)
!7149 = !{!2943, !7150}
!7150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7151, size: 64)
!7151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7152)
!7152 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2947, line: 46, baseType: !2946)
!7153 = !DILocalVariable(name: "p", arg: 1, scope: !7147, file: !2947, line: 70, type: !7150)
!7154 = !DILocation(line: 70, column: 64, scope: !7147)
!7155 = !DILocation(line: 72, column: 9, scope: !7147)
!7156 = !DILocation(line: 72, column: 13, scope: !7147)
!7157 = !DILocation(line: 72, column: 16, scope: !7147)
!7158 = !DILocation(line: 72, column: 2, scope: !7147)
!7159 = distinct !DISubprogram(name: "poll_wait", scope: !2947, file: !2947, line: 48, type: !7160, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7160 = !DISubroutineType(types: !7161)
!7161 = !{null, !379, !2954, !7162}
!7162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7152, size: 64)
!7163 = !DILocalVariable(name: "filp", arg: 1, scope: !7159, file: !2947, line: 48, type: !379)
!7164 = !DILocation(line: 48, column: 44, scope: !7159)
!7165 = !DILocalVariable(name: "wait_address", arg: 2, scope: !7159, file: !2947, line: 48, type: !2954)
!7166 = !DILocation(line: 48, column: 70, scope: !7159)
!7167 = !DILocalVariable(name: "p", arg: 3, scope: !7159, file: !2947, line: 48, type: !7162)
!7168 = !DILocation(line: 48, column: 96, scope: !7159)
!7169 = !DILocation(line: 50, column: 6, scope: !7170)
!7170 = distinct !DILexicalBlock(scope: !7159, file: !2947, line: 50, column: 6)
!7171 = !DILocation(line: 50, column: 8, scope: !7170)
!7172 = !DILocation(line: 50, column: 11, scope: !7170)
!7173 = !DILocation(line: 50, column: 14, scope: !7170)
!7174 = !DILocation(line: 50, column: 21, scope: !7170)
!7175 = !DILocation(line: 50, column: 24, scope: !7170)
!7176 = !DILocation(line: 50, column: 6, scope: !7159)
!7177 = !DILocation(line: 51, column: 3, scope: !7170)
!7178 = !DILocation(line: 51, column: 6, scope: !7170)
!7179 = !DILocation(line: 51, column: 13, scope: !7170)
!7180 = !DILocation(line: 51, column: 19, scope: !7170)
!7181 = !DILocation(line: 51, column: 33, scope: !7170)
!7182 = !DILocation(line: 52, column: 1, scope: !7159)
!7183 = distinct !DISubprogram(name: "si470x_vidioc_querycap", scope: !3, file: !3, line: 758, type: !4872, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7184 = !DILocalVariable(name: "file", arg: 1, scope: !7183, file: !3, line: 758, type: !379)
!7185 = !DILocation(line: 758, column: 48, scope: !7183)
!7186 = !DILocalVariable(name: "priv", arg: 2, scope: !7183, file: !3, line: 758, type: !225)
!7187 = !DILocation(line: 758, column: 60, scope: !7183)
!7188 = !DILocalVariable(name: "capability", arg: 3, scope: !7183, file: !3, line: 759, type: !4874)
!7189 = !DILocation(line: 759, column: 27, scope: !7183)
!7190 = !DILocalVariable(name: "radio", scope: !7183, file: !3, line: 761, type: !226)
!7191 = !DILocation(line: 761, column: 24, scope: !7183)
!7192 = !DILocation(line: 761, column: 46, scope: !7183)
!7193 = !DILocation(line: 761, column: 32, scope: !7183)
!7194 = !DILocation(line: 763, column: 9, scope: !7183)
!7195 = !DILocation(line: 763, column: 16, scope: !7183)
!7196 = !DILocation(line: 763, column: 32, scope: !7183)
!7197 = !DILocation(line: 763, column: 38, scope: !7183)
!7198 = !DILocation(line: 763, column: 44, scope: !7183)
!7199 = !DILocation(line: 763, column: 2, scope: !7183)
!7200 = distinct !DISubprogram(name: "si470x_vidioc_g_tuner", scope: !3, file: !3, line: 600, type: !5553, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7201 = !DILocalVariable(name: "file", arg: 1, scope: !7200, file: !3, line: 600, type: !379)
!7202 = !DILocation(line: 600, column: 47, scope: !7200)
!7203 = !DILocalVariable(name: "priv", arg: 2, scope: !7200, file: !3, line: 600, type: !225)
!7204 = !DILocation(line: 600, column: 59, scope: !7200)
!7205 = !DILocalVariable(name: "tuner", arg: 3, scope: !7200, file: !3, line: 601, type: !5555)
!7206 = !DILocation(line: 601, column: 22, scope: !7200)
!7207 = !DILocalVariable(name: "radio", scope: !7200, file: !3, line: 603, type: !226)
!7208 = !DILocation(line: 603, column: 24, scope: !7200)
!7209 = !DILocation(line: 603, column: 46, scope: !7200)
!7210 = !DILocation(line: 603, column: 32, scope: !7200)
!7211 = !DILocalVariable(name: "retval", scope: !7200, file: !3, line: 604, type: !223)
!7212 = !DILocation(line: 604, column: 6, scope: !7200)
!7213 = !DILocation(line: 606, column: 6, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 606, column: 6)
!7215 = !DILocation(line: 606, column: 13, scope: !7214)
!7216 = !DILocation(line: 606, column: 19, scope: !7214)
!7217 = !DILocation(line: 606, column: 6, scope: !7200)
!7218 = !DILocation(line: 607, column: 3, scope: !7214)
!7219 = !DILocation(line: 609, column: 7, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 609, column: 6)
!7221 = !DILocation(line: 609, column: 14, scope: !7220)
!7222 = !DILocation(line: 609, column: 6, scope: !7200)
!7223 = !DILocation(line: 610, column: 12, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7220, file: !3, line: 609, column: 39)
!7225 = !DILocation(line: 610, column: 19, scope: !7224)
!7226 = !DILocation(line: 610, column: 32, scope: !7224)
!7227 = !DILocation(line: 610, column: 10, scope: !7224)
!7228 = !DILocation(line: 611, column: 7, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7224, file: !3, line: 611, column: 7)
!7230 = !DILocation(line: 611, column: 14, scope: !7229)
!7231 = !DILocation(line: 611, column: 7, scope: !7224)
!7232 = !DILocation(line: 612, column: 11, scope: !7229)
!7233 = !DILocation(line: 612, column: 4, scope: !7229)
!7234 = !DILocation(line: 613, column: 2, scope: !7224)
!7235 = !DILocation(line: 616, column: 10, scope: !7200)
!7236 = !DILocation(line: 616, column: 17, scope: !7200)
!7237 = !DILocation(line: 616, column: 2, scope: !7200)
!7238 = !DILocation(line: 617, column: 2, scope: !7200)
!7239 = !DILocation(line: 617, column: 9, scope: !7200)
!7240 = !DILocation(line: 617, column: 14, scope: !7200)
!7241 = !DILocation(line: 618, column: 2, scope: !7200)
!7242 = !DILocation(line: 618, column: 9, scope: !7200)
!7243 = !DILocation(line: 618, column: 20, scope: !7200)
!7244 = !DILocation(line: 622, column: 2, scope: !7200)
!7245 = !DILocation(line: 622, column: 9, scope: !7200)
!7246 = !DILocation(line: 622, column: 19, scope: !7200)
!7247 = !DILocation(line: 623, column: 2, scope: !7200)
!7248 = !DILocation(line: 623, column: 9, scope: !7200)
!7249 = !DILocation(line: 623, column: 19, scope: !7200)
!7250 = !DILocation(line: 626, column: 7, scope: !7251)
!7251 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 626, column: 6)
!7252 = !DILocation(line: 626, column: 14, scope: !7251)
!7253 = !DILocation(line: 626, column: 36, scope: !7251)
!7254 = !DILocation(line: 626, column: 53, scope: !7251)
!7255 = !DILocation(line: 626, column: 6, scope: !7200)
!7256 = !DILocation(line: 627, column: 3, scope: !7251)
!7257 = !DILocation(line: 627, column: 10, scope: !7251)
!7258 = !DILocation(line: 627, column: 21, scope: !7251)
!7259 = !DILocation(line: 629, column: 3, scope: !7251)
!7260 = !DILocation(line: 629, column: 10, scope: !7251)
!7261 = !DILocation(line: 629, column: 21, scope: !7251)
!7262 = !DILocation(line: 633, column: 2, scope: !7200)
!7263 = !DILocation(line: 633, column: 9, scope: !7200)
!7264 = !DILocation(line: 633, column: 20, scope: !7200)
!7265 = !DILocation(line: 636, column: 7, scope: !7266)
!7266 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 636, column: 6)
!7267 = !DILocation(line: 636, column: 14, scope: !7266)
!7268 = !DILocation(line: 636, column: 34, scope: !7266)
!7269 = !DILocation(line: 636, column: 51, scope: !7266)
!7270 = !DILocation(line: 636, column: 6, scope: !7200)
!7271 = !DILocation(line: 637, column: 3, scope: !7266)
!7272 = !DILocation(line: 637, column: 10, scope: !7266)
!7273 = !DILocation(line: 637, column: 18, scope: !7266)
!7274 = !DILocation(line: 639, column: 3, scope: !7266)
!7275 = !DILocation(line: 639, column: 10, scope: !7266)
!7276 = !DILocation(line: 639, column: 18, scope: !7266)
!7277 = !DILocation(line: 643, column: 19, scope: !7200)
!7278 = !DILocation(line: 643, column: 26, scope: !7200)
!7279 = !DILocation(line: 643, column: 48, scope: !7200)
!7280 = !DILocation(line: 643, column: 2, scope: !7200)
!7281 = !DILocation(line: 643, column: 9, scope: !7200)
!7282 = !DILocation(line: 643, column: 16, scope: !7200)
!7283 = !DILocation(line: 645, column: 19, scope: !7200)
!7284 = !DILocation(line: 645, column: 26, scope: !7200)
!7285 = !DILocation(line: 645, column: 33, scope: !7200)
!7286 = !DILocation(line: 645, column: 47, scope: !7200)
!7287 = !DILocation(line: 645, column: 54, scope: !7200)
!7288 = !DILocation(line: 645, column: 45, scope: !7200)
!7289 = !DILocation(line: 645, column: 61, scope: !7200)
!7290 = !DILocation(line: 645, column: 40, scope: !7200)
!7291 = !DILocation(line: 645, column: 2, scope: !7200)
!7292 = !DILocation(line: 645, column: 9, scope: !7200)
!7293 = !DILocation(line: 645, column: 16, scope: !7200)
!7294 = !DILocation(line: 646, column: 6, scope: !7295)
!7295 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 646, column: 6)
!7296 = !DILocation(line: 646, column: 13, scope: !7295)
!7297 = !DILocation(line: 646, column: 20, scope: !7295)
!7298 = !DILocation(line: 646, column: 6, scope: !7200)
!7299 = !DILocation(line: 647, column: 3, scope: !7295)
!7300 = !DILocation(line: 647, column: 10, scope: !7295)
!7301 = !DILocation(line: 647, column: 17, scope: !7295)
!7302 = !DILocation(line: 651, column: 16, scope: !7200)
!7303 = !DILocation(line: 651, column: 23, scope: !7200)
!7304 = !DILocation(line: 651, column: 45, scope: !7200)
!7305 = !DILocation(line: 651, column: 15, scope: !7200)
!7306 = !DILocation(line: 651, column: 2, scope: !7200)
!7307 = !DILocation(line: 651, column: 9, scope: !7200)
!7308 = !DILocation(line: 651, column: 13, scope: !7200)
!7309 = !DILocation(line: 653, column: 9, scope: !7200)
!7310 = !DILocation(line: 653, column: 2, scope: !7200)
!7311 = !DILocation(line: 654, column: 1, scope: !7200)
!7312 = distinct !DISubprogram(name: "si470x_vidioc_s_tuner", scope: !3, file: !3, line: 660, type: !5571, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7313 = !DILocalVariable(name: "file", arg: 1, scope: !7312, file: !3, line: 660, type: !379)
!7314 = !DILocation(line: 660, column: 47, scope: !7312)
!7315 = !DILocalVariable(name: "priv", arg: 2, scope: !7312, file: !3, line: 660, type: !225)
!7316 = !DILocation(line: 660, column: 59, scope: !7312)
!7317 = !DILocalVariable(name: "tuner", arg: 3, scope: !7312, file: !3, line: 661, type: !5573)
!7318 = !DILocation(line: 661, column: 28, scope: !7312)
!7319 = !DILocalVariable(name: "radio", scope: !7312, file: !3, line: 663, type: !226)
!7320 = !DILocation(line: 663, column: 24, scope: !7312)
!7321 = !DILocation(line: 663, column: 46, scope: !7312)
!7322 = !DILocation(line: 663, column: 32, scope: !7312)
!7323 = !DILocation(line: 665, column: 6, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7312, file: !3, line: 665, column: 6)
!7325 = !DILocation(line: 665, column: 13, scope: !7324)
!7326 = !DILocation(line: 665, column: 19, scope: !7324)
!7327 = !DILocation(line: 665, column: 6, scope: !7312)
!7328 = !DILocation(line: 666, column: 3, scope: !7324)
!7329 = !DILocation(line: 669, column: 10, scope: !7312)
!7330 = !DILocation(line: 669, column: 17, scope: !7312)
!7331 = !DILocation(line: 669, column: 2, scope: !7312)
!7332 = !DILocation(line: 671, column: 3, scope: !7333)
!7333 = distinct !DILexicalBlock(scope: !7312, file: !3, line: 669, column: 26)
!7334 = !DILocation(line: 671, column: 10, scope: !7333)
!7335 = !DILocation(line: 671, column: 30, scope: !7333)
!7336 = !DILocation(line: 672, column: 3, scope: !7333)
!7337 = !DILocation(line: 675, column: 3, scope: !7333)
!7338 = !DILocation(line: 675, column: 10, scope: !7333)
!7339 = !DILocation(line: 675, column: 30, scope: !7333)
!7340 = !DILocation(line: 676, column: 3, scope: !7333)
!7341 = !DILocation(line: 679, column: 9, scope: !7312)
!7342 = !DILocation(line: 679, column: 16, scope: !7312)
!7343 = !DILocation(line: 679, column: 29, scope: !7312)
!7344 = !DILocation(line: 679, column: 2, scope: !7312)
!7345 = !DILocation(line: 680, column: 1, scope: !7312)
!7346 = distinct !DISubprogram(name: "si470x_vidioc_g_frequency", scope: !3, file: !3, line: 686, type: !5577, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7347 = !DILocalVariable(name: "file", arg: 1, scope: !7346, file: !3, line: 686, type: !379)
!7348 = !DILocation(line: 686, column: 51, scope: !7346)
!7349 = !DILocalVariable(name: "priv", arg: 2, scope: !7346, file: !3, line: 686, type: !225)
!7350 = !DILocation(line: 686, column: 63, scope: !7346)
!7351 = !DILocalVariable(name: "freq", arg: 3, scope: !7346, file: !3, line: 687, type: !5579)
!7352 = !DILocation(line: 687, column: 26, scope: !7346)
!7353 = !DILocalVariable(name: "radio", scope: !7346, file: !3, line: 689, type: !226)
!7354 = !DILocation(line: 689, column: 24, scope: !7346)
!7355 = !DILocation(line: 689, column: 46, scope: !7346)
!7356 = !DILocation(line: 689, column: 32, scope: !7346)
!7357 = !DILocation(line: 691, column: 6, scope: !7358)
!7358 = distinct !DILexicalBlock(scope: !7346, file: !3, line: 691, column: 6)
!7359 = !DILocation(line: 691, column: 12, scope: !7358)
!7360 = !DILocation(line: 691, column: 18, scope: !7358)
!7361 = !DILocation(line: 691, column: 6, scope: !7346)
!7362 = !DILocation(line: 692, column: 3, scope: !7358)
!7363 = !DILocation(line: 694, column: 2, scope: !7346)
!7364 = !DILocation(line: 694, column: 8, scope: !7346)
!7365 = !DILocation(line: 694, column: 13, scope: !7346)
!7366 = !DILocation(line: 695, column: 25, scope: !7346)
!7367 = !DILocation(line: 695, column: 33, scope: !7346)
!7368 = !DILocation(line: 695, column: 39, scope: !7346)
!7369 = !DILocation(line: 695, column: 9, scope: !7346)
!7370 = !DILocation(line: 695, column: 2, scope: !7346)
!7371 = !DILocation(line: 696, column: 1, scope: !7346)
!7372 = distinct !DISubprogram(name: "si470x_vidioc_s_frequency", scope: !3, file: !3, line: 702, type: !5588, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7373 = !DILocalVariable(name: "file", arg: 1, scope: !7372, file: !3, line: 702, type: !379)
!7374 = !DILocation(line: 702, column: 51, scope: !7372)
!7375 = !DILocalVariable(name: "priv", arg: 2, scope: !7372, file: !3, line: 702, type: !225)
!7376 = !DILocation(line: 702, column: 63, scope: !7372)
!7377 = !DILocalVariable(name: "freq", arg: 3, scope: !7372, file: !3, line: 703, type: !5590)
!7378 = !DILocation(line: 703, column: 32, scope: !7372)
!7379 = !DILocalVariable(name: "radio", scope: !7372, file: !3, line: 705, type: !226)
!7380 = !DILocation(line: 705, column: 24, scope: !7372)
!7381 = !DILocation(line: 705, column: 46, scope: !7372)
!7382 = !DILocation(line: 705, column: 32, scope: !7372)
!7383 = !DILocalVariable(name: "retval", scope: !7372, file: !3, line: 706, type: !223)
!7384 = !DILocation(line: 706, column: 6, scope: !7372)
!7385 = !DILocation(line: 708, column: 6, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7372, file: !3, line: 708, column: 6)
!7387 = !DILocation(line: 708, column: 12, scope: !7386)
!7388 = !DILocation(line: 708, column: 18, scope: !7386)
!7389 = !DILocation(line: 708, column: 6, scope: !7372)
!7390 = !DILocation(line: 709, column: 3, scope: !7386)
!7391 = !DILocation(line: 711, column: 6, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7372, file: !3, line: 711, column: 6)
!7393 = !DILocation(line: 711, column: 12, scope: !7392)
!7394 = !DILocation(line: 711, column: 30, scope: !7392)
!7395 = !DILocation(line: 711, column: 37, scope: !7392)
!7396 = !DILocation(line: 711, column: 24, scope: !7392)
!7397 = !DILocation(line: 711, column: 43, scope: !7392)
!7398 = !DILocation(line: 711, column: 22, scope: !7392)
!7399 = !DILocation(line: 711, column: 52, scope: !7392)
!7400 = !DILocation(line: 712, column: 6, scope: !7392)
!7401 = !DILocation(line: 712, column: 12, scope: !7392)
!7402 = !DILocation(line: 712, column: 30, scope: !7392)
!7403 = !DILocation(line: 712, column: 37, scope: !7392)
!7404 = !DILocation(line: 712, column: 24, scope: !7392)
!7405 = !DILocation(line: 712, column: 43, scope: !7392)
!7406 = !DILocation(line: 712, column: 22, scope: !7392)
!7407 = !DILocation(line: 711, column: 6, scope: !7372)
!7408 = !DILocation(line: 714, column: 28, scope: !7409)
!7409 = distinct !DILexicalBlock(scope: !7392, file: !3, line: 712, column: 54)
!7410 = !DILocation(line: 714, column: 12, scope: !7409)
!7411 = !DILocation(line: 714, column: 10, scope: !7409)
!7412 = !DILocation(line: 715, column: 7, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7409, file: !3, line: 715, column: 7)
!7414 = !DILocation(line: 715, column: 7, scope: !7409)
!7415 = !DILocation(line: 716, column: 11, scope: !7413)
!7416 = !DILocation(line: 716, column: 4, scope: !7413)
!7417 = !DILocation(line: 717, column: 2, scope: !7409)
!7418 = !DILocation(line: 718, column: 25, scope: !7372)
!7419 = !DILocation(line: 718, column: 32, scope: !7372)
!7420 = !DILocation(line: 718, column: 38, scope: !7372)
!7421 = !DILocation(line: 718, column: 9, scope: !7372)
!7422 = !DILocation(line: 718, column: 2, scope: !7372)
!7423 = !DILocation(line: 719, column: 1, scope: !7372)
!7424 = distinct !DISubprogram(name: "si470x_vidioc_enum_freq_bands", scope: !3, file: !3, line: 742, type: !5594, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7425 = !DILocalVariable(name: "file", arg: 1, scope: !7424, file: !3, line: 742, type: !379)
!7426 = !DILocation(line: 742, column: 55, scope: !7424)
!7427 = !DILocalVariable(name: "priv", arg: 2, scope: !7424, file: !3, line: 742, type: !225)
!7428 = !DILocation(line: 742, column: 67, scope: !7424)
!7429 = !DILocalVariable(name: "band", arg: 3, scope: !7424, file: !3, line: 743, type: !5596)
!7430 = !DILocation(line: 743, column: 35, scope: !7424)
!7431 = !DILocation(line: 745, column: 6, scope: !7432)
!7432 = distinct !DILexicalBlock(scope: !7424, file: !3, line: 745, column: 6)
!7433 = !DILocation(line: 745, column: 12, scope: !7432)
!7434 = !DILocation(line: 745, column: 18, scope: !7432)
!7435 = !DILocation(line: 745, column: 6, scope: !7424)
!7436 = !DILocation(line: 746, column: 3, scope: !7432)
!7437 = !DILocation(line: 747, column: 6, scope: !7438)
!7438 = distinct !DILexicalBlock(scope: !7424, file: !3, line: 747, column: 6)
!7439 = !DILocation(line: 747, column: 12, scope: !7438)
!7440 = !DILocation(line: 747, column: 18, scope: !7438)
!7441 = !DILocation(line: 747, column: 6, scope: !7424)
!7442 = !DILocation(line: 748, column: 3, scope: !7438)
!7443 = !DILocation(line: 749, column: 3, scope: !7424)
!7444 = !DILocation(line: 749, column: 16, scope: !7424)
!7445 = !DILocation(line: 749, column: 22, scope: !7424)
!7446 = !DILocation(line: 749, column: 10, scope: !7424)
!7447 = !DILocation(line: 750, column: 2, scope: !7424)
!7448 = !DILocation(line: 751, column: 1, scope: !7424)
!7449 = distinct !DISubprogram(name: "si470x_vidioc_s_hw_freq_seek", scope: !3, file: !3, line: 725, type: !5624, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7450 = !DILocalVariable(name: "file", arg: 1, scope: !7449, file: !3, line: 725, type: !379)
!7451 = !DILocation(line: 725, column: 54, scope: !7449)
!7452 = !DILocalVariable(name: "priv", arg: 2, scope: !7449, file: !3, line: 725, type: !225)
!7453 = !DILocation(line: 725, column: 66, scope: !7449)
!7454 = !DILocalVariable(name: "seek", arg: 3, scope: !7449, file: !3, line: 726, type: !5626)
!7455 = !DILocation(line: 726, column: 35, scope: !7449)
!7456 = !DILocalVariable(name: "radio", scope: !7449, file: !3, line: 728, type: !226)
!7457 = !DILocation(line: 728, column: 24, scope: !7449)
!7458 = !DILocation(line: 728, column: 46, scope: !7449)
!7459 = !DILocation(line: 728, column: 32, scope: !7449)
!7460 = !DILocation(line: 730, column: 6, scope: !7461)
!7461 = distinct !DILexicalBlock(scope: !7449, file: !3, line: 730, column: 6)
!7462 = !DILocation(line: 730, column: 12, scope: !7461)
!7463 = !DILocation(line: 730, column: 18, scope: !7461)
!7464 = !DILocation(line: 730, column: 6, scope: !7449)
!7465 = !DILocation(line: 731, column: 3, scope: !7461)
!7466 = !DILocation(line: 733, column: 6, scope: !7467)
!7467 = distinct !DILexicalBlock(scope: !7449, file: !3, line: 733, column: 6)
!7468 = !DILocation(line: 733, column: 12, scope: !7467)
!7469 = !DILocation(line: 733, column: 20, scope: !7467)
!7470 = !DILocation(line: 733, column: 6, scope: !7449)
!7471 = !DILocation(line: 734, column: 3, scope: !7467)
!7472 = !DILocation(line: 736, column: 25, scope: !7449)
!7473 = !DILocation(line: 736, column: 32, scope: !7449)
!7474 = !DILocation(line: 736, column: 9, scope: !7449)
!7475 = !DILocation(line: 736, column: 2, scope: !7449)
!7476 = !DILocation(line: 737, column: 1, scope: !7449)
!7477 = distinct !DISubprogram(name: "si470x_get_freq", scope: !3, file: !3, line: 259, type: !7478, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7478 = !DISubroutineType(types: !7479)
!7479 = !{!223, !226, !2721}
!7480 = !DILocalVariable(name: "radio", arg: 1, scope: !7477, file: !3, line: 259, type: !226)
!7481 = !DILocation(line: 259, column: 50, scope: !7477)
!7482 = !DILocalVariable(name: "freq", arg: 2, scope: !7477, file: !3, line: 259, type: !2721)
!7483 = !DILocation(line: 259, column: 71, scope: !7477)
!7484 = !DILocalVariable(name: "chan", scope: !7477, file: !3, line: 261, type: !223)
!7485 = !DILocation(line: 261, column: 6, scope: !7477)
!7486 = !DILocalVariable(name: "retval", scope: !7477, file: !3, line: 261, type: !223)
!7487 = !DILocation(line: 261, column: 12, scope: !7477)
!7488 = !DILocation(line: 264, column: 11, scope: !7477)
!7489 = !DILocation(line: 264, column: 18, scope: !7477)
!7490 = !DILocation(line: 264, column: 31, scope: !7477)
!7491 = !DILocation(line: 264, column: 9, scope: !7477)
!7492 = !DILocation(line: 265, column: 9, scope: !7477)
!7493 = !DILocation(line: 265, column: 16, scope: !7477)
!7494 = !DILocation(line: 265, column: 36, scope: !7477)
!7495 = !DILocation(line: 265, column: 7, scope: !7477)
!7496 = !DILocation(line: 268, column: 10, scope: !7477)
!7497 = !DILocation(line: 268, column: 33, scope: !7477)
!7498 = !DILocation(line: 268, column: 17, scope: !7477)
!7499 = !DILocation(line: 268, column: 15, scope: !7477)
!7500 = !DILocation(line: 268, column: 48, scope: !7477)
!7501 = !DILocation(line: 268, column: 55, scope: !7477)
!7502 = !DILocation(line: 268, column: 42, scope: !7477)
!7503 = !DILocation(line: 268, column: 61, scope: !7477)
!7504 = !DILocation(line: 268, column: 40, scope: !7477)
!7505 = !DILocation(line: 268, column: 3, scope: !7477)
!7506 = !DILocation(line: 268, column: 8, scope: !7477)
!7507 = !DILocation(line: 270, column: 9, scope: !7477)
!7508 = !DILocation(line: 270, column: 2, scope: !7477)
!7509 = distinct !DISubprogram(name: "si470x_set_band", scope: !3, file: !3, line: 179, type: !6292, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7510 = !DILocalVariable(name: "radio", arg: 1, scope: !7509, file: !3, line: 179, type: !226)
!7511 = !DILocation(line: 179, column: 50, scope: !7509)
!7512 = !DILocalVariable(name: "band", arg: 2, scope: !7509, file: !3, line: 179, type: !223)
!7513 = !DILocation(line: 179, column: 61, scope: !7509)
!7514 = !DILocation(line: 181, column: 6, scope: !7515)
!7515 = distinct !DILexicalBlock(scope: !7509, file: !3, line: 181, column: 6)
!7516 = !DILocation(line: 181, column: 13, scope: !7515)
!7517 = !DILocation(line: 181, column: 21, scope: !7515)
!7518 = !DILocation(line: 181, column: 18, scope: !7515)
!7519 = !DILocation(line: 181, column: 6, scope: !7509)
!7520 = !DILocation(line: 182, column: 3, scope: !7515)
!7521 = !DILocation(line: 184, column: 16, scope: !7509)
!7522 = !DILocation(line: 184, column: 2, scope: !7509)
!7523 = !DILocation(line: 184, column: 9, scope: !7509)
!7524 = !DILocation(line: 184, column: 14, scope: !7509)
!7525 = !DILocation(line: 185, column: 2, scope: !7509)
!7526 = !DILocation(line: 185, column: 9, scope: !7509)
!7527 = !DILocation(line: 185, column: 31, scope: !7509)
!7528 = !DILocation(line: 186, column: 34, scope: !7509)
!7529 = !DILocation(line: 186, column: 41, scope: !7509)
!7530 = !DILocation(line: 186, column: 46, scope: !7509)
!7531 = !DILocation(line: 186, column: 2, scope: !7509)
!7532 = !DILocation(line: 186, column: 9, scope: !7509)
!7533 = !DILocation(line: 186, column: 31, scope: !7509)
!7534 = !DILocation(line: 187, column: 9, scope: !7509)
!7535 = !DILocation(line: 187, column: 16, scope: !7509)
!7536 = !DILocation(line: 187, column: 29, scope: !7509)
!7537 = !DILocation(line: 187, column: 2, scope: !7509)
!7538 = !DILocation(line: 188, column: 1, scope: !7509)
!7539 = distinct !DISubprogram(name: "si470x_set_seek", scope: !3, file: !3, line: 294, type: !7540, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!7540 = !DISubroutineType(types: !7541)
!7541 = !{!223, !226, !5626}
!7542 = !DILocation(line: 363, column: 74, scope: !6508, inlinedAt: !7543)
!7543 = distinct !DILocation(line: 343, column: 7, scope: !7539)
!7544 = !DILocalVariable(name: "radio", arg: 1, scope: !7539, file: !3, line: 294, type: !226)
!7545 = !DILocation(line: 294, column: 50, scope: !7539)
!7546 = !DILocalVariable(name: "seek", arg: 2, scope: !7539, file: !3, line: 295, type: !5626)
!7547 = !DILocation(line: 295, column: 39, scope: !7539)
!7548 = !DILocalVariable(name: "band", scope: !7539, file: !3, line: 297, type: !223)
!7549 = !DILocation(line: 297, column: 6, scope: !7539)
!7550 = !DILocalVariable(name: "retval", scope: !7539, file: !3, line: 297, type: !223)
!7551 = !DILocation(line: 297, column: 12, scope: !7539)
!7552 = !DILocalVariable(name: "freq", scope: !7539, file: !3, line: 298, type: !7)
!7553 = !DILocation(line: 298, column: 15, scope: !7539)
!7554 = !DILocalVariable(name: "timed_out", scope: !7539, file: !3, line: 299, type: !517)
!7555 = !DILocation(line: 299, column: 7, scope: !7539)
!7556 = !DILocalVariable(name: "time_left", scope: !7539, file: !3, line: 300, type: !351)
!7557 = !DILocation(line: 300, column: 16, scope: !7539)
!7558 = !DILocation(line: 303, column: 6, scope: !7559)
!7559 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 303, column: 6)
!7560 = !DILocation(line: 303, column: 12, scope: !7559)
!7561 = !DILocation(line: 303, column: 21, scope: !7559)
!7562 = !DILocation(line: 303, column: 24, scope: !7559)
!7563 = !DILocation(line: 303, column: 30, scope: !7559)
!7564 = !DILocation(line: 303, column: 6, scope: !7539)
!7565 = !DILocation(line: 304, column: 13, scope: !7566)
!7566 = distinct !DILexicalBlock(scope: !7567, file: !3, line: 304, column: 3)
!7567 = distinct !DILexicalBlock(scope: !7559, file: !3, line: 303, column: 41)
!7568 = !DILocation(line: 304, column: 8, scope: !7566)
!7569 = !DILocation(line: 304, column: 18, scope: !7570)
!7570 = distinct !DILexicalBlock(scope: !7566, file: !3, line: 304, column: 3)
!7571 = !DILocation(line: 304, column: 23, scope: !7570)
!7572 = !DILocation(line: 304, column: 3, scope: !7566)
!7573 = !DILocation(line: 305, column: 14, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7575, file: !3, line: 305, column: 8)
!7575 = distinct !DILexicalBlock(scope: !7570, file: !3, line: 304, column: 52)
!7576 = !DILocation(line: 305, column: 8, scope: !7574)
!7577 = !DILocation(line: 305, column: 20, scope: !7574)
!7578 = !DILocation(line: 305, column: 33, scope: !7574)
!7579 = !DILocation(line: 305, column: 39, scope: !7574)
!7580 = !DILocation(line: 305, column: 30, scope: !7574)
!7581 = !DILocation(line: 305, column: 48, scope: !7574)
!7582 = !DILocation(line: 306, column: 14, scope: !7574)
!7583 = !DILocation(line: 306, column: 8, scope: !7574)
!7584 = !DILocation(line: 306, column: 20, scope: !7574)
!7585 = !DILocation(line: 306, column: 33, scope: !7574)
!7586 = !DILocation(line: 306, column: 39, scope: !7574)
!7587 = !DILocation(line: 306, column: 30, scope: !7574)
!7588 = !DILocation(line: 305, column: 8, scope: !7575)
!7589 = !DILocation(line: 307, column: 5, scope: !7574)
!7590 = !DILocation(line: 308, column: 3, scope: !7575)
!7591 = !DILocation(line: 304, column: 48, scope: !7570)
!7592 = !DILocation(line: 304, column: 3, scope: !7570)
!7593 = distinct !{!7593, !7572, !7594}
!7594 = !DILocation(line: 308, column: 3, scope: !7566)
!7595 = !DILocation(line: 309, column: 7, scope: !7596)
!7596 = distinct !DILexicalBlock(scope: !7567, file: !3, line: 309, column: 7)
!7597 = !DILocation(line: 309, column: 12, scope: !7596)
!7598 = !DILocation(line: 309, column: 7, scope: !7567)
!7599 = !DILocation(line: 310, column: 4, scope: !7596)
!7600 = !DILocation(line: 311, column: 2, scope: !7567)
!7601 = !DILocation(line: 312, column: 8, scope: !7559)
!7602 = !DILocation(line: 314, column: 6, scope: !7603)
!7603 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 314, column: 6)
!7604 = !DILocation(line: 314, column: 13, scope: !7603)
!7605 = !DILocation(line: 314, column: 21, scope: !7603)
!7606 = !DILocation(line: 314, column: 18, scope: !7603)
!7607 = !DILocation(line: 314, column: 6, scope: !7539)
!7608 = !DILocation(line: 315, column: 28, scope: !7609)
!7609 = distinct !DILexicalBlock(scope: !7603, file: !3, line: 314, column: 27)
!7610 = !DILocation(line: 315, column: 12, scope: !7609)
!7611 = !DILocation(line: 315, column: 10, scope: !7609)
!7612 = !DILocation(line: 316, column: 7, scope: !7613)
!7613 = distinct !DILexicalBlock(scope: !7609, file: !3, line: 316, column: 7)
!7614 = !DILocation(line: 316, column: 7, scope: !7609)
!7615 = !DILocation(line: 317, column: 11, scope: !7613)
!7616 = !DILocation(line: 317, column: 4, scope: !7613)
!7617 = !DILocation(line: 318, column: 28, scope: !7609)
!7618 = !DILocation(line: 318, column: 35, scope: !7609)
!7619 = !DILocation(line: 318, column: 12, scope: !7609)
!7620 = !DILocation(line: 318, column: 10, scope: !7609)
!7621 = !DILocation(line: 319, column: 7, scope: !7622)
!7622 = distinct !DILexicalBlock(scope: !7609, file: !3, line: 319, column: 7)
!7623 = !DILocation(line: 319, column: 7, scope: !7609)
!7624 = !DILocation(line: 320, column: 11, scope: !7622)
!7625 = !DILocation(line: 320, column: 4, scope: !7622)
!7626 = !DILocation(line: 321, column: 28, scope: !7609)
!7627 = !DILocation(line: 321, column: 35, scope: !7609)
!7628 = !DILocation(line: 321, column: 12, scope: !7609)
!7629 = !DILocation(line: 321, column: 10, scope: !7609)
!7630 = !DILocation(line: 322, column: 7, scope: !7631)
!7631 = distinct !DILexicalBlock(scope: !7609, file: !3, line: 322, column: 7)
!7632 = !DILocation(line: 322, column: 7, scope: !7609)
!7633 = !DILocation(line: 323, column: 11, scope: !7631)
!7634 = !DILocation(line: 323, column: 4, scope: !7631)
!7635 = !DILocation(line: 324, column: 2, scope: !7609)
!7636 = !DILocation(line: 327, column: 2, scope: !7539)
!7637 = !DILocation(line: 327, column: 9, scope: !7539)
!7638 = !DILocation(line: 327, column: 29, scope: !7539)
!7639 = !DILocation(line: 328, column: 6, scope: !7640)
!7640 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 328, column: 6)
!7641 = !DILocation(line: 328, column: 12, scope: !7640)
!7642 = !DILocation(line: 328, column: 6, scope: !7539)
!7643 = !DILocation(line: 329, column: 3, scope: !7640)
!7644 = !DILocation(line: 329, column: 10, scope: !7640)
!7645 = !DILocation(line: 329, column: 30, scope: !7640)
!7646 = !DILocation(line: 331, column: 3, scope: !7640)
!7647 = !DILocation(line: 331, column: 10, scope: !7640)
!7648 = !DILocation(line: 331, column: 30, scope: !7640)
!7649 = !DILocation(line: 332, column: 6, scope: !7650)
!7650 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 332, column: 6)
!7651 = !DILocation(line: 332, column: 12, scope: !7650)
!7652 = !DILocation(line: 332, column: 6, scope: !7539)
!7653 = !DILocation(line: 333, column: 3, scope: !7650)
!7654 = !DILocation(line: 333, column: 10, scope: !7650)
!7655 = !DILocation(line: 333, column: 30, scope: !7650)
!7656 = !DILocation(line: 335, column: 3, scope: !7650)
!7657 = !DILocation(line: 335, column: 10, scope: !7650)
!7658 = !DILocation(line: 335, column: 30, scope: !7650)
!7659 = !DILocation(line: 336, column: 11, scope: !7539)
!7660 = !DILocation(line: 336, column: 18, scope: !7539)
!7661 = !DILocation(line: 336, column: 31, scope: !7539)
!7662 = !DILocation(line: 336, column: 9, scope: !7539)
!7663 = !DILocation(line: 337, column: 6, scope: !7664)
!7664 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 337, column: 6)
!7665 = !DILocation(line: 337, column: 13, scope: !7664)
!7666 = !DILocation(line: 337, column: 6, scope: !7539)
!7667 = !DILocation(line: 338, column: 10, scope: !7664)
!7668 = !DILocation(line: 338, column: 3, scope: !7664)
!7669 = !DILocation(line: 341, column: 21, scope: !7539)
!7670 = !DILocation(line: 341, column: 28, scope: !7539)
!7671 = !DILocation(line: 341, column: 2, scope: !7539)
!7672 = !DILocation(line: 342, column: 43, scope: !7539)
!7673 = !DILocation(line: 342, column: 50, scope: !7539)
!7674 = !DILocation(line: 343, column: 24, scope: !7539)
!7675 = !DILocation(line: 365, column: 27, scope: !6565, inlinedAt: !7543)
!7676 = !DILocation(line: 365, column: 6, scope: !6565, inlinedAt: !7543)
!7677 = !DILocation(line: 365, column: 6, scope: !6508, inlinedAt: !7543)
!7678 = !DILocation(line: 366, column: 12, scope: !6569, inlinedAt: !7543)
!7679 = !DILocation(line: 366, column: 14, scope: !6569, inlinedAt: !7543)
!7680 = !DILocation(line: 366, column: 7, scope: !6570, inlinedAt: !7543)
!7681 = !DILocation(line: 367, column: 4, scope: !6569, inlinedAt: !7543)
!7682 = !DILocation(line: 368, column: 28, scope: !6570, inlinedAt: !7543)
!7683 = !DILocation(line: 368, column: 10, scope: !6570, inlinedAt: !7543)
!7684 = !DILocation(line: 368, column: 3, scope: !6570, inlinedAt: !7543)
!7685 = !DILocation(line: 370, column: 29, scope: !6578, inlinedAt: !7543)
!7686 = !DILocation(line: 370, column: 10, scope: !6578, inlinedAt: !7543)
!7687 = !DILocation(line: 370, column: 3, scope: !6578, inlinedAt: !7543)
!7688 = !DILocation(line: 372, column: 1, scope: !6508, inlinedAt: !7543)
!7689 = !DILocation(line: 342, column: 14, scope: !7539)
!7690 = !DILocation(line: 342, column: 12, scope: !7539)
!7691 = !DILocation(line: 344, column: 6, scope: !7692)
!7692 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 344, column: 6)
!7693 = !DILocation(line: 344, column: 16, scope: !7692)
!7694 = !DILocation(line: 344, column: 6, scope: !7539)
!7695 = !DILocation(line: 345, column: 13, scope: !7692)
!7696 = !DILocation(line: 345, column: 3, scope: !7692)
!7697 = !DILocation(line: 347, column: 7, scope: !7698)
!7698 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 347, column: 6)
!7699 = !DILocation(line: 347, column: 14, scope: !7698)
!7700 = !DILocation(line: 347, column: 36, scope: !7698)
!7701 = !DILocation(line: 347, column: 54, scope: !7698)
!7702 = !DILocation(line: 347, column: 6, scope: !7539)
!7703 = !DILocation(line: 348, column: 3, scope: !7698)
!7704 = !DILocation(line: 349, column: 6, scope: !7705)
!7705 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 349, column: 6)
!7706 = !DILocation(line: 349, column: 13, scope: !7705)
!7707 = !DILocation(line: 349, column: 35, scope: !7705)
!7708 = !DILocation(line: 349, column: 6, scope: !7539)
!7709 = !DILocation(line: 350, column: 3, scope: !7705)
!7710 = !DILocation(line: 354, column: 2, scope: !7539)
!7711 = !DILocation(line: 354, column: 9, scope: !7539)
!7712 = !DILocation(line: 354, column: 29, scope: !7539)
!7713 = !DILocation(line: 355, column: 11, scope: !7539)
!7714 = !DILocation(line: 355, column: 18, scope: !7539)
!7715 = !DILocation(line: 355, column: 31, scope: !7539)
!7716 = !DILocation(line: 355, column: 9, scope: !7539)
!7717 = !DILocation(line: 358, column: 6, scope: !7718)
!7718 = distinct !DILexicalBlock(scope: !7539, file: !3, line: 358, column: 6)
!7719 = !DILocation(line: 358, column: 13, scope: !7718)
!7720 = !DILocation(line: 358, column: 18, scope: !7718)
!7721 = !DILocation(line: 358, column: 21, scope: !7718)
!7722 = !DILocation(line: 358, column: 6, scope: !7539)
!7723 = !DILocation(line: 359, column: 3, scope: !7718)
!7724 = !DILocation(line: 360, column: 9, scope: !7539)
!7725 = !DILocation(line: 360, column: 2, scope: !7539)
!7726 = !DILocation(line: 361, column: 1, scope: !7539)
